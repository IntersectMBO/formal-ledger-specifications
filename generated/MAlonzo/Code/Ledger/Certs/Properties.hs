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
import qualified MAlonzo.Code.Axiom.Set.Properties
import qualified MAlonzo.Code.Axiom.Set.Rel
import qualified MAlonzo.Code.Class.Bifunctor
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.Semigroup.Core
import qualified MAlonzo.Code.Class.Semigroup.Instances
import qualified MAlonzo.Code.Data.Bool.Properties
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.HasAdd
import qualified MAlonzo.Code.Interface.HasSingleton
import qualified MAlonzo.Code.Interface.IsCommutativeMonoid
import qualified MAlonzo.Code.Interface.IsSet
import qualified MAlonzo.Code.Interface.STS
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Interface.HasCoin
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Types.GovStructure
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- _.Credential
d_Credential_28 a0 a1 a2 a3 = ()
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
-- Ledger.Certs.Properties._.getDRepVote
d_getDRepVote_746 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getDRepVote_746 ~v0 = du_getDRepVote_746
du_getDRepVote_746 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_getDRepVote_746
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_getDRepVote_830
-- Ledger.Certs.Properties._._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__772 a0 a1 a2 a3 a4
  = ()
-- Ledger.Certs.Properties._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__774 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_824 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_888 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_792] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_888 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__774 = erased
-- Ledger.Certs.Properties._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__776 a0 a1 a2 a3 a4 = ()
-- Ledger.Certs.Properties._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__778 a0 a1 a2 a3 a4 = ()
-- Ledger.Certs.Properties._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__780 a0 a1 a2 a3 a4 = ()
-- Ledger.Certs.Properties._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__782 a0 a1 a2 a3 a4 = ()
-- Ledger.Certs.Properties._.DepositPurpose
d_DepositPurpose_812 a0 = ()
-- Ledger.Certs.Properties._.completeness
d_completeness_988 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_988 = erased
-- Ledger.Certs.Properties._.computeProof
d_computeProof_994 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_994 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Certs.Properties.Computational-DELEG
d_Computational'45'DELEG_1006 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'DELEG_1006 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 ->
         case coe v1 of
           MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7496''7497'_922 v2 v3 v4
             -> coe
                  (\ v5 ->
                     case coe v5 of
                       MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7496'_862 v6 v7 v8
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
                                      MAlonzo.Code.Ledger.Certs.C_delegate_794 v11 v12 v13 v14
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
                                                                    MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                    erased
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                (coe v0))))
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                             (coe v0)))))
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
                                                                    MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                    erased
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                (coe v0))))
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                             (coe v0)))))
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
                                                                 MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                 erased
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                             (coe v0))))))
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
                                                                           MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7496'_862
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
                                                                           MAlonzo.Code.Ledger.Certs.C_DELEG'45'delegate_1102
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
                                                                                        MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                        erased
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                    (coe
                                                                                                       v0))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                 (coe
                                                                                                    v0)))))
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
                                                                                               MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                               erased
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                           (coe
                                                                                                              v0))))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                        (coe
                                                                                                           v0)))))
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
                                      MAlonzo.Code.Ledger.Certs.C_dereg_796 v11 v12
                                        -> let v13
                                                 = coe
                                                     MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                                                     (coe
                                                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                              erased
                                                              (coe
                                                                 MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                             (coe v0))))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                          (coe v0))))
                                                                 (coe
                                                                    MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                    (coe
                                                                       MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe v11) (coe (0 :: Integer)))
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                                              (coe v8)))
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                              erased
                                                              (coe
                                                                 MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_784
                                                                    (coe v0))
                                                                 (coe
                                                                    MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                    (coe
                                                                       MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_774
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
                                                                           MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7496'_862
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
                                                                           MAlonzo.Code.Ledger.Certs.C_DELEG'45'dereg_1104
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
                                                                                  MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                  erased
                                                                                  (coe
                                                                                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                 (coe
                                                                                                    v0))))
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                              (coe
                                                                                                 v0))))
                                                                                     (coe
                                                                                        MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                        (coe
                                                                                           MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))))
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
d_Computational'45'POOL_1080 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'POOL_1080 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 ->
         case coe v2 of
           MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'10215''7510'_874 v3 v4
             -> coe
                  (\ v5 ->
                     let v6
                           = coe
                               MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                               (coe ("Unexpected certificate in POOL" :: Data.Text.Text)) in
                     coe
                       (case coe v5 of
                          MAlonzo.Code.Ledger.Certs.C_regpool_798 v7 v8
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
                                                           MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'10215''7510'_874
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
                                                           MAlonzo.Code.Ledger.Certs.C_POOL'45'regpool_1106)))
                                           else coe
                                                  seq (coe v11)
                                                  (coe
                                                     MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                     (coe
                                                        ("\172\n(\172\n (.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8712 c)\n (Interface.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) pools))"
                                                         ::
                                                         Data.Text.Text)))
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                          MAlonzo.Code.Ledger.Certs.C_retirepool_800 v7 v8
                            -> coe
                                 MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                 (coe
                                    MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                    (coe
                                       MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'10215''7510'_874
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
                                    (coe MAlonzo.Code.Ledger.Certs.C_POOL'45'retirepool_1108))
                          _ -> coe v6))
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Certs.Properties.Computational-GOVCERT
d_Computational'45'GOVCERT_1106 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'GOVCERT_1106 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 ->
         case coe v1 of
           MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'44'_'44'_'10215''7580'_846 v2 v3 v4 v5 v6
             -> coe
                  (\ v7 ->
                     case coe v7 of
                       MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'10215''7515'_886 v8 v9
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
                                      MAlonzo.Code.Ledger.Certs.C_regdrep_802 v12 v13 v14
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
                                                                    MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                    erased
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                (coe v0))))
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                             (coe v0)))))
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
                                                                 MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                 erased
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                             (coe v0))))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                          (coe v0)))))
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
                                                                           MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'10215''7515'_886
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
                                                                           MAlonzo.Code.Ledger.Certs.C_GOVCERT'45'regdrep_1172
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
                                      MAlonzo.Code.Ledger.Certs.C_deregdrep_804 v12 v13
                                        -> let v14
                                                 = coe
                                                     MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                                                     (coe
                                                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                              erased
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                          (coe v0))))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                       (coe v0)))))
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
                                                              MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                              erased
                                                              (coe
                                                                 MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_784
                                                                    (coe v0))
                                                                 (coe
                                                                    MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                    (coe
                                                                       MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_774
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
                                                                           MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'10215''7515'_886
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
                                                                           MAlonzo.Code.Ledger.Certs.C_GOVCERT'45'deregdrep_1174
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
                                                                                  MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                  erased
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                              (coe
                                                                                                 v0))))
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                           (coe
                                                                                              v0)))))
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
                                      MAlonzo.Code.Ledger.Certs.C_ccreghot_806 v12 v13
                                        -> let v14
                                                 = coe
                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du_'172''63'_70
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                        erased
                                                        (coe
                                                           MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                           (coe
                                                              MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                       (coe v0))))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                    (coe v0))))
                                                           (coe
                                                              MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                          (coe v0))))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                       (coe v0))))))
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
                                                                       MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'10215''7515'_886
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
                                                                       MAlonzo.Code.Ledger.Certs.C_GOVCERT'45'ccreghot_1176)))
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
d_Computational'45'CERT_1304 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERT_1304 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 ->
         case coe v1 of
           MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'44'_'44'_'10215''7580'_846 v2 v3 v4 v5 v6
             -> coe
                  (\ v7 ->
                     case coe v7 of
                       MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'44'_'10215''7580''738'_906 v8 v9 v10 v11
                         -> coe
                              (\ v12 ->
                                 let v13
                                       = coe
                                           MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
                                           (d_Computational'45'POOL_1080 (coe v0)) v3 v9 v12 in
                                 coe
                                   (let v14
                                          = coe
                                              MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
                                              (d_Computational'45'GOVCERT_1106 (coe v0)) v1 v10
                                              v12 in
                                    coe
                                      (let v15 = MAlonzo.Code.Ledger.Certs.d_pools_870 (coe v9) in
                                       coe
                                         (let v16
                                                = MAlonzo.Code.Ledger.Certs.d_voteDelegs_856
                                                    (coe v8) in
                                          coe
                                            (let v17
                                                   = MAlonzo.Code.Ledger.Certs.d_stakeDelegs_858
                                                       (coe v8) in
                                             coe
                                               (let v18
                                                      = MAlonzo.Code.Ledger.Certs.d_rewards_860
                                                          (coe v8) in
                                                coe
                                                  (case coe v12 of
                                                     MAlonzo.Code.Ledger.Certs.C_delegate_794 v19 v20 v21 v22
                                                       -> let v23
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
                                                                                   MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                   erased
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                               (coe
                                                                                                  v0))))
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                            (coe
                                                                                               v0)))))
                                                                                (coe v19)
                                                                                (coe
                                                                                   MAlonzo.Code.Interface.IsSet.du_dom_540
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                   (coe
                                                                                      MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_546)
                                                                                   (coe v18)))
                                                                             (coe
                                                                                MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                                                                          (coe
                                                                             MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                             (coe
                                                                                MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)
                                                                             (coe v22)
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
                                                                                   MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                   erased
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                               (coe
                                                                                                  v0))))
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                            (coe
                                                                                               v0)))))
                                                                                (coe v19)
                                                                                (coe
                                                                                   MAlonzo.Code.Interface.IsSet.du_dom_540
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                   (coe
                                                                                      MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_546)
                                                                                   (coe v18)))
                                                                             (coe
                                                                                MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                                (coe
                                                                                   MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)
                                                                                (coe v22)
                                                                                (coe
                                                                                   (0 :: Integer))))
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                erased
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                            (coe
                                                                                               v0))))))
                                                                             (coe v21)
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
                                                                                         MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_546)
                                                                                      (coe v15)))
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                   erased
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))))) in
                                                          coe
                                                            (case coe v23 of
                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v24 v25
                                                                 -> if coe v24
                                                                      then case coe v25 of
                                                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v26
                                                                               -> let v27
                                                                                        = coe
                                                                                            MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7496'_862
                                                                                               (let v27
                                                                                                      = let v27
                                                                                                              = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                                        (coe
                                                                                                                           v0))) in
                                                                                                        coe
                                                                                                          (let v28
                                                                                                                 = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
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
                                                                                                                   v28))) in
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
                                                                                                        v27)
                                                                                                     (coe
                                                                                                        v19)
                                                                                                     (coe
                                                                                                        v20)
                                                                                                     (coe
                                                                                                        v16)))
                                                                                               (let v27
                                                                                                      = let v27
                                                                                                              = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                                        (coe
                                                                                                                           v0))) in
                                                                                                        coe
                                                                                                          (let v28
                                                                                                                 = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
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
                                                                                                                   v28))) in
                                                                                                coe
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Axiom.Set.Map.du_insertIfJust_912
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                        erased
                                                                                                        v27)
                                                                                                     (coe
                                                                                                        v19)
                                                                                                     (coe
                                                                                                        v21)
                                                                                                     (coe
                                                                                                        v17)))
                                                                                               (let v27
                                                                                                      = let v27
                                                                                                              = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_504
                                                                                                                        (coe
                                                                                                                           v0))) in
                                                                                                        coe
                                                                                                          (let v28
                                                                                                                 = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_504
                                                                                                                        (coe
                                                                                                                           v0)) in
                                                                                                           coe
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                (coe
                                                                                                                   v27)
                                                                                                                (coe
                                                                                                                   v28))) in
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
                                                                                                        v27)
                                                                                                     (coe
                                                                                                        v18)
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
                                                                                                              v19)
                                                                                                           (coe
                                                                                                              (0 ::
                                                                                                                 Integer)))))))
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Certs.C_DELEG'45'delegate_1102
                                                                                               v26) in
                                                                                  coe
                                                                                    (case coe v27 of
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v28 v29
                                                                                         -> coe
                                                                                              MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                              (coe
                                                                                                 MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'44'_'10215''7580''738'_906
                                                                                                    (coe
                                                                                                       v28)
                                                                                                    (coe
                                                                                                       v9)
                                                                                                    (coe
                                                                                                       v10)
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Certs.du_updateCertDeposit''_944
                                                                                                       (coe
                                                                                                          v0)
                                                                                                       (coe
                                                                                                          v12)
                                                                                                       (coe
                                                                                                          v11)))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Certs.C_CERT'45'deleg_1178
                                                                                                    v29))
                                                                                       _ -> MAlonzo.RTE.mazUnreachableError)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                                      else (let v26
                                                                                  = seq
                                                                                      (coe v25)
                                                                                      (coe
                                                                                         MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                         (let v26
                                                                                                = coe
                                                                                                    MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                erased
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                                            (coe
                                                                                                                               v0))))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                                         (coe
                                                                                                                            v0)))))
                                                                                                             (coe
                                                                                                                v19)
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Interface.IsSet.du_dom_540
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                                                                                                (coe
                                                                                                                   v18)))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                          (coe
                                                                                                             v22)
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.PParams.d_keyDeposit_324
                                                                                                             (coe
                                                                                                                v3))))
                                                                                                    erased in
                                                                                          coe
                                                                                            (case coe
                                                                                                    v26 of
                                                                                               MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v27
                                                                                                 -> coe
                                                                                                      ("\172\n((z\n  : (Interface.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n     Interface.IsSet.IsSet.\8713 c)\n    (Interface.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) rwds)) \8594\n d \8801 .Ledger.PParams.PParams.keyDeposit pp)"
                                                                                                       ::
                                                                                                       Data.Text.Text)
                                                                                               MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v27
                                                                                                 -> let v28
                                                                                                          = coe
                                                                                                              MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                       erased
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                                                   (coe
                                                                                                                                      v0))))
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                                                (coe
                                                                                                                                   v0)))))
                                                                                                                    (coe
                                                                                                                       v19)
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Interface.IsSet.du_dom_540
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                                                                                                       (coe
                                                                                                                          v18)))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                                    (coe
                                                                                                                       v22)
                                                                                                                    (coe
                                                                                                                       (0 ::
                                                                                                                          Integer))))
                                                                                                              erased in
                                                                                                    coe
                                                                                                      (case coe
                                                                                                              v28 of
                                                                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v29
                                                                                                           -> coe
                                                                                                                ("\172\n((z\n  : (Interface.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n     Interface.IsSet.IsSet.\8712 c)\n    (Interface.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) rwds)) \8594\n d \8801 0)"
                                                                                                                 ::
                                                                                                                 Data.Text.Text)
                                                                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v29
                                                                                                           -> coe
                                                                                                                ("\172\n(Interface.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n Interface.IsSet.IsSet.\8712 mc)\n((.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8746\n  Axiom.Set.Theory.map (.Axiom.Set.Theory\7496.th List-Model\7496) just\n  (Interface.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) pools))\n (Interface.HasSingleton.HasSingleton.\10100\n  Interface.HasSingleton.HasSingletonSet-Set\n  (.Axiom.Set.Theory\7496.th List-Model\7496)\n  \10101\n  nothing))"
                                                                                                                 ::
                                                                                                                 Data.Text.Text)
                                                                                                         _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                               _ -> MAlonzo.RTE.mazUnreachableError))) in
                                                                            coe
                                                                              (case coe v26 of
                                                                                 MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v27
                                                                                   -> case coe
                                                                                             v27 of
                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v28 v29
                                                                                          -> coe
                                                                                               MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                               (coe
                                                                                                  MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'44'_'10215''7580''738'_906
                                                                                                     (coe
                                                                                                        v28)
                                                                                                     (coe
                                                                                                        v9)
                                                                                                     (coe
                                                                                                        v10)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Certs.du_updateCertDeposit''_944
                                                                                                        (coe
                                                                                                           v0)
                                                                                                        (coe
                                                                                                           v12)
                                                                                                        (coe
                                                                                                           v11)))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Certs.C_CERT'45'deleg_1178
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
                                                                                                            MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'44'_'10215''7580''738'_906
                                                                                                            (coe
                                                                                                               v8)
                                                                                                            (coe
                                                                                                               v29)
                                                                                                            (coe
                                                                                                               v10)
                                                                                                            (coe
                                                                                                               v11))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Certs.C_CERT'45'pool_1180
                                                                                                            v30))
                                                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                                                        MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v28
                                                                                          -> case coe
                                                                                                    v14 of
                                                                                               MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v29
                                                                                                 -> case coe
                                                                                                           v29 of
                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v30 v31
                                                                                                        -> coe
                                                                                                             MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'44'_'10215''7580''738'_906
                                                                                                                   (coe
                                                                                                                      v8)
                                                                                                                   (coe
                                                                                                                      v9)
                                                                                                                   (coe
                                                                                                                      v30)
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Certs.du_updateCertDeposit''_944
                                                                                                                      (coe
                                                                                                                         v0)
                                                                                                                      (coe
                                                                                                                         v12)
                                                                                                                      (coe
                                                                                                                         v11)))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Certs.C_CERT'45'vdel_1182
                                                                                                                   v31))
                                                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                                                               MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v29
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
                                                                                                            v27
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                               MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                               ("\nPOOL: "
                                                                                                                ::
                                                                                                                Data.Text.Text)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                                  MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                                  v28
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                                     MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                                     ("\nVDEL: "
                                                                                                                      ::
                                                                                                                      Data.Text.Text)
                                                                                                                     v29)))))
                                                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                                                 _ -> MAlonzo.RTE.mazUnreachableError))
                                                               _ -> MAlonzo.RTE.mazUnreachableError)
                                                     MAlonzo.Code.Ledger.Certs.C_dereg_796 v19 v20
                                                       -> let v21
                                                                = coe
                                                                    MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                                                                    (coe
                                                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                                       (coe
                                                                          MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                             erased
                                                                             (coe
                                                                                MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                            (coe
                                                                                               v0))))
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                         (coe v0))))
                                                                                (coe
                                                                                   MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                   (coe
                                                                                      MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))))
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                             (coe v19)
                                                                             (coe (0 :: Integer)))
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.Map.du__'738'_532
                                                                             (coe v18)))
                                                                       (coe
                                                                          MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                             erased
                                                                             (coe
                                                                                MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_784
                                                                                   (coe v0))
                                                                                (coe
                                                                                   MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                   (coe
                                                                                      MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))))
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_774
                                                                                (coe v19))
                                                                             (coe v20))
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                                                             (coe v6)))) in
                                                          coe
                                                            (case coe v21 of
                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v22 v23
                                                                 -> if coe v22
                                                                      then case coe v23 of
                                                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v24
                                                                               -> let v25
                                                                                        = coe
                                                                                            MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7496'_862
                                                                                               (let v25
                                                                                                      = let v25
                                                                                                              = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                                        (coe
                                                                                                                           v0))) in
                                                                                                        coe
                                                                                                          (let v26
                                                                                                                 = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
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
                                                                                                                   v26))) in
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
                                                                                                        v25)
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
                                                                                                        v19)))
                                                                                               (let v25
                                                                                                      = let v25
                                                                                                              = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                                        (coe
                                                                                                                           v0))) in
                                                                                                        coe
                                                                                                          (let v26
                                                                                                                 = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
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
                                                                                                                   v26))) in
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
                                                                                                        v25)
                                                                                                     (coe
                                                                                                        v17)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_304
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Set_308
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                        v19)))
                                                                                               (let v25
                                                                                                      = let v25
                                                                                                              = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_504
                                                                                                                        (coe
                                                                                                                           v0))) in
                                                                                                        coe
                                                                                                          (let v26
                                                                                                                 = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_504
                                                                                                                        (coe
                                                                                                                           v0)) in
                                                                                                           coe
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                (coe
                                                                                                                   v25)
                                                                                                                (coe
                                                                                                                   v26))) in
                                                                                                coe
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1262
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                        erased
                                                                                                        v25)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Axiom.Set.Map.du__'738'_532
                                                                                                           (coe
                                                                                                              v18))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                           (coe
                                                                                                              v18)))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_302
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Set_306
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                        v19))))
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Certs.C_DELEG'45'dereg_1104
                                                                                               v24) in
                                                                                  coe
                                                                                    (case coe v25 of
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v26 v27
                                                                                         -> coe
                                                                                              MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                              (coe
                                                                                                 MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'44'_'10215''7580''738'_906
                                                                                                    (coe
                                                                                                       v26)
                                                                                                    (coe
                                                                                                       v9)
                                                                                                    (coe
                                                                                                       v10)
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Certs.du_updateCertDeposit''_944
                                                                                                       (coe
                                                                                                          v0)
                                                                                                       (coe
                                                                                                          v12)
                                                                                                       (coe
                                                                                                          v11)))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Certs.C_CERT'45'deleg_1178
                                                                                                    v27))
                                                                                       _ -> MAlonzo.RTE.mazUnreachableError)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                                      else (let v24
                                                                                  = seq
                                                                                      (coe v23)
                                                                                      (coe
                                                                                         MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                         (let v24
                                                                                                = coe
                                                                                                    MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                          erased
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                                         (coe
                                                                                                                            v0))))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                                                      (coe
                                                                                                                         v0))))
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                          (coe
                                                                                                             v19)
                                                                                                          (coe
                                                                                                             (0 ::
                                                                                                                Integer)))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                                                                                          (coe
                                                                                                             v18)))
                                                                                                    erased in
                                                                                          coe
                                                                                            (case coe
                                                                                                    v24 of
                                                                                               MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v25
                                                                                                 -> coe
                                                                                                      ("\172\n(Interface.IsSet.IsSet-Map (.Axiom.Set.Theory\7496.th List-Model\7496)\n Interface.IsSet.IsSet.\8712 (c , 0))\nrwds"
                                                                                                       ::
                                                                                                       Data.Text.Text)
                                                                                               MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v25
                                                                                                 -> coe
                                                                                                      ("\172\n(Interface.IsSet.IsSet-Map (.Axiom.Set.Theory\7496.th List-Model\7496)\n Interface.IsSet.IsSet.\8712 (CredentialDeposit c , d))\ndeps"
                                                                                                       ::
                                                                                                       Data.Text.Text)
                                                                                               _ -> MAlonzo.RTE.mazUnreachableError))) in
                                                                            coe
                                                                              (case coe v24 of
                                                                                 MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v25
                                                                                   -> case coe
                                                                                             v25 of
                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v26 v27
                                                                                          -> coe
                                                                                               MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                               (coe
                                                                                                  MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'44'_'10215''7580''738'_906
                                                                                                     (coe
                                                                                                        v26)
                                                                                                     (coe
                                                                                                        v9)
                                                                                                     (coe
                                                                                                        v10)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Certs.du_updateCertDeposit''_944
                                                                                                        (coe
                                                                                                           v0)
                                                                                                        (coe
                                                                                                           v12)
                                                                                                        (coe
                                                                                                           v11)))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Certs.C_CERT'45'deleg_1178
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
                                                                                                            MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'44'_'10215''7580''738'_906
                                                                                                            (coe
                                                                                                               v8)
                                                                                                            (coe
                                                                                                               v27)
                                                                                                            (coe
                                                                                                               v10)
                                                                                                            (coe
                                                                                                               v11))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Certs.C_CERT'45'pool_1180
                                                                                                            v28))
                                                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                                                        MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v26
                                                                                          -> case coe
                                                                                                    v14 of
                                                                                               MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v27
                                                                                                 -> case coe
                                                                                                           v27 of
                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v28 v29
                                                                                                        -> coe
                                                                                                             MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'44'_'10215''7580''738'_906
                                                                                                                   (coe
                                                                                                                      v8)
                                                                                                                   (coe
                                                                                                                      v9)
                                                                                                                   (coe
                                                                                                                      v28)
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Certs.du_updateCertDeposit''_944
                                                                                                                      (coe
                                                                                                                         v0)
                                                                                                                      (coe
                                                                                                                         v12)
                                                                                                                      (coe
                                                                                                                         v11)))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Certs.C_CERT'45'vdel_1182
                                                                                                                   v29))
                                                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                                                               MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v27
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
                                                                                                            v25
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                               MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                               ("\nPOOL: "
                                                                                                                ::
                                                                                                                Data.Text.Text)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                                  MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                                  v26
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                                     MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                                     ("\nVDEL: "
                                                                                                                      ::
                                                                                                                      Data.Text.Text)
                                                                                                                     v27)))))
                                                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                                                 _ -> MAlonzo.RTE.mazUnreachableError))
                                                               _ -> MAlonzo.RTE.mazUnreachableError)
                                                     _ -> let v19
                                                                = "Unexpected certificate in DELEG"
                                                                  ::
                                                                  Data.Text.Text in
                                                          coe
                                                            (case coe v13 of
                                                               MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v20
                                                                 -> case coe v20 of
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v21 v22
                                                                        -> coe
                                                                             MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                             (coe
                                                                                MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'44'_'10215''7580''738'_906
                                                                                   (coe v8)
                                                                                   (coe v21)
                                                                                   (coe v10)
                                                                                   (coe v11))
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Certs.C_CERT'45'pool_1180
                                                                                   v22))
                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                               MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v20
                                                                 -> case coe v14 of
                                                                      MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v21
                                                                        -> case coe v21 of
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v22 v23
                                                                               -> coe
                                                                                    MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                    (coe
                                                                                       MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'44'_'10215''7580''738'_906
                                                                                          (coe v8)
                                                                                          (coe v9)
                                                                                          (coe v22)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Certs.du_updateCertDeposit''_944
                                                                                             (coe
                                                                                                v0)
                                                                                             (coe
                                                                                                v12)
                                                                                             (coe
                                                                                                v11)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Certs.C_CERT'45'vdel_1182
                                                                                          v23))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                                      MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v21
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
                                                                                   v19
                                                                                   (coe
                                                                                      MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                      MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                      ("\nPOOL: "
                                                                                       ::
                                                                                       Data.Text.Text)
                                                                                      (coe
                                                                                         MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                         MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                         v20
                                                                                         (coe
                                                                                            MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                            MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                            ("\nVDEL: "
                                                                                             ::
                                                                                             Data.Text.Text)
                                                                                            v21)))))
                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                               _ -> MAlonzo.RTE.mazUnreachableError))))))))
                       _ -> MAlonzo.RTE.mazUnreachableError)
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Certs.Properties.Computational-CERTBASE
d_Computational'45'CERTBASE_1712 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERTBASE_1712 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 ->
         case coe v1 of
           MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'44'_'44'_'10215''7580'_846 v2 v3 v4 v5 v6
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
                                             MAlonzo.Code.Axiom.Set.d_all'63'_1598
                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                             erased erased
                                             (coe
                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                             (let v10
                                                    = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                           (coe
                                                              MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_558
                                                              (coe v0))) in
                                              coe
                                                (let v11
                                                       = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                           (coe
                                                              MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_558
                                                              (coe v0)) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                      (coe v10) (coe v11))))
                                             (coe v9)
                                             (coe
                                                MAlonzo.Code.Interface.IsSet.du_dom_540
                                                (coe
                                                   (\ v10 ->
                                                      coe
                                                        MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                           erased
                                                           (coe
                                                              MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                       (coe v0))))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                    (coe v0)))))
                                                        (coe v10)
                                                        (coe
                                                           MAlonzo.Code.Interface.IsSet.du_dom_540
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1458
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                           (coe
                                                              MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Certs.d_voteDelegs_856
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Certs.d_dState_898
                                                                 (coe v7)))))))
                                             v9))
                                     (coe
                                        MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1122
                                        (\ v9 ->
                                           coe
                                             MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                             (coe
                                                MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                (coe
                                                   MAlonzo.Code.Data.Bool.Properties.d__'8799'__2950))
                                             (coe
                                                MAlonzo.Code.Ledger.Address.du_isKeyHashObj'7495'_26
                                                (coe v9))
                                             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                                        (coe
                                           MAlonzo.Code.Axiom.Set.du_map_380
                                           (MAlonzo.Code.Axiom.Set.d_th_1430
                                              (coe
                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                           (\ v9 -> MAlonzo.Code.Ledger.Address.d_stake_84 (coe v9))
                                           (coe
                                              MAlonzo.Code.Interface.IsSet.du_dom_538
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_th_1430
                                                 (coe
                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                              (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_546)
                                              (coe v5)))))
                                  (coe
                                     MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1622
                                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                     (coe
                                        (\ v9 ->
                                           coe
                                             MAlonzo.Code.Axiom.Set.d_all'63'_1598
                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                             erased erased
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
                                                                 MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_558
                                                                 (coe v0))) in
                                                 coe
                                                   (let v11
                                                          = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_558
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
                                                   (\ v10 ->
                                                      coe
                                                        MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                           erased
                                                           (coe
                                                              MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                          (coe v0))))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                       (coe v0))))
                                                              (coe
                                                                 MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                 (coe
                                                                    MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))))
                                                        (coe v10)
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                           (coe
                                                              MAlonzo.Code.Ledger.Certs.d_rewards_860
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Certs.d_dState_898
                                                                 (coe v7)))))))
                                             v9))
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
                                           MAlonzo.Code.Axiom.Set.Map.du__'738'_532 (coe v5))))) in
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
                                                     MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'44'_'10215''7580''738'_906
                                                     (coe
                                                        MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7496'_862
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.Map.du__'738'_534
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Certs.d_voteDelegs_856
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Certs.d_dState_898
                                                                    (coe v7))))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Certs.d_voteDelegs_856
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Certs.d_dState_898
                                                                    (coe v7)))))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Certs.d_stakeDelegs_858
                                                           (coe
                                                              MAlonzo.Code.Ledger.Certs.d_dState_898
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
                                                                             MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_546)
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_532
                                                                                (coe v5))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                (coe v5))))))
                                                                 (coe (0 :: Integer)))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Certs.d_rewards_860
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Certs.d_dState_898
                                                                    (coe v7))))))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Certs.d_pState_900
                                                        (coe v7))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'10215''7515'_886
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
                                                                                    MAlonzo.Code.Ledger.Certs.C_mkGeneralizeTel_36791
                                                                                    (coe v3)
                                                                                    (coe v4)
                                                                                    (coe v2)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Certs.d_dreps_882
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Certs.d_gState_902
                                                                                          (coe v7)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_532
                                                                                          (coe v5))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                          (coe v5)))
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
                                                                                             MAlonzo.Code.Ledger.Certs.d_voteDelegs_856
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Certs.d_dState_898
                                                                                                (coe
                                                                                                   v7))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Certs.d_voteDelegs_856
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Certs.d_dState_898
                                                                                                (coe
                                                                                                   v7)))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Certs.d_rewards_860
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Certs.d_dState_898
                                                                                          (coe v7)))
                                                                                    (coe v6)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Certs.d_stakeDelegs_858
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Certs.d_dState_898
                                                                                          (coe v7)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Certs.d_pState_900
                                                                                       (coe v7))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Certs.d_ccHotKeys_884
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Certs.d_gState_902
                                                                                          (coe v7)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Certs.d_temporaryDeposits_904
                                                                                       (coe v7)) in
                                                                          coe
                                                                            (MAlonzo.Code.Ledger.PParams.d_drepActivity_360
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Certs.d_'46'generalizedField'45'pp_36765
                                                                                  v14))) in
                                                               coe (coe (\ v15 -> v14)))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Certs.d_dreps_882
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Certs.d_gState_902
                                                                    (coe v7)))
                                                              (let v14
                                                                     = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                               coe
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.du_mapPartial_564
                                                                    (MAlonzo.Code.Axiom.Set.d_th_1458
                                                                       (coe v14))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.GovernanceActions.du_getDRepVote_766)
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
                                                           MAlonzo.Code.Ledger.Certs.d_ccHotKeys_884
                                                           (coe
                                                              MAlonzo.Code.Ledger.Certs.d_gState_902
                                                              (coe v7))))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Certs.d_temporaryDeposits_904
                                                        (coe v7)))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Certs.C_CERT'45'base_1250
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
                                                                 MAlonzo.Code.Axiom.Set.d_all'63'_1598
                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                 erased erased
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                                 (let v13
                                                                        = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_558
                                                                                  (coe v0))) in
                                                                  coe
                                                                    (let v14
                                                                           = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_558
                                                                                  (coe v0)) in
                                                                     coe
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                          (coe v13) (coe v14))))
                                                                 (coe v12)
                                                                 (coe
                                                                    MAlonzo.Code.Interface.IsSet.du_dom_540
                                                                    (coe
                                                                       (\ v13 ->
                                                                          coe
                                                                            MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                               erased
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                           (coe
                                                                                              v0))))
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                                                        (coe v0)))))
                                                                            (coe v13)
                                                                            (coe
                                                                               MAlonzo.Code.Interface.IsSet.du_dom_540
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.d_th_1458
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                               (coe
                                                                                  MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Certs.d_voteDelegs_856
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Certs.d_dState_898
                                                                                     (coe v7)))))))
                                                                 v12))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1122
                                                            (\ v12 ->
                                                               coe
                                                                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                 (coe
                                                                    MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                    (coe
                                                                       MAlonzo.Code.Data.Bool.Properties.d__'8799'__2950))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Address.du_isKeyHashObj'7495'_26
                                                                    (coe v12))
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.du_map_380
                                                               (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                               (\ v12 ->
                                                                  MAlonzo.Code.Ledger.Address.d_stake_84
                                                                    (coe v12))
                                                               (coe
                                                                  MAlonzo.Code.Interface.IsSet.du_dom_538
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_th_1430
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                  (coe
                                                                     MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_546)
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
                                                        ("\172\n(.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8838\n Axiom.Set.Theory.map (.Axiom.Set.Theory\7496.th List-Model\7496)\n (Bifunctor.map\8321 (_1717 gs e pp vs wdrls deposits st sig)\n  (\955 r \8594 .Ledger.Address.RwdAddr.stake r))\n (.Interface.IsSet.IsSet.toSet\n  (_1706 gs e pp vs wdrls deposits st sig) wdrls))\n(.proj\8321\n (.Ledger.Certs.DState.rewards (.Ledger.Certs.CertState.dState st)))"
                                                         ::
                                                         Data.Text.Text)
                                                 _ -> MAlonzo.RTE.mazUnreachableError)))
                          _ -> MAlonzo.RTE.mazUnreachableError))
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Certs.Properties.Computational-CERTS
d_Computational'45'CERTS_1844 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERTS_1844 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7495'_774
      (coe d_Computational'45'CERTBASE_1712 (coe v0))
      (coe d_Computational'45'CERT_1304 (coe v0))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_730)
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_730)
-- Ledger.Certs.Properties.HasCoin-Map
d_HasCoin'45'Map_1938 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'Map_1938 ~v0 ~v1 v2 = du_HasCoin'45'Map_1938 v2
du_HasCoin'45'Map_1938 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'Map_1938 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1162 (coe v0)
              (coe
                 MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                 (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
              (coe
                 MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                 (coe
                    MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
              (coe (\ v2 -> v2)) (coe v1)))
-- Ledger.Certs.Properties.≡ᵉ-getCoin
d_'8801''7497''45'getCoin_1952 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''7497''45'getCoin_1952 = erased
-- Ledger.Certs.Properties._.getCoin-singleton
d_getCoin'45'singleton_1978 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_getCoin'45'singleton_1978 = erased
-- Ledger.Certs.Properties._._.∪ˡsingleton≡
d_'8746''737'singleton'8801'_1998 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8746''737'singleton'8801'_1998 = erased
-- Ledger.Certs.Properties._.CERT-pov
d_CERT'45'pov_2040 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (() ->
   MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
   [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_888 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
  MAlonzo.Code.Ledger.Certs.T_DState_912 ->
  MAlonzo.Code.Ledger.Certs.T_DState_912 ->
  MAlonzo.Code.Ledger.Certs.T_PState_928 ->
  MAlonzo.Code.Ledger.Certs.T_PState_928 ->
  MAlonzo.Code.Ledger.Certs.T_GState_940 ->
  MAlonzo.Code.Ledger.Certs.T_GState_940 ->
  MAlonzo.Code.Ledger.Certs.T__'8866'_'8640''10631'_'44'CERT'10632'__1078 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_CERT'45'pov_2040 = erased
-- Ledger.Certs.Properties._._.rwds-∪ˡ-decomp
d_rwds'45''8746''737''45'decomp_2118 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (() ->
   MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
   [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Ledger.Certs.T_PState_928 ->
  MAlonzo.Code.Ledger.Certs.T_GState_940 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rwds'45''8746''737''45'decomp_2118 v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                     ~v8 ~v9 v10 v11 ~v12 ~v13 ~v14 ~v15
  = du_rwds'45''8746''737''45'decomp_2118 v0 v10 v11
du_rwds'45''8746''737''45'decomp_2118 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rwds'45''8746''737''45'decomp_2118 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__886
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
         (coe
            MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_khs_200
                  (coe
                     MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_558 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
               (coe
                  MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_558 (coe v0)))))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8739'__1258
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
            (coe
               MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                     (coe
                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_558 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                  (coe
                     MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_558 (coe v0)))))
         (coe v2)
         (coe
            MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
            (MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            erased v1))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1266
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
            (coe
               MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                     (coe
                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_558 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                  (coe
                     MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_558 (coe v0)))))
         (coe v2)
         (coe
            MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
            (MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            erased v1))
-- Ledger.Certs.Properties._._.rwdsˢ-∪-decomp
d_rwds'738''45''8746''45'decomp_2120 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (() ->
   MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
   [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Ledger.Certs.T_PState_928 ->
  MAlonzo.Code.Ledger.Certs.T_GState_940 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rwds'738''45''8746''45'decomp_2120 v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                     ~v8 ~v9 v10 v11 ~v12 ~v13 ~v14 ~v15
  = du_rwds'738''45''8746''45'decomp_2120 v0 v10 v11
du_rwds'738''45''8746''45'decomp_2120 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rwds'738''45''8746''45'decomp_2120 v0 v1 v2
  = let v3
          = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__668
         (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v3))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'738'_536
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'8739'__1258
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1458
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe
                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                  (coe
                     MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                     (coe
                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_khs_200
                           (coe
                              MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_558 (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                        (coe
                           MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_558 (coe v0)))))
               (coe v2)
               (coe
                  MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                  (MAlonzo.Code.Axiom.Set.d_th_1458
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                  erased v1)))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'738'_536
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1266
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1458
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe
                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                  (coe
                     MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                     (coe
                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_khs_200
                           (coe
                              MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_558 (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                        (coe
                           MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_558 (coe v0)))))
               (coe v2)
               (coe
                  MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                  (MAlonzo.Code.Axiom.Set.d_th_1458
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                  erased v1))))
-- Ledger.Certs.Properties._._.rwds≡sing
d_rwds'8801'sing_2122 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (() ->
   MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
   [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Ledger.Certs.T_PState_928 ->
  MAlonzo.Code.Ledger.Certs.T_GState_940 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rwds'8801'sing_2122 v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
                      v11 ~v12 ~v13 ~v14 v15
  = du_rwds'8801'sing_2122 v0 v10 v11 v15
du_rwds'8801'sing_2122 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rwds'8801'sing_2122 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton''_1344
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
         (coe
            MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_khs_200
                  (coe
                     MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_558 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
               (coe
                  MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_558 (coe v0)))))
      (coe v2) (coe v1) (coe (0 :: Integer))
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
-- Ledger.Certs.Properties._._.rwds-∪ˡ-∪
d_rwds'45''8746''737''45''8746'_2124 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (() ->
   MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
   [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Ledger.Certs.T_PState_928 ->
  MAlonzo.Code.Ledger.Certs.T_GState_940 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rwds'45''8746''737''45''8746'_2124 v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                     ~v8 ~v9 v10 v11 ~v12 ~v13 ~v14 ~v15
  = du_rwds'45''8746''737''45''8746'_2124 v0 v10 v11
du_rwds'45''8746''737''45''8746'_2124 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rwds'45''8746''737''45''8746'_2124 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_disjoint'45''8746''737''45''8746'_900
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
         (coe
            MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_khs_200
                  (coe
                     MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_558 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
               (coe
                  MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_558 (coe v0)))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            MAlonzo.Code.Axiom.Set.d_specification_174
            (MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            erased erased
            (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_536 (coe v2))
            (coe
               MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
               (MAlonzo.Code.Axiom.Set.d_sp_150
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1458
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
               erased erased erased
               (coe
                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                  (coe
                     MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                     (coe
                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_khs_200
                           (coe
                              MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_558 (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                        (coe
                           MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_558 (coe v0))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                     (MAlonzo.Code.Axiom.Set.d_th_1458
                        (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                     erased v1))
               (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))))
      (coe
         MAlonzo.Code.Axiom.Set.Rel.du__'8739'_'7580'_686
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
            (coe
               MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                     (coe
                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_558 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                  (coe
                     MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_558 (coe v0)))))
         (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_536 (coe v2))
         (coe
            MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
            (MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            erased v1))
      erased
-- Ledger.Certs.Properties._._.sing-∪ˡ-∪
d_sing'45''8746''737''45''8746'_2126 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (() ->
   MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
   [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Ledger.Certs.T_PState_928 ->
  MAlonzo.Code.Ledger.Certs.T_GState_940 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_sing'45''8746''737''45''8746'_2126 v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                     ~v8 ~v9 v10 v11 ~v12 ~v13 ~v14 ~v15
  = du_sing'45''8746''737''45''8746'_2126 v0 v10 v11
du_sing'45''8746''737''45''8746'_2126 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_sing'45''8746''737''45''8746'_2126 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_disjoint'45''8746''737''45''8746'_900
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
         (coe
            MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_khs_200
                  (coe
                     MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_558 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
               (coe
                  MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_558 (coe v0)))))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'738'_536
         (coe
            MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_734
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
               (coe (0 :: Integer)))))
      (coe
         MAlonzo.Code.Axiom.Set.Rel.du__'8739'_'7580'_686
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
            (coe
               MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                     (coe
                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_558 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                  (coe
                     MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_558 (coe v0)))))
         (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_536 (coe v2))
         (coe
            MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
            (MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            erased v1))
      erased
-- Ledger.Certs.Properties._._.rwds-∪ˡ≡sing-∪ˡ
d_rwds'45''8746''737''8801'sing'45''8746''737'_2128 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (() ->
   MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
   [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Ledger.Certs.T_PState_928 ->
  MAlonzo.Code.Ledger.Certs.T_GState_940 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rwds'45''8746''737''8801'sing'45''8746''737'_2128 v0 ~v1 ~v2 ~v3
                                                    ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10 v11 ~v12 ~v13 ~v14
                                                    v15
  = du_rwds'45''8746''737''8801'sing'45''8746''737'_2128
      v0 v10 v11 v15
du_rwds'45''8746''737''8801'sing'45''8746''737'_2128 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rwds'45''8746''737''8801'sing'45''8746''737'_2128 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               du_rwds'45''8746''737''45''8746'_2124 (coe v0) (coe v1) (coe v2)))
         (coe
            MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'cong_706
                  (MAlonzo.Code.Axiom.Set.d_th_1458
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                  (coe
                     MAlonzo.Code.Axiom.Set.Map.du__'738'_536
                     (let v4
                            = coe
                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_khs_200
                                      (coe
                                         MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_558
                                         (coe v0))))
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                   (coe
                                      MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_558
                                      (coe v0))) in
                      coe
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.du__'8739'__1258
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1458
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                           (coe
                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased v4)
                           (coe v2)
                           (coe
                              MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                              (MAlonzo.Code.Axiom.Set.d_th_1458
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                              erased v1))))
                  (coe
                     MAlonzo.Code.Axiom.Set.Map.du__'738'_536
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_734
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1458
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                           (coe (0 :: Integer)))))
                  (coe
                     MAlonzo.Code.Axiom.Set.Map.du__'738'_536
                     (let v4
                            = coe
                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_khs_200
                                      (coe
                                         MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_558
                                         (coe v0))))
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                   (coe
                                      MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_558
                                      (coe v0))) in
                      coe
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1266
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1458
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                           (coe
                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased v4)
                           (coe v2)
                           (coe
                              MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                              (MAlonzo.Code.Axiom.Set.d_th_1458
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                              erased v1))))
                  (coe
                     MAlonzo.Code.Axiom.Set.Map.du__'738'_536
                     (let v4
                            = coe
                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_khs_200
                                      (coe
                                         MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_558
                                         (coe v0))))
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                   (coe
                                      MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_558
                                      (coe v0))) in
                      coe
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1266
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1458
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                           (coe
                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased v4)
                           (coe v2)
                           (coe
                              MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                              (MAlonzo.Code.Axiom.Set.d_th_1458
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                              erased v1))))
                  (coe du_rwds'8801'sing_2122 (coe v0) (coe v1) (coe v2) (coe v3))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v4 v5 -> v5))
                     (coe (\ v4 v5 -> v5)))))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (let v4
                      = coe
                          du_sing'45''8746''737''45''8746'_2126 (coe v0) (coe v1) (coe v2) in
                coe
                  (case coe v4 of
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
                       -> coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6) (coe v5)
                     _ -> MAlonzo.RTE.mazUnreachableError)))))
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
         (coe
            MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
               (let v4
                      = coe
                          du_sing'45''8746''737''45''8746'_2126 (coe v0) (coe v1) (coe v2) in
                coe
                  (case coe v4 of
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
                       -> coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6) (coe v5)
                     _ -> MAlonzo.RTE.mazUnreachableError)))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
               (coe
                  MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'cong_706
                  (MAlonzo.Code.Axiom.Set.d_th_1458
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                  (coe
                     MAlonzo.Code.Axiom.Set.Map.du__'738'_536
                     (let v4
                            = coe
                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_khs_200
                                      (coe
                                         MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_558
                                         (coe v0))))
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                   (coe
                                      MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_558
                                      (coe v0))) in
                      coe
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.du__'8739'__1258
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1458
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                           (coe
                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased v4)
                           (coe v2)
                           (coe
                              MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                              (MAlonzo.Code.Axiom.Set.d_th_1458
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                              erased v1))))
                  (coe
                     MAlonzo.Code.Axiom.Set.Map.du__'738'_536
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_734
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1458
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                           (coe (0 :: Integer)))))
                  (coe
                     MAlonzo.Code.Axiom.Set.Map.du__'738'_536
                     (let v4
                            = coe
                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_khs_200
                                      (coe
                                         MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_558
                                         (coe v0))))
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                   (coe
                                      MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_558
                                      (coe v0))) in
                      coe
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1266
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1458
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                           (coe
                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased v4)
                           (coe v2)
                           (coe
                              MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                              (MAlonzo.Code.Axiom.Set.d_th_1458
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                              erased v1))))
                  (coe
                     MAlonzo.Code.Axiom.Set.Map.du__'738'_536
                     (let v4
                            = coe
                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_khs_200
                                      (coe
                                         MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_558
                                         (coe v0))))
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                   (coe
                                      MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_558
                                      (coe v0))) in
                      coe
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1266
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1458
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                           (coe
                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased v4)
                           (coe v2)
                           (coe
                              MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
                              (MAlonzo.Code.Axiom.Set.d_th_1458
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                              erased v1))))
                  (coe du_rwds'8801'sing_2122 (coe v0) (coe v1) (coe v2) (coe v3))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v4 v5 -> v5))
                     (coe (\ v4 v5 -> v5))))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               du_rwds'45''8746''737''45''8746'_2124 (coe v0) (coe v1) (coe v2))))
-- Ledger.Certs.Properties._.CERTBASE-pov
d_CERTBASE'45'pov_2140 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (() ->
   MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
   [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_888 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_952 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_952 ->
  MAlonzo.Code.Ledger.Certs.T__'8866'_'8640''10631'_'44'CERTBASE'10632'__1080 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_CERTBASE'45'pov_2140 = erased
-- Ledger.Certs.Properties._._.goal
d_goal_2172 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (() ->
   MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
   [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_928 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758] ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_goal_2172 = erased
-- Ledger.Certs.Properties._.CERTS-pov
d_CERTS'45'pov_2200 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (() ->
   MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
   [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_888 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856] ->
  MAlonzo.Code.Ledger.Certs.T_DState_912 ->
  MAlonzo.Code.Ledger.Certs.T_DState_912 ->
  MAlonzo.Code.Ledger.Certs.T_PState_928 ->
  MAlonzo.Code.Ledger.Certs.T_PState_928 ->
  MAlonzo.Code.Ledger.Certs.T_GState_940 ->
  MAlonzo.Code.Ledger.Certs.T_GState_940 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_CERTS'45'pov_2200 = erased
