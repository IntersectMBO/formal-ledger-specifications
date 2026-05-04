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

module MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.Properties.Computational where

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
import qualified MAlonzo.Code.Axiom.Set.Rel
import qualified MAlonzo.Code.Axiom.Set.Sum
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.Decidable.WithoutK
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.ToBool
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.Bool.Properties
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Account
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Ledger.Prelude.Base
import qualified MAlonzo.Code.Ledger.Prelude.Instances
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances

-- _.SubLevelTx
d_SubLevelTx_874 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_SubLevelTx_874 = erased
-- _.TopLevelTx
d_TopLevelTx_894 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  ()
d_TopLevelTx_894 = erased
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._._⊢_⇀⦇_,SUBUTXO⦈_
d__'8866'_'8640''10631'_'44'SUBUTXO'10632'__2584 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__2586 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2588 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.SubUTxOEnv
d_SubUTxOEnv_2686 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.UTxOEnv
d_UTxOEnv_2698 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.UTxOState
d_UTxOState_2702 a0 a1 = ()
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.SubUTxOEnv.accountBalances
d_accountBalances_2812 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3072 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_accountBalances_2812 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_accountBalances_3100
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.SubUTxOEnv.allScripts
d_allScripts_2814 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3072 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allScripts_2814 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3098
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.SubUTxOEnv.isTopLevelValid
d_isTopLevelValid_2816 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3072 ->
  Bool
d_isTopLevelValid_2816 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_isTopLevelValid_3096
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.SubUTxOEnv.pparams
d_pparams_2818 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3072 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pparams_2818 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3090
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.SubUTxOEnv.slot
d_slot_2820 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3072 ->
  AgdaAny
d_slot_2820 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_slot_3088
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.SubUTxOEnv.treasury
d_treasury_2822 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3072 ->
  Integer
d_treasury_2822 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_treasury_3092
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.SubUTxOEnv.utxo₀
d_utxo'8320'_2824 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3072 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo'8320'_2824 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3094
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.UTxOEnv.accountBalances
d_accountBalances_2828 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3040 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_accountBalances_2828 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_accountBalances_3068
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.UTxOEnv.allScripts
d_allScripts_2830 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3040 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allScripts_2830 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3066
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.UTxOEnv.depositsChange
d_depositsChange_2832 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_DepositsChange_3028
d_depositsChange_2832 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_depositsChange_3064
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.UTxOEnv.pparams
d_pparams_2834 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pparams_2834 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3058
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.UTxOEnv.slot
d_slot_2836 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3040 ->
  AgdaAny
d_slot_2836 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_slot_3056
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.UTxOEnv.treasury
d_treasury_2838 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3040 ->
  Integer
d_treasury_2838 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_treasury_3060
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.UTxOEnv.utxo₀
d_utxo'8320'_2840 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3040 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo'8320'_2840 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3062
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.UTxOState.donations
d_donations_2844 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3104 ->
  Integer
d_donations_2844 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_donations_3116
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.UTxOState.fees
d_fees_2846 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3104 ->
  Integer
d_fees_2846 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_fees_3114
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.UTxOState.utxo
d_utxo_2848 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3104 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2848 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3112
      (coe v0)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational.Computational-SUBUTXO
