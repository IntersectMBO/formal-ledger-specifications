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
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive
import qualified MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError

-- _.DecEq-Credential
d_DecEq'45'Credential_72 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_72 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_72 v2 v3
du_DecEq'45'Credential_72 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_72 v0 v1
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
      (coe v0) (coe v1)
-- _.Show-Credential
d_Show'45'Credential_272 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_272 ~v0 ~v1 ~v2 ~v3
  = du_Show'45'Credential_272
du_Show'45'Credential_272 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_272 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential_286
      v1 v2
-- _.Show-Credential×Coin
d_Show'45'Credential'215'Coin_274 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_274 ~v0 ~v1 ~v2 ~v3
  = du_Show'45'Credential'215'Coin_274
du_Show'45'Credential'215'Coin_274 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_274 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential'215'Coin_290
      v1 v2
-- _.isKeyHash
d_isKeyHash_366 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_isKeyHash_366 = erased
-- Ledger.Conway.Conformance.Certs.Properties._.DecEq-VDeleg
d_DecEq'45'VDeleg_798 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_798 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1038
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Properties._.VDeleg
d_VDeleg_892 a0 = ()
-- Ledger.Conway.Conformance.Certs.Properties._._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__1038 a0 a1 a2 a3 a4
  = ()
-- Ledger.Conway.Conformance.Certs.Properties._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1040 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1288 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1488 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1488 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1040 = erased
-- Ledger.Conway.Conformance.Certs.Properties._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__1042 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Certs.Properties._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__1044 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Certs.Properties._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__1046 a0 a1 a2 a3 a4
  = ()
