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

module MAlonzo.Code.Ledger.Conway.Conformance.Utxo.Properties where

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
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.Bifunctor
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxo
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances
import qualified MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError

-- _.Dec-isVKey
d_Dec'45'isVKey_68 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_68 ~v0 = du_Dec'45'isVKey_68
du_Dec'45'isVKey_68 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_68
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_192
-- _.Tx
d_Tx_414 a0 = ()
-- _.Tx.body
d_body_1526 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3132 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2944
d_body_1526 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3144
      (coe v0)
-- _.Tx.isValid
d_isValid_1528 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3132 ->
  Bool
d_isValid_1528 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3150
      (coe v0)
-- _.Tx.txAD
d_txAD_1530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3132 ->
  Maybe AgdaAny
d_txAD_1530 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3152
      (coe v0)
-- _.Tx.txsize
d_txsize_1532 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3132 ->
  Integer
d_txsize_1532 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3148
      (coe v0)
-- _.Tx.wits
d_wits_1534 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3132 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3112
d_wits_1534 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3146
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.Properties._._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__1696 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Utxo.Properties._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1698 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Utxo.Properties._.UTxOEnv
d_UTxOEnv_1714 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo.Properties._.UTxOState
d_UTxOState_1716 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo.Properties._.UTxOEnv.pparams
d_pparams_1750 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2044 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298
d_pparams_1750 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2054
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.Properties._.UTxOEnv.slot
d_slot_1752 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2044 ->
  AgdaAny
d_slot_1752 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_slot_2052 (coe v0)
-- Ledger.Conway.Conformance.Utxo.Properties._.UTxOEnv.treasury
d_treasury_1754 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2044 ->
  Integer
d_treasury_1754 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_treasury_2056
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.Properties._.UTxOState.deposits
d_deposits_1758 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2062 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1758 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2076
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.Properties._.UTxOState.donations
d_donations_1760 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2062 ->
  Integer
d_donations_1760 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2078
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.Properties._.UTxOState.fees
d_fees_1762 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2062 ->
  Integer
d_fees_1762 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2074 (coe v0)
-- Ledger.Conway.Conformance.Utxo.Properties._.UTxOState.utxo
d_utxo_1764 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2062 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1764 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2072 (coe v0)
-- Ledger.Conway.Conformance.Utxo.Properties.L._.Dec-inInterval
d_Dec'45'inInterval_2142 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_2142 v0 ~v1 = du_Dec'45'inInterval_2142 v0
du_Dec'45'inInterval_2142 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_2142 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_Dec'45'inInterval_2660
      (coe v0)
