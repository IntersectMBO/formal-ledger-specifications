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

module MAlonzo.Code.Ledger.Conway.Specification.Certs.Properties.Computational where

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
import qualified MAlonzo.Code.Class.ToBool
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive
import qualified MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError

-- _.DecEq-Credential
d_DecEq'45'Credential_74 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_74 ~v0 ~v1 v2 v3
  = du_DecEq'45'Credential_74 v2 v3
du_DecEq'45'Credential_74 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_74 v0 v1
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
      (coe v0) (coe v1)
-- Ledger.Conway.Specification.Certs.Properties.Computational._.DecEq-VDeleg
d_DecEq'45'VDeleg_800 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_800 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1106
      (coe v0)
-- Ledger.Conway.Specification.Certs.Properties.Computational._.VDeleg
d_VDeleg_918 a0 = ()
-- Ledger.Conway.Specification.Certs.Properties.Computational._.VoteDelegs
d_VoteDelegs_922 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_VoteDelegs_922 = erased
-- Ledger.Conway.Specification.Certs.Properties.Computational._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1078 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1322 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1390 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1286] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1390 ->
  ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1078 = erased
-- Ledger.Conway.Specification.Certs.Properties.Computational._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__1080 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Specification.Certs.Properties.Computational._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__1082 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Specification.Certs.Properties.Computational._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__1084 a0 a1 a2 a3 a4
  = ()
-- Ledger.Conway.Specification.Certs.Properties.Computational._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__1086 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Specification.Certs.Properties.Computational._._⊢_⇀⦇_,POST-CERT⦈_
d__'8866'_'8640''10631'_'44'POST'45'CERT'10632'__1088 a0 a1 a2 a3
                                                      a4
  = ()
-- Ledger.Conway.Specification.Certs.Properties.Computational._._⊢_⇀⦇_,PRE-CERT⦈_
d__'8866'_'8640''10631'_'44'PRE'45'CERT'10632'__1090 a0 a1 a2 a3 a4
  = ()
-- Ledger.Conway.Specification.Certs.Properties.Computational._.CertState
d_CertState_1110 a0 = ()
-- Ledger.Conway.Specification.Certs.Properties.Computational._.DReps
d_DReps_1128 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  ()
d_DReps_1128 = erased
-- Ledger.Conway.Specification.Certs.Properties.Computational._.CertState.dState
d_dState_1380 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1390 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1346
d_dState_1380 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dState_1398
      (coe v0)
-- Ledger.Conway.Specification.Certs.Properties.Computational._.CertState.gState
d_gState_1382 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1390 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1378
d_gState_1382 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1402
      (coe v0)
-- Ledger.Conway.Specification.Certs.Properties.Computational._.CertState.pState
d_pState_1384 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1390 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1362
d_pState_1384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pState_1400
      (coe v0)