-- Ledger.Conway.Conformance.Certs.Properties._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__1048 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Certs.Properties._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_1108 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_1108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Properties._.DepositPurpose
d_DepositPurpose_1114 a0 = ()
-- Ledger.Conway.Conformance.Certs.Properties._.completeness
d_completeness_1490 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_1490 = erased
-- Ledger.Conway.Conformance.Certs.Properties._.computeProof
d_computeProof_1496 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_1496 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Properties.lookupDeposit
d_lookupDeposit_1516 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1062 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_lookupDeposit_1516 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.d_any'63'_1628
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
      erased erased
      (\ v3 ->
         MAlonzo.Code.Class.Decidable.Core.d_dec_16
           (coe
              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                 (coe v0))
              (coe v2) (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
      (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v1))
-- Ledger.Conway.Conformance.Certs.Properties.Computational-DELEG
d_Computational'45'DELEG_1524 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'DELEG_1524 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 v3 ->
         let v4
               = coe
                   MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                   (coe ("Unexpected certificate in DELEG" :: Data.Text.Text)) in
         coe
           (case coe v3 of
              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_delegate_1254 v5 v6 v7 v8
                -> let v9
                         = coe
                             MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                             (coe
                                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__106
                                (coe
                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__106
                                   (coe
                                      MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                         (let v9
                                                = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                    (coe
                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                          (coe v0))) in
                                          coe
                                            (let v10
                                                   = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                          (coe v0)) in
                                             coe
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                  (coe v9) (coe v10))))
                                         (coe v5)
                                         (coe
                                            MAlonzo.Code.Class.IsSet.du_dom_562
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_th_1480
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1466
                                               (coe v2)))))
                                   (coe
                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                      (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                      (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))
                                (coe
                                   MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                   (coe
                                      MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                      (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                      (coe v8)
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pparams_1376
                                            (coe v1))))))
                             (coe
                                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                (coe
                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__106
                                   (coe
                                      MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                         (let v9
                                                = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                    (coe
                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                          (coe v0))) in
                                          coe
                                            (let v10
                                                   = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                          (coe v0)) in
                                             coe
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                  (coe v9) (coe v10))))
                                         (coe v5)
                                         (coe
                                            MAlonzo.Code.Class.IsSet.du_dom_562
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_th_1480
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1466
                                               (coe v2)))))
                                   (coe
                                      MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                      (coe
                                         MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                         (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                         (coe v8) (coe (0 :: Integer)))))
                                (coe
                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                   (coe
                                      MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                         (coe
                                            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1038
                                               (coe v0)))
                                         (coe v6)
                                         (coe
                                            MAlonzo.Code.Axiom.Set.du__'8746'__682
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_th_1480
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (coe
                                               MAlonzo.Code.Axiom.Set.du_map_400
                                               (MAlonzo.Code.Axiom.Set.d_th_1480
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               (\ v9 ->
                                                  coe
                                                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegCredential_804
                                                       (coe v9)))
                                               (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_delegatees_1380
                                                  (coe v1)))
                                            (coe
                                               MAlonzo.Code.Axiom.Set.du_fromList_430
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_th_1480
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
                                                           MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegAbstain_806))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegNoConfidence_808))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))
                                   (coe
                                      MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                         (coe
                                            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                     (coe v0)))))
                                         (coe v7)
                                         (coe
                                            MAlonzo.Code.Axiom.Set.du__'8746'__682
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_th_1480
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (coe
                                               MAlonzo.Code.Axiom.Set.du_map_400
                                               (MAlonzo.Code.Axiom.Set.d_th_1480
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16)
                                               (coe
                                                  MAlonzo.Code.Class.IsSet.du_dom_562
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_th_1480
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1378
                                                     (coe v1))))
                                            (coe
                                               MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                                               (MAlonzo.Code.Axiom.Set.d_th_1480
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
                                                   MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'DState_1504)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (let v13
                                                             = let v13
                                                                     = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                               (coe v0))) in
                                                               coe
                                                                 (let v14
                                                                        = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                               (coe v0)) in
                                                                  coe
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                       (coe v13) (coe v14))) in
                                                       coe
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.Map.du_insertIfJust_968
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_th_1480
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                               erased v13)
                                                            (coe v5) (coe v6)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1462
                                                               (coe v2))))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (let v13
                                                                = let v13
                                                                        = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                                  (coe v0))) in
                                                                  coe
                                                                    (let v14
                                                                           = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                                  (coe v0)) in
                                                                     coe
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                          (coe v13) (coe v14))) in
                                                          coe
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.Map.du_insertIfJust_968
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                                                  (coe
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                  erased v13)
                                                               (coe v5) (coe v7)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1464
                                                                  (coe v2))))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (let v13
                                                                   = let v13
                                                                           = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                                     (coe v0))) in
                                                                     coe
                                                                       (let v14
                                                                              = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                                     (coe v0)) in
                                                                        coe
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                             (coe v13)
                                                                             (coe v14))) in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__902
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_th_1480
                                                                     (coe
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                     erased v13)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1466
                                                                     (coe v2))
                                                                  (coe
                                                                     MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                                     (coe
                                                                        MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                                        (coe
                                                                           MAlonzo.Code.Axiom.Set.d_th_1480
                                                                           (coe
                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe v5)
                                                                        (coe (0 :: Integer))))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1532
                                                               (coe v0)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pparams_1376
                                                                  (coe v1))
                                                               (coe v3)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1468
                                                                  (coe v2)))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_DELEG'45'delegate_1732
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
                                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                                       (coe
                                                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                                             (coe
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                             (let v12
                                                                    = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                              (coe v0))) in
                                                              coe
                                                                (let v13
                                                                       = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                              (coe v0)) in
                                                                 coe
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                      (coe v12) (coe v13))))
                                                             (coe v5)
                                                             (coe
                                                                MAlonzo.Code.Class.IsSet.du_dom_562
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                (coe
                                                                   MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1466
                                                                   (coe v2))))
                                                          (coe
                                                             MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
                                                       (coe
                                                          MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                          (coe
                                                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                          (coe v8)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pparams_1376
                                                                (coe v1)))))
                                                    erased in
                                          coe
                                            (case coe v12 of
                                               MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v13
                                                 -> coe
                                                      ("\172\n((z\n  : (Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n     Class.IsSet.IsSet.\8713 c)\n    (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n     (.Ledger.Conway.Conformance.Certs.DState.rewards ds))) \8594\n d \8801\n .Ledger.Conway.Specification.PParams.PParams.keyDeposit\n (.Ledger.Conway.Specification.Certs.DelegEnv.pparams de))"
                                                       ::
                                                       Data.Text.Text)
                                               MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v13
                                                 -> let v14
                                                          = coe
                                                              MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                              (coe
                                                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                                                    (coe
                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                    (let v14
                                                                           = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                                     (coe v0))) in
                                                                     coe
                                                                       (let v15
                                                                              = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                                     (coe v0)) in
                                                                        coe
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                             (coe v14) (coe v15))))
                                                                    (coe v5)
                                                                    (coe
                                                                       MAlonzo.Code.Class.IsSet.du_dom_562
                                                                       (coe
                                                                          MAlonzo.Code.Axiom.Set.d_th_1480
                                                                          (coe
                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                       (coe
                                                                          MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1466
                                                                          (coe v2))))
                                                                 (coe
                                                                    MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
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
                                                                           MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                                                           (coe
                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                           (coe
                                                                              MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1038
                                                                                 (coe v0)))
                                                                           (coe v6)
                                                                           (coe
                                                                              MAlonzo.Code.Axiom.Set.du__'8746'__682
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                 (coe
                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.du_map_400
                                                                                 (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                    (coe
                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                 (\ v16 ->
                                                                                    coe
                                                                                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegCredential_804
                                                                                         (coe v16)))
                                                                                 (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_delegatees_1380
                                                                                    (coe v1)))
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.du_fromList_430
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_th_1480
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
                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegAbstain_806))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegNoConfidence_808))
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                                                        erased in
                                                              coe
                                                                (case coe v16 of
                                                                   MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v17
                                                                     -> coe
                                                                          ("\172\n(Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8712 mv)\n((.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8746\n  Axiom.Set.Theory.map (.Axiom.Set.Theory\7496.th List-Model\7496)\n  (\955 x \8594 just (vDelegCredential x))\n  (.Ledger.Conway.Specification.Certs.DelegEnv.delegatees de))\n (Axiom.Set.Theory.fromList (.Axiom.Set.Theory\7496.th List-Model\7496)\n  (nothing \8759 just vDelegAbstain \8759 just vDelegNoConfidence \8759 [])))"
                                                                           ::
                                                                           Data.Text.Text)
                                                                   MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v17
                                                                     -> coe
                                                                          ("\172\n(Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8712 mc)\n((.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8746\n  Axiom.Set.Theory.map (.Axiom.Set.Theory\7496.th List-Model\7496) just\n  (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n   (.Ledger.Conway.Specification.Certs.DelegEnv.pools de)))\n (Class.HasSingleton.HasSingleton.\10100\n  Class.HasSingleton.HasSingletonSet-Set\n  (.Axiom.Set.Theory\7496.th List-Model\7496)\n  \10101\n  nothing))"
                                                                           ::
                                                                           Data.Text.Text)
                                                                   _ -> MAlonzo.RTE.mazUnreachableError)
                                                         _ -> MAlonzo.RTE.mazUnreachableError)
                                               _ -> MAlonzo.RTE.mazUnreachableError)))
                        _ -> MAlonzo.RTE.mazUnreachableError)
              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_dereg_1256 v5 v6
                -> let v7
                         = d_lookupDeposit_1516
                             (coe v0)
                             (coe
                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1468
                                (coe v2))
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
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
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                   (coe
                                                                      MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                         (coe
                                                                            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                            () erased () erased
                                                                            (let v15
                                                                                   = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                                             (coe
                                                                                                v0))) in
                                                                             coe
                                                                               (let v16
                                                                                      = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                                             (coe
                                                                                                v0)) in
                                                                                coe
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                                     (coe v15)
                                                                                     (coe v16))))
                                                                            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                            (coe v5)
                                                                            (coe (0 :: Integer)))
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1466
                                                                               (coe v2)))))
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                      (coe
                                                                         MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                                                            (coe
                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                            (coe
                                                                               MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                               () erased () erased
                                                                               (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                                                  (coe v0))
                                                                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                                                  (coe v5))
                                                                               (coe v14))
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1468
                                                                                  (coe v2)))))
                                                                      (coe
                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__96
                                                                         (coe
                                                                            MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                            (coe
                                                                               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                                               (coe
                                                                                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                  (coe
                                                                                     MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                               (coe v6)
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                                                                         (coe
                                                                            MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                            (coe
                                                                               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
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
                                                                                         MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'DState_1504)
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                            (let v19
                                                                                                   = let v19
                                                                                                           = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                                                                     (coe
                                                                                                                        v0))) in
                                                                                                     coe
                                                                                                       (let v20
                                                                                                              = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                                                                     (coe
                                                                                                                        v0)) in
                                                                                                        coe
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                                                             (coe
                                                                                                                v19)
                                                                                                             (coe
                                                                                                                v20))) in
                                                                                             coe
                                                                                               (coe
                                                                                                  MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                     (coe
                                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                     erased
                                                                                                     v19)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1462
                                                                                                     (coe
                                                                                                        v2))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_328
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                           (coe
                                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                                     v5)))
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                               (let v19
                                                                                                      = let v19
                                                                                                              = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                                                                        (coe
                                                                                                                           v0))) in
                                                                                                        coe
                                                                                                          (let v20
                                                                                                                 = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                                                                        (coe
                                                                                                                           v0)) in
                                                                                                           coe
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                                                                (coe
                                                                                                                   v19)
                                                                                                                (coe
                                                                                                                   v20))) in
                                                                                                coe
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                        (coe
                                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                        erased
                                                                                                        v19)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1464
                                                                                                        (coe
                                                                                                           v2))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_328
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                                        v5)))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                  (let v19
                                                                                                         = let v19
                                                                                                                 = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                                                                           (coe
                                                                                                                              v0))) in
                                                                                                           coe
                                                                                                             (let v20
                                                                                                                    = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                                                                           (coe
                                                                                                                              v0)) in
                                                                                                              coe
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                                                                   (coe
                                                                                                                      v19)
                                                                                                                   (coe
                                                                                                                      v20))) in
                                                                                                   coe
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                           (coe
                                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                           erased
                                                                                                           v19)
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1466
                                                                                                                 (coe
                                                                                                                    v2)))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1466
                                                                                                                 (coe
                                                                                                                    v2))))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_328
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                                           v5)))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1532
                                                                                                     (coe
                                                                                                        v0)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pparams_1376
                                                                                                        (coe
                                                                                                           v1))
                                                                                                     (coe
                                                                                                        v3)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1468
                                                                                                              (coe
                                                                                                                 v2)))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1468
                                                                                                              (coe
                                                                                                                 v2)))))))))
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_DELEG'45'dereg_1734
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
                                                                                             MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                                                                             (coe
                                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                             (coe
                                                                                                MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                ()
                                                                                                erased
                                                                                                ()
                                                                                                erased
                                                                                                (let v18
                                                                                                       = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                                                                 (coe
                                                                                                                    v0))) in
                                                                                                 coe
                                                                                                   (let v19
                                                                                                          = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                                                                 (coe
                                                                                                                    v0)) in
                                                                                                    coe
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
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
                                                                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1466
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
                                                                                                       MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                                                                                       (coe
                                                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                          ()
                                                                                                          erased
                                                                                                          ()
                                                                                                          erased
                                                                                                          (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                                                                             (coe
                                                                                                                v0))
                                                                                                          MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                                                                             (coe
                                                                                                                v5))
                                                                                                          (coe
                                                                                                             v14))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1468
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
              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_reg_1268 v5 v6
                -> let v7
                         = coe
                             MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                             (coe
                                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__106
                                (coe
                                   MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                      (let v7
                                             = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                 (coe
                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                       (coe v0))) in
                                       coe
                                         (let v8
                                                = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                       (coe v0)) in
                                          coe
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                               (coe v7) (coe v8))))
                                      (coe v5)
                                      (coe
                                         MAlonzo.Code.Class.IsSet.du_dom_562
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1466
                                            (coe v2)))))
                                (coe
                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                   (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                   (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))
                             (coe
                                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__96
                                (coe
                                   MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                   (coe
                                      MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                      (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                      (coe v6)
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pparams_1376
                                            (coe v1)))))
                                (coe
                                   MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                   (coe
                                      MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
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
                                                   MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'DState_1504)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1462
                                                         (coe v2))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1464
                                                            (coe v2))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (let v11
                                                                   = let v11
                                                                           = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                                     (coe v0))) in
                                                                     coe
                                                                       (let v12
                                                                              = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                                     (coe v0)) in
                                                                        coe
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                             (coe v11)
                                                                             (coe v12))) in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__902
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_th_1480
                                                                     (coe
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                     erased v11)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1466
                                                                     (coe v2))
                                                                  (coe
                                                                     MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                                     (coe
                                                                        MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                                        (coe
                                                                           MAlonzo.Code.Axiom.Set.d_th_1480
                                                                           (coe
                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe v5)
                                                                        (coe (0 :: Integer))))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1532
                                                               (coe v0)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pparams_1376
                                                                  (coe v1))
                                                               (coe v3)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1468
                                                                  (coe v2)))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_DELEG'45'reg_1808
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
                                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                          (let v10
                                                                 = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                           (coe v0))) in
                                                           coe
                                                             (let v11
                                                                    = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                           (coe v0)) in
                                                              coe
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                   (coe v10) (coe v11))))
                                                          (coe v5)
                                                          (coe
                                                             MAlonzo.Code.Class.IsSet.du_dom_562
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.d_th_1480
                                                                (coe
                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                             (coe
                                                                MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1466
                                                                (coe v2))))
                                                       (coe
                                                          MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
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
                                                      ("\172\n(d \8801\n .Ledger.Conway.Specification.PParams.PParams.keyDeposit\n (.Ledger.Conway.Specification.Certs.DelegEnv.pparams de)\n \8846 d \8801 0)"
                                                       ::
                                                       Data.Text.Text)
                                               _ -> MAlonzo.RTE.mazUnreachableError)))
                        _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> coe v4))