d_Computational'45'SUBUTXO_2888 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3054 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'SUBUTXO_2888 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_computeProof_2906 (coe v0) (coe v1))
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.go.computeProof
d_computeProof_2906 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3054 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3072 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3104 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3620 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_2906 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_isTopLevelValid_3096
              (coe v2) in
    coe
      (if coe v5
         then case coe v2 of
                MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.C_constructor_3102 v6 v7 v8 v9 v10 v11 v12
                  -> let v13
                           = coe
                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                               (coe
                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__106
                                  (coe
                                     MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                     (coe
                                        MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                        (coe
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1244
                                           (coe
                                              MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 ()
                                              erased () erased
                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                 (coe v0))
                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                 (coe v0))))
                                        (coe
                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4004
                                           (coe
                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4354)
                                           v4)
                                        (coe
                                           MAlonzo.Code.Axiom.Set.du_'8709'_470
                                           (coe
                                              MAlonzo.Code.Axiom.Set.d_th_1516
                                              (coe
                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))))
                                  (coe
                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                     (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                     (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))
                               (coe
                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                  (coe
                                     MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                     (coe
                                        MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                        (coe
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                        (coe
                                           (\ v13 ->
                                              coe
                                                MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                (coe
                                                   MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 ()
                                                   erased () erased
                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                      (coe v0))
                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                      (coe v0)))
                                                (coe v13)
                                                (coe
                                                   MAlonzo.Code.Class.IsSet.du_dom_586
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                   (coe v9))))
                                        (coe
                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4004
                                           (coe
                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4354)
                                           v4)))
                                  (coe
                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                     (coe
                                        MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                        (coe
                                           MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                           (coe
                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                           (coe
                                              (\ v13 ->
                                                 coe
                                                   MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                   (coe
                                                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                      () erased () erased
                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                         (coe v0))
                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                         (coe v0)))
                                                   (coe v13)
                                                   (coe
                                                      MAlonzo.Code.Class.IsSet.du_dom_586
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                      (coe v9))))
                                           (coe
                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ReferenceInputsOf_4024
                                              (coe
                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasReferenceInputs'45'Tx_4358)
                                              v4)))
                                     (coe
                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                        (coe
                                           MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                           (coe
                                              MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                              (coe
                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                              (coe
                                                 (\ v13 ->
                                                    coe
                                                      MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                      (coe
                                                         MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                         () erased () erased
                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                            (coe v0))
                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                            (coe v0)))
                                                      (coe v13)
                                                      (coe
                                                         MAlonzo.Code.Class.IsSet.du_dom_586
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         (coe
                                                            MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3112
                                                            (coe v3)))))
                                              (coe
                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4004
                                                 (coe
                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4354)
                                                 v4)))
                                        (coe
                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                           (coe
                                              MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                              (coe
                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_Dec'45'inInterval_3372
                                                 (coe v0) (coe v6)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3714
                                                    (coe
                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
                                                       (coe v4)))))
                                           (coe
                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                              (coe
                                                 MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                 (coe
                                                    MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                    (coe
                                                       MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
                                                          (coe v0))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_MintedValueOf_4044
                                                          (coe
                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMintedValue'45'Tx_4362)
                                                          v4))
                                                    (coe (0 :: Integer))))
                                              (coe
                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                 (coe
                                                    MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                       (coe
                                                          (\ v13 ->
                                                             coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
                                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
                                                                  (coe v0))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
                                                                     (coe v0))
                                                                  (mulInt
                                                                     (coe
                                                                        addInt
                                                                        (coe (160 :: Integer))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_utxoEntrySize_3024
                                                                           (coe v0)
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                              (coe v13))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_412
                                                                        (coe v7))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToValue_4428
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                     (coe v13)))))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_94
                                                          (coe
                                                             MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4204
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4410)
                                                             v4))))
                                                 (coe
                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                    (coe
                                                       MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                          (coe
                                                             (\ v13 ->
                                                                coe
                                                                  MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_serializedSize_3070
                                                                     v1
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToValue_4428
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                           (coe v13))))
                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_394
                                                                     (coe v7))))
                                                          (coe
                                                             MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_94
                                                             (coe
                                                                MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4204
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4410)
                                                                v4))))
                                                    (coe
                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                       (coe
                                                          MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                             (coe
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                             (coe
                                                                (\ v13 ->
                                                                   coe
                                                                     MAlonzo.Code.Class.Decidable.WithoutK.du_Dec'45''8846'All_42
                                                                     (coe
                                                                        (\ v14 ->
                                                                           MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10))
                                                                     (coe
                                                                        (\ v14 ->
                                                                           coe
                                                                             MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                                                             (MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_112
                                                                                (coe v14))
                                                                             (64 :: Integer)))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v13))))
                                                             (coe
                                                                MAlonzo.Code.Class.IsSet.du_range_588
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                (coe
                                                                   MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4204
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4410)
                                                                   v4))))
                                                       (coe
                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                          (coe
                                                             MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                (coe
                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                (coe
                                                                   (\ v13 ->
                                                                      coe
                                                                        MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
                                                                              (coe v0)))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_266
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe v13)))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
                                                                              (coe v0)))))
                                                                (coe
                                                                   MAlonzo.Code.Class.IsSet.du_range_588
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                   (coe
                                                                      MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4204
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4410)
                                                                      v4))))
                                                          (coe
                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                             (coe
                                                                MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                   (coe
                                                                      (\ v13 ->
                                                                         coe
                                                                           MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
                                                                                 (coe v0)))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122
                                                                              (coe v13))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
                                                                                 (coe v0)))))
                                                                   (coe
                                                                      MAlonzo.Code.Class.IsSet.du_dom_586
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      (coe
                                                                         MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWithdrawals_3712
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
                                                                            (coe v4))))))
                                                             (coe
                                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                (coe
                                                                   MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                   (coe
                                                                      MAlonzo.Code.Prelude.du_'126''63'_48
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txNetworkId_3724
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
                                                                            (coe v4)))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
                                                                               (coe v0))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
                                                                            (coe v0)))))
                                                                (coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                   (coe
                                                                      MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                      (coe
                                                                         MAlonzo.Code.Prelude.du_'126''63'_48
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_currentTreasury_3726
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
                                                                               (coe v4)))
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                            (coe v8))
                                                                         (coe
                                                                            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                      (coe
                                                                         MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                            (coe
                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                            (coe
                                                                               (\ v13 ->
                                                                                  coe
                                                                                    MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                                                    (coe
                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                                (coe
                                                                                                   v0))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                             (coe
                                                                                                v0))))
                                                                                    (coe v13)
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.IsSet.du_dom_586
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                          (coe
                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                                       (coe v12))))
                                                                            (coe
                                                                               MAlonzo.Code.Class.IsSet.du_dom_586
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                  (coe
                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                               (coe
                                                                                  MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DirectDepositsOf_4264
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDirectDeposits'45'Tx_4342)
                                                                                  v4))))
                                                                      (coe
                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                         (coe
                                                                            MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                               (coe
                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                               (coe
                                                                                  (\ v13 ->
                                                                                     coe
                                                                                       MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                                                       (coe
                                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                                   (coe
                                                                                                      v0))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                                (coe
                                                                                                   v0))))
                                                                                       (coe v13)
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.IsSet.du_dom_586
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                             (coe
                                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                                          (coe
                                                                                             v12))))
                                                                               (coe
                                                                                  MAlonzo.Code.Class.IsSet.du_dom_586
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                     (coe
                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                  (coe
                                                                                     MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBalanceIntervals_3740
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
                                                                                        (coe
                                                                                           v4))))))
                                                                         (coe
                                                                            MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                               (coe
                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                               (coe
                                                                                  (\ v13 ->
                                                                                     coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Account.du_Dec'45'InBalanceInterval_876
                                                                                       (coe
                                                                                          MAlonzo.Code.Data.Maybe.Base.du_maybe_32
                                                                                          (coe
                                                                                             (\ v14 ->
                                                                                                v14))
                                                                                          (coe
                                                                                             (0 ::
                                                                                                Integer))
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_2048
                                                                                             (coe
                                                                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                (coe
                                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                             (coe
                                                                                                v12)
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   v13))
                                                                                             (coe
                                                                                                MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                                                                (coe
                                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                                            (coe
                                                                                                               v0))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                                         (coe
                                                                                                            v0))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      v13))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Axiom.Set.Rel.du_dom_354
                                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                      (coe
                                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                                                                      (coe
                                                                                                         v12))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                          (coe
                                                                                             v13))))
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBalanceIntervals_3740
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
                                                                                        (coe
                                                                                           v4)))))))))))))))))))) in
                     coe
                       (case coe v13 of
                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v14 v15
                            -> if coe v14
                                 then case coe v15 of
                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v16
                                          -> coe
                                               MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (coe
                                                     MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_76
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
                                                                                   (3104 :: Integer)
                                                                                   (1252473578754917138 ::
                                                                                      Integer)
                                                                                   "Ledger.Dijkstra.Specification.Utxo.UTxOState"
                                                                                   (MAlonzo.RTE.Fixity
                                                                                      MAlonzo.RTE.NonAssoc
                                                                                      MAlonzo.RTE.Unrelated)))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                          (coe
                                                                             ("r"
                                                                              ::
                                                                              Data.Text.Text))
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                             (coe
                                                                                (MAlonzo.RTE.QName
                                                                                   (924 :: Integer)
                                                                                   (1252473578754917138 ::
                                                                                      Integer)
                                                                                   "_.UTxO"
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
                                                                                      (3104 ::
                                                                                         Integer)
                                                                                      (1252473578754917138 ::
                                                                                         Integer)
                                                                                      "Ledger.Dijkstra.Specification.Utxo.UTxOState"
                                                                                      (MAlonzo.RTE.Fixity
                                                                                         MAlonzo.RTE.NonAssoc
                                                                                         MAlonzo.RTE.Unrelated)))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                             (coe
                                                                                ("r"
                                                                                 ::
                                                                                 Data.Text.Text))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                (coe
                                                                                   (MAlonzo.RTE.QName
                                                                                      (10 ::
                                                                                         Integer)
                                                                                      (14798748958053396954 ::
                                                                                         Integer)
                                                                                      "Ledger.Prelude.Base.Fees"
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
                                                                                         (3104 ::
                                                                                            Integer)
                                                                                         (1252473578754917138 ::
                                                                                            Integer)
                                                                                         "Ledger.Dijkstra.Specification.Utxo.UTxOState"
                                                                                         (MAlonzo.RTE.Fixity
                                                                                            MAlonzo.RTE.NonAssoc
                                                                                            MAlonzo.RTE.Unrelated)))
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                                (coe
                                                                                   ("r"
                                                                                    ::
                                                                                    Data.Text.Text))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                   (coe
                                                                                      (MAlonzo.RTE.QName
                                                                                         (8 ::
                                                                                            Integer)
                                                                                         (14798748958053396954 ::
                                                                                            Integer)
                                                                                         "Ledger.Prelude.Base.Donations"
                                                                                         (MAlonzo.RTE.Fixity
                                                                                            MAlonzo.RTE.NonAssoc
                                                                                            MAlonzo.RTE.Unrelated)))
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.C_'10214'_'44'_'44'_'10215''7512'_3118)))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__1042
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1516
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                              erased
                                                              (coe
                                                                 MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                                    (coe v0))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                                    (coe v0))))
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                                                 (coe
                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                 erased
                                                                 (coe
                                                                    MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                                       (coe v0))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                                       (coe v0))))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3112
                                                                 (coe v3))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4004
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4354)
                                                                 v4))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_outs_3316
                                                              (coe v4)))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_fees_3114
                                                              (coe v3))
                                                           (coe
                                                              addInt
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDonation_3718
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
                                                                    (coe v4)))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_donations_3116
                                                                 (coe v3))))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.C_SUBUTXO_3612
                                                     v16))
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 else coe
                                        seq (coe v15)
                                        (coe
                                           MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                           (coe ("genErrors" :: Data.Text.Text)))
                          _ -> MAlonzo.RTE.mazUnreachableError)
                _ -> MAlonzo.RTE.mazUnreachableError
         else (case coe v2 of
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.C_constructor_3102 v6 v7 v8 v9 v10 v11 v12
                   -> let v13
                            = coe
                                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                (coe
                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__106
                                   (coe
                                      MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                      (coe
                                         MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1244
                                            (coe
                                               MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 ()
                                               erased () erased
                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                  (coe v0))
                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                  (coe v0))))
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4004
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4354)
                                            v4)
                                         (coe
                                            MAlonzo.Code.Axiom.Set.du_'8709'_470
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))))
                                   (coe
                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                      (coe v5)
                                      (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))
                                (coe
                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                   (coe
                                      MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                         (coe
                                            (\ v13 ->
                                               coe
                                                 MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                 (coe
                                                    MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 ()
                                                    erased () erased
                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                       (coe v0))
                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                       (coe v0)))
                                                 (coe v13)
                                                 (coe
                                                    MAlonzo.Code.Class.IsSet.du_dom_586
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                    (coe
                                                       MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                    (coe v9))))
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4004
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4354)
                                            v4)))
                                   (coe
                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                      (coe
                                         MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                         (coe
                                            MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                            (coe
                                               (\ v13 ->
                                                  coe
                                                    MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                    (coe
                                                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                       () erased () erased
                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                          (coe v0))
                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                          (coe v0)))
                                                    (coe v13)
                                                    (coe
                                                       MAlonzo.Code.Class.IsSet.du_dom_586
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                       (coe
                                                          MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                       (coe v9))))
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ReferenceInputsOf_4024
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasReferenceInputs'45'Tx_4358)
                                               v4)))
                                      (coe
                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                         (coe
                                            MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                            (coe
                                               MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                               (coe
                                                  (\ v13 ->
                                                     coe
                                                       MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                       (coe
                                                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                          () erased () erased
                                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                             (coe v0))
                                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                             (coe v0)))
                                                       (coe v13)
                                                       (coe
                                                          MAlonzo.Code.Class.IsSet.du_dom_586
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.d_th_1516
                                                             (coe
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                          (coe
                                                             MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3112
                                                             (coe v3)))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4004
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4354)
                                                  v4)))
                                         (coe
                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                            (coe
                                               MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_Dec'45'inInterval_3372
                                                  (coe v0) (coe v6)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3714
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
                                                        (coe v4)))))
                                            (coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                               (coe
                                                  MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                  (coe
                                                     MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                     (coe
                                                        MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
                                                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
                                                           (coe v0))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_MintedValueOf_4044
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMintedValue'45'Tx_4362)
                                                           v4))
                                                     (coe (0 :: Integer))))
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                  (coe
                                                     MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                        (coe
                                                           (\ v13 ->
                                                              coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
                                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
                                                                   (coe v0))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
                                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
                                                                      (coe v0))
                                                                   (mulInt
                                                                      (coe
                                                                         addInt
                                                                         (coe (160 :: Integer))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_utxoEntrySize_3024
                                                                            (coe v0)
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                               (coe v13))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_412
                                                                         (coe v7))))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToValue_4428
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                      (coe v13)))))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_94
                                                           (coe
                                                              MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4204
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4410)
                                                              v4))))
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                     (coe
                                                        MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                           (coe
                                                              (\ v13 ->
                                                                 coe
                                                                   MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_serializedSize_3070
                                                                      v1
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToValue_4428
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                            (coe v13))))
                                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_394
                                                                      (coe v7))))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_94
                                                              (coe
                                                                 MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4204
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4410)
                                                                 v4))))
                                                     (coe
                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                        (coe
                                                           MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                              (coe
                                                                 (\ v13 ->
                                                                    coe
                                                                      MAlonzo.Code.Class.Decidable.WithoutK.du_Dec'45''8846'All_42
                                                                      (coe
                                                                         (\ v14 ->
                                                                            MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10))
                                                                      (coe
                                                                         (\ v14 ->
                                                                            coe
                                                                              MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                                                              (MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_112
                                                                                 (coe v14))
                                                                              (64 :: Integer)))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v13))))
                                                              (coe
                                                                 MAlonzo.Code.Class.IsSet.du_range_588
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                                                    (coe
                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                 (coe
                                                                    MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4204
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4410)
                                                                    v4))))
                                                        (coe
                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                           (coe
                                                              MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                 (coe
                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                 (coe
                                                                    (\ v13 ->
                                                                       coe
                                                                         MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
                                                                               (coe v0)))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_266
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                               (coe v13)))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
                                                                               (coe v0)))))
                                                                 (coe
                                                                    MAlonzo.Code.Class.IsSet.du_range_588
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                                                       (coe
                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                    (coe
                                                                       MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4204
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4410)
                                                                       v4))))
                                                           (coe
                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                              (coe
                                                                 MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                    (coe
                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                    (coe
                                                                       (\ v13 ->
                                                                          coe
                                                                            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
                                                                                  (coe v0)))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122
                                                                               (coe v13))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
                                                                                  (coe v0)))))
                                                                    (coe
                                                                       MAlonzo.Code.Class.IsSet.du_dom_586
                                                                       (coe
                                                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                                                          (coe
                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                       (coe
                                                                          MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWithdrawals_3712
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
                                                                             (coe v4))))))
                                                              (coe
                                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                 (coe
                                                                    MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                    (coe
                                                                       MAlonzo.Code.Prelude.du_'126''63'_48
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txNetworkId_3724
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
                                                                             (coe v4)))
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
                                                                                (coe v0))))
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
                                                                             (coe v0)))))
                                                                 (coe
                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                    (coe
                                                                       MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                       (coe
                                                                          MAlonzo.Code.Prelude.du_'126''63'_48
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_currentTreasury_3726
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
                                                                                (coe v4)))
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                             (coe v8))
                                                                          (coe
                                                                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))
                                                                    (coe
                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                       (coe
                                                                          MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                             (coe
                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                             (coe
                                                                                (\ v13 ->
                                                                                   coe
                                                                                     MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                                                     (coe
                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                                 (coe
                                                                                                    v0))))
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                              (coe
                                                                                                 v0))))
                                                                                     (coe v13)
                                                                                     (coe
                                                                                        MAlonzo.Code.Class.IsSet.du_dom_586
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                           (coe
                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                        (coe
                                                                                           MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                                        (coe v12))))
                                                                             (coe
                                                                                MAlonzo.Code.Class.IsSet.du_dom_586
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                   (coe
                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                (coe
                                                                                   MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DirectDepositsOf_4264
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDirectDeposits'45'Tx_4342)
                                                                                   v4))))
                                                                       (coe
                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                          (coe
                                                                             MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                                (coe
                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                (coe
                                                                                   (\ v13 ->
                                                                                      coe
                                                                                        MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                                                        (coe
                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                                    (coe
                                                                                                       v0))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                                 (coe
                                                                                                    v0))))
                                                                                        (coe v13)
                                                                                        (coe
                                                                                           MAlonzo.Code.Class.IsSet.du_dom_586
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                              (coe
                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                           (coe
                                                                                              MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                                           (coe
                                                                                              v12))))
                                                                                (coe
                                                                                   MAlonzo.Code.Class.IsSet.du_dom_586
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                      (coe
                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                   (coe
                                                                                      MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBalanceIntervals_3740
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
                                                                                         (coe
                                                                                            v4))))))
                                                                          (coe
                                                                             MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                                (coe
                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                (coe
                                                                                   (\ v13 ->
                                                                                      coe
                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Account.du_Dec'45'InBalanceInterval_876
                                                                                        (coe
                                                                                           MAlonzo.Code.Data.Maybe.Base.du_maybe_32
                                                                                           (coe
                                                                                              (\ v14 ->
                                                                                                 v14))
                                                                                           (coe
                                                                                              (0 ::
                                                                                                 Integer))
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_2048
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                 (coe
                                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                              (coe
                                                                                                 v12)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                 (coe
                                                                                                    v13))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                                                                 (coe
                                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                                             (coe
                                                                                                                v0))))
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                                          (coe
                                                                                                             v0))))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                    (coe
                                                                                                       v13))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.Rel.du_dom_354
                                                                                                    (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                       (coe
                                                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                                                                       (coe
                                                                                                          v12))))))
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                           (coe
                                                                                              v13))))
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBalanceIntervals_3740
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3640
                                                                                         (coe
                                                                                            v4)))))))))))))))))))) in
                      coe
                        (case coe v13 of
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v14 v15
                             -> if coe v14
                                  then case coe v15 of
                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v16
                                           -> coe
                                                MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_76
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
                                                                                    (3104 ::
                                                                                       Integer)
                                                                                    (1252473578754917138 ::
                                                                                       Integer)
                                                                                    "Ledger.Dijkstra.Specification.Utxo.UTxOState"
                                                                                    (MAlonzo.RTE.Fixity
                                                                                       MAlonzo.RTE.NonAssoc
                                                                                       MAlonzo.RTE.Unrelated)))
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                           (coe
                                                                              ("r"
                                                                               ::
                                                                               Data.Text.Text))
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                              (coe
                                                                                 (MAlonzo.RTE.QName
                                                                                    (924 :: Integer)
                                                                                    (1252473578754917138 ::
                                                                                       Integer)
                                                                                    "_.UTxO"
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
                                                                                       (3104 ::
                                                                                          Integer)
                                                                                       (1252473578754917138 ::
                                                                                          Integer)
                                                                                       "Ledger.Dijkstra.Specification.Utxo.UTxOState"
                                                                                       (MAlonzo.RTE.Fixity
                                                                                          MAlonzo.RTE.NonAssoc
                                                                                          MAlonzo.RTE.Unrelated)))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                              (coe
                                                                                 ("r"
                                                                                  ::
                                                                                  Data.Text.Text))
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                 (coe
                                                                                    (MAlonzo.RTE.QName
                                                                                       (10 ::
                                                                                          Integer)
                                                                                       (14798748958053396954 ::
                                                                                          Integer)
                                                                                       "Ledger.Prelude.Base.Fees"
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
                                                                                          (3104 ::
                                                                                             Integer)
                                                                                          (1252473578754917138 ::
                                                                                             Integer)
                                                                                          "Ledger.Dijkstra.Specification.Utxo.UTxOState"
                                                                                          (MAlonzo.RTE.Fixity
                                                                                             MAlonzo.RTE.NonAssoc
                                                                                             MAlonzo.RTE.Unrelated)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                                 (coe
                                                                                    ("r"
                                                                                     ::
                                                                                     Data.Text.Text))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                    (coe
                                                                                       (MAlonzo.RTE.QName
                                                                                          (8 ::
                                                                                             Integer)
                                                                                          (14798748958053396954 ::
                                                                                             Integer)
                                                                                          "Ledger.Prelude.Base.Donations"
                                                                                          (MAlonzo.RTE.Fixity
                                                                                             MAlonzo.RTE.NonAssoc
                                                                                             MAlonzo.RTE.Unrelated)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.C_'10214'_'44'_'44'_'10215''7512'_3118)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3112
                                                            (coe v3))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_fees_3114
                                                               (coe v3))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_donations_3116
                                                               (coe v3)))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.C_SUBUTXO_3612
                                                      v16))
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  else coe
                                         seq (coe v15)
                                         (coe
                                            MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                            (coe ("genErrors" :: Data.Text.Text)))
                           _ -> MAlonzo.RTE.mazUnreachableError)
                 _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.go.completeness