-- Ledger.Conway.Specification.Certs.Properties.Computational._.completeness
d_completeness_1684 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_1684 = erased
-- Ledger.Conway.Specification.Certs.Properties.Computational._.computeProof
d_computeProof_1690 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_1690 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Conway.Specification.Certs.Properties.Computational.Computational-DELEG
d_Computational'45'DELEG_1702 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'DELEG_1702 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 v3 ->
         let v4
               = coe
                   MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                   (coe ("Unexpected certificate in DELEG" :: Data.Text.Text)) in
         coe
           (case coe v3 of
              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_delegate_1288 v5 v6 v7 v8
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
                                            MAlonzo.Code.Class.IsSet.du_dom_580
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_th_1480
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_588)
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1358
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
                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pparams_1414
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
                                            MAlonzo.Code.Class.IsSet.du_dom_580
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_th_1480
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_588)
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1358
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
                                               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1106
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
                                               (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_delegatees_1418
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
                                                  MAlonzo.Code.Class.IsSet.du_dom_580
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_th_1480
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_588)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1416
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
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DState_1548)
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
                                                            MAlonzo.Code.Axiom.Set.Map.du_insertIfJust_1150
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
                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1354
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
                                                               MAlonzo.Code.Axiom.Set.Map.du_insertIfJust_1150
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
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1356
                                                                  (coe v2))))
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
                                                               MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__1032
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                                                  (coe
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                  erased v13)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1358
                                                                  (coe v2))
                                                               (coe
                                                                  MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_332
                                                                  (coe
                                                                     MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_348
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.d_th_1480
                                                                        (coe
                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe v5)
                                                                     (coe (0 :: Integer)))))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DELEG'45'delegate_1630
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
                                                                MAlonzo.Code.Class.IsSet.du_dom_580
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                (coe
                                                                   MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_588)
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1358
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
                                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pparams_1414
                                                                (coe v1)))))
                                                    erased in
                                          coe
                                            (case coe v12 of
                                               MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v13
                                                 -> coe
                                                      ("\172\n((z\n  : (Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n     Class.IsSet.IsSet.\8713 c)\n    (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n     (.Ledger.Conway.Specification.Certs.DState.rewards st\7496))) \8594\n d \8801\n .Ledger.Conway.Specification.PParams.PParams.keyDeposit\n (.Ledger.Conway.Specification.Certs.DelegEnv.pparams de))"
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
                                                                       MAlonzo.Code.Class.IsSet.du_dom_580
                                                                       (coe
                                                                          MAlonzo.Code.Axiom.Set.d_th_1480
                                                                          (coe
                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                       (coe
                                                                          MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_588)
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1358
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
                                                                ("\172\n((z\n  : (Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n     Class.IsSet.IsSet.\8712 c)\n    (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n     (.Ledger.Conway.Specification.Certs.DState.rewards st\7496))) \8594\n d \8801 0)"
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
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1106
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
                                                                                 (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_delegatees_1418
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
              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_dereg_1290 v5 v6
                -> let v7
                         = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                             (coe
                                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                                (coe
                                   MAlonzo.Code.Axiom.Set.d__'8712''63'__1612
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                   erased
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
                                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5)
                                   (coe (0 :: Integer)))
                                (coe
                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_560
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1358
                                      (coe v2)))) in
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
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DState_1548)
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
                                                            MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1540
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_th_1480
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                               erased v11)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1354
                                                               (coe v2))
                                                            (coe
                                                               MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_332
                                                               (coe
                                                                  MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_342
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_th_1480
                                                                     (coe
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                               v5)))
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
                                                               MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1540
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                                                  (coe
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                  erased v11)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1356
                                                                  (coe v2))
                                                               (coe
                                                                  MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_332
                                                                  (coe
                                                                     MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_342
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.d_th_1480
                                                                        (coe
                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                  v5)))
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
                                                               MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1540
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                                                  (coe
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                  erased v11)
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.Map.du__'738'_560
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1358
                                                                        (coe v2)))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1358
                                                                        (coe v2))))
                                                               (coe
                                                                  MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_332
                                                                  (coe
                                                                     MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_342
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.d_th_1480
                                                                        (coe
                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                  v5))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DELEG'45'dereg_1632
                                                   v10))
                                      _ -> MAlonzo.RTE.mazUnreachableError
                               else coe
                                      seq (coe v9)
                                      (coe
                                         MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                         (coe
                                            ("\172\n(Class.IsSet.IsSet-Map (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8712 (c , 0))\n(.Ledger.Conway.Specification.Certs.DState.rewards st\7496)"
                                             ::
                                             Data.Text.Text)))
                        _ -> MAlonzo.RTE.mazUnreachableError)
              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_reg_1302 v5 v6
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
                                         MAlonzo.Code.Class.IsSet.du_dom_580
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_588)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1358
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
                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pparams_1414
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
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DState_1548)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1354
                                                         (coe v2))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1356
                                                            (coe v2))
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
                                                               MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__1032
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                                                  (coe
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                  erased v11)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1358
                                                                  (coe v2))
                                                               (coe
                                                                  MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_332
                                                                  (coe
                                                                     MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_348
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.d_th_1480
                                                                        (coe
                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe v5)
                                                                     (coe (0 :: Integer)))))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DELEG'45'reg_1634
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
                                                             MAlonzo.Code.Class.IsSet.du_dom_580
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.d_th_1480
                                                                (coe
                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                             (coe
                                                                MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_588)
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1358
                                                                (coe v2))))
                                                       (coe
                                                          MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
                                                    erased in
                                          coe
                                            (case coe v10 of
                                               MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v11
                                                 -> coe
                                                      ("\172\n(Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8713 c)\n(Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n (.Ledger.Conway.Specification.Certs.DState.rewards st\7496))"
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
-- Ledger.Conway.Specification.Certs.Properties.Computational.Computational-POOL
d_Computational'45'POOL_1808 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'POOL_1808 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 v3 ->
         let v4
               = coe
                   MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                   (coe ("Unexpected certificate in POOL" :: Data.Text.Text)) in
         coe
           (case coe v3 of
              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regpool_1292 v5 v6
                -> coe
                     MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                        (coe
                           MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'PState_1550)
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (let v7
                                     = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                               (coe v0))) in
                               coe
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__1032
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1480
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                       erased v7)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1370
                                       (coe v2))
                                    (coe
                                       MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_332
                                       (coe
                                          MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_348
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1480
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5)
                                          (coe v6)))))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (let v7 = coe MAlonzo.Code.Class.ToBool.du_ToBool'45'Maybe_100 in
                                  coe
                                    (coe
                                       MAlonzo.Code.Class.ToBool.du_if_then_else__38 (coe v7)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.d_isPoolRegistered_1636
                                          (coe v0)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1370
                                             (coe v2))
                                          (coe v5))
                                       (coe
                                          MAlonzo.Code.Level.C_lift_20
                                          (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                       (coe
                                          (\ v8 ->
                                             let v9
                                                   = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                       (coe
                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                             (coe v0))) in
                                             coe
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__1032
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_th_1480
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                     erased v9)
                                                  (coe
                                                     MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_332
                                                     (coe
                                                        MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_348
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_th_1480
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe v5) (coe v6)))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1372
                                                     (coe v2)))))
                                       (coe
                                          (\ v8 ->
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1372
                                               (coe v2)))))
                                 (let v7
                                        = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                                  (coe v0))) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1540
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_th_1480
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                          erased v7)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1374
                                          (coe v2))
                                       (coe
                                          MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_332
                                          (coe
                                             MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_342
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1480
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                          v5))))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Certs.C_POOL'45'regpool_1646))
              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_retirepool_1294 v5 v6
                -> coe
                     MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                        (coe
                           MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'PState_1550)
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1370
                                 (coe v2))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1372
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
                                       MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__1032
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_th_1480
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                          erased v7)
                                       (coe
                                          MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_332
                                          (coe
                                             MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_348
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1480
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5)
                                             (coe v6)))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1374
                                          (coe v2)))))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Certs.C_POOL'45'retirepool_1648))
              _ -> coe v4))