-- Ledger.Conway.Conformance.Certs.Properties.Computational-POOL
d_Computational'45'POOL_1726 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'POOL_1726 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 v3 ->
         let v4
               = coe
                   MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                   (coe ("Unexpected certificate in POOL" :: Data.Text.Text)) in
         coe
           (case coe v3 of
              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regpool_1258 v5 v6
                -> let v7
                         = coe
                             MAlonzo.Code.Relation.Nullary.Decidable.Core.du_'172''63'_76
                             (coe
                                MAlonzo.Code.Axiom.Set.d__'8712''63'__1612
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                erased
                                (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                         (coe v0))))
                                v5
                                (coe
                                   MAlonzo.Code.Class.IsSet.du_dom_562
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1334
                                      (coe v2)))) in
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
                                               MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'PState_1510)
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (let v10
                                                         = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                             (coe
                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                   (coe v0))) in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__902
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_th_1480
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                           erased v10)
                                                        (coe
                                                           MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                           (coe
                                                              MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_th_1480
                                                                 (coe
                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe v5) (coe v6)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1334
                                                           (coe v2))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                                     (coe v2))))
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_POOL'45'regpool_1656)))
                               else coe
                                      seq (coe v9)
                                      (coe
                                         MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                         (coe
                                            ("\172\n(\172\n (.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8712 c)\n (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n  (.Ledger.Conway.Specification.Certs.PState.pools ps)))"
                                             ::
                                             Data.Text.Text)))
                        _ -> MAlonzo.RTE.mazUnreachableError)
              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_retirepool_1260 v5 v6
                -> coe
                     MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                        (coe
                           MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'PState_1510)
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1334
                                 (coe v2))
                              (let v7
                                     = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                               (coe v0))) in
                               coe
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__902
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1480
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                       erased v7)
                                    (coe
                                       MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                       (coe
                                          MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1480
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5)
                                          (coe v6)))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                       (coe v2))))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_POOL'45'retirepool_1658))
              _ -> coe v4))