-- Ledger.Conway.Conformance.Utxo.Properties.Computational-UTXOS
d_Computational'45'UTXOS_2324 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'UTXOS_2324 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_computeProof_2418 (coe v0) (coe v1))
-- Ledger.Conway.Conformance.Utxo.Properties._.go.computeProof
d_computeProof_2418 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2044 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2062 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3132 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_2418 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Data.Product.Base.du__'44''8242'__84
              (MAlonzo.Code.Class.Decidable.Core.d_dec_16
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_Scripts'45'Yes'45'premises_2420
                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))))
              (MAlonzo.Code.Class.Decidable.Core.d_dec_16
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_Scripts'45'No'45'premises_2422
                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)))) in
    coe
      (case coe v5 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
           -> case coe v6 of
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v8 v9
                  -> let v10
                           = coe
                               MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                               (coe ("isValid check failed" :: Data.Text.Text)) in
                     coe
                       (if coe v8
                          then case coe v9 of
                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v11
                                   -> case coe v7 of
                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v12 v13
                                          -> case coe v12 of
                                               MAlonzo.Code.Agda.Builtin.Bool.C_false_8
                                                 -> case coe v13 of
                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26
                                                        -> coe
                                                             MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2080
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.d_unions_196
                                                                            (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                               (coe
                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                            erased
                                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.d_listing_216
                                                                                  (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                     (coe
                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                  erased
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_specification_186
                                                                                           (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                              (coe
                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                           erased
                                                                                           erased
                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2072
                                                                                                 (coe
                                                                                                    v3)))
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                              (MAlonzo.Code.Axiom.Set.d_sp_162
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                    (coe
                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                              erased
                                                                                              erased
                                                                                              erased
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                                                                 (MAlonzo.Code.Axiom.Set.d_sp_162
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                       (coe
                                                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                                 erased
                                                                                                 erased
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                    erased
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1224
                                                                                                          (coe
                                                                                                             v0))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1222
                                                                                                          (coe
                                                                                                             v0)))
                                                                                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txins_2984
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3144
                                                                                                          (coe
                                                                                                             v4)))))
                                                                                              (\ v15 ->
                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      v15)))))
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_specification_186
                                                                                              (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                 (coe
                                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                              erased
                                                                                              erased
                                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_outs_2118
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3144
                                                                                                       (coe
                                                                                                          v4))))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                                 (MAlonzo.Code.Axiom.Set.d_sp_162
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                       (coe
                                                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                                 erased
                                                                                                 erased
                                                                                                 erased
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                                                                    (MAlonzo.Code.Axiom.Set.d_sp_162
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                          (coe
                                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                                    erased
                                                                                                    erased
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                       erased
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1224
                                                                                                             (coe
                                                                                                                v0))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1222
                                                                                                             (coe
                                                                                                                v0)))
                                                                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Axiom.Set.d_replacement_208
                                                                                                             (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                             erased
                                                                                                             erased
                                                                                                             (\ v15 ->
                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v15))
                                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Axiom.Set.d_specification_186
                                                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                   erased
                                                                                                                   erased
                                                                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2072
                                                                                                                         (coe
                                                                                                                            v3)))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                                                      (MAlonzo.Code.Axiom.Set.d_sp_162
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                                                      erased
                                                                                                                      erased
                                                                                                                      erased
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                                                                                         (MAlonzo.Code.Axiom.Set.d_sp_162
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                                                         erased
                                                                                                                         erased
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                            erased
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1224
                                                                                                                                  (coe
                                                                                                                                     v0))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1222
                                                                                                                                  (coe
                                                                                                                                     v0)))
                                                                                                                            (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txins_2984
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3144
                                                                                                                                  (coe
                                                                                                                                     v4)))))
                                                                                                                      (\ v15 ->
                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                           (coe
                                                                                                                              v15)))))))))
                                                                                                 (\ v15 ->
                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                      (coe
                                                                                                         v15)))))
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                                                      erased)
                                                                   (coe
                                                                      addInt
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txfee_2990
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3144
                                                                            (coe v4)))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2074
                                                                         (coe v3)))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2076
                                                                      (coe v3))
                                                                   (coe
                                                                      addInt
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdonation_3004
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3144
                                                                            (coe v4)))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2078
                                                                         (coe v3))))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Utxo.C_Scripts'45'Yes_2338
                                                                   v11))
                                                      _ -> coe v10
                                               _ -> coe v10
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 _ -> coe v10
                          else (case coe v9 of
                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26
                                    -> case coe v7 of
                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v12 v13
                                           -> case coe v12 of
                                                MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                                  -> case coe v13 of
                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v14
                                                         -> coe
                                                              MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2080
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.d_specification_186
                                                                             (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                (coe
                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                             erased erased
                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2072
                                                                                   (coe v3)))
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                (MAlonzo.Code.Axiom.Set.d_sp_162
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                      (coe
                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                erased erased erased
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                                                   (MAlonzo.Code.Axiom.Set.d_sp_162
                                                                                      (coe
                                                                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                         (coe
                                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                   erased erased
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                      erased
                                                                                      (coe
                                                                                         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1224
                                                                                            (coe
                                                                                               v0))
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1222
                                                                                            (coe
                                                                                               v0)))
                                                                                      (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateral_3016
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3144
                                                                                            (coe
                                                                                               v4)))))
                                                                                (\ v15 ->
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                     (coe v15)))))
                                                                       (coe
                                                                          (\ v15 v16 v17 v18 v19 ->
                                                                             coe
                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                               (MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2072
                                                                                  (coe v3))
                                                                               v15 v16 v17
                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                  (coe
                                                                                     MAlonzo.Code.Function.Bundles.d_from_1822
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_specification_186
                                                                                           (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                              (coe
                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                           erased
                                                                                           erased
                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2072
                                                                                                 (coe
                                                                                                    v3)))
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                              (MAlonzo.Code.Axiom.Set.d_sp_162
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                    (coe
                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                              erased
                                                                                              erased
                                                                                              erased
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                                                                 (MAlonzo.Code.Axiom.Set.d_sp_162
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                       (coe
                                                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                                 erased
                                                                                                 erased
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                    erased
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1224
                                                                                                          (coe
                                                                                                             v0))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1222
                                                                                                          (coe
                                                                                                             v0)))
                                                                                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateral_3016
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3144
                                                                                                          (coe
                                                                                                             v4)))))
                                                                                              (\ v20 ->
                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      v20))))
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                           (coe v15)
                                                                                           (coe
                                                                                              v16)))
                                                                                     v18))
                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                  (coe
                                                                                     MAlonzo.Code.Function.Bundles.d_from_1822
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_specification_186
                                                                                           (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                              (coe
                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                           erased
                                                                                           erased
                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2072
                                                                                                 (coe
                                                                                                    v3)))
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                              (MAlonzo.Code.Axiom.Set.d_sp_162
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                    (coe
                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                              erased
                                                                                              erased
                                                                                              erased
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                                                                 (MAlonzo.Code.Axiom.Set.d_sp_162
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                       (coe
                                                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                                 erased
                                                                                                 erased
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                    erased
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1224
                                                                                                          (coe
                                                                                                             v0))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1222
                                                                                                          (coe
                                                                                                             v0)))
                                                                                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateral_3016
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3144
                                                                                                          (coe
                                                                                                             v4)))))
                                                                                              (\ v20 ->
                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      v20))))
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                           (coe v15)
                                                                                           (coe
                                                                                              v17)))
                                                                                     v19)))))
                                                                    (coe
                                                                       addInt
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_cbalance_2130
                                                                          (coe v0)
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.d_specification_186
                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                      (coe
                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                   erased erased
                                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2072
                                                                                         (coe v3)))
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                      (MAlonzo.Code.Axiom.Set.d_sp_162
                                                                                         (coe
                                                                                            MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                            (coe
                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                      erased erased
                                                                                      erased
                                                                                      (coe
                                                                                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                         erased
                                                                                         (coe
                                                                                            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1224
                                                                                               (coe
                                                                                                  v0))
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1222
                                                                                               (coe
                                                                                                  v0)))
                                                                                         (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateral_3016
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3144
                                                                                               (coe
                                                                                                  v4))))
                                                                                      (\ v15 ->
                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                           (coe
                                                                                              v15)))))
                                                                             (coe
                                                                                (\ v15 v16 v17 v18
                                                                                   v19 ->
                                                                                   coe
                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                     (MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2072
                                                                                        (coe v3))
                                                                                     v15 v16 v17
                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                        (coe
                                                                                           MAlonzo.Code.Function.Bundles.d_from_1822
                                                                                           (coe
                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_specification_186
                                                                                                 (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                    (coe
                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                 erased
                                                                                                 erased
                                                                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2072
                                                                                                       (coe
                                                                                                          v3)))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                                    (MAlonzo.Code.Axiom.Set.d_sp_162
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                          (coe
                                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                                    erased
                                                                                                    erased
                                                                                                    erased
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                       erased
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1224
                                                                                                             (coe
                                                                                                                v0))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1222
                                                                                                             (coe
                                                                                                                v0)))
                                                                                                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateral_3016
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3144
                                                                                                             (coe
                                                                                                                v4))))
                                                                                                    (\ v20 ->
                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                         (coe
                                                                                                            v20))))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                 (coe
                                                                                                    v15)
                                                                                                 (coe
                                                                                                    v16)))
                                                                                           v18))
                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                        (coe
                                                                                           MAlonzo.Code.Function.Bundles.d_from_1822
                                                                                           (coe
                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_specification_186
                                                                                                 (MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                    (coe
                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                 erased
                                                                                                 erased
                                                                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2072
                                                                                                       (coe
                                                                                                          v3)))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                                    (MAlonzo.Code.Axiom.Set.d_sp_162
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                          (coe
                                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                                                    erased
                                                                                                    erased
                                                                                                    erased
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                       erased
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1224
                                                                                                             (coe
                                                                                                                v0))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1222
                                                                                                             (coe
                                                                                                                v0)))
                                                                                                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateral_3016
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3144
                                                                                                             (coe
                                                                                                                v4))))
                                                                                                    (\ v20 ->
                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                         (coe
                                                                                                            v20))))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                 (coe
                                                                                                    v15)
                                                                                                 (coe
                                                                                                    v17)))
                                                                                           v19))))))
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2074
                                                                          (coe v3)))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2076
                                                                       (coe v3))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2078
                                                                       (coe v3)))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Utxo.C_Scripts'45'No_2418
                                                                    v14))
                                                       _ -> coe v10
                                                _ -> coe v10
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> coe v10))
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Conformance.Utxo.Properties._.go.completeness
d_completeness_2428 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2044 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2062 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3132 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2062 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T__'8866'_'8640''10631'_'44'UTXOS'10632'__2258 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_2428 = erased
-- Ledger.Conway.Conformance.Utxo.Properties.Computational-UTXO
d_Computational'45'UTXO_2458 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'UTXO_2458 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_computeProof_2538 (coe v0) (coe v1))
-- Ledger.Conway.Conformance.Utxo.Properties._.Go.computeProofH
d_computeProofH_2498 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2044 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2062 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3132 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProofH_2498 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v6 v7
        -> if coe v6
             then case coe v7 of
                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v8
                      -> case coe v8 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                             -> case coe v10 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                    -> case coe v12 of
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                           -> case coe v14 of
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                                  -> case coe v16 of
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v17 v18
                                                         -> case coe v18 of
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v19 v20
                                                                -> case coe v20 of
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v21 v22
                                                                       -> case coe v22 of
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v23 v24
                                                                              -> case coe v24 of
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v25 v26
                                                                                     -> case coe
                                                                                               v26 of
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v27 v28
                                                                                            -> case coe
                                                                                                      v28 of
                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v29 v30
                                                                                                   -> case coe
                                                                                                             v30 of
                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v31 v32
                                                                                                          -> case coe
                                                                                                                    v32 of
                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v33 v34
                                                                                                                 -> case coe
                                                                                                                           v34 of
                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v35 v36
                                                                                                                        -> case coe
                                                                                                                                  v36 of
                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v37 v38
                                                                                                                               -> case coe
                                                                                                                                         v38 of
                                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v39 v40
                                                                                                                                      -> coe
                                                                                                                                           MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Interface.ComputationalRelation.du_Functor'45'ComputationResult_138)
                                                                                                                                           ()
                                                                                                                                           erased
                                                                                                                                           ()
                                                                                                                                           erased
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Class.Bifunctor.du_map'8322''8242'_54
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45'Σ_72)
                                                                                                                                              (coe
                                                                                                                                                 (\ v41
                                                                                                                                                    v42 ->
                                                                                                                                                    coe
                                                                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.C_UTXO'45'inductive_2532
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                         (coe
                                                                                                                                                            v9)
                                                                                                                                                         (coe
                                                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                            (coe
                                                                                                                                                               v11)
                                                                                                                                                            (coe
                                                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                               (coe
                                                                                                                                                                  v13)
                                                                                                                                                               (coe
                                                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                  (coe
                                                                                                                                                                     v15)
                                                                                                                                                                  (coe
                                                                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                     (coe
                                                                                                                                                                        v17)
                                                                                                                                                                     (coe
                                                                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                        (coe
                                                                                                                                                                           v19)
                                                                                                                                                                        (coe
                                                                                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                           (coe
                                                                                                                                                                              v21)
                                                                                                                                                                           (coe
                                                                                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                              (coe
                                                                                                                                                                                 v23)
                                                                                                                                                                              (coe
                                                                                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                 (coe
                                                                                                                                                                                    v25)
                                                                                                                                                                                 (coe
                                                                                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                    (coe
                                                                                                                                                                                       v27)
                                                                                                                                                                                    (coe
                                                                                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                       (coe
                                                                                                                                                                                          v29)
                                                                                                                                                                                       (coe
                                                                                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                          (coe
                                                                                                                                                                                             v31)
                                                                                                                                                                                          (coe
                                                                                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                             (coe
                                                                                                                                                                                                v33)
                                                                                                                                                                                             (coe
                                                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                (coe
                                                                                                                                                                                                   v35)
                                                                                                                                                                                                (coe
                                                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                   (coe
                                                                                                                                                                                                      v37)
                                                                                                                                                                                                   (coe
                                                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                      (coe
                                                                                                                                                                                                         v39)
                                                                                                                                                                                                      (coe
                                                                                                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                         (coe
                                                                                                                                                                                                            v40)
                                                                                                                                                                                                         (coe
                                                                                                                                                                                                            v42)))))))))))))))))))))
                                                                                                                                           (d_computeProof_2418
                                                                                                                                              (coe
                                                                                                                                                 v0)
                                                                                                                                              (coe
                                                                                                                                                 v1)
                                                                                                                                              (coe
                                                                                                                                                 v2)
                                                                                                                                              (coe
                                                                                                                                                 v3)
                                                                                                                                              (coe
                                                                                                                                                 v4))
                                                                                                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             else coe
                    seq (coe v7)
                    (coe
                       MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                       (let v8
                              = coe
                                  MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                  (coe
                                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                     (coe
                                        MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                        (coe
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
                                           (coe
                                              MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 ()
                                              erased () erased
                                              (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1224
                                                 (coe v0))
                                              (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1222
                                                 (coe v0))))
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txins_2984
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3144
                                              (coe v4)))
                                        (coe
                                           MAlonzo.Code.Axiom.Set.du_'8709'_442
                                           (coe
                                              MAlonzo.Code.Axiom.Set.d_th_1470
                                              (coe
                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                                     (coe
                                        MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                                  erased in
                        coe
                          (case coe v8 of
                             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v9
                               -> coe
                                    ("\172\n.TransactionStructure.TxBody.txins\n(.TransactionStructure.Tx.body tx)\n\8802\n.Class.HasEmptySet.HasEmptySet.\8709\n(Class.HasEmptySet.HasEmptySet-Set\n (.Axiom.Set.Theory\7496.th List-Model\7496))"
                                     ::
                                     Data.Text.Text)
                             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v9
                               -> let v10
                                        = coe
                                            MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                            (coe
                                               MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                               (coe
                                                  (\ v10 ->
                                                     coe
                                                       MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                       (coe
                                                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                          () erased () erased
                                                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1224
                                                             (coe v0))
                                                          (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1222
                                                             (coe v0)))
                                                       (coe v10)
                                                       (coe
                                                          MAlonzo.Code.Class.IsSet.du_dom_548
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.d_th_1470
                                                             (coe
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                          (coe
                                                             MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2072
                                                             (coe v3)))))
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.du__'8746'__680
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_th_1470
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txins_2984
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3144
                                                        (coe v4)))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_2986
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3144
                                                        (coe v4)))))
                                            erased in
                                  coe
                                    (case coe v10 of
                                       MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v11
                                         -> coe
                                              ("\172\n(HasSubset-Set HasSubset.\8838\n (.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8746\n  .TransactionStructure.TxBody.txins\n  (.TransactionStructure.Tx.body tx))\n (.TransactionStructure.TxBody.refInputs\n  (.TransactionStructure.Tx.body tx)))\n(Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n (.Ledger.Conway.Specification.Utxo.UTxOState.utxo s))"
                                               ::
                                               Data.Text.Text)
                                       MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v11
                                         -> let v12
                                                  = coe
                                                      MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                      (coe
                                                         MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
                                                            (coe
                                                               MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                               () erased () erased
                                                               (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1224
                                                                  (coe v0))
                                                               (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1222
                                                                  (coe v0))))
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.du__'8745'__704
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_th_1470
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                               erased
                                                               (coe
                                                                  MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                  MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                                  erased
                                                                  MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                                  erased
                                                                  (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1224
                                                                     (coe v0))
                                                                  (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1222
                                                                     (coe v0))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txins_2984
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3144
                                                                  (coe v4)))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_2986
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3144
                                                                  (coe v4))))
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.du_'8709'_442
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_th_1470
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                                                      erased in
                                            coe
                                              (case coe v12 of
                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v13
                                                   -> coe
                                                        ("\172\n(.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.Intersection.\8745\n .Axiom.Set.Theory\7496.\8712-sp List-Model\7496)\n(.TransactionStructure.TxBody.txins\n (.TransactionStructure.Tx.body tx))\n(.TransactionStructure.TxBody.refInputs\n (.TransactionStructure.Tx.body tx))\n\8801\n.Class.HasEmptySet.HasEmptySet.\8709\n(Class.HasEmptySet.HasEmptySet-Set\n (.Axiom.Set.Theory\7496.th List-Model\7496))"
                                                         ::
                                                         Data.Text.Text)
                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v13
                                                   -> let v14
                                                            = coe
                                                                MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_Dec'45'inInterval_2660
                                                                   (coe v0)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_slot_2052
                                                                      (coe v2))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txvldt_2994
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3144
                                                                         (coe v4))))
                                                                erased in
                                                      coe
                                                        (case coe v14 of
                                                           MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v15
                                                             -> coe
                                                                  ("\172\nLedger.Conway.Conformance.Utxo.L.inInterval txs abs\n(.Ledger.Conway.Specification.Utxo.UTxOEnv.slot \915)\n(.TransactionStructure.TxBody.txvldt\n (.TransactionStructure.Tx.body tx))"
                                                                   ::
                                                                   Data.Text.Text)
                                                           MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v15
                                                             -> let v16
                                                                      = coe
                                                                          MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                                          (coe
                                                                             MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                                                             (MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_minfee_2140
                                                                                (coe v0) (coe v1)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2054
                                                                                   (coe v2))
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2072
                                                                                   (coe v3))
                                                                                (coe v4))
                                                                             (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txfee_2990
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3144
                                                                                   (coe v4))))
                                                                          erased in
                                                                coe
                                                                  (case coe v16 of
                                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v17
                                                                       -> coe
                                                                            ("\172\n(\8469-hasPreorder HasPreorder.\8804\n Ledger.Conway.Specification.Utxo.minfee txs abs\n (.Ledger.Conway.Specification.Utxo.UTxOEnv.pparams \915)\n (.Ledger.Conway.Specification.Utxo.UTxOState.utxo s) tx)\n(.TransactionStructure.TxBody.txfee\n (.TransactionStructure.Tx.body tx))"
                                                                             ::
                                                                             Data.Text.Text)
                                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v17
                                                                       -> let v18
                                                                                = coe
                                                                                    MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                                             (coe
                                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
                                                                                                (coe
                                                                                                   MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                   ()
                                                                                                   erased
                                                                                                   ()
                                                                                                   erased
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                      ()
                                                                                                      erased
                                                                                                      ()
                                                                                                      erased
                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Tag_22
                                                                                                      (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1222
                                                                                                         (coe
                                                                                                            v0)))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                      ()
                                                                                                      erased
                                                                                                      ()
                                                                                                      erased
                                                                                                      (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_196
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1810
                                                                                                                     (coe
                                                                                                                        v0))))))
                                                                                                      (MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_230
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_318
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1810
                                                                                                               (coe
                                                                                                                  v0)))))))
                                                                                             (coe
                                                                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3128
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3146
                                                                                                      (coe
                                                                                                         v4))))
                                                                                             (coe
                                                                                                MAlonzo.Code.Axiom.Set.du_'8709'_442
                                                                                                (coe
                                                                                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                   (coe
                                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                                                                             (coe
                                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                             (coe
                                                                                                (\ v18 ->
                                                                                                   coe
                                                                                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_192
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_156
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                           (coe
                                                                                                              v18)))))
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.IsSet.du_range_550
                                                                                                (coe
                                                                                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                   (coe
                                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Axiom.Set.Map.du__'8739'__1342
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                      (coe
                                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                      erased
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1224
                                                                                                            (coe
                                                                                                               v0))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1222
                                                                                                            (coe
                                                                                                               v0))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2072
                                                                                                      (coe
                                                                                                         v3))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateral_3016
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3144
                                                                                                         (coe
                                                                                                            v4))))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                                                                (coe
                                                                                                   MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                                                                                   (coe
                                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                   (coe
                                                                                                      (\ v18 ->
                                                                                                         coe
                                                                                                           MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                                                           (coe
                                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1270
                                                                                                                 (coe
                                                                                                                    v0)))
                                                                                                           (coe
                                                                                                              v18)
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_coinPolicies_2766
                                                                                                              (coe
                                                                                                                 v0))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_206
                                                                                                      (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2296
                                                                                                         (coe
                                                                                                            v0))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_balance'8242'_2836
                                                                                                         (coe
                                                                                                            v0)
                                                                                                         (coe
                                                                                                            v4)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2072
                                                                                                            (coe
                                                                                                               v3)))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                                                                                   (coe
                                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                   (coe
                                                                                                      (\ v18 ->
                                                                                                         coe
                                                                                                           MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                                                                                                           (coe
                                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1270
                                                                                                                 (coe
                                                                                                                    v0)))
                                                                                                           (coe
                                                                                                              v18)
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_206
                                                                                                              (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2296
                                                                                                                 (coe
                                                                                                                    v0))
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_balance'8242'_2836
                                                                                                                 (coe
                                                                                                                    v0)
                                                                                                                 (coe
                                                                                                                    v4)
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2072
                                                                                                                    (coe
                                                                                                                       v3))))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_coinPolicies_2766
                                                                                                      (coe
                                                                                                         v0))))
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                                                                                   (mulInt
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txfee_2990
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3144
                                                                                                            (coe
                                                                                                               v4)))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_420
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2054
                                                                                                            (coe
                                                                                                               v2))))
                                                                                                   (mulInt
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_202
                                                                                                         (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2296
                                                                                                            (coe
                                                                                                               v0))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_balance'8242'_2836
                                                                                                            (coe
                                                                                                               v0)
                                                                                                            (coe
                                                                                                               v4)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2072
                                                                                                               (coe
                                                                                                                  v3))))
                                                                                                      (coe
                                                                                                         (100 ::
                                                                                                            Integer))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                                                      (coe
                                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                            ()
                                                                                                            erased
                                                                                                            ()
                                                                                                            erased
                                                                                                            (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1224
                                                                                                               (coe
                                                                                                                  v0))
                                                                                                            (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1222
                                                                                                               (coe
                                                                                                                  v0))))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateral_3016
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3144
                                                                                                            (coe
                                                                                                               v4)))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Axiom.Set.du_'8709'_442
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                            (coe
                                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))))))
                                                                                    erased in
                                                                          coe
                                                                            (case coe v18 of
                                                                               MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v19
                                                                                 -> coe
                                                                                      ("\172\n((z\n  : (.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Map.\738)\n    (.TransactionStructure.TxWitnesses.txrdmrs\n     (.TransactionStructure.Tx.wits tx))\n    \8802\n    .Class.HasEmptySet.HasEmptySet.\8709\n    (Class.HasEmptySet.HasEmptySet-Set\n     (.Axiom.Set.Theory\7496.th List-Model\7496))) \8594\n Ledger.Conway.Specification.Utxo.collateralCheck txs abs\n (.Ledger.Conway.Specification.Utxo.UTxOEnv.pparams \915) tx\n (.Ledger.Conway.Specification.Utxo.UTxOState.utxo s))"
                                                                                       ::
                                                                                       Data.Text.Text)
                                                                               MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v19
                                                                                 -> let v20
                                                                                          = coe
                                                                                              MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                                                              (coe
                                                                                                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_216
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2296
                                                                                                       (coe
                                                                                                          v0)))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_consumed_2866
                                                                                                    (coe
                                                                                                       v0)
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2054
                                                                                                       (coe
                                                                                                          v2))
                                                                                                    (coe
                                                                                                       v3)
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3144
                                                                                                       (coe
                                                                                                          v4)))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_produced_2874
                                                                                                    (coe
                                                                                                       v0)
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2054
                                                                                                       (coe
                                                                                                          v2))
                                                                                                    (coe
                                                                                                       v3)
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3144
                                                                                                       (coe
                                                                                                          v4))))
                                                                                              erased in
                                                                                    coe
                                                                                      (case coe
                                                                                              v20 of
                                                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v21
                                                                                           -> coe
                                                                                                ("\172\nLedger.Conway.Specification.Utxo.consumed txs abs\n(.Ledger.Conway.Specification.Utxo.UTxOEnv.pparams \915) s\n(.TransactionStructure.Tx.body tx)\n\8801\nLedger.Conway.Specification.Utxo.produced txs abs\n(.Ledger.Conway.Specification.Utxo.UTxOEnv.pparams \915) s\n(.TransactionStructure.Tx.body tx)"
                                                                                                 ::
                                                                                                 Data.Text.Text)
                                                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v21
                                                                                           -> let v22
                                                                                                    = coe
                                                                                                        MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_202
                                                                                                              (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2296
                                                                                                                 (coe
                                                                                                                    v0))
                                                                                                              (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_2992
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3144
                                                                                                                    (coe
                                                                                                                       v4))))
                                                                                                           (coe
                                                                                                              (0 ::
                                                                                                                 Integer)))
                                                                                                        erased in
                                                                                              coe
                                                                                                (case coe
                                                                                                        v22 of
                                                                                                   MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v23
                                                                                                     -> coe
                                                                                                          ("\172\n.Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra.coin\n(.TransactionStructure.tokenAlgebra txs)\n(.TransactionStructure.TxBody.mint\n (.TransactionStructure.Tx.body tx))\n\8801 0"
                                                                                                           ::
                                                                                                           Data.Text.Text)
                                                                                                   MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v23
                                                                                                     -> let v24
                                                                                                              = coe
                                                                                                                  MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                                                                                                     (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3148
                                                                                                                        (coe
                                                                                                                           v4))
                                                                                                                     (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_372
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2054
                                                                                                                           (coe
                                                                                                                              v2))))
                                                                                                                  erased in
                                                                                                        coe
                                                                                                          (case coe
                                                                                                                  v24 of
                                                                                                             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v25
                                                                                                               -> coe
                                                                                                                    ("\172\n(\8469-hasPreorder HasPreorder.\8804 .TransactionStructure.Tx.txsize tx)\n(.Ledger.Conway.Specification.PParams.PParams.maxTxSize\n (.Ledger.Conway.Specification.Utxo.UTxOEnv.pparams \915))"
                                                                                                                     ::
                                                                                                                     Data.Text.Text)
                                                                                                             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v25
                                                                                                               -> let v26
                                                                                                                        = coe
                                                                                                                            MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                                                                                                               (MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_refScriptsSize_2134
                                                                                                                                  (coe
                                                                                                                                     v0)
                                                                                                                                  (coe
                                                                                                                                     v1)
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2072
                                                                                                                                     (coe
                                                                                                                                        v3))
                                                                                                                                  (coe
                                                                                                                                     v4))
                                                                                                                               (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_404
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2054
                                                                                                                                     (coe
                                                                                                                                        v2))))
                                                                                                                            erased in
                                                                                                                  coe
                                                                                                                    (case coe
                                                                                                                            v26 of
                                                                                                                       MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v27
                                                                                                                         -> coe
                                                                                                                              ("\172\n(\8469-hasPreorder HasPreorder.\8804\n Ledger.Conway.Specification.Utxo.refScriptsSize txs abs\n (.Ledger.Conway.Specification.Utxo.UTxOState.utxo s) tx)\n(.Ledger.Conway.Specification.PParams.PParams.maxRefScriptSizePerTx\n (.Ledger.Conway.Specification.Utxo.UTxOEnv.pparams \915))"
                                                                                                                               ::
                                                                                                                               Data.Text.Text)
                                                                                                                       MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v27
                                                                                                                         -> let v28
                                                                                                                                  = coe
                                                                                                                                      MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                                                                                                      (coe
                                                                                                                                         MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                                                         (coe
                                                                                                                                            (\ v28 ->
                                                                                                                                               coe
                                                                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_218
                                                                                                                                                 (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2296
                                                                                                                                                    (coe
                                                                                                                                                       v0))
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_204
                                                                                                                                                    (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2296
                                                                                                                                                       (coe
                                                                                                                                                          v0))
                                                                                                                                                    (mulInt
                                                                                                                                                       (coe
                                                                                                                                                          addInt
                                                                                                                                                          (coe
                                                                                                                                                             (160 ::
                                                                                                                                                                Integer))
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_utxoEntrySize_2040
                                                                                                                                                             (coe
                                                                                                                                                                v0)
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                                                (coe
                                                                                                                                                                   v28))))
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_398
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2054
                                                                                                                                                             (coe
                                                                                                                                                                v2)))))
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3184
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                                       (coe
                                                                                                                                                          v28)))))
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_90
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
                                                                                                                                               (coe
                                                                                                                                                  MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                                                  (coe
                                                                                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                               (coe
                                                                                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3174
                                                                                                                                                  (coe
                                                                                                                                                     v0))
                                                                                                                                               (coe
                                                                                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txouts_2988
                                                                                                                                                  (coe
                                                                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3144
                                                                                                                                                     (coe
                                                                                                                                                        v4))))))
                                                                                                                                      erased in
                                                                                                                            coe
                                                                                                                              (case coe
                                                                                                                                      v28 of
                                                                                                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v29
                                                                                                                                   -> coe
                                                                                                                                        ("\172\nClass.IsSet.All-syntax (.Axiom.Set.Theory\7496.th List-Model\7496)\n(\955 .patternInTele0 \8594\n   (.TransactionStructure.tokenAlgebra txs\n    Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra.\8804\7511\n    .Ledger.Conway.Specification.TokenAlgebra.Base.TokenAlgebra.inject\n    (.TransactionStructure.tokenAlgebra txs)\n    ((addNat HasAdd.+ 160)\n     (Ledger.Conway.Specification.Utxo.utxoEntrySize txs abs\n      (.proj\8322 .patternInTele0))\n     *\n     .Ledger.Conway.Specification.PParams.PParams.coinsPerUTxOByte\n     (.Ledger.Conway.Specification.Utxo.UTxOEnv.pparams \915)))\n   (TransactionStructure.getValue\688 txs (.proj\8322 .patternInTele0)))\n\8739\nAxiom.Set.Map.mapValues (.Axiom.Set.Theory\7496.th List-Model\7496)\n(TransactionStructure.txOutHash txs)\n(.TransactionStructure.TxBody.txouts\n (.TransactionStructure.Tx.body tx))\n\8739"
                                                                                                                                         ::
                                                                                                                                         Data.Text.Text)
                                                                                                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v29
                                                                                                                                   -> let v30
                                                                                                                                            = coe
                                                                                                                                                MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                                                                   (coe
                                                                                                                                                      (\ v30 ->
                                                                                                                                                         coe
                                                                                                                                                           MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                                                                                                                                           (coe
                                                                                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_serSize_1972
                                                                                                                                                              v1
                                                                                                                                                              (coe
                                                                                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3184
                                                                                                                                                                 (coe
                                                                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                                                    (coe
                                                                                                                                                                       v30))))
                                                                                                                                                           (MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_380
                                                                                                                                                              (coe
                                                                                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_pparams_2054
                                                                                                                                                                 (coe
                                                                                                                                                                    v2)))))
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_90
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
                                                                                                                                                         (coe
                                                                                                                                                            MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                                                            (coe
                                                                                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                         (coe
                                                                                                                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3174
                                                                                                                                                            (coe
                                                                                                                                                               v0))
                                                                                                                                                         (coe
                                                                                                                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txouts_2988
                                                                                                                                                            (coe
                                                                                                                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3144
                                                                                                                                                               (coe
                                                                                                                                                                  v4))))))
                                                                                                                                                erased in
                                                                                                                                      coe
                                                                                                                                        (case coe
                                                                                                                                                v30 of
                                                                                                                                           MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v31
                                                                                                                                             -> coe
                                                                                                                                                  ("\172\nClass.IsSet.All-syntax (.Axiom.Set.Theory\7496.th List-Model\7496)\n(\955 .patternInTele0 \8594\n   (\8469-hasPreorder HasPreorder.\8804\n    .AbstractFunctions.serSize abs\n    (TransactionStructure.getValue\688 txs (.proj\8322 .patternInTele0)))\n   (.Ledger.Conway.Specification.PParams.PParams.maxValSize\n    (.Ledger.Conway.Specification.Utxo.UTxOEnv.pparams \915)))\n\8739\nAxiom.Set.Map.mapValues (.Axiom.Set.Theory\7496.th List-Model\7496)\n(TransactionStructure.txOutHash txs)\n(.TransactionStructure.TxBody.txouts\n (.TransactionStructure.Tx.body tx))\n\8739"
                                                                                                                                                   ::
                                                                                                                                                   Data.Text.Text)
                                                                                                                                           MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v31
                                                                                                                                             -> let v32
                                                                                                                                                      = coe
                                                                                                                                                          MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                                                                             (coe
                                                                                                                                                                (\ v32 ->
                                                                                                                                                                   coe
                                                                                                                                                                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'All_28
                                                                                                                                                                     (coe
                                                                                                                                                                        (\ v33 ->
                                                                                                                                                                           MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20))
                                                                                                                                                                     (coe
                                                                                                                                                                        (\ v33 ->
                                                                                                                                                                           coe
                                                                                                                                                                             MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                                                                                                                                                             (MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_96
                                                                                                                                                                                (coe
                                                                                                                                                                                   v33))
                                                                                                                                                                             (64 ::
                                                                                                                                                                                Integer)))
                                                                                                                                                                     (coe
                                                                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                        (coe
                                                                                                                                                                           v32))))
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Class.IsSet.du_range_550
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3174
                                                                                                                                                                      (coe
                                                                                                                                                                         v0))
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txouts_2988
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3144
                                                                                                                                                                         (coe
                                                                                                                                                                            v4))))))
                                                                                                                                                          erased in
                                                                                                                                                coe
                                                                                                                                                  (case coe
                                                                                                                                                          v32 of
                                                                                                                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v33
                                                                                                                                                       -> coe
                                                                                                                                                            ("\172\nClass.IsSet.All-syntax (.Axiom.Set.Theory\7496.th List-Model\7496)\n(\955 .patternInTele0 \8594\n   Data.Sum.Relation.Unary.All.All (const \8868)\n   (\955 a \8594\n      (\8469-hasPreorder HasPreorder.\8804\n       .Ledger.Core.Specification.Address.BootstrapAddr.attrsSize a)\n      64)\n   (.proj\8321 .patternInTele0))\n(Class.IsSet.range (.Axiom.Set.Theory\7496.th List-Model\7496)\n (Axiom.Set.Map.mapValues (.Axiom.Set.Theory\7496.th List-Model\7496)\n  (TransactionStructure.txOutHash txs)\n  (.TransactionStructure.TxBody.txouts\n   (.TransactionStructure.Tx.body tx))))"
                                                                                                                                                             ::
                                                                                                                                                             Data.Text.Text)
                                                                                                                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v33
                                                                                                                                                       -> let v34
                                                                                                                                                                = coe
                                                                                                                                                                    MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                                                                                                                                    (coe
                                                                                                                                                                       MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                                                                                                                                                       (coe
                                                                                                                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                                                                                       (coe
                                                                                                                                                                          (\ v34 ->
                                                                                                                                                                             coe
                                                                                                                                                                               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                                                                                                                               (coe
                                                                                                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_282
                                                                                                                                                                                  (coe
                                                                                                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1240
                                                                                                                                                                                     (coe
                                                                                                                                                                                        v0)))
                                                                                                                                                                               (coe
                                                                                                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_160
                                                                                                                                                                                  (coe
                                                                                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                                     (coe
                                                                                                                                                                                        v34)))
                                                                                                                                                                               (coe
                                                                                                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_298
                                                                                                                                                                                  (coe
                                                                                                                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1240
                                                                                                                                                                                     (coe
                                                                                                                                                                                        v0)))))
                                                                                                                                                                       (coe
                                                                                                                                                                          MAlonzo.Code.Class.IsSet.du_range_550
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                                                                                (coe
                                                                                                                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3174
                                                                                                                                                                                (coe
                                                                                                                                                                                   v0))
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txouts_2988
                                                                                                                                                                                (coe
                                                                                                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3144
                                                                                                                                                                                   (coe
                                                                                                                                                                                      v4))))))
                                                                                                                                                                    erased in
                                                                                                                                                          coe
                                                                                                                                                            (case coe
                                                                                                                                                                    v34 of
                                                                                                                                                               MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v35
                                                                                                                                                                 -> coe
                                                                                                                                                                      ("\172\nClass.IsSet.All-syntax (.Axiom.Set.Theory\7496.th List-Model\7496)\n(\955 .patternInTele0 \8594\n   Ledger.Core.Specification.Address.netId\n   (.Ledger.Core.Specification.Epoch.GlobalConstants.Network\n    (.TransactionStructure.globalConstants txs))\n   (.Ledger.Core.Specification.Crypto.isHashableSet.THash\n    (.Ledger.Core.Specification.Crypto.CryptoStructure.khs\n     (.TransactionStructure.cryptoStructure txs)))\n   (.Ledger.Core.Specification.Crypto.CryptoStructure.ScriptHash\n    (.TransactionStructure.cryptoStructure txs))\n   (.proj\8321 .patternInTele0)\n   \8801\n   .Ledger.Core.Specification.Epoch.GlobalConstants.NetworkId\n   (.TransactionStructure.globalConstants txs))\n(Class.IsSet.range (.Axiom.Set.Theory\7496.th List-Model\7496)\n (Axiom.Set.Map.mapValues (.Axiom.Set.Theory\7496.th List-Model\7496)\n  (TransactionStructure.txOutHash txs)\n  (.TransactionStructure.TxBody.txouts\n   (.TransactionStructure.Tx.body tx))))"
                                                                                                                                                                       ::
                                                                                                                                                                       Data.Text.Text)
                                                                                                                                                               MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v35
                                                                                                                                                                 -> let v36
                                                                                                                                                                          = coe
                                                                                                                                                                              MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                                                                                                                                              (coe
                                                                                                                                                                                 MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                                                                                                                                                                 (coe
                                                                                                                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                                                                                                 (coe
                                                                                                                                                                                    (\ v36 ->
                                                                                                                                                                                       coe
                                                                                                                                                                                         MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                                                                                                                                                         (coe
                                                                                                                                                                                            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_282
                                                                                                                                                                                            (coe
                                                                                                                                                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1240
                                                                                                                                                                                               (coe
                                                                                                                                                                                                  v0)))
                                                                                                                                                                                         (coe
                                                                                                                                                                                            MAlonzo.Code.Ledger.Core.Specification.Address.d_net_104
                                                                                                                                                                                            (coe
                                                                                                                                                                                               v36))
                                                                                                                                                                                         (coe
                                                                                                                                                                                            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_298
                                                                                                                                                                                            (coe
                                                                                                                                                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1240
                                                                                                                                                                                               (coe
                                                                                                                                                                                                  v0)))))
                                                                                                                                                                                 (coe
                                                                                                                                                                                    MAlonzo.Code.Class.IsSet.du_dom_548
                                                                                                                                                                                    (coe
                                                                                                                                                                                       MAlonzo.Code.Axiom.Set.d_th_1470
                                                                                                                                                                                       (coe
                                                                                                                                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                                                    (coe
                                                                                                                                                                                       MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                                                                                                                                                    (coe
                                                                                                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txwdrls_2998
                                                                                                                                                                                       (coe
                                                                                                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3144
                                                                                                                                                                                          (coe
                                                                                                                                                                                             v4)))))
                                                                                                                                                                              erased in
                                                                                                                                                                    coe
                                                                                                                                                                      (case coe
                                                                                                                                                                              v36 of
                                                                                                                                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v37
                                                                                                                                                                           -> coe
                                                                                                                                                                                ("\172\nClass.IsSet.All-syntax (.Axiom.Set.Theory\7496.th List-Model\7496)\n(\955 a \8594\n   .Ledger.Core.Specification.Address.HasNetworkId.NetworkIdOf\n   (Ledger.Core.Specification.Address.HasNetworkId-RwdAddr\n    (.Ledger.Core.Specification.Epoch.GlobalConstants.Network\n     (.TransactionStructure.globalConstants txs))\n    (.Ledger.Core.Specification.Crypto.isHashableSet.THash\n     (.Ledger.Core.Specification.Crypto.CryptoStructure.khs\n      (.TransactionStructure.cryptoStructure txs)))\n    (.Ledger.Core.Specification.Crypto.CryptoStructure.ScriptHash\n     (.TransactionStructure.cryptoStructure txs)))\n   a\n   \8801\n   .Ledger.Core.Specification.Epoch.GlobalConstants.NetworkId\n   (.TransactionStructure.globalConstants txs))\n(Class.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n (.TransactionStructure.TxBody.txwdrls\n  (.TransactionStructure.Tx.body tx)))"
                                                                                                                                                                                 ::
                                                                                                                                                                                 Data.Text.Text)
                                                                                                                                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v37
                                                                                                                                                                           -> let v38
                                                                                                                                                                                    = coe
                                                                                                                                                                                        MAlonzo.Code.QstdlibZ45Zmeta.Tactic.GenError.du_dec'45'de'45'morgan_10
                                                                                                                                                                                        (coe
                                                                                                                                                                                           MAlonzo.Code.Prelude.du_'126''63'_48
                                                                                                                                                                                           (coe
                                                                                                                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3010
                                                                                                                                                                                              (coe
                                                                                                                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3144
                                                                                                                                                                                                 (coe
                                                                                                                                                                                                    v4)))
                                                                                                                                                                                           (coe
                                                                                                                                                                                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                                                                                                                                              (coe
                                                                                                                                                                                                 MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_298
                                                                                                                                                                                                 (coe
                                                                                                                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1240
                                                                                                                                                                                                    (coe
                                                                                                                                                                                                       v0))))
                                                                                                                                                                                           (coe
                                                                                                                                                                                              MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_282
                                                                                                                                                                                              (coe
                                                                                                                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1240
                                                                                                                                                                                                 (coe
                                                                                                                                                                                                    v0))))
                                                                                                                                                                                        erased in
                                                                                                                                                                              coe
                                                                                                                                                                                (case coe
                                                                                                                                                                                        v38 of
                                                                                                                                                                                   MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v39
                                                                                                                                                                                     -> coe
                                                                                                                                                                                          ("\172\n(.TransactionStructure.TxBody.txNetworkId\n (.TransactionStructure.Tx.body tx)\n ~\n just\n (.Ledger.Core.Specification.Epoch.GlobalConstants.NetworkId\n  (.TransactionStructure.globalConstants txs)))"
                                                                                                                                                                                           ::
                                                                                                                                                                                           Data.Text.Text)
                                                                                                                                                                                   MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v39
                                                                                                                                                                                     -> coe
                                                                                                                                                                                          ("\172\n(.TransactionStructure.TxBody.curTreasury\n (.TransactionStructure.Tx.body tx)\n ~ just (.Ledger.Conway.Specification.Utxo.UTxOEnv.treasury \915))"
                                                                                                                                                                                           ::
                                                                                                                                                                                           Data.Text.Text)
                                                                                                                                                                                   _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                                                                         _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                                                               _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                                                     _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                                           _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                                 _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                       _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                             _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                   _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                         _ -> MAlonzo.RTE.mazUnreachableError)
                                                                               _ -> MAlonzo.RTE.mazUnreachableError)
                                                                     _ -> MAlonzo.RTE.mazUnreachableError)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)
                                                 _ -> MAlonzo.RTE.mazUnreachableError)
                                       _ -> MAlonzo.RTE.mazUnreachableError)
                             _ -> MAlonzo.RTE.mazUnreachableError)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.Properties._.Go.computeProof