-- Ledger.Conway.Specification.Certs.Properties.Computational.Computational-GOVCERT
d_Computational'45'GOVCERT_1822 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'GOVCERT_1822 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 v3 ->
         let v4
               = coe
                   MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                   (coe ("Unexpected certificate in GOVCERT" :: Data.Text.Text)) in
         coe
           (case coe v3 of
              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regdrep_1296 v5 v6 v7
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
                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pp_1336
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
                                            MAlonzo.Code.Class.IsSet.du_dom_580
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_th_1480
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_588)
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dreps_1384
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
                                         MAlonzo.Code.Class.IsSet.du_dom_580
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_588)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dreps_1384
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
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'GState_1552)
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
                                                            MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__1032
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_th_1480
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                               erased v12)
                                                            (coe
                                                               MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_332
                                                               (coe
                                                                  MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_348
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
                                                                     (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_epoch_1334
                                                                        (coe v1))
                                                                     (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_412
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pp_1336
                                                                           (coe v1))))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dreps_1384
                                                               (coe v2))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_ccHotKeys_1386
                                                         (coe v2))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GOVCERT'45'regdrep_1652
                                                   v11))
                                      _ -> MAlonzo.RTE.mazUnreachableError
                               else coe
                                      seq (coe v10)
                                      (coe
                                         MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                         (coe
                                            ("\172\n(d \8801\n .Ledger.Conway.Specification.PParams.PParams.drepDeposit\n (.Ledger.Conway.Specification.Certs.CertEnv.pp ce)\n \215\n (Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n  Class.IsSet.IsSet.\8713 c)\n (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n  (.Ledger.Conway.Specification.Certs.GState.dreps st\7501))\n \8846\n d \8801 0 \215\n (Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n  Class.IsSet.IsSet.\8712 c)\n (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n  (.Ledger.Conway.Specification.Certs.GState.dreps st\7501)))"
                                             ::
                                             Data.Text.Text)))
                        _ -> MAlonzo.RTE.mazUnreachableError)
              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_deregdrep_1298 v5 v6
                -> let v7
                         = coe
                             MAlonzo.Code.Axiom.Set.d__'8712''63'__1612
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                             erased
                             (coe
                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                         (coe v0))))
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_cryptoStructure_598
                                      (coe v0))))
                             v5
                             (coe
                                MAlonzo.Code.Class.IsSet.du_dom_580
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_588)
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dreps_1384
                                   (coe v2))) in
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
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'GState_1552)
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
                                                            MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1540
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_th_1480
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                               erased v11)
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.Map.du__'738'_560
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dreps_1384
                                                                     (coe v2)))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dreps_1384
                                                                     (coe v2))))
                                                            (coe
                                                               MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_332
                                                               (coe
                                                                  MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_342
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_th_1480
                                                                     (coe
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                               v5)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_ccHotKeys_1386
                                                         (coe v2))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GOVCERT'45'deregdrep_1654
                                                   v10))
                                      _ -> MAlonzo.RTE.mazUnreachableError
                               else coe
                                      seq (coe v9)
                                      (coe
                                         MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                         (coe
                                            ("\172\n(.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8712 c)\n(Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n (.Ledger.Conway.Specification.Certs.GState.dreps st\7501))"
                                             ::
                                             Data.Text.Text)))
                        _ -> MAlonzo.RTE.mazUnreachableError)
              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_ccreghot_1300 v5 v6
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
                                         MAlonzo.Code.Axiom.Set.Map.du__'738'_560
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_ccHotKeys_1386
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
                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_coldCreds_1342
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
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'GState_1552)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dreps_1384
                                                         (coe v2))
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
                                                            MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__1032
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_th_1480
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                               erased v11)
                                                            (coe
                                                               MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_332
                                                               (coe
                                                                  MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_348
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_th_1480
                                                                     (coe
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe v5) (coe v6)))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.Map.du__'738'_560
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.d_ccHotKeys_1386
                                                                     (coe v2)))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.d_ccHotKeys_1386
                                                                     (coe v2))))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GOVCERT'45'ccreghot_1656
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
                                                             MAlonzo.Code.Axiom.Set.Map.du__'738'_560
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_ccHotKeys_1386
                                                                (coe v2))))
                                                       (coe
                                                          MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
                                                    erased in
                                          coe
                                            (case coe v10 of
                                               MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v11
                                                 -> coe
                                                      ("\172\n(Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8713 (c , nothing))\n((.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Map.\738)\n (.Ledger.Conway.Specification.Certs.GState.ccHotKeys st\7501))"
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
-- Ledger.Conway.Specification.Certs.Properties.Computational.Computational-CERT
d_Computational'45'CERT_2094 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERT_2094 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 v3 ->
         let v4
               = coe
                   MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
                   (d_Computational'45'POOL_1808 (coe v0))
                   (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pp_1336 (coe v1))
                   (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pState_1400
                      (coe v2))
                   v3 in
         coe
           (let v5
                  = coe
                      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
                      (d_Computational'45'GOVCERT_1822 (coe v0)) v1
                      (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1402
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
                                                       (1406 :: Integer)
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
                                                          (1406 :: Integer)
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
                                                          (1136 :: Integer)
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
                                                             (1406 :: Integer)
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
                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.C_constructor_1420)))
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pp_1336 (coe v1))
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1370
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pState_1400
                                     (coe v2)))
                               (coe
                                  MAlonzo.Code.Class.IsSet.du_dom_580
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1480
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_588)
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dreps_1384
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1402
                                        (coe v2)))))) in
               coe
                 (let v7
                        = MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dState_1398
                            (coe v2) in
                  coe
                    (case coe v3 of
                       MAlonzo.Code.Ledger.Conway.Specification.Certs.C_delegate_1288 v8 v9 v10 v11
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
                                                     MAlonzo.Code.Class.IsSet.du_dom_580
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1480
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     (coe
                                                        MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_588)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1358
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
                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pparams_1414
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
                                                     MAlonzo.Code.Class.IsSet.du_dom_580
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1480
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     (coe
                                                        MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_588)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1358
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
                                                        MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1106
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
                                                        (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_delegatees_1418
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
                                                           MAlonzo.Code.Class.IsSet.du_dom_580
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1480
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           (coe
                                                              MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_588)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1416
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
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DState_1548)
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
                                                                          MAlonzo.Code.Axiom.Set.Map.du_insertIfJust_1150
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
                                                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1354
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
                                                                             MAlonzo.Code.Axiom.Set.Map.du_insertIfJust_1150
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
                                                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1356
                                                                                (coe v7))))
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
                                                                             MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__1032
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                (coe
                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                erased v16)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1358
                                                                                (coe v7))
                                                                             (coe
                                                                                MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_332
                                                                                (coe
                                                                                   MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_348
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                      (coe
                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                   (coe v8)
                                                                                   (coe
                                                                                      (0 ::
                                                                                         Integer)))))))))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DELEG'45'delegate_1630
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
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertState_1554)
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe v17)
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pState_1400
                                                                               (coe v2))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1402
                                                                               (coe v2)))))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CERT'45'deleg_1660
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
                                                                                  MAlonzo.Code.Class.IsSet.du_dom_580
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                     (coe
                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                  (coe
                                                                                     MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_588)
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1358
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
                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pparams_1414
                                                                                  (coe v6)))))
                                                                      erased in
                                                            coe
                                                              (case coe v15 of
                                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v16
                                                                   -> coe
                                                                        ("\172\n((z\n  : (Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n     Class.IsSet.IsSet.\8713 c)\n    (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n     (.Ledger.Conway.Specification.Certs.DState.rewards st\7496))) \8594\n d \8801\n .Ledger.Conway.Specification.PParams.PParams.keyDeposit\n (.Ledger.Conway.Specification.Certs.DelegEnv.pparams de))"
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
                                                                                         MAlonzo.Code.Class.IsSet.du_dom_580
                                                                                         (coe
                                                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                            (coe
                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                         (coe
                                                                                            MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_588)
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1358
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
                                                                                  ("\172\n((z\n  : (Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n     Class.IsSet.IsSet.\8712 c)\n    (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n     (.Ledger.Conway.Specification.Certs.DState.rewards st\7496))) \8594\n d \8801 0)"
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
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1106
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
                                                                                                   (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_delegatees_1418
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
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertState_1554)
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                          (coe v17)
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pState_1400
                                                                                (coe v2))
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1402
                                                                                (coe v2)))))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CERT'45'deleg_1660
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
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertState_1554)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dState_1398
                                                                                    (coe v2))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                    (coe v18)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1402
                                                                                       (coe v2)))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CERT'45'pool_1662
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
                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertState_1554)
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dState_1398
                                                                                           (coe v2))
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pState_1400
                                                                                              (coe
                                                                                                 v2))
                                                                                           (coe
                                                                                              v19))))
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CERT'45'vdel_1664
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
                       MAlonzo.Code.Ledger.Conway.Specification.Certs.C_dereg_1290 v8 v9
                         -> let v10
                                  = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                      (coe
                                         MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d__'8712''63'__1612
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                            erased
                                            (coe
                                               MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 ()
                                               erased () erased
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
                                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v8)
                                            (coe (0 :: Integer)))
                                         (coe
                                            MAlonzo.Code.Axiom.Set.Map.du__'738'_560
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1358
                                               (coe v7)))) in
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
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DState_1548)
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
                                                                                     (coe v15))) in
                                                                     coe
                                                                       (coe
                                                                          MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1540
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.d_th_1480
                                                                             (coe
                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                             erased v14)
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1354
                                                                             (coe v7))
                                                                          (coe
                                                                             MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_332
                                                                             (coe
                                                                                MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_342
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                   (coe
                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                             v8)))
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
                                                                             MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1540
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                (coe
                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                erased v14)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1356
                                                                                (coe v7))
                                                                             (coe
                                                                                MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_332
                                                                                (coe
                                                                                   MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_342
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                      (coe
                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                v8)))
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
                                                                             MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1540
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                (coe
                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                erased v14)
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_560
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1358
                                                                                      (coe v7)))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1358
                                                                                      (coe v7))))
                                                                             (coe
                                                                                MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_332
                                                                                (coe
                                                                                   MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_342
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                      (coe
                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                v8))))))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DELEG'45'dereg_1632
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
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertState_1554)
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe v15)
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pState_1400
                                                                               (coe v2))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1402
                                                                               (coe v2)))))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CERT'45'deleg_1660
                                                                      v16))
                                                         _ -> MAlonzo.RTE.mazUnreachableError)
                                               _ -> MAlonzo.RTE.mazUnreachableError
                                        else (let v13
                                                    = seq
                                                        (coe v12)
                                                        (coe
                                                           MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                           (coe
                                                              ("\172\n(Class.IsSet.IsSet-Map (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8712 (c , 0))\n(.Ledger.Conway.Specification.Certs.DState.rewards st\7496)"
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
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertState_1554)
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                          (coe v15)
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pState_1400
                                                                                (coe v2))
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1402
                                                                                (coe v2)))))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CERT'45'deleg_1660
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
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertState_1554)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dState_1398
                                                                                    (coe v2))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                    (coe v16)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1402
                                                                                       (coe v2)))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CERT'45'pool_1662
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
                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertState_1554)
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dState_1398
                                                                                           (coe v2))
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pState_1400
                                                                                              (coe
                                                                                                 v2))
                                                                                           (coe
                                                                                              v17))))
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CERT'45'vdel_1664
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
                       MAlonzo.Code.Ledger.Conway.Specification.Certs.C_reg_1302 v8 v9
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
                                                  MAlonzo.Code.Class.IsSet.du_dom_580
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_th_1480
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_588)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1358
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
                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pparams_1414
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
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DState_1548)
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1354
                                                                       (coe v7))
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1356
                                                                          (coe v7))
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
                                                                             MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__1032
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                (coe
                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                erased v14)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1358
                                                                                (coe v7))
                                                                             (coe
                                                                                MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_332
                                                                                (coe
                                                                                   MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_348
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                      (coe
                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                   (coe v8)
                                                                                   (coe
                                                                                      (0 ::
                                                                                         Integer)))))))))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DELEG'45'reg_1634
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
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertState_1554)
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe v15)
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pState_1400
                                                                               (coe v2))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1402
                                                                               (coe v2)))))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CERT'45'deleg_1660
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
                                                                               MAlonzo.Code.Class.IsSet.du_dom_580
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                  (coe
                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                               (coe
                                                                                  MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_588)
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1358
                                                                                  (coe v7))))
                                                                         (coe
                                                                            MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8))
                                                                      erased in
                                                            coe
                                                              (case coe v13 of
                                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v14
                                                                   -> coe
                                                                        ("\172\n(Class.IsSet.IsSet-Set (.Axiom.Set.Theory\7496.th List-Model\7496)\n Class.IsSet.IsSet.\8713 c)\n(Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n (.Ledger.Conway.Specification.Certs.DState.rewards st\7496))"
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
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertState_1554)
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                          (coe v15)
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pState_1400
                                                                                (coe v2))
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1402
                                                                                (coe v2)))))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CERT'45'deleg_1660
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
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertState_1554)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dState_1398
                                                                                    (coe v2))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                    (coe v16)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1402
                                                                                       (coe v2)))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CERT'45'pool_1662
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
                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertState_1554)
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dState_1398
                                                                                           (coe v2))
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pState_1400
                                                                                              (coe
                                                                                                 v2))
                                                                                           (coe
                                                                                              v17))))
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CERT'45'vdel_1664
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
                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertState_1554)
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dState_1398
                                                           (coe v2))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe v10)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1402
                                                              (coe v2)))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CERT'45'pool_1662
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
                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertState_1554)
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dState_1398
                                                                  (coe v2))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pState_1400
                                                                     (coe v2))
                                                                  (coe v11))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CERT'45'vdel_1664
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
-- Ledger.Conway.Specification.Certs.Properties.Computational.Computational-PRE-CERT
d_Computational'45'PRE'45'CERT_2402 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'PRE'45'CERT_2402 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 v3 ->
         let v4
               = coe
                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                   (coe
                      MAlonzo.Code.Class.Decidable.Core.d_dec_16
                      (coe
                         MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1644
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
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
                                    MAlonzo.Code.Class.IsSet.du_dom_580
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1480
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_588)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1354
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dState_1398
                                          (coe v2))))))
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1222
                            (\ v4 ->
                               coe
                                 MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                                 (coe
                                    MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                    (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj'7495'_50
                                    (coe v4))
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                            (coe
                               MAlonzo.Code.Axiom.Set.du_map_400
                               (MAlonzo.Code.Axiom.Set.d_th_1480
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               (\ v4 ->
                                  MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112
                                    (coe v4))
                               (coe
                                  MAlonzo.Code.Class.IsSet.du_dom_580
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1480
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_588)
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.d_wdrls_1340
                                     (coe v1)))))))
                   (coe
                      MAlonzo.Code.Class.Decidable.Core.d_dec_16
                      (coe
                         MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1644
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                         (coe
                            (\ v4 ->
                               coe
                                 MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                 (coe
                                    MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased ()
                                    erased
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
                                    MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                 (coe v4)
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_560
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1358
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dState_1398
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
                                  (\ v4 ->
                                     MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112
                                       (coe v4))))
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.du__'738'_560
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.d_wdrls_1340
                                  (coe v1)))))) in
         coe
           (case coe v4 of
              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v5 v6
                -> if coe v5
                     then case coe v6 of
                            MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v7
                              -> coe
                                   MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                   (coe
                                      MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                      (coe
                                         MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertState_1554)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DState_1548)
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1354
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dState_1398
                                                        (coe v2)))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1356
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dState_1398
                                                           (coe v2)))
                                                     (let v8
                                                            = let v8
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
                                                                      (coe v8) (coe v9))) in
                                                      coe
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__1032
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1480
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                              erased v8)
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.Map.du_constMap_1348
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_th_1480
                                                                 (coe
                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                              (let v9
                                                                     = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                               coe
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.du_map_400
                                                                    (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                       (coe v9))
                                                                    (\ v10 ->
                                                                       MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112
                                                                         (coe v10))
                                                                    (coe
                                                                       MAlonzo.Code.Class.IsSet.du_dom_580
                                                                       (coe
                                                                          MAlonzo.Code.Axiom.Set.d_th_1480
                                                                          (coe
                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                       (coe
                                                                          MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_588)
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.d_wdrls_1340
                                                                          (coe v1)))))
                                                              (coe (0 :: Integer)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1358
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dState_1398
                                                                 (coe v2))))))))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pState_1400
                                                  (coe v2))
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'GState_1552)
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (let v8
                                                            = let v8
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
                                                                      (coe v8) (coe v9))) in
                                                      coe
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.Map.du_mapValueRestricted_1552
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1480
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                              erased v8)
                                                           (let v9
                                                                  = coe
                                                                      MAlonzo.Code.Class.HasAdd.Core.d__'43'__16
                                                                      (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_252
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.d_epochStructure_644
                                                                            (coe v0)))
                                                                      (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_epoch_1334
                                                                         (coe v1))
                                                                      (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_412
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pp_1336
                                                                            (coe v1))) in
                                                            coe (coe (\ v10 -> v9)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dreps_1384
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1402
                                                                 (coe v2)))
                                                           (let v9
                                                                  = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                            coe
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.du_mapPartial_578
                                                                 (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                    (coe v9))
                                                                 (\ v10 ->
                                                                    coe
                                                                      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_isGovVoterDRep_1210
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_voter_948
                                                                         (coe v10)))
                                                                 (let v10
                                                                        = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                                  coe
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.du_fromList_430
                                                                       (coe
                                                                          MAlonzo.Code.Axiom.Set.d_th_1480
                                                                          (coe v10))
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.d_votes_1338
                                                                          (coe v1))))))))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.d_ccHotKeys_1386
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1402
                                                           (coe v2))))))))
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CERT'45'pre_1674
                                         v7))
                            _ -> MAlonzo.RTE.mazUnreachableError
                     else coe
                            seq (coe v6)
                            (coe
                               MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                               (let v7
                                      = coe
                                          MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1644
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                             (coe
                                                (\ v7 ->
                                                   coe
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
                                                     (coe v7)
                                                     (coe
                                                        MAlonzo.Code.Class.IsSet.du_dom_580
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_th_1480
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                        (coe
                                                           MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_588)
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1354
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dState_1398
                                                              (coe v2))))))
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1222
                                                (\ v7 ->
                                                   coe
                                                     MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                                                     (coe
                                                        MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                        (coe
                                                           MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj'7495'_50
                                                        (coe v7))
                                                     (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.du_map_400
                                                   (MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (\ v7 ->
                                                      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112
                                                        (coe v7))
                                                   (coe
                                                      MAlonzo.Code.Class.IsSet.du_dom_580
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_588)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_wdrls_1340
                                                         (coe v1))))))
                                          erased in
                                coe
                                  (case coe v7 of
                                     MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v8
                                       -> coe
                                            ("\172\n(HasSubset-Set HasSubset.\8838\n filter\738\n (Ledger.Core.Specification.Address.isKeyHash\n  (.Ledger.Core.Specification.Epoch.GlobalConstants.Network\n   (.GovStructure.globalConstants gs))\n  (.Ledger.Core.Specification.Crypto.isHashableSet.THash\n   (.Ledger.Core.Specification.Crypto.CryptoStructure.khs\n    (.GovStructure.cryptoStructure gs)))\n  (.Ledger.Core.Specification.Crypto.CryptoStructure.ScriptHash\n   (.GovStructure.cryptoStructure gs)))\n (Axiom.Set.Theory.map (.Axiom.Set.Theory\7496.th List-Model\7496)\n  (\955 r \8594 .Ledger.Core.Specification.Address.RwdAddr.stake r)\n  (Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n   (.Ledger.Conway.Specification.Certs.CertEnv.wdrls ce))))\n(Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n (.Ledger.Conway.Specification.Certs.DState.voteDelegs\n  (.Ledger.Conway.Specification.Certs.CertState.dState cs)))"
                                             ::
                                             Data.Text.Text)
                                     MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v8
                                       -> coe
                                            ("\172\n(HasSubset-Set HasSubset.\8838\n Axiom.Set.Theory.map (.Axiom.Set.Theory\7496.th List-Model\7496)\n (Bifunctor.map\8321 Bifunctor-\215\n  (\955 r \8594 .Ledger.Core.Specification.Address.RwdAddr.stake r))\n ((.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Map.\738)\n  (.Ledger.Conway.Specification.Certs.CertEnv.wdrls ce)))\n((.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Map.\738)\n (.Ledger.Conway.Specification.Certs.DState.rewards\n  (.Ledger.Conway.Specification.Certs.CertState.dState cs)))"
                                             ::
                                             Data.Text.Text)
                                     _ -> MAlonzo.RTE.mazUnreachableError)))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Specification.Certs.Properties.Computational.Computational-POST-CERT