-- Ledger.Conway.Conformance.Certs.Properties.Computational-GOVCERT
d_Computational'45'GOVCERT_1752 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'GOVCERT_1752 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 v3 ->
         let v4
               = coe
                   MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                   (coe ("Unexpected certificate in GOVCERT" :: Data.Text.Text)) in
         coe
           (case coe v3 of
              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regdrep_1262 v5 v6 v7
                -> let v8
                         = coe
                             MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__96
                             (coe
                                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                (coe
                                   MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                   (coe
                                      MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                      (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                      (coe v6)
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_410
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pp_1302
                                            (coe v1)))))
                                (coe
                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__106
                                   (coe
                                      MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                         (let v8
                                                = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                    (coe
                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                          (coe v0))) in
                                          coe
                                            (let v9
                                                   = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                          (coe v0)) in
                                             coe
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                  (coe v8) (coe v9))))
                                         (coe v5)
                                         (coe
                                            MAlonzo.Code.Class.IsSet.du_dom_562
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_th_1480
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1480
                                               (coe v2)))))
                                   (coe
                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                      (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                      (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))))
                             (coe
                                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                (coe
                                   MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                   (coe
                                      MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                      (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                      (coe v6) (coe (0 :: Integer))))
                                (coe
                                   MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                      (let v8
                                             = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                 (coe
                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                       (coe v0))) in
                                       coe
                                         (let v9
                                                = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                       (coe v0)) in
                                          coe
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                               (coe v8) (coe v9))))
                                      (coe v5)
                                      (coe
                                         MAlonzo.Code.Class.IsSet.du_dom_562
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1480
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
                                                   MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'GState_1506)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (let v12
                                                             = let v12
                                                                     = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                               (coe v0))) in
                                                               coe
                                                                 (let v13
                                                                        = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                               (coe v0)) in
                                                                  coe
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                       (coe v12) (coe v13))) in
                                                       coe
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__902
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_th_1480
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                               erased v12)
                                                            (coe
                                                               MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                               (coe
                                                                  MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_th_1480
                                                                     (coe
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe v5)
                                                                  (coe
                                                                     MAlonzo.Code.Class.HasAdd.Core.d__'43'__16
                                                                     (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_252
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_644
                                                                           (coe v0)))
                                                                     (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_epoch_1300
                                                                        (coe v1))
                                                                     (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_412
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pp_1302
                                                                           (coe v1))))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1480
                                                               (coe v2))))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1482
                                                            (coe v2))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1532
                                                            (coe v0)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pp_1302
                                                               (coe v1))
                                                            (coe v3)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1484
                                                               (coe v2))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GOVCERT'45'regdrep_1886
                                                   v11))
                                      _ -> MAlonzo.RTE.mazUnreachableError
                               else coe
                                      seq (coe v10)
                                      (coe
                                         MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                         (coe
                                            ("\172\n(d \8801\n .Ledger.Conway.Specification.PParams.PParams.drepDeposit\n (.Ledger.Conway.Specification.Certs.CertEnv.pp ce)\n \215\n (Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n  Class.IsSet.IsSet.\8713 c)\n (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n  (.Ledger.Conway.Conformance.Certs.GState.dreps gs))\n \8846\n d \8801 0 \215\n (Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n  Class.IsSet.IsSet.\8712 c)\n (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n  (.Ledger.Conway.Conformance.Certs.GState.dreps gs)))"
                                             ::
                                             Data.Text.Text)))
                        _ -> MAlonzo.RTE.mazUnreachableError)
              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_deregdrep_1264 v5 v6
                -> let v7
                         = coe
                             MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                             (coe
                                MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                   (let v7
                                          = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                              (coe
                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                    (coe v0))) in
                                    coe
                                      (let v8
                                             = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                    (coe v0)) in
                                       coe
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                            (coe v7) (coe v8))))
                                   (coe v5)
                                   (coe
                                      MAlonzo.Code.Class.IsSet.du_dom_562
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1480
                                         (coe v2)))))
                             (coe
                                MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                   (coe
                                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                      erased
                                      (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                         (coe v0))
                                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                         (coe v5))
                                      (coe v6))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1484
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
                                                   MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'GState_1506)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (let v11
                                                             = let v11
                                                                     = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                               (coe v0))) in
                                                               coe
                                                                 (let v12
                                                                        = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                               (coe v0)) in
                                                                  coe
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                       (coe v11) (coe v12))) in
                                                       coe
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_th_1480
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                               erased v11)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1480
                                                               (coe v2))
                                                            (coe
                                                               MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                               (coe
                                                                  MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_328
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_th_1480
                                                                     (coe
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                               v5)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1482
                                                            (coe v2))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1532
                                                            (coe v0)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pp_1302
                                                               (coe v1))
                                                            (coe v3)
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1484
                                                                     (coe v2)))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1484
                                                                     (coe v2))))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GOVCERT'45'deregdrep_1888
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
                                                       MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                       (let v10
                                                              = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                        (coe v0))) in
                                                        coe
                                                          (let v11
                                                                 = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                        (coe v0)) in
                                                           coe
                                                             (coe
                                                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                (coe v10) (coe v11))))
                                                       (coe v5)
                                                       (coe
                                                          MAlonzo.Code.Class.IsSet.du_dom_562
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.d_th_1480
                                                             (coe
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                          (coe
                                                             MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1480
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
              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_ccreghot_1266 v5 v6
                -> let v7
                         = coe
                             MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                             (coe
                                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__106
                                (coe
                                   MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                      (coe
                                         MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                         erased
                                         (let v7
                                                = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                    (coe
                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                          (coe v0))) in
                                          coe
                                            (let v8
                                                   = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                          (coe v0)) in
                                             coe
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                  (coe v7) (coe v8))))
                                         (coe
                                            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                            (let v7
                                                   = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                       (coe
                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                             (coe v0))) in
                                             coe
                                               (let v8
                                                      = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                             (coe v0)) in
                                                coe
                                                  (coe
                                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                     (coe v7) (coe v8))))))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5)
                                         (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
                                      (coe
                                         MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1482
                                            (coe v2)))))
                                (coe
                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                   (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                   (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))
                             (coe
                                MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                   (let v7
                                          = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                              (coe
                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                    (coe v0))) in
                                    coe
                                      (let v8
                                             = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                    (coe v0)) in
                                       coe
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                            (coe v7) (coe v8))))
                                   (coe v5)
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_coldCreds_1308
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
                                                   MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'GState_1506)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1480
                                                         (coe v2))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (let v11
                                                                = let v11
                                                                        = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                                  (coe v0))) in
                                                                  coe
                                                                    (let v12
                                                                           = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                                  (coe v0)) in
                                                                     coe
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                          (coe v11) (coe v12))) in
                                                          coe
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__902
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                                                  (coe
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                  erased v11)
                                                               (coe
                                                                  MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                                  (coe
                                                                     MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.d_th_1480
                                                                        (coe
                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe v5) (coe v6)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1482
                                                                  (coe v2))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1532
                                                            (coe v0)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pp_1302
                                                               (coe v1))
                                                            (coe v3)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1484
                                                               (coe v2))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GOVCERT'45'ccreghot_1890
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
                                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                          (coe
                                                             MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                             () erased () erased
                                                             (let v10
                                                                    = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                              (coe v0))) in
                                                              coe
                                                                (let v11
                                                                       = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                              (coe v0)) in
                                                                 coe
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                      (coe v10) (coe v11))))
                                                             (coe
                                                                MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                (let v10
                                                                       = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                                 (coe v0))) in
                                                                 coe
                                                                   (let v11
                                                                          = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                                 (coe v0)) in
                                                                    coe
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                         (coe v10) (coe v11))))))
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                             (coe v5)
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1482
                                                                (coe v2))))
                                                       (coe
                                                          MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
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
                                                      ("\172\n(Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8712 c)\n(.Ledger.Conway.Specification.Certs.CertEnv.coldCreds ce)"
                                                       ::
                                                       Data.Text.Text)
                                               _ -> MAlonzo.RTE.mazUnreachableError)))
                        _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> coe v4))
