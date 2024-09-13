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

module MAlonzo.Code.Ledger.Certs.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.Bifunctor
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.Semigroup.Core
import qualified MAlonzo.Code.Class.Semigroup.Instances
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.HasAdd
import qualified MAlonzo.Code.Interface.HasSingleton
import qualified MAlonzo.Code.Interface.IsSet
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Types.GovStructure
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- _.DecEq-Credential
d_DecEq'45'Credential_56 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_56 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_56 v2 v3
du_DecEq'45'Credential_56 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_56 v0 v1
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142 (coe v0)
      (coe v1)
-- Ledger.Certs.Properties._._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__814 a0 a1 a2 a3 a4
  = ()
-- Ledger.Certs.Properties._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__816 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_930 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_834] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_930 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__816 = erased
-- Ledger.Certs.Properties._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__818 a0 a1 a2 a3 a4 = ()
-- Ledger.Certs.Properties._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__820 a0 a1 a2 a3 a4 = ()
-- Ledger.Certs.Properties._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__822 a0 a1 a2 a3 a4 = ()
-- Ledger.Certs.Properties._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__824 a0 a1 a2 a3 a4 = ()
-- Ledger.Certs.Properties._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_850 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_850 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826 (coe v0)
-- Ledger.Certs.Properties._.DepositPurpose
d_DepositPurpose_854 a0 = ()
-- Ledger.Certs.Properties._.completeness
d_completeness_1022 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_1022 = erased
-- Ledger.Certs.Properties._.computeProof
d_computeProof_1028 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_1028 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Certs.Properties.Computational-DELEG
d_Computational'45'DELEG_1040 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'DELEG_1040 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 ->
         case coe v1 of
           MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7496''7497'_960 v2 v3 v4
             -> coe
                  (\ v5 ->
                     case coe v5 of
                       MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7496'_904 v6 v7 v8
                         -> coe
                              (\ v9 ->
                                 let v10
                                       = coe
                                           MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                           (coe
                                              ("Unexpected certificate in DELEG"
                                               ::
                                               Data.Text.Text)) in
                                 coe
                                   (case coe v9 of
                                      MAlonzo.Code.Ledger.Certs.C_delegate_836 v11 v12 v13 v14
                                        -> let v15
                                                 = coe
                                                     MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                                                     (coe
                                                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                        (coe
                                                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                           (coe
                                                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                 (let v15
                                                                        = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                  (coe v0))) in
                                                                  coe
                                                                    (let v16
                                                                           = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                  (coe v0)) in
                                                                     coe
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                          (coe v15) (coe v16))))
                                                                 (coe v11)
                                                                 (coe
                                                                    MAlonzo.Code.Interface.IsSet.du_dom_540
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.d_th_1458
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                    (coe
                                                                       MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                                                    (coe v8)))
                                                              (coe
                                                                 MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                                                           (coe
                                                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                              (coe
                                                                 MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                              (coe v14)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.PParams.d_keyDeposit_324
                                                                 (coe v2))))
                                                        (coe
                                                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                           (coe
                                                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                 (let v15
                                                                        = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                  (coe v0))) in
                                                                  coe
                                                                    (let v16
                                                                           = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                  (coe v0)) in
                                                                     coe
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                          (coe v15) (coe v16))))
                                                                 (coe v11)
                                                                 (coe
                                                                    MAlonzo.Code.Interface.IsSet.du_dom_540
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.d_th_1458
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                    (coe
                                                                       MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                                                    (coe v8)))
                                                              (coe
                                                                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                 (coe
                                                                    MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                 (coe v14) (coe (0 :: Integer))))
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                              (coe
                                                                 MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                          (coe v0)))))
                                                              (coe v13)
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.du__'8746'__668
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.du_map_386
                                                                    (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16)
                                                                    (coe
                                                                       MAlonzo.Code.Interface.IsSet.du_dom_540
                                                                       (coe
                                                                          MAlonzo.Code.Axiom.Set.d_th_1458
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                       (coe
                                                                          MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                                                       (coe v3)))
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                                                                    (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                    erased
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))))) in
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
                                                                           MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7496'_904
                                                                           (let v19
                                                                                  = let v19
                                                                                          = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                    (coe
                                                                                                       v0))) in
                                                                                    coe
                                                                                      (let v20
                                                                                             = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
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
                                                                                 MAlonzo.Code.Axiom.Set.Map.du_insertIfJust_914
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                    erased v19)
                                                                                 (coe v11) (coe v12)
                                                                                 (coe v6)))
                                                                           (let v19
                                                                                  = let v19
                                                                                          = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                    (coe
                                                                                                       v0))) in
                                                                                    coe
                                                                                      (let v20
                                                                                             = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
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
                                                                                 MAlonzo.Code.Axiom.Set.Map.du_insertIfJust_914
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                    erased v19)
                                                                                 (coe v11) (coe v13)
                                                                                 (coe v7)))
                                                                           (let v19
                                                                                  = let v19
                                                                                          = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                    (coe
                                                                                                       v0))) in
                                                                                    coe
                                                                                      (let v20
                                                                                             = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
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
                                                                                 MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__884
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                    erased v19)
                                                                                 (coe v8)
                                                                                 (coe
                                                                                    MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_304
                                                                                    (coe
                                                                                       MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Map_314
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                       (coe v11)
                                                                                       (coe
                                                                                          (0 ::
                                                                                             Integer)))))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Certs.C_DELEG'45'delegate_1114
                                                                           v18))
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       else coe
                                                              seq (coe v17)
                                                              (coe
                                                                 MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                 (let v18
                                                                        = coe
                                                                            MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                                            (coe
                                                                               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                               (coe
                                                                                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                                     (let v18
                                                                                            = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                      (coe
                                                                                                         v0))) in
                                                                                      coe
                                                                                        (let v19
                                                                                               = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                      (coe
                                                                                                         v0)) in
                                                                                         coe
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                              (coe
                                                                                                 v18)
                                                                                              (coe
                                                                                                 v19))))
                                                                                     (coe v11)
                                                                                     (coe
                                                                                        MAlonzo.Code.Interface.IsSet.du_dom_540
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                        (coe
                                                                                           MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                                                                        (coe v8)))
                                                                                  (coe
                                                                                     MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                                                                               (coe
                                                                                  MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                                  (coe
                                                                                     MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                  (coe v14)
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.PParams.d_keyDeposit_324
                                                                                     (coe v2))))
                                                                            erased in
                                                                  coe
                                                                    (case coe v18 of
                                                                       MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v19
                                                                         -> coe
                                                                              ("\172\n((z\n  : (Interface.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n     Interface.IsSet.IsSet.\8713 c)\n    (Interface.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) rwds)) \8594\n d \8801 .Ledger.PParams.PParams.keyDeposit pp)"
                                                                               ::
                                                                               Data.Text.Text)
                                                                       MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v19
                                                                         -> let v20
                                                                                  = coe
                                                                                      MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                                                      (coe
                                                                                         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                                         (coe
                                                                                            MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                                            (let v20
                                                                                                   = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                             (coe
                                                                                                                v0))) in
                                                                                             coe
                                                                                               (let v21
                                                                                                      = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                             (coe
                                                                                                                v0)) in
                                                                                                coe
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                     (coe
                                                                                                        v20)
                                                                                                     (coe
                                                                                                        v21))))
                                                                                            (coe
                                                                                               v11)
                                                                                            (coe
                                                                                               MAlonzo.Code.Interface.IsSet.du_dom_540
                                                                                               (coe
                                                                                                  MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                                                                               (coe
                                                                                                  v8)))
                                                                                         (coe
                                                                                            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                                            (coe
                                                                                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                            (coe
                                                                                               v14)
                                                                                            (coe
                                                                                               (0 ::
                                                                                                  Integer))))
                                                                                      erased in
                                                                            coe
                                                                              (case coe v20 of
                                                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v21
                                                                                   -> coe
                                                                                        ("\172\n((z\n  : (Interface.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n     Interface.IsSet.IsSet.\8712 c)\n    (Interface.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) rwds)) \8594\n d \8801 0)"
                                                                                         ::
                                                                                         Data.Text.Text)
                                                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v21
                                                                                   -> coe
                                                                                        ("\172\n(Interface.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n Interface.IsSet.IsSet.\8712 mc)\n((.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8746\n  Axiom.Set.Theory.map (.Axiom.Set.Theory\7496.th List-Model\7496) just\n  (Interface.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) pools))\n (Interface.HasSingleton.HasSingleton.\10100\n  Interface.HasSingleton.HasSingletonSet-Set\n  (.Axiom.Set.Theory\7496.th List-Model\7496)\n  \10101\n  nothing))"
                                                                                         ::
                                                                                         Data.Text.Text)
                                                                                 _ -> MAlonzo.RTE.mazUnreachableError)
                                                                       _ -> MAlonzo.RTE.mazUnreachableError)))
                                                _ -> MAlonzo.RTE.mazUnreachableError)
                                      MAlonzo.Code.Ledger.Certs.C_dereg_838 v11 v12
                                        -> let v13
                                                 = coe
                                                     MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                                                     (coe
                                                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                           (coe
                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                           (coe
                                                              MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                              () erased () erased
                                                              (let v13
                                                                     = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                               (coe v0))) in
                                                               coe
                                                                 (let v14
                                                                        = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                               (coe v0)) in
                                                                  coe
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                       (coe v13) (coe v14))))
                                                              MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe v11) (coe (0 :: Integer)))
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                                              (coe v8)))
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                           (coe
                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                           (coe
                                                              MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                              () erased () erased
                                                              (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                                                                 (coe v0))
                                                              MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_816
                                                                 (coe v11))
                                                              (coe v12))
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                                              (coe v4)))) in
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
                                                                           MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7496'_904
                                                                           (let v17
                                                                                  = let v17
                                                                                          = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                    (coe
                                                                                                       v0))) in
                                                                                    coe
                                                                                      (let v18
                                                                                             = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                    (coe
                                                                                                       v0)) in
                                                                                       coe
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                            (coe
                                                                                               v17)
                                                                                            (coe
                                                                                               v18))) in
                                                                            coe
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1264
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                    erased v17)
                                                                                 (coe v6)
                                                                                 (coe
                                                                                    MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_304
                                                                                    (coe
                                                                                       MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Set_308
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                    v11)))
                                                                           (let v17
                                                                                  = let v17
                                                                                          = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                    (coe
                                                                                                       v0))) in
                                                                                    coe
                                                                                      (let v18
                                                                                             = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                    (coe
                                                                                                       v0)) in
                                                                                       coe
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                            (coe
                                                                                               v17)
                                                                                            (coe
                                                                                               v18))) in
                                                                            coe
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1264
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                    erased v17)
                                                                                 (coe v7)
                                                                                 (coe
                                                                                    MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_304
                                                                                    (coe
                                                                                       MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Set_308
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                    v11)))
                                                                           (let v17
                                                                                  = let v17
                                                                                          = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                    (coe
                                                                                                       v0))) in
                                                                                    coe
                                                                                      (let v18
                                                                                             = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                    (coe
                                                                                                       v0)) in
                                                                                       coe
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                            (coe
                                                                                               v17)
                                                                                            (coe
                                                                                               v18))) in
                                                                            coe
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1264
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                    erased v17)
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                                                                       (coe v8))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                       (coe v8)))
                                                                                 (coe
                                                                                    MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_304
                                                                                    (coe
                                                                                       MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Set_308
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                    v11))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Certs.C_DELEG'45'dereg_1116
                                                                           v16))
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       else coe
                                                              seq (coe v15)
                                                              (coe
                                                                 MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                 (let v16
                                                                        = coe
                                                                            MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                               (coe
                                                                                  MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                  () erased ()
                                                                                  erased
                                                                                  (let v16
                                                                                         = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                   (coe
                                                                                                      v0))) in
                                                                                   coe
                                                                                     (let v17
                                                                                            = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                   (coe
                                                                                                      v0)) in
                                                                                      coe
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                           (coe v16)
                                                                                           (coe
                                                                                              v17))))
                                                                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                  (coe v11)
                                                                                  (coe
                                                                                     (0 ::
                                                                                        Integer)))
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                                                                  (coe v8)))
                                                                            erased in
                                                                  coe
                                                                    (case coe v16 of
                                                                       MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v17
                                                                         -> coe
                                                                              ("\172\n(Interface.IsSet.IsSet-Map (.Axiom.Set.Theory\7496.th List-Model\7496)\n Interface.IsSet.IsSet.\8712 (c , 0))\nrwds"
                                                                               ::
                                                                               Data.Text.Text)
                                                                       MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v17
                                                                         -> coe
                                                                              ("\172\n(Interface.IsSet.IsSet-Map (.Axiom.Set.Theory\7496.th List-Model\7496)\n Interface.IsSet.IsSet.\8712 (CredentialDeposit c , d))\ndeps"
                                                                               ::
                                                                               Data.Text.Text)
                                                                       _ -> MAlonzo.RTE.mazUnreachableError)))
                                                _ -> MAlonzo.RTE.mazUnreachableError)
                                      _ -> coe v10))
                       _ -> MAlonzo.RTE.mazUnreachableError)
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Certs.Properties.Computational-POOL
d_Computational'45'POOL_1114 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'POOL_1114 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 ->
         case coe v2 of
           MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'10215''7510'_916 v3 v4
             -> coe
                  (\ v5 ->
                     let v6
                           = coe
                               MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                               (coe ("Unexpected certificate in POOL" :: Data.Text.Text)) in
                     coe
                       (case coe v5 of
                          MAlonzo.Code.Ledger.Certs.C_regpool_840 v7 v8
                            -> let v9
                                     = coe
                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du_'172''63'_70
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                            erased
                                            (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                               (coe
                                                  MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                  (coe
                                                     MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                     (coe v0))))
                                            v7
                                            (coe
                                               MAlonzo.Code.Interface.IsSet.du_dom_540
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_th_1458
                                                  (coe
                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                               (coe
                                                  MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                               (coe v3))) in
                               coe
                                 (case coe v9 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v10 v11
                                      -> if coe v10
                                           then coe
                                                  seq (coe v11)
                                                  (coe
                                                     MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                     (coe
                                                        MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                        (coe
                                                           MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'10215''7510'_916
                                                           (let v12
                                                                  = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                            (coe v0))) in
                                                            coe
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__884
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                    erased v12)
                                                                 (coe
                                                                    MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_304
                                                                    (coe
                                                                       MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Map_314
                                                                       (coe
                                                                          MAlonzo.Code.Axiom.Set.d_th_1458
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                       (coe v7) (coe v8)))
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                                                       (coe v3))
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                       (coe v3)))))
                                                           (coe v4))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Certs.C_POOL'45'regpool_1118)))
                                           else coe
                                                  seq (coe v11)
                                                  (coe
                                                     MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                     (coe
                                                        ("\172\n(\172\n (.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8712 c)\n (Interface.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) pools))"
                                                         ::
                                                         Data.Text.Text)))
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                          MAlonzo.Code.Ledger.Certs.C_retirepool_842 v7 v8
                            -> coe
                                 MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                 (coe
                                    MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                    (coe
                                       MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'10215''7510'_916
                                       (coe v3)
                                       (let v9
                                              = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                  (coe
                                                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                     (coe
                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                        (coe v0))) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__884
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1458
                                                (coe
                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                erased v9)
                                             (coe
                                                MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_304
                                                (coe
                                                   MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Map_314
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1458
                                                      (coe
                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe v7) (coe v8)))
                                             (coe v4))))
                                    (coe MAlonzo.Code.Ledger.Certs.C_POOL'45'retirepool_1120))
                          _ -> coe v6))
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Certs.Properties.Computational-GOVCERT
d_Computational'45'GOVCERT_1140 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'GOVCERT_1140 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 ->
         case coe v1 of
           MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'44'_'44'_'10215''7580'_888 v2 v3 v4 v5 v6
             -> coe
                  (\ v7 ->
                     case coe v7 of
                       MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'10215''7515'_928 v8 v9
                         -> coe
                              (\ v10 ->
                                 let v11
                                       = coe
                                           MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                           (coe
                                              ("Unexpected certificate in GOVCERT"
                                               ::
                                               Data.Text.Text)) in
                                 coe
                                   (case coe v10 of
                                      MAlonzo.Code.Ledger.Certs.C_regdrep_844 v12 v13 v14
                                        -> let v15
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
                                                              (coe v13)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.PParams.d_drepDeposit_358
                                                                 (coe v3)))
                                                           (coe
                                                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                 (let v15
                                                                        = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                  (coe v0))) in
                                                                  coe
                                                                    (let v16
                                                                           = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                  (coe v0)) in
                                                                     coe
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                          (coe v15) (coe v16))))
                                                                 (coe v12)
                                                                 (coe
                                                                    MAlonzo.Code.Interface.IsSet.du_dom_540
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.d_th_1458
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                    (coe
                                                                       MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                                                    (coe v8)))
                                                              (coe
                                                                 MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18)))
                                                        (coe
                                                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                           (coe
                                                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                              (coe
                                                                 MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                              (coe v13) (coe (0 :: Integer)))
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                              (let v15
                                                                     = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                               (coe v0))) in
                                                               coe
                                                                 (let v16
                                                                        = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                               (coe v0)) in
                                                                  coe
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                       (coe v15) (coe v16))))
                                                              (coe v12)
                                                              (coe
                                                                 MAlonzo.Code.Interface.IsSet.du_dom_540
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                 (coe
                                                                    MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                                                 (coe v8))))) in
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
                                                                           MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'10215''7515'_928
                                                                           (let v19
                                                                                  = let v19
                                                                                          = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                    (coe
                                                                                                       v0))) in
                                                                                    coe
                                                                                      (let v20
                                                                                             = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
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
                                                                                 MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__884
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                    erased v19)
                                                                                 (coe
                                                                                    MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_304
                                                                                    (coe
                                                                                       MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Map_314
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                       (coe v12)
                                                                                       (coe
                                                                                          MAlonzo.Code.Interface.HasAdd.d__'43'__12
                                                                                          (MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_246
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_582
                                                                                                (coe
                                                                                                   v0)))
                                                                                          v2
                                                                                          (MAlonzo.Code.Ledger.PParams.d_drepActivity_360
                                                                                             (coe
                                                                                                v3)))))
                                                                                 (coe v8)))
                                                                           (coe v9))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Certs.C_GOVCERT'45'regdrep_1184
                                                                           v18))
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       else coe
                                                              seq (coe v17)
                                                              (coe
                                                                 MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                 (coe
                                                                    ("\172\n(d \8801 .Ledger.PParams.PParams.drepDeposit pp \215\n (Interface.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n  Interface.IsSet.IsSet.\8713 c)\n (Interface.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) dReps)\n \8846\n d \8801 0 \215\n (Interface.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n  Interface.IsSet.IsSet.\8712 c)\n (Interface.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) dReps))"
                                                                     ::
                                                                     Data.Text.Text)))
                                                _ -> MAlonzo.RTE.mazUnreachableError)
                                      MAlonzo.Code.Ledger.Certs.C_deregdrep_846 v12 v13
                                        -> let v14
                                                 = coe
                                                     MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                                                     (coe
                                                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                           (coe
                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                           (let v14
                                                                  = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                            (coe v0))) in
                                                            coe
                                                              (let v15
                                                                     = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                            (coe v0)) in
                                                               coe
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                    (coe v14) (coe v15))))
                                                           (coe v12)
                                                           (coe
                                                              MAlonzo.Code.Interface.IsSet.du_dom_540
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_th_1458
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                              (coe
                                                                 MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                                              (coe v8)))
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                           (coe
                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                           (coe
                                                              MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                              () erased () erased
                                                              (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                                                                 (coe v0))
                                                              MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_816
                                                                 (coe v12))
                                                              (coe v13))
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                                              (coe v6)))) in
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
                                                                           MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'10215''7515'_928
                                                                           (let v18
                                                                                  = let v18
                                                                                          = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                    (coe
                                                                                                       v0))) in
                                                                                    coe
                                                                                      (let v19
                                                                                             = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
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
                                                                                 MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1264
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                    erased v18)
                                                                                 (coe v8)
                                                                                 (coe
                                                                                    MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_304
                                                                                    (coe
                                                                                       MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Set_308
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                    v12)))
                                                                           (coe v9))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Certs.C_GOVCERT'45'deregdrep_1186
                                                                           v17))
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       else coe
                                                              seq (coe v16)
                                                              (coe
                                                                 MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                 (let v17
                                                                        = coe
                                                                            MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                               (let v17
                                                                                      = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                (coe
                                                                                                   v0))) in
                                                                                coe
                                                                                  (let v18
                                                                                         = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                (coe
                                                                                                   v0)) in
                                                                                   coe
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                        (coe v17)
                                                                                        (coe v18))))
                                                                               (coe v12)
                                                                               (coe
                                                                                  MAlonzo.Code.Interface.IsSet.du_dom_540
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                  (coe
                                                                                     MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                                                                  (coe v8)))
                                                                            erased in
                                                                  coe
                                                                    (case coe v17 of
                                                                       MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v18
                                                                         -> coe
                                                                              ("\172\n(Interface.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n Interface.IsSet.IsSet.\8712 c)\n(Interface.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) dReps)"
                                                                               ::
                                                                               Data.Text.Text)
                                                                       MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v18
                                                                         -> coe
                                                                              ("\172\n(Interface.IsSet.IsSet-Map (.Axiom.Set.Theory\7496.th List-Model\7496)\n Interface.IsSet.IsSet.\8712 (CredentialDeposit c , d))\ndeps"
                                                                               ::
                                                                               Data.Text.Text)
                                                                       _ -> MAlonzo.RTE.mazUnreachableError)))
                                                _ -> MAlonzo.RTE.mazUnreachableError)
                                      MAlonzo.Code.Ledger.Certs.C_ccreghot_848 v12 v13
                                        -> let v14
                                                 = coe
                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du_'172''63'_70
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                        erased
                                                        (coe
                                                           MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                           (let v14
                                                                  = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                            (coe v0))) in
                                                            coe
                                                              (let v15
                                                                     = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                            (coe v0)) in
                                                               coe
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                    (coe v14) (coe v15))))
                                                           (coe
                                                              MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                              (let v14
                                                                     = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                               (coe v0))) in
                                                               coe
                                                                 (let v15
                                                                        = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                               (coe v0)) in
                                                                  coe
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                       (coe v14) (coe v15))))))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe v12)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                                           (coe v9))) in
                                           coe
                                             (case coe v14 of
                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v15 v16
                                                  -> if coe v15
                                                       then coe
                                                              seq (coe v16)
                                                              (coe
                                                                 MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                 (coe
                                                                    MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'10215''7515'_928
                                                                       (coe v8)
                                                                       (let v17
                                                                              = let v17
                                                                                      = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                (coe
                                                                                                   v0))) in
                                                                                coe
                                                                                  (let v18
                                                                                         = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                (coe
                                                                                                   v0)) in
                                                                                   coe
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                        (coe v17)
                                                                                        (coe
                                                                                           v18))) in
                                                                        coe
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__884
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                erased v17)
                                                                             (coe
                                                                                MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_304
                                                                                (coe
                                                                                   MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Map_314
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                   (coe v12)
                                                                                   (coe v13)))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                   (coe v9))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                   (coe v9))))))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Certs.C_GOVCERT'45'ccreghot_1188)))
                                                       else coe
                                                              seq (coe v16)
                                                              (coe
                                                                 MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                 (coe
                                                                    ("\172\n(\172\n (.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8712\n  (c , nothing))\n ((.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Map.\738) ccKeys))"
                                                                     ::
                                                                     Data.Text.Text)))
                                                _ -> MAlonzo.RTE.mazUnreachableError)
                                      _ -> coe v11))
                       _ -> MAlonzo.RTE.mazUnreachableError)
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Certs.Properties.Computational-CERT
d_Computational'45'CERT_1338 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERT_1338 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 ->
         case coe v1 of
           MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'44'_'44'_'10215''7580'_888 v2 v3 v4 v5 v6
             -> coe
                  (\ v7 ->
                     case coe v7 of
                       MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_944 v8 v9 v10
                         -> coe
                              (\ v11 ->
                                 let v12
                                       = coe
                                           MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
                                           (d_Computational'45'POOL_1114 (coe v0)) v3 v9 v11 in
                                 coe
                                   (let v13
                                          = coe
                                              MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
                                              (d_Computational'45'GOVCERT_1140 (coe v0)) v1 v10
                                              v11 in
                                    coe
                                      (let v14 = MAlonzo.Code.Ledger.Certs.d_pools_912 (coe v9) in
                                       coe
                                         (let v15
                                                = MAlonzo.Code.Ledger.Certs.d_voteDelegs_898
                                                    (coe v8) in
                                          coe
                                            (let v16
                                                   = MAlonzo.Code.Ledger.Certs.d_stakeDelegs_900
                                                       (coe v8) in
                                             coe
                                               (let v17
                                                      = MAlonzo.Code.Ledger.Certs.d_rewards_902
                                                          (coe v8) in
                                                coe
                                                  (case coe v11 of
                                                     MAlonzo.Code.Ledger.Certs.C_delegate_836 v18 v19 v20 v21
                                                       -> let v22
                                                                = coe
                                                                    MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                                                                    (coe
                                                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                                       (coe
                                                                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                          (coe
                                                                             MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                                (let v22
                                                                                       = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                 (coe
                                                                                                    v0))) in
                                                                                 coe
                                                                                   (let v23
                                                                                          = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                 (coe
                                                                                                    v0)) in
                                                                                    coe
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                         (coe v22)
                                                                                         (coe
                                                                                            v23))))
                                                                                (coe v18)
                                                                                (coe
                                                                                   MAlonzo.Code.Interface.IsSet.du_dom_540
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                   (coe
                                                                                      MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                                                                   (coe v17)))
                                                                             (coe
                                                                                MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                                                                          (coe
                                                                             MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                             (coe
                                                                                MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                             (coe v21)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.PParams.d_keyDeposit_324
                                                                                (coe v3))))
                                                                       (coe
                                                                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                                          (coe
                                                                             MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                                (let v22
                                                                                       = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                 (coe
                                                                                                    v0))) in
                                                                                 coe
                                                                                   (let v23
                                                                                          = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                 (coe
                                                                                                    v0)) in
                                                                                    coe
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                         (coe v22)
                                                                                         (coe
                                                                                            v23))))
                                                                                (coe v18)
                                                                                (coe
                                                                                   MAlonzo.Code.Interface.IsSet.du_dom_540
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                   (coe
                                                                                      MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                                                                   (coe v17)))
                                                                             (coe
                                                                                MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                                (coe
                                                                                   MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                (coe v21)
                                                                                (coe
                                                                                   (0 :: Integer))))
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                             (coe
                                                                                MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                         (coe
                                                                                            v0)))))
                                                                             (coe v20)
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.du__'8746'__668
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.du_map_386
                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16)
                                                                                   (coe
                                                                                      MAlonzo.Code.Interface.IsSet.du_dom_540
                                                                                      (coe
                                                                                         MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                      (coe
                                                                                         MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                                                                      (coe v14)))
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                   erased
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))))) in
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
                                                                                               MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7496'_904
                                                                                               (let v26
                                                                                                      = let v26
                                                                                                              = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                                        (coe
                                                                                                                           v0))) in
                                                                                                        coe
                                                                                                          (let v27
                                                                                                                 = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
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
                                                                                                     MAlonzo.Code.Axiom.Set.Map.du_insertIfJust_914
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                        erased
                                                                                                        v26)
                                                                                                     (coe
                                                                                                        v18)
                                                                                                     (coe
                                                                                                        v19)
                                                                                                     (coe
                                                                                                        v15)))
                                                                                               (let v26
                                                                                                      = let v26
                                                                                                              = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                                        (coe
                                                                                                                           v0))) in
                                                                                                        coe
                                                                                                          (let v27
                                                                                                                 = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
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
                                                                                                     MAlonzo.Code.Axiom.Set.Map.du_insertIfJust_914
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                        erased
                                                                                                        v26)
                                                                                                     (coe
                                                                                                        v18)
                                                                                                     (coe
                                                                                                        v20)
                                                                                                     (coe
                                                                                                        v16)))
                                                                                               (let v26
                                                                                                      = let v26
                                                                                                              = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                                        (coe
                                                                                                                           v0))) in
                                                                                                        coe
                                                                                                          (let v27
                                                                                                                 = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
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
                                                                                                     MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__884
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                        erased
                                                                                                        v26)
                                                                                                     (coe
                                                                                                        v17)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_304
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Map_314
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                           (coe
                                                                                                              v18)
                                                                                                           (coe
                                                                                                              (0 ::
                                                                                                                 Integer)))))))
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Certs.C_DELEG'45'delegate_1114
                                                                                               v25) in
                                                                                  coe
                                                                                    (case coe v26 of
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v27 v28
                                                                                         -> coe
                                                                                              MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                              (coe
                                                                                                 MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_944
                                                                                                    (coe
                                                                                                       v27)
                                                                                                    (coe
                                                                                                       v9)
                                                                                                    (coe
                                                                                                       v10))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Certs.C_CERT'45'deleg_1190
                                                                                                    v28))
                                                                                       _ -> MAlonzo.RTE.mazUnreachableError)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                                      else (let v25
                                                                                  = seq
                                                                                      (coe v24)
                                                                                      (coe
                                                                                         MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                         (let v25
                                                                                                = coe
                                                                                                    MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                                                             (let v25
                                                                                                                    = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                                              (coe
                                                                                                                                 v0))) in
                                                                                                              coe
                                                                                                                (let v26
                                                                                                                       = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
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
                                                                                                                v18)
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Interface.IsSet.du_dom_540
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                                                                                                (coe
                                                                                                                   v17)))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                          (coe
                                                                                                             v21)
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.PParams.d_keyDeposit_324
                                                                                                             (coe
                                                                                                                v3))))
                                                                                                    erased in
                                                                                          coe
                                                                                            (case coe
                                                                                                    v25 of
                                                                                               MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v26
                                                                                                 -> coe
                                                                                                      ("\172\n((z\n  : (Interface.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n     Interface.IsSet.IsSet.\8713 c)\n    (Interface.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) rwds)) \8594\n d \8801 .Ledger.PParams.PParams.keyDeposit pp)"
                                                                                                       ::
                                                                                                       Data.Text.Text)
                                                                                               MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v26
                                                                                                 -> let v27
                                                                                                          = coe
                                                                                                              MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                                                                    (let v27
                                                                                                                           = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                                                     (coe
                                                                                                                                        v0))) in
                                                                                                                     coe
                                                                                                                       (let v28
                                                                                                                              = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
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
                                                                                                                       v18)
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Interface.IsSet.du_dom_540
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                                                                                                       (coe
                                                                                                                          v17)))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                                    (coe
                                                                                                                       v21)
                                                                                                                    (coe
                                                                                                                       (0 ::
                                                                                                                          Integer))))
                                                                                                              erased in
                                                                                                    coe
                                                                                                      (case coe
                                                                                                              v27 of
                                                                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v28
                                                                                                           -> coe
                                                                                                                ("\172\n((z\n  : (Interface.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n     Interface.IsSet.IsSet.\8712 c)\n    (Interface.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) rwds)) \8594\n d \8801 0)"
                                                                                                                 ::
                                                                                                                 Data.Text.Text)
                                                                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v28
                                                                                                           -> coe
                                                                                                                ("\172\n(Interface.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n Interface.IsSet.IsSet.\8712 mc)\n((.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8746\n  Axiom.Set.Theory.map (.Axiom.Set.Theory\7496.th List-Model\7496) just\n  (Interface.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) pools))\n (Interface.HasSingleton.HasSingleton.\10100\n  Interface.HasSingleton.HasSingletonSet-Set\n  (.Axiom.Set.Theory\7496.th List-Model\7496)\n  \10101\n  nothing))"
                                                                                                                 ::
                                                                                                                 Data.Text.Text)
                                                                                                         _ -> MAlonzo.RTE.mazUnreachableError)
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
                                                                                                     MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_944
                                                                                                     (coe
                                                                                                        v27)
                                                                                                     (coe
                                                                                                        v9)
                                                                                                     (coe
                                                                                                        v10))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Certs.C_CERT'45'deleg_1190
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
                                                                                                            MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_944
                                                                                                            (coe
                                                                                                               v8)
                                                                                                            (coe
                                                                                                               v28)
                                                                                                            (coe
                                                                                                               v10))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Certs.C_CERT'45'pool_1192
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
                                                                                                                   MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_944
                                                                                                                   (coe
                                                                                                                      v8)
                                                                                                                   (coe
                                                                                                                      v9)
                                                                                                                   (coe
                                                                                                                      v29))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Certs.C_CERT'45'vdel_1194
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
                                                     MAlonzo.Code.Ledger.Certs.C_dereg_838 v18 v19
                                                       -> let v20
                                                                = coe
                                                                    MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                                                                    (coe
                                                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                                       (coe
                                                                          MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                          (coe
                                                                             MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                             () erased () erased
                                                                             (let v20
                                                                                    = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                              (coe
                                                                                                 v0))) in
                                                                              coe
                                                                                (let v21
                                                                                       = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                              (coe
                                                                                                 v0)) in
                                                                                 coe
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                      (coe v20)
                                                                                      (coe v21))))
                                                                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                             (coe v18)
                                                                             (coe (0 :: Integer)))
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                                                             (coe v17)))
                                                                       (coe
                                                                          MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                          (coe
                                                                             MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                             () erased () erased
                                                                             (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                                                                                (coe v0))
                                                                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_816
                                                                                (coe v18))
                                                                             (coe v19))
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                                                             (coe v6)))) in
                                                          coe
                                                            (case coe v20 of
                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v21 v22
                                                                 -> if coe v21
                                                                      then case coe v22 of
                                                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v23
                                                                               -> let v24
                                                                                        = coe
                                                                                            MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7496'_904
                                                                                               (let v24
                                                                                                      = let v24
                                                                                                              = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                                        (coe
                                                                                                                           v0))) in
                                                                                                        coe
                                                                                                          (let v25
                                                                                                                 = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                                        (coe
                                                                                                                           v0)) in
                                                                                                           coe
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                (coe
                                                                                                                   v24)
                                                                                                                (coe
                                                                                                                   v25))) in
                                                                                                coe
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1264
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                        erased
                                                                                                        v24)
                                                                                                     (coe
                                                                                                        v15)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_304
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Set_308
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                        v18)))
                                                                                               (let v24
                                                                                                      = let v24
                                                                                                              = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                                        (coe
                                                                                                                           v0))) in
                                                                                                        coe
                                                                                                          (let v25
                                                                                                                 = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                                        (coe
                                                                                                                           v0)) in
                                                                                                           coe
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                (coe
                                                                                                                   v24)
                                                                                                                (coe
                                                                                                                   v25))) in
                                                                                                coe
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1264
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                        erased
                                                                                                        v24)
                                                                                                     (coe
                                                                                                        v16)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_304
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Set_308
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                        v18)))
                                                                                               (let v24
                                                                                                      = let v24
                                                                                                              = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                                        (coe
                                                                                                                           v0))) in
                                                                                                        coe
                                                                                                          (let v25
                                                                                                                 = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                                        (coe
                                                                                                                           v0)) in
                                                                                                           coe
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                (coe
                                                                                                                   v24)
                                                                                                                (coe
                                                                                                                   v25))) in
                                                                                                coe
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1264
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                        erased
                                                                                                        v24)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                                                                                           (coe
                                                                                                              v17))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                           (coe
                                                                                                              v17)))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_304
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Set_308
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                        v18))))
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Certs.C_DELEG'45'dereg_1116
                                                                                               v23) in
                                                                                  coe
                                                                                    (case coe v24 of
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v25 v26
                                                                                         -> coe
                                                                                              MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                              (coe
                                                                                                 MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_944
                                                                                                    (coe
                                                                                                       v25)
                                                                                                    (coe
                                                                                                       v9)
                                                                                                    (coe
                                                                                                       v10))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Certs.C_CERT'45'deleg_1190
                                                                                                    v26))
                                                                                       _ -> MAlonzo.RTE.mazUnreachableError)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                                      else (let v23
                                                                                  = seq
                                                                                      (coe v22)
                                                                                      (coe
                                                                                         MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                         (let v23
                                                                                                = coe
                                                                                                    MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                          ()
                                                                                                          erased
                                                                                                          ()
                                                                                                          erased
                                                                                                          (let v23
                                                                                                                 = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                                           (coe
                                                                                                                              v0))) in
                                                                                                           coe
                                                                                                             (let v24
                                                                                                                    = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                                           (coe
                                                                                                                              v0)) in
                                                                                                              coe
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                   (coe
                                                                                                                      v23)
                                                                                                                   (coe
                                                                                                                      v24))))
                                                                                                          MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                          (coe
                                                                                                             v18)
                                                                                                          (coe
                                                                                                             (0 ::
                                                                                                                Integer)))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                                                                                          (coe
                                                                                                             v17)))
                                                                                                    erased in
                                                                                          coe
                                                                                            (case coe
                                                                                                    v23 of
                                                                                               MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v24
                                                                                                 -> coe
                                                                                                      ("\172\n(Interface.IsSet.IsSet-Map (.Axiom.Set.Theory\7496.th List-Model\7496)\n Interface.IsSet.IsSet.\8712 (c , 0))\nrwds"
                                                                                                       ::
                                                                                                       Data.Text.Text)
                                                                                               MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v24
                                                                                                 -> coe
                                                                                                      ("\172\n(Interface.IsSet.IsSet-Map (.Axiom.Set.Theory\7496.th List-Model\7496)\n Interface.IsSet.IsSet.\8712 (CredentialDeposit c , d))\ndeps"
                                                                                                       ::
                                                                                                       Data.Text.Text)
                                                                                               _ -> MAlonzo.RTE.mazUnreachableError))) in
                                                                            coe
                                                                              (case coe v23 of
                                                                                 MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v24
                                                                                   -> case coe
                                                                                             v24 of
                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v25 v26
                                                                                          -> coe
                                                                                               MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                               (coe
                                                                                                  MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_944
                                                                                                     (coe
                                                                                                        v25)
                                                                                                     (coe
                                                                                                        v9)
                                                                                                     (coe
                                                                                                        v10))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Certs.C_CERT'45'deleg_1190
                                                                                                     v26))
                                                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                                                 MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v24
                                                                                   -> case coe
                                                                                             v12 of
                                                                                        MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v25
                                                                                          -> case coe
                                                                                                    v25 of
                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v26 v27
                                                                                                 -> coe
                                                                                                      MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_944
                                                                                                            (coe
                                                                                                               v8)
                                                                                                            (coe
                                                                                                               v26)
                                                                                                            (coe
                                                                                                               v10))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Certs.C_CERT'45'pool_1192
                                                                                                            v27))
                                                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                                                        MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v25
                                                                                          -> case coe
                                                                                                    v13 of
                                                                                               MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v26
                                                                                                 -> case coe
                                                                                                           v26 of
                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v27 v28
                                                                                                        -> coe
                                                                                                             MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_944
                                                                                                                   (coe
                                                                                                                      v8)
                                                                                                                   (coe
                                                                                                                      v9)
                                                                                                                   (coe
                                                                                                                      v27))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Certs.C_CERT'45'vdel_1194
                                                                                                                   v28))
                                                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                                                               MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v26
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
                                                                                                            v24
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                               MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                               ("\nPOOL: "
                                                                                                                ::
                                                                                                                Data.Text.Text)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                                  MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                                  v25
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                                     MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                                     ("\nVDEL: "
                                                                                                                      ::
                                                                                                                      Data.Text.Text)
                                                                                                                     v26)))))
                                                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                                                 _ -> MAlonzo.RTE.mazUnreachableError))
                                                               _ -> MAlonzo.RTE.mazUnreachableError)
                                                     _ -> let v18
                                                                = "Unexpected certificate in DELEG"
                                                                  ::
                                                                  Data.Text.Text in
                                                          coe
                                                            (case coe v12 of
                                                               MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v19
                                                                 -> case coe v19 of
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v20 v21
                                                                        -> coe
                                                                             MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                             (coe
                                                                                MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_944
                                                                                   (coe v8)
                                                                                   (coe v20)
                                                                                   (coe v10))
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Certs.C_CERT'45'pool_1192
                                                                                   v21))
                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                               MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v19
                                                                 -> case coe v13 of
                                                                      MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v20
                                                                        -> case coe v20 of
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v21 v22
                                                                               -> coe
                                                                                    MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                    (coe
                                                                                       MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_944
                                                                                          (coe v8)
                                                                                          (coe v9)
                                                                                          (coe v21))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Certs.C_CERT'45'vdel_1194
                                                                                          v22))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                                      MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v20
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
                                                                                   v18
                                                                                   (coe
                                                                                      MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                      MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                      ("\nPOOL: "
                                                                                       ::
                                                                                       Data.Text.Text)
                                                                                      (coe
                                                                                         MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                         MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                         v19
                                                                                         (coe
                                                                                            MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                            MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                            ("\nVDEL: "
                                                                                             ::
                                                                                             Data.Text.Text)
                                                                                            v20)))))
                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                               _ -> MAlonzo.RTE.mazUnreachableError))))))))
                       _ -> MAlonzo.RTE.mazUnreachableError)
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Certs.Properties.Computational-CERTBASE
d_Computational'45'CERTBASE_1746 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERTBASE_1746 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 ->
         case coe v1 of
           MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'44'_'44'_'10215''7580'_888 v2 v3 v4 v5 v6
             -> coe
                  (\ v7 v8 ->
                     let v9
                           = coe
                               MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                               (coe
                                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                  (coe
                                     MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1622
                                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                     (coe
                                        (\ v9 ->
                                           coe
                                             MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                             (coe
                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                             (let v10
                                                    = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                           (coe
                                                              MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                              (coe v0))) in
                                              coe
                                                (let v11
                                                       = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                           (coe
                                                              MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                              (coe v0)) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                      (coe v10) (coe v11))))
                                             (coe v9)
                                             (coe
                                                MAlonzo.Code.Interface.IsSet.du_dom_540
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1458
                                                   (coe
                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                (coe
                                                   MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                                (coe
                                                   MAlonzo.Code.Ledger.Certs.d_voteDelegs_898
                                                   (coe
                                                      MAlonzo.Code.Ledger.Certs.d_dState_938
                                                      (coe v7))))))
                                     (coe
                                        MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1130
                                        (\ v9 ->
                                           coe
                                             MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                             (coe
                                                MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                                             (coe
                                                MAlonzo.Code.Ledger.Address.du_isKeyHashObj'7495'_26
                                                (coe v9))
                                             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                                        (coe
                                           MAlonzo.Code.Axiom.Set.du_map_386
                                           (MAlonzo.Code.Axiom.Set.d_th_1458
                                              (coe
                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                           (\ v9 -> MAlonzo.Code.Ledger.Address.d_stake_84 (coe v9))
                                           (coe
                                              MAlonzo.Code.Interface.IsSet.du_dom_540
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_th_1458
                                                 (coe
                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                              (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                              (coe v5)))))
                                  (coe
                                     MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1622
                                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                     (coe
                                        (\ v9 ->
                                           coe
                                             MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                             (coe
                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                             (coe
                                                MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 ()
                                                erased () erased
                                                (let v10
                                                       = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                           (coe
                                                              MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                 (coe v0))) in
                                                 coe
                                                   (let v11
                                                          = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                 (coe v0)) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                         (coe v10) (coe v11))))
                                                MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                             (coe v9)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Ledger.Certs.d_rewards_902
                                                   (coe
                                                      MAlonzo.Code.Ledger.Certs.d_dState_938
                                                      (coe v7))))))
                                     (coe
                                        MAlonzo.Code.Axiom.Set.du_map_386
                                        (MAlonzo.Code.Axiom.Set.d_th_1458
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                        (coe
                                           MAlonzo.Code.Class.Bifunctor.du_map'8321'_110
                                           (coe
                                              MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_152)
                                           (coe
                                              (\ v9 ->
                                                 MAlonzo.Code.Ledger.Address.d_stake_84 (coe v9))))
                                        (coe
                                           MAlonzo.Code.Axiom.Set.Map.du__'738'_534 (coe v5))))) in
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
                                                     MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_944
                                                     (coe
                                                        MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7496'_904
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Certs.d_voteDelegs_898
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Certs.d_dState_938
                                                                    (coe v7))))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Certs.d_voteDelegs_898
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Certs.d_dState_938
                                                                    (coe v7)))))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Certs.d_stakeDelegs_900
                                                           (coe
                                                              MAlonzo.Code.Ledger.Certs.d_dState_938
                                                              (coe v7)))
                                                        (let v13
                                                               = let v13
                                                                       = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                 (coe v0))) in
                                                                 coe
                                                                   (let v14
                                                                          = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                 (coe v0)) in
                                                                    coe
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                         (coe v13) (coe v14))) in
                                                         coe
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__884
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_th_1458
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                 erased v13)
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.Map.du_constMap_1112
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.d_th_1458
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                 (let v14
                                                                        = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                                  coe
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.du_map_386
                                                                       (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                          (coe v14))
                                                                       (\ v15 ->
                                                                          MAlonzo.Code.Ledger.Address.d_stake_84
                                                                            (coe v15))
                                                                       (coe
                                                                          MAlonzo.Code.Interface.IsSet.du_dom_540
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.d_th_1458
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                          (coe
                                                                             MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                                                                (coe v5))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                (coe v5))))))
                                                                 (coe (0 :: Integer)))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Certs.d_rewards_902
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Certs.d_dState_938
                                                                          (coe v7))))
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Certs.d_rewards_902
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Certs.d_dState_938
                                                                          (coe v7))))))))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Certs.d_pState_940
                                                        (coe v7))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'10215''7515'_928
                                                        (let v13
                                                               = let v13
                                                                       = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                 (coe v0))) in
                                                                 coe
                                                                   (let v14
                                                                          = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                 (coe v0)) in
                                                                    coe
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                         (coe v13) (coe v14))) in
                                                         coe
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.Map.du_mapValueRestricted_1276
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_th_1458
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                 erased v13)
                                                              (let v14
                                                                     = coe
                                                                         MAlonzo.Code.Interface.HasAdd.d__'43'__12
                                                                         (MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_246
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_582
                                                                               (coe v0)))
                                                                         v2
                                                                         (let v14
                                                                                = coe
                                                                                    MAlonzo.Code.Ledger.Certs.C_mkGeneralizeTel_38885
                                                                                    (coe v3)
                                                                                    (coe v4)
                                                                                    (coe v2)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Certs.d_dreps_924
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Certs.d_gState_942
                                                                                          (coe v7)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                                                                          (coe v5))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                          (coe v5)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Certs.d_voteDelegs_898
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Certs.d_dState_938
                                                                                                (coe
                                                                                                   v7))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Certs.d_voteDelegs_898
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Certs.d_dState_938
                                                                                                (coe
                                                                                                   v7)))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Certs.d_rewards_902
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Certs.d_dState_938
                                                                                                (coe
                                                                                                   v7))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Certs.d_rewards_902
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Certs.d_dState_938
                                                                                                (coe
                                                                                                   v7)))))
                                                                                    (coe v6)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Certs.d_stakeDelegs_900
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Certs.d_dState_938
                                                                                          (coe v7)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Certs.d_pState_940
                                                                                       (coe v7))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Certs.d_ccHotKeys_926
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Certs.d_gState_942
                                                                                          (coe
                                                                                             v7))) in
                                                                          coe
                                                                            (MAlonzo.Code.Ledger.PParams.d_drepActivity_360
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Certs.d_'46'generalizedField'45'pp_38861
                                                                                  (coe v14)))) in
                                                               coe (coe (\ v15 -> v14)))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Certs.d_dreps_924
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Certs.d_gState_942
                                                                    (coe v7)))
                                                              (let v14
                                                                     = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                               coe
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.du_mapPartial_564
                                                                    (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                       (coe v14))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.GovernanceActions.du_getDRepVote_808)
                                                                    (let v15
                                                                           = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                                     coe
                                                                       (coe
                                                                          MAlonzo.Code.Axiom.Set.du_fromList_416
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.d_th_1458
                                                                             (coe v15))
                                                                          (coe v4)))))))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Certs.d_ccHotKeys_926
                                                           (coe
                                                              MAlonzo.Code.Ledger.Certs.d_gState_942
                                                              (coe v7)))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Certs.C_CERT'45'base_1262
                                                     v12))
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 else coe
                                        seq (coe v11)
                                        (coe
                                           MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                           (let v12
                                                  = coe
                                                      MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1622
                                                         (coe
                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                         (coe
                                                            (\ v12 ->
                                                               coe
                                                                 MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                 (let v13
                                                                        = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                  (coe v0))) in
                                                                  coe
                                                                    (let v14
                                                                           = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                  (coe v0)) in
                                                                     coe
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                          (coe v13) (coe v14))))
                                                                 (coe v12)
                                                                 (coe
                                                                    MAlonzo.Code.Interface.IsSet.du_dom_540
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.d_th_1458
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                    (coe
                                                                       MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Certs.d_voteDelegs_898
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Certs.d_dState_938
                                                                          (coe v7))))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1130
                                                            (\ v12 ->
                                                               coe
                                                                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                 (coe
                                                                    MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Address.du_isKeyHashObj'7495'_26
                                                                    (coe v12))
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.du_map_386
                                                               (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                               (\ v12 ->
                                                                  MAlonzo.Code.Ledger.Address.d_stake_84
                                                                    (coe v12))
                                                               (coe
                                                                  MAlonzo.Code.Interface.IsSet.du_dom_540
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_th_1458
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                  (coe
                                                                     MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                                                  (coe v5)))))
                                                      erased in
                                            coe
                                              (case coe v12 of
                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v13
                                                   -> coe
                                                        ("\172\n(.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8838\n filter\738\n (Ledger.Address.isKeyHash\n  (.Ledger.Types.Epoch.GlobalConstants.Network\n   (.GovStructure.globalConstants gs))\n  (.Ledger.Crypto.isHashableSet.THash\n   (.Ledger.Crypto.Crypto.khs (.GovStructure.crypto gs)))\n  (.Ledger.Crypto.Crypto.ScriptHash (.GovStructure.crypto gs)))\n (Axiom.Set.Theory.map (.Axiom.Set.Theory\7496.th List-Model\7496)\n  (\955 r \8594 .Ledger.Address.RwdAddr.stake r)\n  (Interface.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) wdrls)))\n(Interface.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n (.Ledger.Certs.DState.voteDelegs\n  (.Ledger.Certs.CertState.dState st)))"
                                                         ::
                                                         Data.Text.Text)
                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v13
                                                   -> coe
                                                        ("\172\n(.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8838\n Axiom.Set.Theory.map (.Axiom.Set.Theory\7496.th List-Model\7496)\n (Bifunctor.map\8321 Bifunctor-\215\n  (\955 r \8594 .Ledger.Address.RwdAddr.stake r))\n (.Interface.IsSet.IsSet.toSet\n  (Interface.IsSet.IsSet-Map (.Axiom.Set.Theory\7496.th List-Model\7496))\n  wdrls))\n(.proj\8321\n (.Ledger.Certs.DState.rewards (.Ledger.Certs.CertState.dState st)))"
                                                         ::
                                                         Data.Text.Text)
                                                 _ -> MAlonzo.RTE.mazUnreachableError)))
                          _ -> MAlonzo.RTE.mazUnreachableError))
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Certs.Properties.Computational-CERTS
d_Computational'45'CERTS_1876 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERTS_1876 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7495'_774
      (coe d_Computational'45'CERTBASE_1746 (coe v0))
      (coe d_Computational'45'CERT_1338 (coe v0))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_730)
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_730)