d_Computational'45'POST'45'CERT_2538 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'POST'45'CERT_2538 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 v3 ->
         seq
           (coe v3)
           (coe
              MAlonzo.Code.Interface.ComputationalRelation.C_success_42
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                 (coe du_cs''_2552 (coe v0) (coe v2))
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CERT'45'post_1680))))
-- Ledger.Conway.Specification.Certs.Properties.Computational._.dreps
d_dreps_2548 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1322 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1390 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2548 ~v0 ~v1 v2 = du_dreps_2548 v2
du_dreps_2548 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1390 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2548 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dreps_1384
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1402
         (coe v0))
-- Ledger.Conway.Specification.Certs.Properties.Computational._.validVoteDelegs
d_validVoteDelegs_2550 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1322 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1390 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_validVoteDelegs_2550 v0 ~v1 v2 = du_validVoteDelegs_2550 v0 v2
du_validVoteDelegs_2550 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1390 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_validVoteDelegs_2550 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739''94'__2006
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
         erased
         (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1106
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1354
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dState_1398
            (coe v1)))
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
               MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegCredential_804)
            (coe
               MAlonzo.Code.Class.IsSet.du_dom_580
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1480
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_588)
               (coe du_dreps_2548 (coe v1))))
         (coe
            MAlonzo.Code.Axiom.Set.du_fromList_430
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegNoConfidence_808)
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.C_vDelegAbstain_806)
                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