-- Ledger.Conway.Conformance.Certs.Properties.Computational-CERT
d_Computational'45'CERT_2028 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERT_2028 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 v3 ->
         let v4
               = coe
                   MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
                   (d_Computational'45'POOL_1726 (coe v0))
                   (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pp_1302 (coe v1))
                   (MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1498
                      (coe v2))
                   v3 in
         coe
           (let v5
                  = coe
                      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
                      (d_Computational'45'GOVCERT_1752 (coe v0)) v1
                      (MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1500
                         (coe v2))
                      v3 in
            coe
              (let v6
                     = coe
                         MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                         (coe
                            MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
                            (coe
                               MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_170
                               (coe
                                  MAlonzo.Code.Data.List.Base.du_length_268
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
                                                       (1368 :: Integer)
                                                       (3005244792873517680 :: Integer)
                                                       "Ledger.Conway.Specification.Certs.DelegEnv"
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
                                                       (208 :: Integer)
                                                       (3005244792873517680 :: Integer) "_.PParams"
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
                                                          (1368 :: Integer)
                                                          (3005244792873517680 :: Integer)
                                                          "Ledger.Conway.Specification.Certs.DelegEnv"
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
                                                          (1102 :: Integer)
                                                          (3005244792873517680 :: Integer)
                                                          "Ledger.Conway.Specification.Certs.Pools"
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
                                                             (1368 :: Integer)
                                                             (3005244792873517680 :: Integer)
                                                             "Ledger.Conway.Specification.Certs.DelegEnv"
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
                                                                      (40 :: Integer)
                                                                      (3005244792873517680 ::
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
                                                                               (292 :: Integer)
                                                                               (753823221557309123 ::
                                                                                  Integer)
                                                                               "Ledger.Core.Specification.Epoch.GlobalConstants.DecEq-Netw"
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
                                                                                        (1170 ::
                                                                                           Integer)
                                                                                        (7805089389717466778 ::
                                                                                           Integer)
                                                                                        "Ledger.Conway.Specification.Gov.Base.GovStructure.globalConstants"
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
                                                                                  (26 :: Integer)
                                                                                  (14321319370142338143 ::
                                                                                     Integer)
                                                                                  "Ledger.Core.Specification.Crypto.isHashableSet.DecEq-THash"
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
                                                                                              (206 ::
                                                                                                 Integer)
                                                                                              (14321319370142338143 ::
                                                                                                 Integer)
                                                                                              "Ledger.Core.Specification.Crypto.CryptoStructure.khs"
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
                                                                                                       (598 ::
                                                                                                          Integer)
                                                                                                       (7805089389717466778 ::
                                                                                                          Integer)
                                                                                                       "Ledger.Conway.Specification.Gov.Base.GovStructure.cryptoStructure"
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
                                                                                     (210 ::
                                                                                        Integer)
                                                                                     (14321319370142338143 ::
                                                                                        Integer)
                                                                                     "Ledger.Core.Specification.Crypto.CryptoStructure.DecEq-ScriptHash"
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
                                                                                              (598 ::
                                                                                                 Integer)
                                                                                              (7805089389717466778 ::
                                                                                                 Integer)
                                                                                              "Ledger.Conway.Specification.Gov.Base.GovStructure.cryptoStructure"
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
                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1382)))
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pp_1302 (coe v1))
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1334
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1498
                                     (coe v2)))
                               (coe
                                  MAlonzo.Code.Class.IsSet.du_dom_562
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1480
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1480
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1500
                                        (coe v2)))))) in
               coe
                 (let v7
                        = MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1496
                            (coe v2) in
                  coe
                    (case coe v3 of
                       MAlonzo.Code.Ledger.Conway.Specification.Certs.C_delegate_1254 v8 v9 v10 v11
                         -> let v12
                                  = coe
                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                      (coe
                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__106
                                         (coe
                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__106
                                            (coe
                                               MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                  (let v12
                                                         = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                             (coe
                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                   (coe v0))) in
                                                   coe
                                                     (let v13
                                                            = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                   (coe v0)) in
                                                      coe
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                           (coe v12) (coe v13))))
                                                  (coe v8)
                                                  (coe
                                                     MAlonzo.Code.Class.IsSet.du_dom_562
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1480
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     (coe
                                                        MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1466
                                                        (coe v7)))))
                                            (coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))
                                         (coe
                                            MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                            (coe
                                               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                               (coe
                                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                               (coe v11)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pparams_1376
                                                     (coe v6))))))
                                      (coe
                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                         (coe
                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__106
                                            (coe
                                               MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                  (let v12
                                                         = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                             (coe
                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                   (coe v0))) in
                                                   coe
                                                     (let v13
                                                            = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                   (coe v0)) in
                                                      coe
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                           (coe v12) (coe v13))))
                                                  (coe v8)
                                                  (coe
                                                     MAlonzo.Code.Class.IsSet.du_dom_562
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1480
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     (coe
                                                        MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1466
                                                        (coe v7)))))
                                            (coe
                                               MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                               (coe
                                                  MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                  (coe
                                                     MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                  (coe v11) (coe (0 :: Integer)))))
                                         (coe
                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                            (coe
                                               MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                  (coe
                                                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1038
                                                        (coe v0)))
                                                  (coe v9)
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.du__'8746'__682
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1480
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.du_map_400
                                                        (MAlonzo.Code.Axiom.Set.d_th_1480
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                        (\ v12 ->
                                                           coe
                                                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegCredential_804
                                                                (coe v12)))
                                                        (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_delegatees_1380
                                                           (coe v6)))
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.du_fromList_430
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_th_1480
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
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegAbstain_806))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegNoConfidence_808))
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))
                                            (coe
                                               MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                  (coe
                                                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                     (coe
                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                              (coe v0)))))
                                                  (coe v10)
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.du__'8746'__682
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1480
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.du_map_400
                                                        (MAlonzo.Code.Axiom.Set.d_th_1480
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16)
                                                        (coe
                                                           MAlonzo.Code.Class.IsSet.du_dom_562
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1480
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           (coe
                                                              MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1378
                                                              (coe v6))))
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                                                        (MAlonzo.Code.Axiom.Set.d_th_1480
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
                                                                 MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'DState_1504)
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                    (let v16
                                                                           = let v16
                                                                                   = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                                             (coe
                                                                                                v0))) in
                                                                             coe
                                                                               (let v17
                                                                                      = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                                             (coe
                                                                                                v0)) in
                                                                                coe
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                                     (coe v16)
                                                                                     (coe v17))) in
                                                                     coe
                                                                       (coe
                                                                          MAlonzo.Code.Axiom.Set.Map.du_insertIfJust_968
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.d_th_1480
                                                                             (coe
                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                             erased v16)
                                                                          (coe v8) (coe v9)
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1462
                                                                             (coe v7))))
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                       (let v16
                                                                              = let v16
                                                                                      = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                                                (coe
                                                                                                   v0))) in
                                                                                coe
                                                                                  (let v17
                                                                                         = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                                                (coe
                                                                                                   v0)) in
                                                                                   coe
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                                        (coe v16)
                                                                                        (coe
                                                                                           v17))) in
                                                                        coe
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.Map.du_insertIfJust_968
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                (coe
                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                erased v16)
                                                                             (coe v8) (coe v10)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1464
                                                                                (coe v7))))
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                          (let v16
                                                                                 = let v16
                                                                                         = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                                                   (coe
                                                                                                      v0))) in
                                                                                   coe
                                                                                     (let v17
                                                                                            = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                                                   (coe
                                                                                                      v0)) in
                                                                                      coe
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                                           (coe v16)
                                                                                           (coe
                                                                                              v17))) in
                                                                           coe
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__902
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                   (coe
                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                   erased v16)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1466
                                                                                   (coe v7))
                                                                                (coe
                                                                                   MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                                                   (coe
                                                                                      MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                                                      (coe
                                                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                         (coe
                                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                      (coe v8)
                                                                                      (coe
                                                                                         (0 ::
                                                                                            Integer))))))
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1532
                                                                             (coe v0)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pparams_1376
                                                                                (coe v6))
                                                                             (coe v3)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1468
                                                                                (coe v7)))))))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_DELEG'45'delegate_1732
                                                                 v15) in
                                                    coe
                                                      (case coe v16 of
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v17 v18
                                                           -> coe
                                                                MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                (coe
                                                                   MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1508)
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe v17)
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1498
                                                                               (coe v2))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1500
                                                                               (coe v2)))))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'deleg_1894
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
                                                                         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                                                         (coe
                                                                            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                                                               (coe
                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                               (let v15
                                                                                      = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                                                (coe
                                                                                                   v0))) in
                                                                                coe
                                                                                  (let v16
                                                                                         = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                                                (coe
                                                                                                   v0)) in
                                                                                   coe
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                                        (coe v15)
                                                                                        (coe v16))))
                                                                               (coe v8)
                                                                               (coe
                                                                                  MAlonzo.Code.Class.IsSet.du_dom_562
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                     (coe
                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                  (coe
                                                                                     MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1466
                                                                                     (coe v7))))
                                                                            (coe
                                                                               MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
                                                                         (coe
                                                                            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                                            (coe
                                                                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                            (coe v11)
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pparams_1376
                                                                                  (coe v6)))))
                                                                      erased in
                                                            coe
                                                              (case coe v15 of
                                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v16
                                                                   -> coe
                                                                        ("\172\n((z\n  : (Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n     Class.IsSet.IsSet.\8713 c)\n    (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n     (.Ledger.Conway.Conformance.Certs.DState.rewards ds))) \8594\n d \8801\n .Ledger.Conway.Specification.PParams.PParams.keyDeposit\n (.Ledger.Conway.Specification.Certs.DelegEnv.pparams de))"
                                                                         ::
                                                                         Data.Text.Text)
                                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v16
                                                                   -> let v17
                                                                            = coe
                                                                                MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                                                (coe
                                                                                   MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                                                                      (coe
                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                      (let v17
                                                                                             = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                                                       (coe
                                                                                                          v0))) in
                                                                                       coe
                                                                                         (let v18
                                                                                                = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                                                       (coe
                                                                                                          v0)) in
                                                                                          coe
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                                               (coe
                                                                                                  v17)
                                                                                               (coe
                                                                                                  v18))))
                                                                                      (coe v8)
                                                                                      (coe
                                                                                         MAlonzo.Code.Class.IsSet.du_dom_562
                                                                                         (coe
                                                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                            (coe
                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                         (coe
                                                                                            MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1466
                                                                                            (coe
                                                                                               v7))))
                                                                                   (coe
                                                                                      MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
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
                                                                                             MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                                                                             (coe
                                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1038
                                                                                                   (coe
                                                                                                      v0)))
                                                                                             (coe
                                                                                                v9)
                                                                                             (coe
                                                                                                MAlonzo.Code.Axiom.Set.du__'8746'__682
                                                                                                (coe
                                                                                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                   (coe
                                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Axiom.Set.du_map_400
                                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                      (coe
                                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                   (\ v19 ->
                                                                                                      coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegCredential_804
                                                                                                           (coe
                                                                                                              v19)))
                                                                                                   (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_delegatees_1380
                                                                                                      (coe
                                                                                                         v6)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Axiom.Set.du_fromList_430
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Axiom.Set.d_th_1480
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
                                                                                                               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegAbstain_806))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegNoConfidence_808))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                                                                          erased in
                                                                                coe
                                                                                  (case coe v19 of
                                                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v20
                                                                                       -> coe
                                                                                            ("\172\n(Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8712 mv)\n((.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8746\n  Axiom.Set.Theory.map (.Axiom.Set.Theory\7496.th List-Model\7496)\n  (\955 x \8594 just (vDelegCredential x))\n  (.Ledger.Conway.Specification.Certs.DelegEnv.delegatees de))\n (Axiom.Set.Theory.fromList (.Axiom.Set.Theory\7496.th List-Model\7496)\n  (nothing \8759 just vDelegAbstain \8759 just vDelegNoConfidence \8759 [])))"
                                                                                             ::
                                                                                             Data.Text.Text)
                                                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v20
                                                                                       -> coe
                                                                                            ("\172\n(Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8712 mc)\n((.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8746\n  Axiom.Set.Theory.map (.Axiom.Set.Theory\7496.th List-Model\7496) just\n  (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n   (.Ledger.Conway.Specification.Certs.DelegEnv.pools de)))\n (Class.HasSingleton.HasSingleton.\10100\n  Class.HasSingleton.HasSingletonSet-Set\n  (.Axiom.Set.Theory\7496.th List-Model\7496)\n  \10101\n  nothing))"
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
                                                                       MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1508)
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                          (coe v17)
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1498
                                                                                (coe v2))
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1500
                                                                                (coe v2)))))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'deleg_1894
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
                                                                              MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1508)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1496
                                                                                    (coe v2))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                    (coe v18)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1500
                                                                                       (coe v2)))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'pool_1896
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
                                                                                     MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1508)
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1496
                                                                                           (coe v2))
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1498
                                                                                              (coe
                                                                                                 v2))
                                                                                           (coe
                                                                                              v19))))
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'vdel_1898
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
                       MAlonzo.Code.Ledger.Conway.Specification.Certs.C_dereg_1256 v8 v9
                         -> let v10
                                  = d_lookupDeposit_1516
                                      (coe v0)
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1468
                                         (coe v7))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
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
                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                            (coe
                                                                               MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                                                                  (coe
                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                  (coe
                                                                                     MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                     () erased ()
                                                                                     erased
                                                                                     (let v18
                                                                                            = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                                                      (coe
                                                                                                         v0))) in
                                                                                      coe
                                                                                        (let v19
                                                                                               = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                                                      (coe
                                                                                                         v0)) in
                                                                                         coe
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
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
                                                                                     MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1466
                                                                                        (coe v7)))))
                                                                            (coe
                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                               (coe
                                                                                  MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                                                                     (coe
                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                     (coe
                                                                                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                        () erased ()
                                                                                        erased
                                                                                        (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                                                           (coe v0))
                                                                                        MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                                                           (coe v8))
                                                                                        (coe v17))
                                                                                     (coe
                                                                                        MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1468
                                                                                           (coe
                                                                                              v7)))))
                                                                               (coe
                                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__96
                                                                                  (coe
                                                                                     MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                     (coe
                                                                                        MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                                                        (coe
                                                                                           MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                           (coe
                                                                                              MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                                                                        (coe v9)
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                                                                                  (coe
                                                                                     MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                     (coe
                                                                                        MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
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
                                                                                                       MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'DState_1504)
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                          (let v22
                                                                                                                 = let v22
                                                                                                                         = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                                                                                   (coe
                                                                                                                                      v0))) in
                                                                                                                   coe
                                                                                                                     (let v23
                                                                                                                            = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                                                                                   (coe
                                                                                                                                      v0)) in
                                                                                                                      coe
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                                                                           (coe
                                                                                                                              v22)
                                                                                                                           (coe
                                                                                                                              v23))) in
                                                                                                           coe
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                   erased
                                                                                                                   v22)
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1462
                                                                                                                   (coe
                                                                                                                      v7))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_328
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                                                   v8)))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                             (let v22
                                                                                                                    = let v22
                                                                                                                            = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                                                   (coe
                                                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                                                                                      (coe
                                                                                                                                         v0))) in
                                                                                                                      coe
                                                                                                                        (let v23
                                                                                                                               = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                                   (coe
                                                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                                                                                      (coe
                                                                                                                                         v0)) in
                                                                                                                         coe
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                                                                              (coe
                                                                                                                                 v22)
                                                                                                                              (coe
                                                                                                                                 v23))) in
                                                                                                              coe
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                      erased
                                                                                                                      v22)
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1464
                                                                                                                      (coe
                                                                                                                         v7))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_328
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                                                      v8)))
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                (let v22
                                                                                                                       = let v22
                                                                                                                               = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                                   (coe
                                                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                                                      (coe
                                                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                                                                                         (coe
                                                                                                                                            v0))) in
                                                                                                                         coe
                                                                                                                           (let v23
                                                                                                                                  = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                                      (coe
                                                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                                                                                         (coe
                                                                                                                                            v0)) in
                                                                                                                            coe
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                                                                                 (coe
                                                                                                                                    v22)
                                                                                                                                 (coe
                                                                                                                                    v23))) in
                                                                                                                 coe
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                         erased
                                                                                                                         v22)
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1466
                                                                                                                               (coe
                                                                                                                                  v7)))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1466
                                                                                                                               (coe
                                                                                                                                  v7))))
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_328
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                                                         v8)))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1532
                                                                                                                   (coe
                                                                                                                      v0)
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pparams_1376
                                                                                                                      (coe
                                                                                                                         v6))
                                                                                                                   (coe
                                                                                                                      v3)
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1468
                                                                                                                            (coe
                                                                                                                               v7)))
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1468
                                                                                                                            (coe
                                                                                                                               v7)))))))))
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_DELEG'45'dereg_1734
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
                                                                                                            MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1508)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                               (coe
                                                                                                                  v23)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1498
                                                                                                                     (coe
                                                                                                                        v2))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1500
                                                                                                                     (coe
                                                                                                                        v2)))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'deleg_1894
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
                                                                                                               MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                  ()
                                                                                                                  erased
                                                                                                                  ()
                                                                                                                  erased
                                                                                                                  (let v21
                                                                                                                         = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                                                                                   (coe
                                                                                                                                      v0))) in
                                                                                                                   coe
                                                                                                                     (let v22
                                                                                                                            = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                                                                                   (coe
                                                                                                                                      v0)) in
                                                                                                                      coe
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
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
                                                                                                                  MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1466
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
                                                                                                                         MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                            ()
                                                                                                                            erased
                                                                                                                            ()
                                                                                                                            erased
                                                                                                                            (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                                                                                               (coe
                                                                                                                                  v0))
                                                                                                                            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                                                                                               (coe
                                                                                                                                  v8))
                                                                                                                            (coe
                                                                                                                               v17))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1468
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
                                                                                                             MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1508)
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                (coe
                                                                                                                   v23)
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1498
                                                                                                                      (coe
                                                                                                                         v2))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1500
                                                                                                                      (coe
                                                                                                                         v2)))))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'deleg_1894
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
                                                                                                                    MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1508)
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1496
                                                                                                                          (coe
                                                                                                                             v2))
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                          (coe
                                                                                                                             v24)
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1500
                                                                                                                             (coe
                                                                                                                                v2)))))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'pool_1896
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
                                                                                                                           MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1508)
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1496
                                                                                                                                 (coe
                                                                                                                                    v2))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1498
                                                                                                                                    (coe
                                                                                                                                       v2))
                                                                                                                                 (coe
                                                                                                                                    v25))))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'vdel_1898
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
                                                                       MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1508)
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                          (coe v15)
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1498
                                                                                (coe v2))
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1500
                                                                                (coe v2)))))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'deleg_1894
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
                                                                              MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1508)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1496
                                                                                    (coe v2))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                    (coe v16)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1500
                                                                                       (coe v2)))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'pool_1896
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
                                                                                     MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1508)
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1496
                                                                                           (coe v2))
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1498
                                                                                              (coe
                                                                                                 v2))
                                                                                           (coe
                                                                                              v17))))
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'vdel_1898
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
                       MAlonzo.Code.Ledger.Conway.Specification.Certs.C_reg_1268 v8 v9
                         -> let v10
                                  = coe
                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                      (coe
                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__106
                                         (coe
                                            MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                            (coe
                                               MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                               (let v10
                                                      = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                          (coe
                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                (coe v0))) in
                                                coe
                                                  (let v11
                                                         = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                (coe v0)) in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                        (coe v10) (coe v11))))
                                               (coe v8)
                                               (coe
                                                  MAlonzo.Code.Class.IsSet.du_dom_562
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_th_1480
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1466
                                                     (coe v7)))))
                                         (coe
                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                            (coe
                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))
                                      (coe
                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__96
                                         (coe
                                            MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                            (coe
                                               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                               (coe
                                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                               (coe v9)
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pparams_1376
                                                     (coe v6)))))
                                         (coe
                                            MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                            (coe
                                               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
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
                                                                 MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'DState_1504)
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1462
                                                                       (coe v7))
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1464
                                                                          (coe v7))
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                          (let v14
                                                                                 = let v14
                                                                                         = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                                                   (coe
                                                                                                      v0))) in
                                                                                   coe
                                                                                     (let v15
                                                                                            = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                                                   (coe
                                                                                                      v0)) in
                                                                                      coe
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                                           (coe v14)
                                                                                           (coe
                                                                                              v15))) in
                                                                           coe
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__902
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                   (coe
                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                   erased v14)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1466
                                                                                   (coe v7))
                                                                                (coe
                                                                                   MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                                                   (coe
                                                                                      MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                                                      (coe
                                                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                         (coe
                                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                      (coe v8)
                                                                                      (coe
                                                                                         (0 ::
                                                                                            Integer))))))
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1532
                                                                             (coe v0)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pparams_1376
                                                                                (coe v6))
                                                                             (coe v3)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1468
                                                                                (coe v7)))))))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_DELEG'45'reg_1808
                                                                 v13) in
                                                    coe
                                                      (case coe v14 of
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                                           -> coe
                                                                MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                (coe
                                                                   MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1508)
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe v15)
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1498
                                                                               (coe v2))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1500
                                                                               (coe v2)))))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'deleg_1894
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
                                                                         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                                                            (coe
                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                            (let v13
                                                                                   = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                                             (coe
                                                                                                v0))) in
                                                                             coe
                                                                               (let v14
                                                                                      = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                                             (coe
                                                                                                v0)) in
                                                                                coe
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                                     (coe v13)
                                                                                     (coe v14))))
                                                                            (coe v8)
                                                                            (coe
                                                                               MAlonzo.Code.Class.IsSet.du_dom_562
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                  (coe
                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                               (coe
                                                                                  MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1466
                                                                                  (coe v7))))
                                                                         (coe
                                                                            MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
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
                                                                        ("\172\n(d \8801\n .Ledger.Conway.Specification.PParams.PParams.keyDeposit\n (.Ledger.Conway.Specification.Certs.DelegEnv.pparams de)\n \8846 d \8801 0)"
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
                                                                       MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1508)
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                          (coe v15)
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1498
                                                                                (coe v2))
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1500
                                                                                (coe v2)))))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'deleg_1894
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
                                                                              MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1508)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1496
                                                                                    (coe v2))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                    (coe v16)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1500
                                                                                       (coe v2)))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'pool_1896
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
                                                                                     MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1508)
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1496
                                                                                           (coe v2))
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1498
                                                                                              (coe
                                                                                                 v2))
                                                                                           (coe
                                                                                              v17))))
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'vdel_1898
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
                                                     MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1508)
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1496
                                                           (coe v2))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe v10)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1500
                                                              (coe v2)))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'pool_1896
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
                                                            MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1508)
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1496
                                                                  (coe v2))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1498
                                                                     (coe v2))
                                                                  (coe v11))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'vdel_1898
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
d_Computational'45'CERTBASE_2336 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERTBASE_2336 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 v3 -> coe du_goal_2472 (coe v0) (coe v1) (coe v2))
-- Ledger.Conway.Conformance.Certs.Properties._._.pp
d_pp_2354 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1288 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1488 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
d_pp_2354 ~v0 v1 ~v2 ~v3 = du_pp_2354 v1
du_pp_2354 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1288 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
du_pp_2354 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pp_1302 (coe v0)
-- Ledger.Conway.Conformance.Certs.Properties._._.votes
d_votes_2356 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1288 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1488 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_936]
d_votes_2356 ~v0 v1 ~v2 ~v3 = du_votes_2356 v1
du_votes_2356 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1288 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_936]
du_votes_2356 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_votes_1304
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Properties._._.wdrls
d_wdrls_2358 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1288 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1488 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_2358 ~v0 v1 ~v2 ~v3 = du_wdrls_2358 v1
du_wdrls_2358 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1288 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_wdrls_2358 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_wdrls_1306
      (coe v0)