d_completeness_2930 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3054 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_SubUTxOEnv_3072 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3104 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3620 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3104 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T__'8866'_'8640''10631'_'44'SUBUTXO'10632'__3578 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_2930 = erased
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational.Computational-UTXOS
d_Computational'45'UTXOS_2980 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3054 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'UTXOS_2980 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v2 v3 v4 -> coe du_computeProof_2994 (coe v0) (coe v1) v2 v4)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.computeProof
d_computeProof_2994 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3054 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3040 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3620 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_2994 v0 v1 v2 ~v3 v4
  = du_computeProof_2994 v0 v1 v2 v4
du_computeProof_2994 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3054 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3040 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3620 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
du_computeProof_2994 v0 v1 v2 v3
  = let v4
          = MAlonzo.Code.Class.Decidable.Core.d_dec_16
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                 (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.du_evalP2Scripts_3376
                    v0
                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allP2ScriptsWithContext_3558
                       (coe v0) (coe v1) (coe v2) (coe v3)))
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_isValid_3646
                    (coe v3))) in
    coe
      (case coe v4 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v5 v6
           -> if coe v5
                then coe
                       seq (coe v6)
                       (coe
                          MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.C_UTXOS_3574)))
                else coe
                       seq (coe v6)
                       (coe
                          MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                          (coe ("\8868" :: Data.Text.Text)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.completeness
d_completeness_3024 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3054 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOEnv_3040 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3620 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T__'8866'_'8640''10631'_'44'UTXOS'10632'__3572 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_3024 = erased
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational.Computational-UTXO
d_Computational'45'UTXO_3052 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3054 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'UTXO_3052 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_computeProof_3092 (coe v0) (coe v1))
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.go.computeProof
d_computeProof_3092 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3054 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3104 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3620 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_3092 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_isValid_3646
              (coe v4) in
    coe
      (if coe v5
         then case coe v4 of
                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650 v6 v7 v8 v9 v10
                  -> let v11
                           = coe
                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                               (coe
                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__106
                                  (coe
                                     MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                     (coe
                                        MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                        (coe
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1244
                                           (coe
                                              MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 ()
                                              erased () erased
                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                 (coe v0))
                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                 (coe v0))))
                                        (coe
                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4004
                                           (coe
                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4354)
                                           (coe
                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                              (coe v6) (coe v7) (coe v8) (coe v5) (coe v10)))
                                        (coe
                                           MAlonzo.Code.Axiom.Set.du_'8709'_470
                                           (coe
                                              MAlonzo.Code.Axiom.Set.d_th_1516
                                              (coe
                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))))
                                  (coe
                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                     (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                     (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))
                               (coe
                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                  (coe
                                     MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                     (coe
                                        MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                        (coe
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                        (coe
                                           (\ v11 ->
                                              coe
                                                MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                (coe
                                                   MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 ()
                                                   erased () erased
                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                      (coe v0))
                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                      (coe v0)))
                                                (coe v11)
                                                (coe
                                                   MAlonzo.Code.Class.IsSet.du_dom_586
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3062
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe v2))))))
                                        (coe
                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4004
                                           (coe
                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4354)
                                           (coe
                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                              (coe v6) (coe v7) (coe v8) (coe v5) (coe v10)))))
                                  (coe
                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                     (coe
                                        MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                        (coe
                                           MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                           (coe
                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                           (coe
                                              (\ v11 ->
                                                 coe
                                                   MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                   (coe
                                                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                      () erased () erased
                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                         (coe v0))
                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                         (coe v0)))
                                                   (coe v11)
                                                   (coe
                                                      MAlonzo.Code.Class.IsSet.du_dom_586
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3062
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe v2))))))
                                           (coe
                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ReferenceInputsOf_4024
                                              (coe
                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasReferenceInputs'45'Tx_4358)
                                              (coe
                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                 (coe v6) (coe v7) (coe v8) (coe v5) (coe v10)))))
                                     (coe
                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                        (coe
                                           MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                           (coe
                                              MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                              (coe
                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                              (coe
                                                 (\ v11 ->
                                                    coe
                                                      MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                      (coe
                                                         MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                         () erased () erased
                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                            (coe v0))
                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                            (coe v0)))
                                                      (coe v11)
                                                      (coe
                                                         MAlonzo.Code.Class.IsSet.du_dom_586
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         (coe
                                                            MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3112
                                                            (coe v3)))))
                                              (coe
                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4004
                                                 (coe
                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4354)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                    (coe v6) (coe v7) (coe v8) (coe v5)
                                                    (coe v10)))))
                                        (coe
                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                           (coe
                                              MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                              (coe
                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_Dec'45'inInterval_3372
                                                 (coe v0)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_slot_3056
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                       (coe v2)))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3714
                                                    (coe v6))))
                                           (coe
                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                              (coe
                                                 MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                 (coe
                                                    MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_minfee_3340
                                                       (coe v0) (coe v1)
                                                       (coe
                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3058
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                             (coe v2)))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                          (coe v6) (coe v7) (coe v8) (coe v5)
                                                          (coe v10))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3062
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                             (coe v2))))
                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txFee_3710
                                                       (coe v6))))
                                              (coe
                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                 (coe
                                                    MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                    (coe
                                                       MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                       (coe
                                                          MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
                                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
                                                             (coe v0))
                                                          (coe
                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_MintedValueOf_4044
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMintedValue'45'Tx_4362)
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                                (coe v6) (coe v7) (coe v8) (coe v5)
                                                                (coe v10))))
                                                       (coe (0 :: Integer))))
                                                 (coe
                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                    (coe
                                                       MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                       (coe
                                                          MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
                                                                (coe v0)))
                                                          (coe
                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_consumedBatch_3524
                                                             (coe v0)
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_depositsChange_3064
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe v2)))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                                (coe v6) (coe v7) (coe v8) (coe v5)
                                                                (coe v10))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3062
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe v2))))
                                                          (coe
                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_producedBatch_3540
                                                             (coe v0)
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_depositsChange_3064
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe v2)))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                                (coe v6) (coe v7) (coe v8) (coe v5)
                                                                (coe v10)))))
                                                    (coe
                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                       (coe
                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__106
                                                          (coe
                                                             MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                             (coe
                                                                MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                                (coe
                                                                   MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                   (coe v2))
                                                                (coe v5)))
                                                          (coe
                                                             MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                             (coe
                                                                MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
                                                                      (coe v0)))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_consumed_3518
                                                                   (coe v0)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_depositsChange_3064
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v2)))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                                      (coe v6) (coe v7) (coe v8)
                                                                      (coe v5) (coe v10))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3062
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v2))))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_produced_3536
                                                                   (coe v0)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_depositsChange_3064
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v2)))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                                      (coe v6) (coe v7) (coe v8)
                                                                      (coe v5) (coe v10))))))
                                                       (coe
                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                          (coe
                                                             MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                             (coe
                                                                MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                                                v8
                                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_386
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3058
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v2))))))
                                                          (coe
                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                             (coe
                                                                MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                (coe
                                                                   MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_932
                                                                      MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6
                                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_scriptSize_3076
                                                                         (coe v1))
                                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_allReferenceScripts_4482
                                                                         (coe v0)
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                                            (coe v6) (coe v7)
                                                                            (coe v8) (coe v5)
                                                                            (coe v10))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3062
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                               (coe v2)))))
                                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_418
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3058
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                            (coe v2))))))
                                                             (coe
                                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                (coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__106
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__96
                                                                      (coe
                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__106
                                                                         (coe
                                                                            MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                            (coe
                                                                               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                                               (coe
                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1244
                                                                                  (coe
                                                                                     MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                     () erased ()
                                                                                     erased
                                                                                     (coe
                                                                                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                        () erased ()
                                                                                        erased
                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Tag_56
                                                                                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                                                           (coe
                                                                                              v0)))
                                                                                     (coe
                                                                                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                        () erased ()
                                                                                        erased
                                                                                        (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_440
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                                                                                       (coe
                                                                                                          v0))))))
                                                                                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_474
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                                                                                 (coe
                                                                                                    v0)))))))
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_3760
                                                                                     (coe v7)))
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.du_'8709'_470
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                     (coe
                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))))
                                                                         (coe
                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                                                            (coe
                                                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))
                                                                      (coe
                                                                         MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                         (coe
                                                                            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45'Any_22
                                                                            (coe
                                                                               (\ v11 ->
                                                                                  coe
                                                                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                                                       (coe
                                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1244
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
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Tag_56
                                                                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
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
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_440
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                                                                                               (coe
                                                                                                                  v0))))))
                                                                                                (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_474
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                                                                                         (coe
                                                                                                            v0)))))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_3760
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3642
                                                                                                (coe
                                                                                                   v11))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.du_'8709'_470
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                             (coe
                                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8)))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3732
                                                                               (coe v6)))))
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                      (coe
                                                                         MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                            (coe
                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                            (coe
                                                                               (\ v11 ->
                                                                                  coe
                                                                                    MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_294
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_262
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                          (coe
                                                                                             v11)))))
                                                                            (coe
                                                                               MAlonzo.Code.Class.IsSet.du_range_588
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                  (coe
                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                               (coe
                                                                                  MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                     (coe
                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                     erased
                                                                                     (coe
                                                                                        MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                                                           (coe v0))
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                                                           (coe
                                                                                              v0))))
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3062
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                        (coe v2)))
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3702
                                                                                     (coe v6))))))
                                                                      (coe
                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                         (coe
                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                            (coe
                                                                               MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                                  (coe
                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                  (coe
                                                                                     (\ v11 ->
                                                                                        coe
                                                                                          MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                                                          (coe
                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                                (coe
                                                                                                   v0)))
                                                                                          (coe v11)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_coinPolicies_3474
                                                                                             (coe
                                                                                                v0))))
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
                                                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
                                                                                        (coe v0))
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_balance_3322
                                                                                        (coe v0)
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                              (coe
                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                              erased
                                                                                              (coe
                                                                                                 MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                                                                    (coe
                                                                                                       v0))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                                                                    (coe
                                                                                                       v0))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3062
                                                                                              (coe
                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                 (coe
                                                                                                    v2)))
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3702
                                                                                              (coe
                                                                                                 v6)))))))
                                                                            (coe
                                                                               MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                                  (coe
                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                  (coe
                                                                                     (\ v11 ->
                                                                                        coe
                                                                                          MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                                                          (coe
                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                                (coe
                                                                                                   v0)))
                                                                                          (coe v11)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
                                                                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
                                                                                                (coe
                                                                                                   v0))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_balance_3322
                                                                                                (coe
                                                                                                   v0)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                      (coe
                                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                      erased
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                                                                            (coe
                                                                                                               v0))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                                                                            (coe
                                                                                                               v0))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3062
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                         (coe
                                                                                                            v2)))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3702
                                                                                                      (coe
                                                                                                         v6)))))))
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_coinPolicies_3474
                                                                                     (coe v0)))))
                                                                         (coe
                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                            (coe
                                                                               MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                               (coe
                                                                                  MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                                                                  (mulInt
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txFee_3710
                                                                                        (coe v6))
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_434
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3058
                                                                                           (coe
                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                              (coe
                                                                                                 v2)))))
                                                                                  (mulInt
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
                                                                                        (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
                                                                                           (coe v0))
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_balance_3322
                                                                                           (coe v0)
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                 (coe
                                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                 erased
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                                                                       (coe
                                                                                                          v0))
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                                                                       (coe
                                                                                                          v0))))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3062
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                    (coe
                                                                                                       v2)))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3702
                                                                                                 (coe
                                                                                                    v6)))))
                                                                                     (coe
                                                                                        (100 ::
                                                                                           Integer)))))
                                                                            (coe
                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__106
                                                                               (coe
                                                                                  MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                  (coe
                                                                                     MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                                                     (coe
                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1244
                                                                                        (coe
                                                                                           MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                           () erased
                                                                                           () erased
                                                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                                                              (coe
                                                                                                 v0))
                                                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                                                              (coe
                                                                                                 v0))))
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3702
                                                                                        (coe v6))
                                                                                     (coe
                                                                                        MAlonzo.Code.Axiom.Set.du_'8709'_470
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                           (coe
                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))))
                                                                               (coe
                                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                                                                  (coe
                                                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))))))
                                                                (coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                   (coe
                                                                      MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                         (coe
                                                                            (\ v11 ->
                                                                               coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
                                                                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
                                                                                    (coe v0))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
                                                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
                                                                                       (coe v0))
                                                                                    (mulInt
                                                                                       (coe
                                                                                          addInt
                                                                                          (coe
                                                                                             (160 ::
                                                                                                Integer))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_utxoEntrySize_3024
                                                                                             (coe
                                                                                                v0)
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                (coe
                                                                                                   v11))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_412
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3058
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   v2))))))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToValue_4428
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                       (coe v11)))))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_94
                                                                            (coe
                                                                               MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4204
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4410)
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                                                  (coe v6) (coe v7)
                                                                                  (coe v8) (coe v5)
                                                                                  (coe v10))))))
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                      (coe
                                                                         MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                            (coe
                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                            (coe
                                                                               (\ v11 ->
                                                                                  coe
                                                                                    MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_serializedSize_3070
                                                                                       v1
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToValue_4428
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                             (coe
                                                                                                v11))))
                                                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_394
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3058
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v2))))))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_94
                                                                               (coe
                                                                                  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4204
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4410)
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                                                     (coe v6)
                                                                                     (coe v7)
                                                                                     (coe v8)
                                                                                     (coe v5)
                                                                                     (coe v10))))))
                                                                      (coe
                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                         (coe
                                                                            MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                               (coe
                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                               (coe
                                                                                  (\ v11 ->
                                                                                     coe
                                                                                       MAlonzo.Code.Class.Decidable.WithoutK.du_Dec'45''8846'All_42
                                                                                       (coe
                                                                                          (\ v12 ->
                                                                                             MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10))
                                                                                       (coe
                                                                                          (\ v12 ->
                                                                                             coe
                                                                                               MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                                                                               (MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_112
                                                                                                  (coe
                                                                                                     v12))
                                                                                               (64 ::
                                                                                                  Integer)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                          (coe
                                                                                             v11))))
                                                                               (coe
                                                                                  MAlonzo.Code.Class.IsSet.du_range_588
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                     (coe
                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                  (coe
                                                                                     MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4204
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4410)
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                                                        (coe v6)
                                                                                        (coe v7)
                                                                                        (coe v8)
                                                                                        (coe v5)
                                                                                        (coe
                                                                                           v10))))))
                                                                         (coe
                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                            (coe
                                                                               MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                                  (coe
                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                  (coe
                                                                                     (\ v11 ->
                                                                                        coe
                                                                                          MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
                                                                                                (coe
                                                                                                   v0)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_266
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   v11)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
                                                                                                (coe
                                                                                                   v0)))))
                                                                                  (coe
                                                                                     MAlonzo.Code.Class.IsSet.du_range_588
                                                                                     (coe
                                                                                        MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                        (coe
                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                     (coe
                                                                                        MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4204
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4410)
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                                                           (coe v6)
                                                                                           (coe v7)
                                                                                           (coe v8)
                                                                                           (coe v5)
                                                                                           (coe
                                                                                              v10))))))
                                                                            (coe
                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                               (coe
                                                                                  MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                                     (coe
                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                     (coe
                                                                                        (\ v11 ->
                                                                                           coe
                                                                                             MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
                                                                                                   (coe
                                                                                                      v0)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122
                                                                                                (coe
                                                                                                   v11))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
                                                                                                   (coe
                                                                                                      v0)))))
                                                                                     (coe
                                                                                        MAlonzo.Code.Class.IsSet.du_dom_586
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                           (coe
                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                        (coe
                                                                                           MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWithdrawals_3712
                                                                                           (coe
                                                                                              v6)))))
                                                                               (coe
                                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                                  (coe
                                                                                     MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                     (coe
                                                                                        MAlonzo.Code.Prelude.du_'126''63'_48
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txNetworkId_3724
                                                                                           (coe v6))
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
                                                                                                 (coe
                                                                                                    v0))))
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
                                                                                              (coe
                                                                                                 v0)))))
                                                                                  (coe
                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                                     (coe
                                                                                        MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                        (coe
                                                                                           MAlonzo.Code.Prelude.du_'126''63'_48
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_currentTreasury_3726
                                                                                              (coe
                                                                                                 v6))
                                                                                           (coe
                                                                                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_treasury_3060
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                    (coe
                                                                                                       v2))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))
                                                                                     (coe
                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                                        (coe
                                                                                           MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                                              (coe
                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                              (coe
                                                                                                 (\ v11 ->
                                                                                                    coe
                                                                                                      MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                                                                      (coe
                                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                                                  (coe
                                                                                                                     v0))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                                               (coe
                                                                                                                  v0))))
                                                                                                      (coe
                                                                                                         v11)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.IsSet.du_dom_586
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                            (coe
                                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_accountBalances_3068
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                               (coe
                                                                                                                  v2))))))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Class.IsSet.du_dom_586
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                    (coe
                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DirectDepositsOf_4264
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDirectDeposits'45'Tx_4342)
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                                                                       (coe
                                                                                                          v6)
                                                                                                       (coe
                                                                                                          v7)
                                                                                                       (coe
                                                                                                          v8)
                                                                                                       (coe
                                                                                                          v5)
                                                                                                       (coe
                                                                                                          v10))))))
                                                                                        (coe
                                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                                           (coe
                                                                                              MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                                                 (coe
                                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                 (coe
                                                                                                    (\ v11 ->
                                                                                                       coe
                                                                                                         MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                                                                         (coe
                                                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                                                     (coe
                                                                                                                        v0))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                                                  (coe
                                                                                                                     v0))))
                                                                                                         (coe
                                                                                                            v11)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Class.IsSet.du_dom_586
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_accountBalances_3068
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v2))))))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Class.IsSet.du_dom_586
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                       (coe
                                                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBalanceIntervals_3740
                                                                                                       (coe
                                                                                                          v6)))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                                                 (coe
                                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                 (coe
                                                                                                    (\ v11 ->
                                                                                                       coe
                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Account.du_Dec'45'InBalanceInterval_876
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Data.Maybe.Base.du_maybe_32
                                                                                                            (coe
                                                                                                               (\ v12 ->
                                                                                                                  v12))
                                                                                                            (coe
                                                                                                               (0 ::
                                                                                                                  Integer))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_2048
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_accountBalances_3068
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                     (coe
                                                                                                                        v2)))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v11))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                                                              (coe
                                                                                                                                 v0))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                                                           (coe
                                                                                                                              v0))))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                     (coe
                                                                                                                        v11))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Axiom.Set.Rel.du_dom_354
                                                                                                                     (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_accountBalances_3068
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                              (coe
                                                                                                                                 v2))))))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                            (coe
                                                                                                               v11))))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBalanceIntervals_3740
                                                                                                       (coe
                                                                                                          v6))))))))))))))))))))))))) in
                     coe
                       (case coe v11 of
                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v12 v13
                            -> if coe v12
                                 then case coe v13 of
                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v14
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
                                                                                                                                     -> case coe
                                                                                                                                               v40 of
                                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v41 v42
                                                                                                                                            -> case coe
                                                                                                                                                      v42 of
                                                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v43 v44
                                                                                                                                                   -> case coe
                                                                                                                                                             v44 of
                                                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v45 v46
                                                                                                                                                          -> case coe
                                                                                                                                                                    v46 of
                                                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v47 v48
                                                                                                                                                                 -> case coe
                                                                                                                                                                           v48 of
                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v49 v50
                                                                                                                                                                        -> case coe
                                                                                                                                                                                  v50 of
                                                                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v51 v52
                                                                                                                                                                               -> case coe
                                                                                                                                                                                         v52 of
                                                                                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v53 v54
                                                                                                                                                                                      -> case coe
                                                                                                                                                                                                v54 of
                                                                                                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v55 v56
                                                                                                                                                                                             -> let v57
                                                                                                                                                                                                      = MAlonzo.Code.Data.Bool.Properties.d__'8799'__3196
                                                                                                                                                                                                          (coe
                                                                                                                                                                                                             MAlonzo.Code.Data.List.Base.du_foldr_216
                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                MAlonzo.Code.Data.Bool.Base.d__'8743'__24)
                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                v12)
                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                MAlonzo.Code.Data.List.Base.du_map_22
                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                   (\ v57 ->
                                                                                                                                                                                                                      coe
                                                                                                                                                                                                                        MAlonzo.Code.Class.Decidable.Core.du_'191'_'191''7495'_46
                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                           ())
                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validPlutusScript_514
                                                                                                                                                                                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                    v0)))
                                                                                                                                                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                       v57))))
                                                                                                                                                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                    v57)))
                                                                                                                                                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                       v57))))
                                                                                                                                                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                 v57)))))
                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                   MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                                                                                                                                                                                   (coe
                                                                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.d_collectP2ScriptsWithContext_3310
                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                         v0)
                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                         v1)
                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3058
                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                               v2)))
                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                            v6)
                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                            v7)
                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                            v8)
                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                            v12)
                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                            v10))
                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3062
                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                               v2)))
                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3066
                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                               v2))))
                                                                                                                                                                                                                   (coe
                                                                                                                                                                                                                      MAlonzo.Code.Data.List.Base.du_concatMap_246
                                                                                                                                                                                                                      (\ v57 ->
                                                                                                                                                                                                                         coe
                                                                                                                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_p2ScriptsWithContext_3568
                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                              v0)
                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                              v1)
                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                 v2))
                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                 v6)
                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                 v7)
                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                 v8)
                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                 v12)
                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                 v10)))
                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3732
                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                            v6))))))
                                                                                                                                                                                                          (coe
                                                                                                                                                                                                             v12) in
                                                                                                                                                                                                coe
                                                                                                                                                                                                  (case coe
                                                                                                                                                                                                          v57 of
                                                                                                                                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v58 v59
                                                                                                                                                                                                       -> if coe
                                                                                                                                                                                                               v58
                                                                                                                                                                                                            then let v60
                                                                                                                                                                                                                       = seq
                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                              v59)
                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                              MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                    MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.C_UTXOS_3574))) in
                                                                                                                                                                                                                 coe
                                                                                                                                                                                                                   (case coe
                                                                                                                                                                                                                           v60 of
                                                                                                                                                                                                                      MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v61
                                                                                                                                                                                                                        -> coe
                                                                                                                                                                                                                             MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                                                                                                                                                (let v62
                                                                                                                                                                                                                                       = MAlonzo.Code.Class.ToBool.d_ToBool'45'Bool_88 in
                                                                                                                                                                                                                                 coe
                                                                                                                                                                                                                                   (coe
                                                                                                                                                                                                                                      MAlonzo.Code.Class.ToBool.du_if_then_else__38
                                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                                         v62)
                                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_IsValidFlagOf_4304
                                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasIsValidFlag'45'Tx_4318)
                                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                                               v6)
                                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                                               v7)
                                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                                               v8)
                                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                                               v58)
                                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                                               v10)))
                                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                                         MAlonzo.Code.Level.C_lift_20
                                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                                            MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                                         (\ v63 ->
                                                                                                                                                                                                                                            coe
                                                                                                                                                                                                                                              MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_76
                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasCast'45'UTxOState_3300)
                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                                 (let v64
                                                                                                                                                                                                                                                        = coe
                                                                                                                                                                                                                                                            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                                                                                                                                            ()
                                                                                                                                                                                                                                                            erased
                                                                                                                                                                                                                                                            ()
                                                                                                                                                                                                                                                            erased
                                                                                                                                                                                                                                                            (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                                  v0))
                                                                                                                                                                                                                                                            (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                                  v0)) in
                                                                                                                                                                                                                                                  coe
                                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                                       MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__1042
                                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                                          MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                                                                                                                                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                                                                                                                                                          erased
                                                                                                                                                                                                                                                          v64)
                                                                                                                                                                                                                                                       (let v65
                                                                                                                                                                                                                                                              = coe
                                                                                                                                                                                                                                                                  MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                                                                                                                                                  ()
                                                                                                                                                                                                                                                                  erased
                                                                                                                                                                                                                                                                  ()
                                                                                                                                                                                                                                                                  erased
                                                                                                                                                                                                                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                                                                        v0))
                                                                                                                                                                                                                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                                                                        v0)) in
                                                                                                                                                                                                                                                        coe
                                                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                                                             MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                                                                                                                                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                                                                                                                                                                erased
                                                                                                                                                                                                                                                                v65)
                                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3112
                                                                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                                                                   v3))
                                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4004
                                                                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4354)
                                                                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                                                                                                                                                                                                                                   (coe
                                                                                                                                                                                                                                                                      v6)
                                                                                                                                                                                                                                                                   (coe
                                                                                                                                                                                                                                                                      v7)
                                                                                                                                                                                                                                                                   (coe
                                                                                                                                                                                                                                                                      v8)
                                                                                                                                                                                                                                                                   (coe
                                                                                                                                                                                                                                                                      v58)
                                                                                                                                                                                                                                                                   (coe
                                                                                                                                                                                                                                                                      v10)))))
                                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_outs_3316
                                                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                                v6)
                                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                                v7)
                                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                                v8)
                                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                                v58)
                                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                                v10)))))
                                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                                       addInt
                                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxFeesOf_3876
                                                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxFees'45'TopLevelTx_4326)
                                                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                                v6)
                                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                                v7)
                                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                                v8)
                                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                                v58)
                                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                                v10)))
                                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_fees_3114
                                                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                                                             v3)))
                                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                                       addInt
                                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_donations_3116
                                                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                                                             v3))
                                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                                          MAlonzo.Code.Ledger.Prelude.Base.d_DonationsOf_28
                                                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDonations'45'Tx_4392)
                                                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                                v6)
                                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                                v7)
                                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                                v8)
                                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                                v58)
                                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                                v10))))))))
                                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                                         (\ v63 ->
                                                                                                                                                                                                                                            coe
                                                                                                                                                                                                                                              MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_76
                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasCast'45'UTxOState_3300)
                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                                 (let v64
                                                                                                                                                                                                                                                        = coe
                                                                                                                                                                                                                                                            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                                                                                                                                            ()
                                                                                                                                                                                                                                                            erased
                                                                                                                                                                                                                                                            ()
                                                                                                                                                                                                                                                            erased
                                                                                                                                                                                                                                                            (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                                  v0))
                                                                                                                                                                                                                                                            (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                                  v0)) in
                                                                                                                                                                                                                                                  coe
                                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                                       MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                                          MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                                                                                                                                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                                                                                                                                                          erased
                                                                                                                                                                                                                                                          v64)
                                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3112
                                                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                                                             v3))
                                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CollateralInputsOf_3852
                                                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasCollateralInputs'45'TopLevelTx_4324)
                                                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                                v6)
                                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                                v7)
                                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                                v8)
                                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                                v58)
                                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                                v10)))))
                                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                                       addInt
                                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_cbalance_3328
                                                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                                                             v0)
                                                                                                                                                                                                                                                          (let v64
                                                                                                                                                                                                                                                                 = coe
                                                                                                                                                                                                                                                                     MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                                                                                                                                                     ()
                                                                                                                                                                                                                                                                     erased
                                                                                                                                                                                                                                                                     ()
                                                                                                                                                                                                                                                                     erased
                                                                                                                                                                                                                                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                                                           v0))
                                                                                                                                                                                                                                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                                                           v0)) in
                                                                                                                                                                                                                                                           coe
                                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                                MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                                                                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                                                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                                                                                                                                                   (coe
                                                                                                                                                                                                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                                                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                                                                                                                                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                                                                                                                                                                   erased
                                                                                                                                                                                                                                                                   v64)
                                                                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3112
                                                                                                                                                                                                                                                                   (coe
                                                                                                                                                                                                                                                                      v3))
                                                                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CollateralInputsOf_3852
                                                                                                                                                                                                                                                                   (coe
                                                                                                                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasCollateralInputs'45'TopLevelTx_4324)
                                                                                                                                                                                                                                                                   (coe
                                                                                                                                                                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                                                                         v6)
                                                                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                                                                         v7)
                                                                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                                                                         v8)
                                                                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                                                                         v58)
                                                                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                                                                         v10))))))
                                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_fees_3114
                                                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                                                             v3)))
                                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_donations_3116
                                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                                          v3))))))))
                                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.C_UTXO_3654
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
                                                                                                                                                                                                                                                                                v41)
                                                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                                                                                   v43)
                                                                                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                                                                   (coe
                                                                                                                                                                                                                                                                                      v45)
                                                                                                                                                                                                                                                                                   (coe
                                                                                                                                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                                                                                         v47)
                                                                                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                                                                                            v49)
                                                                                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                                                                                               v51)
                                                                                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                                                                  v53)
                                                                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                                                                                                     v55)
                                                                                                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                                                                                                        v56)
                                                                                                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                                                                                           v61))))))))))))))))))))))))))
                                                                                                                                                                                                                      MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v61
                                                                                                                                                                                                                        -> coe
                                                                                                                                                                                                                             MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                ("UTXOS"
                                                                                                                                                                                                                                 ::
                                                                                                                                                                                                                                 Data.Text.Text))
                                                                                                                                                                                                                      _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                                                                                                            else (let v60
                                                                                                                                                                                                                        = seq
                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                               v59)
                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                               MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                  ("\8868"
                                                                                                                                                                                                                                   ::
                                                                                                                                                                                                                                   Data.Text.Text))) in
                                                                                                                                                                                                                  coe
                                                                                                                                                                                                                    (case coe
                                                                                                                                                                                                                            v60 of
                                                                                                                                                                                                                       MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v61
                                                                                                                                                                                                                         -> coe
                                                                                                                                                                                                                              MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                 MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                                                                                                                                                 (let v62
                                                                                                                                                                                                                                        = MAlonzo.Code.Class.ToBool.d_ToBool'45'Bool_88 in
                                                                                                                                                                                                                                  coe
                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                       MAlonzo.Code.Class.ToBool.du_if_then_else__38
                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                          v62)
                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_IsValidFlagOf_4304
                                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasIsValidFlag'45'Tx_4318)
                                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                v6)
                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                v7)
                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                v8)
                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                v12)
                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                v10)))
                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                          MAlonzo.Code.Level.C_lift_20
                                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                                             MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                          (\ v63 ->
                                                                                                                                                                                                                                             coe
                                                                                                                                                                                                                                               MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_76
                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasCast'45'UTxOState_3300)
                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                                  (let v64
                                                                                                                                                                                                                                                         = coe
                                                                                                                                                                                                                                                             MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                                                                                                                                             ()
                                                                                                                                                                                                                                                             erased
                                                                                                                                                                                                                                                             ()
                                                                                                                                                                                                                                                             erased
                                                                                                                                                                                                                                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                                                                   v0))
                                                                                                                                                                                                                                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                                                                   v0)) in
                                                                                                                                                                                                                                                   coe
                                                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                                                        MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__1042
                                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                                           MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                                                                                                                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                                                                                                                                                           erased
                                                                                                                                                                                                                                                           v64)
                                                                                                                                                                                                                                                        (let v65
                                                                                                                                                                                                                                                               = coe
                                                                                                                                                                                                                                                                   MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                                                                                                                                                   ()
                                                                                                                                                                                                                                                                   erased
                                                                                                                                                                                                                                                                   ()
                                                                                                                                                                                                                                                                   erased
                                                                                                                                                                                                                                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                                                                         v0))
                                                                                                                                                                                                                                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                                                                         v0)) in
                                                                                                                                                                                                                                                         coe
                                                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                                                              MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                                                                                                                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                                                                                                                                                                 erased
                                                                                                                                                                                                                                                                 v65)
                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3112
                                                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                                                    v3))
                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4004
                                                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4354)
                                                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                                                       v6)
                                                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                                                       v7)
                                                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                                                       v8)
                                                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                                                       v12)
                                                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                                                       v10)))))
                                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_outs_3316
                                                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                 v6)
                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                 v7)
                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                 v8)
                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                 v12)
                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                 v10)))))
                                                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                                                        addInt
                                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxFeesOf_3876
                                                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxFees'45'TopLevelTx_4326)
                                                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                 v6)
                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                 v7)
                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                 v8)
                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                 v12)
                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                 v10)))
                                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_fees_3114
                                                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                                                              v3)))
                                                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                                                        addInt
                                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_donations_3116
                                                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                                                              v3))
                                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                                           MAlonzo.Code.Ledger.Prelude.Base.d_DonationsOf_28
                                                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDonations'45'Tx_4392)
                                                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                 v6)
                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                 v7)
                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                 v8)
                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                 v12)
                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                 v10))))))))
                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                          (\ v63 ->
                                                                                                                                                                                                                                             coe
                                                                                                                                                                                                                                               MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_76
                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasCast'45'UTxOState_3300)
                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                                  (let v64
                                                                                                                                                                                                                                                         = coe
                                                                                                                                                                                                                                                             MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                                                                                                                                             ()
                                                                                                                                                                                                                                                             erased
                                                                                                                                                                                                                                                             ()
                                                                                                                                                                                                                                                             erased
                                                                                                                                                                                                                                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                                                                   v0))
                                                                                                                                                                                                                                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                                                                   v0)) in
                                                                                                                                                                                                                                                   coe
                                                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                                                        MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                                           MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                                                                                                                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                                                                                                                                                           erased
                                                                                                                                                                                                                                                           v64)
                                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3112
                                                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                                                              v3))
                                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CollateralInputsOf_3852
                                                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasCollateralInputs'45'TopLevelTx_4324)
                                                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                 v6)
                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                 v7)
                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                 v8)
                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                 v12)
                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                 v10)))))
                                                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                                                        addInt
                                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_cbalance_3328
                                                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                                                              v0)
                                                                                                                                                                                                                                                           (let v64
                                                                                                                                                                                                                                                                  = coe
                                                                                                                                                                                                                                                                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                                                                                                                                                      ()
                                                                                                                                                                                                                                                                      erased
                                                                                                                                                                                                                                                                      ()
                                                                                                                                                                                                                                                                      erased
                                                                                                                                                                                                                                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                                                                            v0))
                                                                                                                                                                                                                                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                                                                            v0)) in
                                                                                                                                                                                                                                                            coe
                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                 MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                                                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                                                                                                                                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                                                                                                                                                                    erased
                                                                                                                                                                                                                                                                    v64)
                                                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3112
                                                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                                                       v3))
                                                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CollateralInputsOf_3852
                                                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasCollateralInputs'45'TopLevelTx_4324)
                                                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                                                          v6)
                                                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                                                          v7)
                                                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                                                          v8)
                                                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                                                          v12)
                                                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                                                          v10))))))
                                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_fees_3114
                                                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                                                              v3)))
                                                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_donations_3116
                                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                                           v3))))))))
                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.C_UTXO_3654
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
                                                                                                                                                                                                                                                                                 v41)
                                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                                                                    v43)
                                                                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                                                                       v45)
                                                                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                                                                          v47)
                                                                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                                                                                             v49)
                                                                                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                                                                v51)
                                                                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                                                                                                   v53)
                                                                                                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                                                                                   (coe
                                                                                                                                                                                                                                                                                                      v55)
                                                                                                                                                                                                                                                                                                   (coe
                                                                                                                                                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                                                                                                         v56)
                                                                                                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                                                                                                            v61))))))))))))))))))))))))))
                                                                                                                                                                                                                       MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v61
                                                                                                                                                                                                                         -> coe
                                                                                                                                                                                                                              MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                 ("UTXOS"
                                                                                                                                                                                                                                  ::
                                                                                                                                                                                                                                  Data.Text.Text))
                                                                                                                                                                                                                       _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                                                                                                                                     _ -> MAlonzo.RTE.mazUnreachableError)
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
                                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                               _ -> MAlonzo.RTE.mazUnreachableError
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 else coe
                                        seq (coe v13)
                                        (coe
                                           MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                           (coe ("UTXO" :: Data.Text.Text)))
                          _ -> MAlonzo.RTE.mazUnreachableError)
                _ -> MAlonzo.RTE.mazUnreachableError
         else (case coe v4 of
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650 v6 v7 v8 v9 v10
                   -> let v11
                            = coe
                                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                (coe
                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__106
                                   (coe
                                      MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                      (coe
                                         MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1244
                                            (coe
                                               MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 ()
                                               erased () erased
                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                  (coe v0))
                                               (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                  (coe v0))))
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4004
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4354)
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                               (coe v6) (coe v7) (coe v8) (coe v5) (coe v10)))
                                         (coe
                                            MAlonzo.Code.Axiom.Set.du_'8709'_470
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))))
                                   (coe
                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                      (coe v5)
                                      (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))
                                (coe
                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                   (coe
                                      MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                         (coe
                                            (\ v11 ->
                                               coe
                                                 MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                 (coe
                                                    MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 ()
                                                    erased () erased
                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                       (coe v0))
                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                       (coe v0)))
                                                 (coe v11)
                                                 (coe
                                                    MAlonzo.Code.Class.IsSet.du_dom_586
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                    (coe
                                                       MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3062
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v2))))))
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4004
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4354)
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                               (coe v6) (coe v7) (coe v8) (coe v5) (coe v10)))))
                                   (coe
                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                      (coe
                                         MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                         (coe
                                            MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                            (coe
                                               (\ v11 ->
                                                  coe
                                                    MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                    (coe
                                                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                       () erased () erased
                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                          (coe v0))
                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                          (coe v0)))
                                                    (coe v11)
                                                    (coe
                                                       MAlonzo.Code.Class.IsSet.du_dom_586
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_th_1516
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                       (coe
                                                          MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                       (coe
                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3062
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                             (coe v2))))))
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ReferenceInputsOf_4024
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasReferenceInputs'45'Tx_4358)
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                  (coe v6) (coe v7) (coe v8) (coe v5) (coe v10)))))
                                      (coe
                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                         (coe
                                            MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                            (coe
                                               MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                               (coe
                                                  (\ v11 ->
                                                     coe
                                                       MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                       (coe
                                                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                          () erased () erased
                                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                             (coe v0))
                                                          (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                             (coe v0)))
                                                       (coe v11)
                                                       (coe
                                                          MAlonzo.Code.Class.IsSet.du_dom_586
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.d_th_1516
                                                             (coe
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                          (coe
                                                             MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3112
                                                             (coe v3)))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4004
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4354)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                     (coe v6) (coe v7) (coe v8) (coe v5)
                                                     (coe v10)))))
                                         (coe
                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                            (coe
                                               MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_Dec'45'inInterval_3372
                                                  (coe v0)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_slot_3056
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v2)))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3714
                                                     (coe v6))))
                                            (coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                               (coe
                                                  MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                  (coe
                                                     MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_minfee_3340
                                                        (coe v0) (coe v1)
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3058
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v2)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                           (coe v6) (coe v7) (coe v8) (coe v5)
                                                           (coe v10))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3062
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v2))))
                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txFee_3710
                                                        (coe v6))))
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                  (coe
                                                     MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                     (coe
                                                        MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                        (coe
                                                           MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
                                                           (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
                                                              (coe v0))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_MintedValueOf_4044
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMintedValue'45'Tx_4362)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                                 (coe v6) (coe v7) (coe v8) (coe v5)
                                                                 (coe v10))))
                                                        (coe (0 :: Integer))))
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                     (coe
                                                        MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                        (coe
                                                           MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_consumedBatch_3524
                                                              (coe v0)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_depositsChange_3064
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                    (coe v2)))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                                 (coe v6) (coe v7) (coe v8) (coe v5)
                                                                 (coe v10))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3062
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                    (coe v2))))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_producedBatch_3540
                                                              (coe v0)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_depositsChange_3064
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                    (coe v2)))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                                 (coe v6) (coe v7) (coe v8) (coe v5)
                                                                 (coe v10)))))
                                                     (coe
                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                        (coe
                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__106
                                                           (coe
                                                              MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                              (coe
                                                                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                                 (coe
                                                                    MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                    (coe v2))
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Bool.C_true_10)))
                                                           (coe
                                                              MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                              (coe
                                                                 MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
                                                                       (coe v0)))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_consumed_3518
                                                                    (coe v0)
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_depositsChange_3064
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe v2)))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                                       (coe v6) (coe v7) (coe v8)
                                                                       (coe v5) (coe v10))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3062
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe v2))))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_produced_3536
                                                                    (coe v0)
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_depositsChange_3064
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe v2)))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                                       (coe v6) (coe v7) (coe v8)
                                                                       (coe v5) (coe v10))))))
                                                        (coe
                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                           (coe
                                                              MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                              (coe
                                                                 MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                                                 v8
                                                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_386
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3058
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe v2))))))
                                                           (coe
                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                              (coe
                                                                 MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                 (coe
                                                                    MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_932
                                                                       MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6
                                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_scriptSize_3076
                                                                          (coe v1))
                                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_allReferenceScripts_4482
                                                                          (coe v0)
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                                             (coe v6) (coe v7)
                                                                             (coe v8) (coe v5)
                                                                             (coe v10))
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3062
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                (coe v2)))))
                                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_418
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3058
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                             (coe v2))))))
                                                              (coe
                                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                 (coe
                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__106
                                                                    (coe
                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__96
                                                                       (coe
                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__106
                                                                          (coe
                                                                             MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                             (coe
                                                                                MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                                                (coe
                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1244
                                                                                   (coe
                                                                                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                      () erased ()
                                                                                      erased
                                                                                      (coe
                                                                                         MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                         () erased
                                                                                         () erased
                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Tag_56
                                                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                                                            (coe
                                                                                               v0)))
                                                                                      (coe
                                                                                         MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                         () erased
                                                                                         () erased
                                                                                         (MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_440
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                                                                                        (coe
                                                                                                           v0))))))
                                                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_474
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                                                                                  (coe
                                                                                                     v0)))))))
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_3760
                                                                                      (coe v7)))
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.du_'8709'_470
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                      (coe
                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))))
                                                                          (coe
                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                             (coe v5)
                                                                             (coe
                                                                                MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))
                                                                       (coe
                                                                          MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                          (coe
                                                                             MAlonzo.Code.Class.Decidable.Instances.du_Dec'45'Any_22
                                                                             (coe
                                                                                (\ v11 ->
                                                                                   coe
                                                                                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_12
                                                                                     (coe
                                                                                        MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                                                        (coe
                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1244
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
                                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Tag_56
                                                                                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
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
                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_440
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                                                                                                (coe
                                                                                                                   v0))))))
                                                                                                 (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_474
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                                                                                          (coe
                                                                                                             v0)))))))
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_3760
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3642
                                                                                                 (coe
                                                                                                    v11))))
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.du_'8709'_470
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                              (coe
                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                                                                                     (coe
                                                                                        MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_8)))
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3732
                                                                                (coe v6)))))
                                                                    (coe
                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                       (coe
                                                                          MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                             (coe
                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                             (coe
                                                                                (\ v11 ->
                                                                                   coe
                                                                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_294
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_262
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                           (coe
                                                                                              v11)))))
                                                                             (coe
                                                                                MAlonzo.Code.Class.IsSet.du_range_588
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                   (coe
                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                (coe
                                                                                   MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                      (coe
                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                      erased
                                                                                      (coe
                                                                                         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                                                            (coe
                                                                                               v0))
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                                                            (coe
                                                                                               v0))))
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3062
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                         (coe v2)))
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3702
                                                                                      (coe v6))))))
                                                                       (coe
                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                          (coe
                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                             (coe
                                                                                MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                                   (coe
                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                   (coe
                                                                                      (\ v11 ->
                                                                                         coe
                                                                                           MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                                                           (coe
                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                                 (coe
                                                                                                    v0)))
                                                                                           (coe v11)
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_coinPolicies_3474
                                                                                              (coe
                                                                                                 v0))))
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
                                                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
                                                                                         (coe v0))
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_balance_3322
                                                                                         (coe v0)
                                                                                         (coe
                                                                                            MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                                                                                            (coe
                                                                                               MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                               (coe
                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                            (coe
                                                                                               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                               erased
                                                                                               (coe
                                                                                                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                                                                     (coe
                                                                                                        v0))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                                                                     (coe
                                                                                                        v0))))
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3062
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                  (coe
                                                                                                     v2)))
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3702
                                                                                               (coe
                                                                                                  v6)))))))
                                                                             (coe
                                                                                MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                                   (coe
                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                   (coe
                                                                                      (\ v11 ->
                                                                                         coe
                                                                                           MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                                                           (coe
                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                                 (coe
                                                                                                    v0)))
                                                                                           (coe v11)
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
                                                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
                                                                                                 (coe
                                                                                                    v0))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_balance_3322
                                                                                                 (coe
                                                                                                    v0)
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                       (coe
                                                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                       erased
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                                                                             (coe
                                                                                                                v0))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                                                                             (coe
                                                                                                                v0))))
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3062
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                          (coe
                                                                                                             v2)))
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3702
                                                                                                       (coe
                                                                                                          v6)))))))
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_coinPolicies_3474
                                                                                      (coe v0)))))
                                                                          (coe
                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                             (coe
                                                                                MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                (coe
                                                                                   MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                                                                   (mulInt
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txFee_3710
                                                                                         (coe v6))
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_434
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3058
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                               (coe
                                                                                                  v2)))))
                                                                                   (mulInt
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
                                                                                         (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
                                                                                            (coe
                                                                                               v0))
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_balance_3322
                                                                                            (coe v0)
                                                                                            (coe
                                                                                               MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                                                                                               (coe
                                                                                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                  (coe
                                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                  erased
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                                                                        (coe
                                                                                                           v0))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                                                                        (coe
                                                                                                           v0))))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3062
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                     (coe
                                                                                                        v2)))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3702
                                                                                                  (coe
                                                                                                     v6)))))
                                                                                      (coe
                                                                                         (100 ::
                                                                                            Integer)))))
                                                                             (coe
                                                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__106
                                                                                (coe
                                                                                   MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                   (coe
                                                                                      MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                                                      (coe
                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1244
                                                                                         (coe
                                                                                            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                            ()
                                                                                            erased
                                                                                            ()
                                                                                            erased
                                                                                            (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                                                               (coe
                                                                                                  v0))
                                                                                            (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                                                               (coe
                                                                                                  v0))))
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3702
                                                                                         (coe v6))
                                                                                      (coe
                                                                                         MAlonzo.Code.Axiom.Set.du_'8709'_470
                                                                                         (coe
                                                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                            (coe
                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))))
                                                                                (coe
                                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                   (coe v5)
                                                                                   (coe
                                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))))))
                                                                 (coe
                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                    (coe
                                                                       MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                       (coe
                                                                          MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                          (coe
                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                          (coe
                                                                             (\ v11 ->
                                                                                coe
                                                                                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
                                                                                  (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
                                                                                     (coe v0))
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
                                                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
                                                                                        (coe v0))
                                                                                     (mulInt
                                                                                        (coe
                                                                                           addInt
                                                                                           (coe
                                                                                              (160 ::
                                                                                                 Integer))
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_utxoEntrySize_3024
                                                                                              (coe
                                                                                                 v0)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                 (coe
                                                                                                    v11))))
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_412
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3058
                                                                                              (coe
                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                 (coe
                                                                                                    v2))))))
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToValue_4428
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                        (coe
                                                                                           v11)))))
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_94
                                                                             (coe
                                                                                MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4204
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4410)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                                                   (coe v6) (coe v7)
                                                                                   (coe v8) (coe v5)
                                                                                   (coe v10))))))
                                                                    (coe
                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                       (coe
                                                                          MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                             (coe
                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                             (coe
                                                                                (\ v11 ->
                                                                                   coe
                                                                                     MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_serializedSize_3070
                                                                                        v1
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToValue_4428
                                                                                           (coe
                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                              (coe
                                                                                                 v11))))
                                                                                     (MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_394
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3058
                                                                                           (coe
                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                              (coe
                                                                                                 v2))))))
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_94
                                                                                (coe
                                                                                   MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4204
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4410)
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                                                      (coe v6)
                                                                                      (coe v7)
                                                                                      (coe v8)
                                                                                      (coe v5)
                                                                                      (coe v10))))))
                                                                       (coe
                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                          (coe
                                                                             MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                                (coe
                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                (coe
                                                                                   (\ v11 ->
                                                                                      coe
                                                                                        MAlonzo.Code.Class.Decidable.WithoutK.du_Dec'45''8846'All_42
                                                                                        (coe
                                                                                           (\ v12 ->
                                                                                              MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_10))
                                                                                        (coe
                                                                                           (\ v12 ->
                                                                                              coe
                                                                                                MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_34
                                                                                                (MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_112
                                                                                                   (coe
                                                                                                      v12))
                                                                                                (64 ::
                                                                                                   Integer)))
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                           (coe
                                                                                              v11))))
                                                                                (coe
                                                                                   MAlonzo.Code.Class.IsSet.du_range_588
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                      (coe
                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                   (coe
                                                                                      MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4204
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4410)
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                                                         (coe v6)
                                                                                         (coe v7)
                                                                                         (coe v8)
                                                                                         (coe v5)
                                                                                         (coe
                                                                                            v10))))))
                                                                          (coe
                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                             (coe
                                                                                MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                                   (coe
                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                   (coe
                                                                                      (\ v11 ->
                                                                                         coe
                                                                                           MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
                                                                                                 (coe
                                                                                                    v0)))
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_266
                                                                                              (coe
                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                 (coe
                                                                                                    v11)))
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
                                                                                                 (coe
                                                                                                    v0)))))
                                                                                   (coe
                                                                                      MAlonzo.Code.Class.IsSet.du_range_588
                                                                                      (coe
                                                                                         MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                         (coe
                                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                      (coe
                                                                                         MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4204
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4410)
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                                                            (coe v6)
                                                                                            (coe v7)
                                                                                            (coe v8)
                                                                                            (coe v5)
                                                                                            (coe
                                                                                               v10))))))
                                                                             (coe
                                                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                                (coe
                                                                                   MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                                      (coe
                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                      (coe
                                                                                         (\ v11 ->
                                                                                            coe
                                                                                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
                                                                                                    (coe
                                                                                                       v0)))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122
                                                                                                 (coe
                                                                                                    v11))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
                                                                                                    (coe
                                                                                                       v0)))))
                                                                                      (coe
                                                                                         MAlonzo.Code.Class.IsSet.du_dom_586
                                                                                         (coe
                                                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                            (coe
                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                         (coe
                                                                                            MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWithdrawals_3712
                                                                                            (coe
                                                                                               v6)))))
                                                                                (coe
                                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                                   (coe
                                                                                      MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                      (coe
                                                                                         MAlonzo.Code.Prelude.du_'126''63'_48
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txNetworkId_3724
                                                                                            (coe
                                                                                               v6))
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
                                                                                                  (coe
                                                                                                     v0))))
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
                                                                                               (coe
                                                                                                  v0)))))
                                                                                   (coe
                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                                      (coe
                                                                                         MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                         (coe
                                                                                            MAlonzo.Code.Prelude.du_'126''63'_48
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_currentTreasury_3726
                                                                                               (coe
                                                                                                  v6))
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_treasury_3060
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                     (coe
                                                                                                        v2))))
                                                                                            (coe
                                                                                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))
                                                                                      (coe
                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                                         (coe
                                                                                            MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                            (coe
                                                                                               MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                                               (coe
                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                               (coe
                                                                                                  (\ v11 ->
                                                                                                     coe
                                                                                                       MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                                                                       (coe
                                                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                                                   (coe
                                                                                                                      v0))))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                                                (coe
                                                                                                                   v0))))
                                                                                                       (coe
                                                                                                          v11)
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Class.IsSet.du_dom_586
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                             (coe
                                                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_accountBalances_3068
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                (coe
                                                                                                                   v2))))))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Class.IsSet.du_dom_586
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                     (coe
                                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DirectDepositsOf_4264
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDirectDeposits'45'Tx_4342)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                                                                        (coe
                                                                                                           v6)
                                                                                                        (coe
                                                                                                           v7)
                                                                                                        (coe
                                                                                                           v8)
                                                                                                        (coe
                                                                                                           v5)
                                                                                                        (coe
                                                                                                           v10))))))
                                                                                         (coe
                                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                                                                                            (coe
                                                                                               MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                               (coe
                                                                                                  MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                                                  (coe
                                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                  (coe
                                                                                                     (\ v11 ->
                                                                                                        coe
                                                                                                          MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                                                                          (coe
                                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                                                      (coe
                                                                                                                         v0))))
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                                                   (coe
                                                                                                                      v0))))
                                                                                                          (coe
                                                                                                             v11)
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Class.IsSet.du_dom_586
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_accountBalances_3068
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                   (coe
                                                                                                                      v2))))))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Class.IsSet.du_dom_586
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                        (coe
                                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBalanceIntervals_3740
                                                                                                        (coe
                                                                                                           v6)))))
                                                                                            (coe
                                                                                               MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                                                                               (coe
                                                                                                  MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1682
                                                                                                  (coe
                                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                  (coe
                                                                                                     (\ v11 ->
                                                                                                        coe
                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Account.du_Dec'45'InBalanceInterval_876
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Data.Maybe.Base.du_maybe_32
                                                                                                             (coe
                                                                                                                (\ v12 ->
                                                                                                                   v12))
                                                                                                             (coe
                                                                                                                (0 ::
                                                                                                                   Integer))
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_2048
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_accountBalances_3068
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                      (coe
                                                                                                                         v2)))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                   (coe
                                                                                                                      v11))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                                                               (coe
                                                                                                                                  v0))))
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                                                                                                            (coe
                                                                                                                               v0))))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                      (coe
                                                                                                                         v11))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Axiom.Set.Rel.du_dom_354
                                                                                                                      (MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_accountBalances_3068
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                               (coe
                                                                                                                                  v2))))))))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                             (coe
                                                                                                                v11))))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBalanceIntervals_3740
                                                                                                        (coe
                                                                                                           v6))))))))))))))))))))))))) in
                      coe
                        (case coe v11 of
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v12 v13
                             -> if coe v12
                                  then case coe v13 of
                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v14
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
                                                                                                                                      -> case coe
                                                                                                                                                v40 of
                                                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v41 v42
                                                                                                                                             -> case coe
                                                                                                                                                       v42 of
                                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v43 v44
                                                                                                                                                    -> case coe
                                                                                                                                                              v44 of
                                                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v45 v46
                                                                                                                                                           -> case coe
                                                                                                                                                                     v46 of
                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v47 v48
                                                                                                                                                                  -> case coe
                                                                                                                                                                            v48 of
                                                                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v49 v50
                                                                                                                                                                         -> case coe
                                                                                                                                                                                   v50 of
                                                                                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v51 v52
                                                                                                                                                                                -> case coe
                                                                                                                                                                                          v52 of
                                                                                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v53 v54
                                                                                                                                                                                       -> case coe
                                                                                                                                                                                                 v54 of
                                                                                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v55 v56
                                                                                                                                                                                              -> let v57
                                                                                                                                                                                                       = MAlonzo.Code.Data.Bool.Properties.d__'8799'__3196
                                                                                                                                                                                                           (coe
                                                                                                                                                                                                              MAlonzo.Code.Data.List.Base.du_foldr_216
                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                 MAlonzo.Code.Data.Bool.Base.d__'8743'__24)
                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                 v12)
                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                 MAlonzo.Code.Data.List.Base.du_map_22
                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                    (\ v57 ->
                                                                                                                                                                                                                       coe
                                                                                                                                                                                                                         MAlonzo.Code.Class.Decidable.Core.du_'191'_'191''7495'_46
                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                            ())
                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validPlutusScript_514
                                                                                                                                                                                                                            (MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                                     v0)))
                                                                                                                                                                                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                                        v57))))
                                                                                                                                                                                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                                     v57)))
                                                                                                                                                                                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                                        v57))))
                                                                                                                                                                                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                  v57)))))
                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                    MAlonzo.Code.Data.List.Base.du__'43''43'__32
                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Validation.d_collectP2ScriptsWithContext_3310
                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                          v0)
                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                          v1)
                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_TxLevelTop_10)
                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_pparams_3058
                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                v2)))
                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                             v6)
                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                             v7)
                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                             v8)
                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                             v5)
                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                             v10))
                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo'8320'_3062
                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                v2)))
                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_allScripts_3066
                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                v2))))
                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                       MAlonzo.Code.Data.List.Base.du_concatMap_246
                                                                                                                                                                                                                       (\ v57 ->
                                                                                                                                                                                                                          coe
                                                                                                                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_p2ScriptsWithContext_3568
                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                               v0)
                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                               v1)
                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                  v2))
                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                  v6)
                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                  v7)
                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                  v8)
                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                  v5)
                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                  v10)))
                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3732
                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                             v6))))))
                                                                                                                                                                                                           (coe
                                                                                                                                                                                                              v5) in
                                                                                                                                                                                                 coe
                                                                                                                                                                                                   (case coe
                                                                                                                                                                                                           v57 of
                                                                                                                                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v58 v59
                                                                                                                                                                                                        -> if coe
                                                                                                                                                                                                                v58
                                                                                                                                                                                                             then let v60
                                                                                                                                                                                                                        = seq
                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                               v59)
                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                               MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                                     MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.C_UTXOS_3574))) in
                                                                                                                                                                                                                  coe
                                                                                                                                                                                                                    (case coe
                                                                                                                                                                                                                            v60 of
                                                                                                                                                                                                                       MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v61
                                                                                                                                                                                                                         -> coe
                                                                                                                                                                                                                              MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                 MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                                                                                                                                                 (let v62
                                                                                                                                                                                                                                        = MAlonzo.Code.Class.ToBool.d_ToBool'45'Bool_88 in
                                                                                                                                                                                                                                  coe
                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                       MAlonzo.Code.Class.ToBool.du_if_then_else__38
                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                          v62)
                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_IsValidFlagOf_4304
                                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasIsValidFlag'45'Tx_4318)
                                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                v6)
                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                v7)
                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                v8)
                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                v5)
                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                v10)))
                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                          MAlonzo.Code.Level.C_lift_20
                                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                                             MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                          (\ v63 ->
                                                                                                                                                                                                                                             coe
                                                                                                                                                                                                                                               MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_76
                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasCast'45'UTxOState_3300)
                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                                  (let v64
                                                                                                                                                                                                                                                         = coe
                                                                                                                                                                                                                                                             MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                                                                                                                                             ()
                                                                                                                                                                                                                                                             erased
                                                                                                                                                                                                                                                             ()
                                                                                                                                                                                                                                                             erased
                                                                                                                                                                                                                                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                                                                   v0))
                                                                                                                                                                                                                                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                                                                   v0)) in
                                                                                                                                                                                                                                                   coe
                                                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                                                        MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__1042
                                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                                           MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                                                                                                                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                                                                                                                                                           erased
                                                                                                                                                                                                                                                           v64)
                                                                                                                                                                                                                                                        (let v65
                                                                                                                                                                                                                                                               = coe
                                                                                                                                                                                                                                                                   MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                                                                                                                                                   ()
                                                                                                                                                                                                                                                                   erased
                                                                                                                                                                                                                                                                   ()
                                                                                                                                                                                                                                                                   erased
                                                                                                                                                                                                                                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                                                                         v0))
                                                                                                                                                                                                                                                                   (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                                                                         v0)) in
                                                                                                                                                                                                                                                         coe
                                                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                                                              MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                 MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                                                                                                                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                                                                                                                                                                 erased
                                                                                                                                                                                                                                                                 v65)
                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3112
                                                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                                                    v3))
                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                 MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4004
                                                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4354)
                                                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                                                       v6)
                                                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                                                       v7)
                                                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                                                       v8)
                                                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                                                       v5)
                                                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                                                       v10)))))
                                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_outs_3316
                                                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                 v6)
                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                 v7)
                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                 v8)
                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                 v5)
                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                 v10)))))
                                                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                                                        addInt
                                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxFeesOf_3876
                                                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxFees'45'TopLevelTx_4326)
                                                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                 v6)
                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                 v7)
                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                 v8)
                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                 v5)
                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                 v10)))
                                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_fees_3114
                                                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                                                              v3)))
                                                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                                                        addInt
                                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_donations_3116
                                                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                                                              v3))
                                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                                           MAlonzo.Code.Ledger.Prelude.Base.d_DonationsOf_28
                                                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDonations'45'Tx_4392)
                                                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                 v6)
                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                 v7)
                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                 v8)
                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                 v5)
                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                 v10))))))))
                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                          (\ v63 ->
                                                                                                                                                                                                                                             coe
                                                                                                                                                                                                                                               MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_76
                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasCast'45'UTxOState_3300)
                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                                  (let v64
                                                                                                                                                                                                                                                         = coe
                                                                                                                                                                                                                                                             MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                                                                                                                                             ()
                                                                                                                                                                                                                                                             erased
                                                                                                                                                                                                                                                             ()
                                                                                                                                                                                                                                                             erased
                                                                                                                                                                                                                                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                                                                   v0))
                                                                                                                                                                                                                                                             (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                                                                   v0)) in
                                                                                                                                                                                                                                                   coe
                                                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                                                        MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                                           MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                                                                                                                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                                                                                                                                                           erased
                                                                                                                                                                                                                                                           v64)
                                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3112
                                                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                                                              v3))
                                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CollateralInputsOf_3852
                                                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasCollateralInputs'45'TopLevelTx_4324)
                                                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                 v6)
                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                 v7)
                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                 v8)
                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                 v5)
                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                 v10)))))
                                                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                                                        addInt
                                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_cbalance_3328
                                                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                                                              v0)
                                                                                                                                                                                                                                                           (let v64
                                                                                                                                                                                                                                                                  = coe
                                                                                                                                                                                                                                                                      MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                                                                                                                                                      ()
                                                                                                                                                                                                                                                                      erased
                                                                                                                                                                                                                                                                      ()
                                                                                                                                                                                                                                                                      erased
                                                                                                                                                                                                                                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                                                                            v0))
                                                                                                                                                                                                                                                                      (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                                                                            v0)) in
                                                                                                                                                                                                                                                            coe
                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                 MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                                                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                                                                                                                                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                                                                                                                                                                    erased
                                                                                                                                                                                                                                                                    v64)
                                                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3112
                                                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                                                       v3))
                                                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CollateralInputsOf_3852
                                                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasCollateralInputs'45'TopLevelTx_4324)
                                                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                                                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                                                          v6)
                                                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                                                          v7)
                                                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                                                          v8)
                                                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                                                          v5)
                                                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                                                          v10))))))
                                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_fees_3114
                                                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                                                              v3)))
                                                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_donations_3116
                                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                                           v3))))))))
                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                    MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.C_UTXO_3654
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
                                                                                                                                                                                                                                                                                 v41)
                                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                                                                    v43)
                                                                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                                                                       v45)
                                                                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                                                                          v47)
                                                                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                                                                                             v49)
                                                                                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                                                                v51)
                                                                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                                                                                                   v53)
                                                                                                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                                                                                   (coe
                                                                                                                                                                                                                                                                                                      v55)
                                                                                                                                                                                                                                                                                                   (coe
                                                                                                                                                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                                                                                                         v56)
                                                                                                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                                                                                                            v61))))))))))))))))))))))))))
                                                                                                                                                                                                                       MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v61
                                                                                                                                                                                                                         -> coe
                                                                                                                                                                                                                              MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                 ("UTXOS"
                                                                                                                                                                                                                                  ::
                                                                                                                                                                                                                                  Data.Text.Text))
                                                                                                                                                                                                                       _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                                                                                                             else (let v60
                                                                                                                                                                                                                         = seq
                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                v59)
                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                                   ("\8868"
                                                                                                                                                                                                                                    ::
                                                                                                                                                                                                                                    Data.Text.Text))) in
                                                                                                                                                                                                                   coe
                                                                                                                                                                                                                     (case coe
                                                                                                                                                                                                                             v60 of
                                                                                                                                                                                                                        MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v61
                                                                                                                                                                                                                          -> coe
                                                                                                                                                                                                                               MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                  MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                                                                                                                                                  (let v62
                                                                                                                                                                                                                                         = MAlonzo.Code.Class.ToBool.d_ToBool'45'Bool_88 in
                                                                                                                                                                                                                                   coe
                                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                                        MAlonzo.Code.Class.ToBool.du_if_then_else__38
                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                           v62)
                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_IsValidFlagOf_4304
                                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasIsValidFlag'45'Tx_4318)
                                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                                              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                 v6)
                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                 v7)
                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                 v8)
                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                 v58)
                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                 v10)))
                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                           MAlonzo.Code.Level.C_lift_20
                                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                                              MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                           (\ v63 ->
                                                                                                                                                                                                                                              coe
                                                                                                                                                                                                                                                MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_76
                                                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasCast'45'UTxOState_3300)
                                                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                                   (let v64
                                                                                                                                                                                                                                                          = coe
                                                                                                                                                                                                                                                              MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                                                                                                                                              ()
                                                                                                                                                                                                                                                              erased
                                                                                                                                                                                                                                                              ()
                                                                                                                                                                                                                                                              erased
                                                                                                                                                                                                                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                                                    v0))
                                                                                                                                                                                                                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                                                    v0)) in
                                                                                                                                                                                                                                                    coe
                                                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                                                         MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__1042
                                                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                                                            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                                                                                                                                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                                                                                                                                                            erased
                                                                                                                                                                                                                                                            v64)
                                                                                                                                                                                                                                                         (let v65
                                                                                                                                                                                                                                                                = coe
                                                                                                                                                                                                                                                                    MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                                                                                                                                                    ()
                                                                                                                                                                                                                                                                    erased
                                                                                                                                                                                                                                                                    ()
                                                                                                                                                                                                                                                                    erased
                                                                                                                                                                                                                                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                                                          v0))
                                                                                                                                                                                                                                                                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                                                          v0)) in
                                                                                                                                                                                                                                                          coe
                                                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                                                               MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                                  MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                                                                                                                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                                                                                                                                                                  erased
                                                                                                                                                                                                                                                                  v65)
                                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3112
                                                                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                                                                     v3))
                                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4004
                                                                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4354)
                                                                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                                                                        v6)
                                                                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                                                                        v7)
                                                                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                                                                        v8)
                                                                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                                                                        v58)
                                                                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                                                                        v10)))))
                                                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_outs_3316
                                                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                                  v6)
                                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                                  v7)
                                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                                  v8)
                                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                                  v58)
                                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                                  v10)))))
                                                                                                                                                                                                                                                   (coe
                                                                                                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                                                         addInt
                                                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxFeesOf_3876
                                                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxFees'45'TopLevelTx_4326)
                                                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                                  v6)
                                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                                  v7)
                                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                                  v8)
                                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                                  v58)
                                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                                  v10)))
                                                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_fees_3114
                                                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                                                               v3)))
                                                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                                                         addInt
                                                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_donations_3116
                                                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                                                               v3))
                                                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                                                            MAlonzo.Code.Ledger.Prelude.Base.d_DonationsOf_28
                                                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDonations'45'Tx_4392)
                                                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                                  v6)
                                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                                  v7)
                                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                                  v8)
                                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                                  v58)
                                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                                  v10))))))))
                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                           (\ v63 ->
                                                                                                                                                                                                                                              coe
                                                                                                                                                                                                                                                MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_76
                                                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_HasCast'45'UTxOState_3300)
                                                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                                   (let v64
                                                                                                                                                                                                                                                          = coe
                                                                                                                                                                                                                                                              MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                                                                                                                                              ()
                                                                                                                                                                                                                                                              erased
                                                                                                                                                                                                                                                              ()
                                                                                                                                                                                                                                                              erased
                                                                                                                                                                                                                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                                                    v0))
                                                                                                                                                                                                                                                              (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                                                    v0)) in
                                                                                                                                                                                                                                                    coe
                                                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                                                         MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1634
                                                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                                                            MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                                                            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                                                                                                                                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                                                                                                                                                            erased
                                                                                                                                                                                                                                                            v64)
                                                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3112
                                                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                                                               v3))
                                                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CollateralInputsOf_3852
                                                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasCollateralInputs'45'TopLevelTx_4324)
                                                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                                                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                                  v6)
                                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                                  v7)
                                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                                  v8)
                                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                                  v58)
                                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                                  v10)))))
                                                                                                                                                                                                                                                   (coe
                                                                                                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                                                         addInt
                                                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.du_cbalance_3328
                                                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                                                               v0)
                                                                                                                                                                                                                                                            (let v64
                                                                                                                                                                                                                                                                   = coe
                                                                                                                                                                                                                                                                       MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                                                                                                                                                                                                                       ()
                                                                                                                                                                                                                                                                       erased
                                                                                                                                                                                                                                                                       ()
                                                                                                                                                                                                                                                                       erased
                                                                                                                                                                                                                                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
                                                                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                                                                             v0))
                                                                                                                                                                                                                                                                       (MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
                                                                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                                                                             v0)) in
                                                                                                                                                                                                                                                             coe
                                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                                  MAlonzo.Code.Axiom.Set.Map.du__'8739'__1626
                                                                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                                                                     MAlonzo.Code.Axiom.Set.d_th_1516
                                                                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                                                                     MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1648
                                                                                                                                                                                                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                                                                                                                                                                                     erased
                                                                                                                                                                                                                                                                     v64)
                                                                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_utxo_3112
                                                                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                                                                        v3))
                                                                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CollateralInputsOf_3852
                                                                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasCollateralInputs'45'TopLevelTx_4324)
                                                                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_3650
                                                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                                                           v6)
                                                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                                                           v7)
                                                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                                                           v8)
                                                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                                                           v58)
                                                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                                                           v10))))))
                                                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                                                            MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_fees_3114
                                                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                                                               v3)))
                                                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                                                         MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.d_donations_3116
                                                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                                                            v3))))))))
                                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.C_UTXO_3654
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
                                                                                                                                                                                                                                                                                  v41)
                                                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                                                                                     v43)
                                                                                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                                                                                        v45)
                                                                                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                                                                           v47)
                                                                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                                                                                              v49)
                                                                                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                                                 v51)
                                                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                                                                                    v53)
                                                                                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                                                                                       v55)
                                                                                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                                                                                          v56)
                                                                                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                                                                                                             v61))))))))))))))))))))))))))
                                                                                                                                                                                                                        MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v61
                                                                                                                                                                                                                          -> coe
                                                                                                                                                                                                                               MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                  ("UTXOS"
                                                                                                                                                                                                                                   ::
                                                                                                                                                                                                                                   Data.Text.Text))
                                                                                                                                                                                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                                                                                                                                      _ -> MAlonzo.RTE.mazUnreachableError)
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
                                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  else coe
                                         seq (coe v13)
                                         (coe
                                            MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                            (coe ("UTXO" :: Data.Text.Text)))
                           _ -> MAlonzo.RTE.mazUnreachableError)
                 _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Dijkstra.Specification.Utxo.Properties.Computational._.go.completeness
d_completeness_3392 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3054 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3104 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3620 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T_UTxOState_3104 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__3616 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_3392 = erased