-- Ledger.Conway.Specification.Certs.Properties.Computational._.cs'
d_cs''_2552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1322 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1390 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1390
d_cs''_2552 v0 ~v1 v2 = du_cs''_2552 v0 v2
du_cs''_2552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1390 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1390
du_cs''_2552 v0 v1
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
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (1390 :: Integer) (3005244792873517680 :: Integer)
                                    "Ledger.Conway.Specification.Certs.CertState"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                           (coe ("r" :: Data.Text.Text))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (1346 :: Integer) (3005244792873517680 :: Integer)
                                    "Ledger.Conway.Specification.Certs.DState"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
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
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (1390 :: Integer) (3005244792873517680 :: Integer)
                                       "Ledger.Conway.Specification.Certs.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                              (coe ("r" :: Data.Text.Text))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (1362 :: Integer) (3005244792873517680 :: Integer)
                                       "Ledger.Conway.Specification.Certs.PState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
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
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                       (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                    (coe
                                       (MAlonzo.RTE.QName
                                          (1390 :: Integer) (3005244792873517680 :: Integer)
                                          "Ledger.Conway.Specification.Certs.CertState"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                 (coe ("r" :: Data.Text.Text))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                    (coe
                                       (MAlonzo.RTE.QName
                                          (1378 :: Integer) (3005244792873517680 :: Integer)
                                          "Ledger.Conway.Specification.Certs.GState"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1404)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
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
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                       (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                    (coe
                                       (MAlonzo.RTE.QName
                                          (1346 :: Integer) (3005244792873517680 :: Integer)
                                          "Ledger.Conway.Specification.Certs.DState"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                 (coe ("r" :: Data.Text.Text))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                    (coe
                                       (MAlonzo.RTE.QName
                                          (918 :: Integer) (3005244792873517680 :: Integer)
                                          "Ledger.Conway.Specification.Certs._.VoteDelegs"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
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
                                       (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                       (coe
                                          (MAlonzo.RTE.QName
                                             (1346 :: Integer) (3005244792873517680 :: Integer)
                                             "Ledger.Conway.Specification.Certs.DState"
                                             (MAlonzo.RTE.Fixity
                                                MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                    (coe ("r" :: Data.Text.Text))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                       (coe
                                          (MAlonzo.RTE.QName
                                             (1144 :: Integer) (3005244792873517680 :: Integer)
                                             "Ledger.Conway.Specification.Certs.StakeDelegs"
                                             (MAlonzo.RTE.Fixity
                                                MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
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
                                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
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
                                                (1346 :: Integer) (3005244792873517680 :: Integer)
                                                "Ledger.Conway.Specification.Certs.DState"
                                                (MAlonzo.RTE.Fixity
                                                   MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                       (coe ("r" :: Data.Text.Text))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                          (coe
                                             (MAlonzo.RTE.QName
                                                (1140 :: Integer) (3005244792873517680 :: Integer)
                                                "Ledger.Conway.Specification.Certs.Rewards"
                                                (MAlonzo.RTE.Fixity
                                                   MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Certs.C_'10214'_'44'_'44'_'10215''7496'_1360)))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe du_validVoteDelegs_2550 (coe v0) (coe v1))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1356
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dState_1398
                        (coe v1)))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1358
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dState_1398
                        (coe v1))))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pState_1400
               (coe v1))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1402
               (coe v1))))
-- Ledger.Conway.Specification.Certs.Properties.Computational.Computational-CERTS
d_Computational'45'CERTS_2560 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERTS_2560 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'RunTraceAfterAndThen_1366
      (coe d_Computational'45'PRE'45'CERT_2402 (coe v0))
      (coe d_Computational'45'CERT_2094 (coe v0))
      (coe d_Computational'45'POST'45'CERT_2538 (coe v0))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_732)
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_732)