-- Ledger.Conway.Conformance.Certs.Properties._._.rewards
d_rewards_2452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1288 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1488 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2452 ~v0 ~v1 v2 ~v3 = du_rewards_2452 v2
du_rewards_2452 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1488 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2452 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1466
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1496
         (coe v0))
-- Ledger.Conway.Conformance.Certs.Properties._._.voteDelegs
d_voteDelegs_2456 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1288 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1488 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2456 ~v0 ~v1 v2 ~v3 = du_voteDelegs_2456 v2
du_voteDelegs_2456 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1488 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_voteDelegs_2456 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1462
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1496
         (coe v0))
-- Ledger.Conway.Conformance.Certs.Properties._.sep
d_sep_2458 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1288 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1488 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_sep_2458 ~v0 ~v1 ~v2 ~v3 = du_sep_2458
du_sep_2458 :: MAlonzo.Code.Agda.Builtin.String.T_String_6
du_sep_2458 = coe (" | " :: Data.Text.Text)
-- Ledger.Conway.Conformance.Certs.Properties._.genErr
d_genErr_2462 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1288 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1488 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_genErr_2462 v0 v1 v2 ~v3 ~v4 = du_genErr_2462 v0 v1 v2
du_genErr_2462 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1288 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1488 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
du_genErr_2462 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_8
              (coe
                 MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__74
                 (coe
                    (\ v3 ->
                       coe
                         MAlonzo.Code.Axiom.Set.d_all'63'_1620
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                         erased erased
                         (coe
                            MAlonzo.Code.Class.Decidable.Core.du_dec'185'_72
                            (coe
                               (\ v4 ->
                                  coe
                                    MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                    (let v5
                                           = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                     (coe v0))) in
                                     coe
                                       (let v6
                                              = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                     (coe v0)) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                             (coe v5) (coe v6))))
                                    (coe v4)
                                    (coe
                                       MAlonzo.Code.Class.IsSet.du_dom_562
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_th_1480
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1462
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1496
                                             (coe v2)))))))
                         v3))
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1192
                    (\ v3 ->
                       coe
                         MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                         (coe
                            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                         (coe
                            MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj'7495'_50
                            (coe v3))
                         (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                    (let v3
                           = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                     coe
                       (coe
                          MAlonzo.Code.Axiom.Set.du_map_400
                          (MAlonzo.Code.Axiom.Set.d_th_1480 (coe v3))
                          (\ v4 ->
                             MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112
                               (coe v4))
                          (coe
                             MAlonzo.Code.Class.IsSet.du_dom_562
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1480
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_wdrls_1306
                                (coe v1)))))))
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
                               (coe du_sep_2458))
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
                                        MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential_286
                                        (coe
                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
                                           (coe
                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                 (coe v0))))
                                        (coe
                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_212
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                              (coe v0)))))
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_finiteness_1136
                                        (coe
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1192
                                           (\ v5 ->
                                              coe
                                                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                                                (coe
                                                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                   (coe
                                                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj'7495'_50
                                                   (coe v5))
                                                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                                           (coe
                                              MAlonzo.Code.Axiom.Set.du_map_400
                                              (MAlonzo.Code.Axiom.Set.d_th_1480
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                              (\ v5 ->
                                                 MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112
                                                   (coe v5))
                                              (coe
                                                 MAlonzo.Code.Class.IsSet.du_dom_562
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_th_1480
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                 (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_wdrls_1306
                                                    (coe v1)))))))))))
                      (coe du_sep_2458))
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
                               MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential_286
                               (coe
                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
                                  (coe
                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                        (coe v0))))
                               (coe
                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_212
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                     (coe v0)))))
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_finiteness_1136
                               (coe
                                  MAlonzo.Code.Class.IsSet.du_dom_562
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1480
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1462
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1496
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
                               (coe du_sep_2458))
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
                                        MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential'215'Coin_290
                                        (coe
                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
                                           (coe
                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                 (coe v0))))
                                        (coe
                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_212
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                              (coe v0)))))
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_finiteness_1136
                                        (coe
                                           MAlonzo.Code.Axiom.Set.du_map_400
                                           (MAlonzo.Code.Axiom.Set.d_th_1480
                                              (coe
                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                           (coe
                                              MAlonzo.Code.Class.Bifunctor.du_map'8321'_112
                                              (coe
                                                 MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_156)
                                              (coe
                                                 (\ v5 ->
                                                    MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112
                                                      (coe v5))))
                                           (coe
                                              MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_wdrls_1306
                                                 (coe v1))))))))))
                      (coe du_sep_2458))
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
                               MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential'215'Coin_290
                               (coe
                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
                                  (coe
                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                        (coe v0))))
                               (coe
                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_212
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                     (coe v0)))))
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_finiteness_1136
                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1466
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1496
                                        (coe v2)))))))))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Conformance.Certs.Properties._.goal