d_computeProof_2538 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2044 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2062 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3132 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_2538 v0 v1 v2 v3 v4
  = coe
      d_computeProofH_2498 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
      (coe
         MAlonzo.Code.Class.Decidable.Core.d_dec_16
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_UTXO'45'premises_2578
               (coe v0) (coe v1) (coe v4) (coe v2) (coe v3))))
-- Ledger.Conway.Conformance.Utxo.Properties._.Go.completeness
d_completeness_2542 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2044 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2062 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3132 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2062 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__2424 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_2542 = erased
-- Ledger.Conway.Conformance.Utxo.Properties.UTXO-step
d_UTXO'45'step_2750 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2044 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2062 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3132 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_UTXO'45'step_2750 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
      (coe d_Computational'45'UTXO_2458 (coe v0) (coe v1))
-- Ledger.Conway.Conformance.Utxo.Properties.UTXO-step-computes-UTXO
d_UTXO'45'step'45'computes'45'UTXO_2752 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1958 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOEnv_2044 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2062 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3132 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2062 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810
d_UTXO'45'step'45'computes'45'UTXO_2752 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.du_'8801''45'success'8660'STS_300
      (coe d_Computational'45'UTXO_2458 (coe v0) (coe v1)) (coe v2)
      (coe v3) (coe v4) (coe v5)