d_goal_2472 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1288 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1488 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_goal_2472 v0 v1 v2 ~v3 = du_goal_2472 v0 v1 v2
du_goal_2472 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1288 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1488 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
du_goal_2472 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
              (coe
                 MAlonzo.Code.Class.Decidable.Core.d_dec_16
                 (coe
                    MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1644
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                    (coe
                       (\ v3 ->
                          coe
                            MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                            (let v4
                                   = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                             (coe v0))) in
                             coe
                               (let v5
                                      = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                             (coe v0)) in
                                coe
                                  (coe
                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                     (coe v4) (coe v5))))
                            (coe v3)
                            (coe
                               MAlonzo.Code.Class.IsSet.du_dom_562
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1462
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1496
                                     (coe v2))))))
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1192
                       (\ v3 ->
                          coe
                            MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                            (coe
                               MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                               (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                            (coe
                               MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj'7495'_50
                               (coe v3))
                            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                       (coe
                          MAlonzo.Code.Axiom.Set.du_map_400
                          (MAlonzo.Code.Axiom.Set.d_th_1480
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (\ v3 ->
                             MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112
                               (coe v3))
                          (coe
                             MAlonzo.Code.Class.IsSet.du_dom_562
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1480
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_wdrls_1306
                                (coe v1)))))))
              (coe
                 MAlonzo.Code.Class.Decidable.Core.d_dec_16
                 (coe
                    MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1644
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                    (coe
                       (\ v3 ->
                          coe
                            MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                            (coe
                               MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                               (let v4
                                      = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                (coe v0))) in
                                coe
                                  (let v5
                                         = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                (coe v0)) in
                                   coe
                                     (coe
                                        MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                        (coe v4) (coe v5))))
                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                            (coe v3)
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1466
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1496
                                     (coe v2))))))
                    (coe
                       MAlonzo.Code.Axiom.Set.du_map_400
                       (MAlonzo.Code.Axiom.Set.d_th_1480
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe
                          MAlonzo.Code.Class.Bifunctor.du_map'8321'_112
                          (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_156)
                          (coe
                             (\ v3 ->
                                MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112
                                  (coe v3))))
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_wdrls_1306
                             (coe v1)))))) in
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
                                    MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'CertState_1508)
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'DState_1504)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (let v7
                                                    = MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1038
                                                        (coe v0) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'8739''94'__1764
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                      erased v7)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1462
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1496
                                                         (coe v2)))
                                                   (let v8
                                                          = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.du__'8746'__682
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                            (coe v8))
                                                         (let v9
                                                                = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                          coe
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.du_map_400
                                                               (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                  (coe v9))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegCredential_804)
                                                               (coe
                                                                  MAlonzo.Code.Class.IsSet.du_dom_562
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_th_1480
                                                                     (coe
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                  (coe
                                                                     MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1480
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1500
                                                                        (coe v2))))))
                                                         (let v9
                                                                = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                          coe
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.du_fromList_430
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                                                  (coe v9))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegNoConfidence_808)
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegAbstain_806)
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1464
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1496
                                                      (coe v2)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (let v7
                                                          = let v7
                                                                  = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                            (coe v0))) in
                                                            coe
                                                              (let v8
                                                                     = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                            (coe v0)) in
                                                               coe
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                    (coe v7) (coe v8))) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__902
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                            erased v7)
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.Map.du_constMap_1166
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_th_1480
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                            (let v8
                                                                   = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.du_map_400
                                                                  (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                     (coe v8))
                                                                  (\ v9 ->
                                                                     MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112
                                                                       (coe v9))
                                                                  (coe
                                                                     MAlonzo.Code.Class.IsSet.du_dom_562
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.d_th_1480
                                                                        (coe
                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                     (coe
                                                                        MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.d_wdrls_1306
                                                                        (coe v1)))))
                                                            (coe (0 :: Integer)))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1466
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1496
                                                               (coe v2)))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1468
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1496
                                                         (coe v2)))))))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1498
                                             (coe v2))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'GState_1506)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                (let v7
                                                       = let v7
                                                               = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                         (coe v0))) in
                                                         coe
                                                           (let v8
                                                                  = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                                         (coe v0)) in
                                                            coe
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                 (coe v7) (coe v8))) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du_mapValueRestricted_1368
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                         erased v7)
                                                      (let v8
                                                             = coe
                                                                 MAlonzo.Code.Class.HasAdd.Core.d__'43'__16
                                                                 (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_252
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_644
                                                                       (coe v0)))
                                                                 (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_epoch_1300
                                                                    (coe v1))
                                                                 (let v8
                                                                        = coe
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_mkGeneralizeTel_90683
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pp_1302
                                                                               (coe v1))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_votes_1304
                                                                               (coe v1))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_epoch_1300
                                                                               (coe v1))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1480
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1500
                                                                                  (coe v2)))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_wdrls_1306
                                                                               (coe v1))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1462
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1496
                                                                                  (coe v2)))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1466
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1496
                                                                                  (coe v2)))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_coldCreds_1308
                                                                               (coe v1))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1464
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1496
                                                                                  (coe v2)))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1468
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1496
                                                                                  (coe v2)))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1498
                                                                               (coe v2))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1482
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1500
                                                                                  (coe v2)))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1484
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1500
                                                                                  (coe v2))) in
                                                                  coe
                                                                    (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_412
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_'46'generalizedField'45'pp_90655
                                                                          (coe v8)))) in
                                                       coe (coe (\ v9 -> v8)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1480
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1500
                                                            (coe v2)))
                                                      (let v8
                                                             = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                       coe
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.du_mapPartial_578
                                                            (MAlonzo.Code.Axiom.Set.d_th_1480
                                                               (coe v8))
                                                            (\ v9 ->
                                                               coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_isGovVoterDRep_1142
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_voter_948
                                                                    (coe v9)))
                                                            (let v9
                                                                   = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.du_fromList_430
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_th_1480
                                                                     (coe v9))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.d_votes_1304
                                                                     (coe v1))))))))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1482
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1500
                                                         (coe v2)))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1484
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1500
                                                         (coe v2)))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CERT'45'base_1982
                                    v6))
                       _ -> MAlonzo.RTE.mazUnreachableError
                else coe
                       seq (coe v5)
                       (coe
                          MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                          (coe du_genErr_2462 (coe v0) (coe v1) (coe v2)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Conformance.Certs.Properties.Computational-CERTS
d_Computational'45'CERTS_2516 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERTS_2516 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7495'''_1140
      (coe d_Computational'45'CERTBASE_2336 (coe v0))
      (coe d_Computational'45'CERT_2028 (coe v0))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_732)
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_732)
