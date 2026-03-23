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

module MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.FromNat
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Bundles.Raw
import qualified MAlonzo.Code.Algebra.Morphism.Structures
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.HasAdd.Core
import qualified MAlonzo.Code.Class.HasOrder.Core
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.Monoid.Core
import qualified MAlonzo.Code.Class.Semigroup.Core
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Data.Fin.Base
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.List.Sort
import qualified MAlonzo.Code.Data.List.Sort.Base
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Maybe.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Instances
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Relation.Binary.Lex.NonStrict
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.Sum.Relation.Binary.LeftOrder
import qualified MAlonzo.Code.Foreign.Convertible
import qualified MAlonzo.Code.Foreign.HaskellTypes
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.TypeClasses.Hashable
import qualified MAlonzo.Code.Ledger.Conway.Foreign.Script.Base
import qualified MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock
import qualified MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Coin
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base
import qualified MAlonzo.Code.Ledger.Core.Foreign.Crypto.Structure
import qualified MAlonzo.Code.Ledger.Core.Foreign.Epoch
import qualified MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Prelude.Base
import qualified MAlonzo.Code.Ledger.Prelude.HasCoin
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.Qstdlib.Data.List.Relation.Unary.MOf

-- Ledger.Conway.Foreign.ExternalStructures._.CryptoStructure.Dec-isSigned
d_Dec'45'isSigned_68 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_68 ~v0 v1 = du_Dec'45'isSigned_68 v1
du_Dec'45'isSigned_68 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isSigned_68 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.CryptoStructure.DecEq-Ser
d_DecEq'45'Ser_72 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_72 ~v0 v1 = du_DecEq'45'Ser_72 v1
du_DecEq'45'Ser_72 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Ser_72 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.CryptoStructure.DecEq-Sig
d_DecEq'45'Sig_74 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_74 ~v0 v1 = du_DecEq'45'Sig_74 v1
du_DecEq'45'Sig_74 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Sig_74 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.CryptoStructure.DecEq-THash
d_DecEq'45'THash_76 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_76 ~v0 v1 = du_DecEq'45'THash_76 v1
du_DecEq'45'THash_76 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'THash_76 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.CryptoStructure.THash
d_THash_78 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  ()
d_THash_78 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.CryptoStructure.KeyPair
d_KeyPair_80 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  ()
d_KeyPair_80 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.CryptoStructure.SKey
d_SKey_82 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  ()
d_SKey_82 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.CryptoStructure.Ser
d_Ser_86 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  ()
d_Ser_86 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.CryptoStructure.Show-THash
d_Show'45'THash_90 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_90 ~v0 v1 = du_Show'45'THash_90 v1
du_Show'45'THash_90 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'THash_90 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.CryptoStructure.Sig
d_Sig_92 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  ()
d_Sig_92 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.CryptoStructure.T-Hashable
d_T'45'Hashable_94 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_94 ~v0 v1 = du_T'45'Hashable_94 v1
du_T'45'Hashable_94 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
du_T'45'Hashable_94 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.CryptoStructure.VKey
d_VKey_96 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  ()
d_VKey_96 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.CryptoStructure.isKeyPair
d_isKeyPair_98 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  AgdaAny -> AgdaAny -> ()
d_isKeyPair_98 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.CryptoStructure.isSigned
d_isSigned_100 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_100 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.CryptoStructure.isSigned-correct
d_isSigned'45'correct_102 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_102 ~v0 v1 = du_isSigned'45'correct_102 v1
du_isSigned'45'correct_102 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_isSigned'45'correct_102 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_isSigned'45'correct_132
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.CryptoStructure.sign
d_sign_108 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_sign_108 ~v0 v1 = du_sign_108 v1
du_sign_108 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_sign_108 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.Dec-evalTimelock
d_Dec'45'evalTimelock_170 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.T_Timelock_104 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'evalTimelock_170 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.d_Dec'45'evalTimelock_162
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d___12
         (coe v0))
      (coe MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.du___14)
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-HSTimelock
d_DecEq'45'HSTimelock_172 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'HSTimelock_172 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_DecEq'45'HSTimelock_320
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-Timelock
d_DecEq'45'Timelock_174 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Timelock_174 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.d_DecEq'45'Timelock_118
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d___12
         (coe v0))
      (coe MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.du___14)
-- Ledger.Conway.Foreign.ExternalStructures._.HSP1ScriptStructure
d_HSP1ScriptStructure_176 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104
d_HSP1ScriptStructure_176 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_HSP1ScriptStructure_322
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HSP2ScriptStructure
d_HSP2ScriptStructure_178 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128
d_HSP2ScriptStructure_178 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_HSP2ScriptStructure_344
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HSPlutusScript
d_HSPlutusScript_180 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HSScriptStructure
d_HSScriptStructure_184 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280
d_HSScriptStructure_184 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_HSScriptStructure_372
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HSTimelock
d_HSTimelock_186 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.Hashable-HSTimelock
d_Hashable'45'HSTimelock_190 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'HSTimelock_190 ~v0 = du_Hashable'45'HSTimelock_190
du_Hashable'45'HSTimelock_190 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
du_Hashable'45'HSTimelock_190
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.du_Hashable'45'HSTimelock_318
-- Ledger.Conway.Foreign.ExternalStructures._.Timelock
d_Timelock_206 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.evalTimelock
d_evalTimelock_220 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HSPlutusScript.psScriptHash
d_psScriptHash_224 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSPlutusScript_328 ->
  Integer
d_psScriptHash_224 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_psScriptHash_336
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HSPlutusScript.psScriptLanguage
d_psScriptLanguage_226 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSPlutusScript_328 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.T_HSLanguage_10
d_psScriptLanguage_226 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_psScriptLanguage_340
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HSPlutusScript.psScriptSize
d_psScriptSize_228 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSPlutusScript_328 ->
  Integer
d_psScriptSize_228 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_psScriptSize_338
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HSTimelock.timelock
d_timelock_232 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSTimelock_302 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.T_Timelock_104
d_timelock_232 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_timelock_310
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HSTimelock.tlScriptHash
d_tlScriptHash_234 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSTimelock_302 ->
  Integer
d_tlScriptHash_234 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_tlScriptHash_312
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HSTimelock.tlScriptSize
d_tlScriptSize_236 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSTimelock_302 ->
  Integer
d_tlScriptSize_236 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_tlScriptSize_314
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.Base.Convert-HSLanguage
d_Convert'45'HSLanguage_268 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Convert'45'HSLanguage_268 ~v0 = du_Convert'45'HSLanguage_268
du_Convert'45'HSLanguage_268 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
du_Convert'45'HSLanguage_268
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.d_Convert'45'HSLanguage_20
-- Ledger.Conway.Foreign.ExternalStructures._.Base.DecEq-HSLanguage
d_DecEq'45'HSLanguage_270 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'HSLanguage_270 ~v0 = du_DecEq'45'HSLanguage_270
du_DecEq'45'HSLanguage_270 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'HSLanguage_270
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.d_DecEq'45'HSLanguage_22
-- Ledger.Conway.Foreign.ExternalStructures._.Base.HSLanguage
d_HSLanguage_272 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.Base.HsType-HSLanguage
d_HsType'45'HSLanguage_274 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsType'45'HSLanguage_274 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Base.Show-HSLanguage
d_Show'45'HSLanguage_284 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'HSLanguage_284 ~v0 = du_Show'45'HSLanguage_284
du_Show'45'HSLanguage_284 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'HSLanguage_284
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.d_Show'45'HSLanguage_24
-- Ledger.Conway.Foreign.ExternalStructures._
d___292 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
d___292 v0
  = coe
      MAlonzo.Code.Ledger.Core.Foreign.Crypto.Structure.d_HSCryptoStructure_34
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._
d___298 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280
d___298 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_HSScriptStructure_372
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.Dec-isSigned
d_Dec'45'isSigned_302 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_302 v0
  = let v1 = d___292 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.DecEq-ScriptHash
d_DecEq'45'ScriptHash_304 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_304 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
      (coe d___292 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.DecEq-Ser
d_DecEq'45'Ser_306 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_306 v0
  = let v1 = d___292 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.DecEq-Sig
d_DecEq'45'Sig_308 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_308 v0
  = let v1 = d___292 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.DecEq-THash
d_DecEq'45'THash_310 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_310 v0
  = let v1 = d___292 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206 (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.THash
d_THash_312 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_THash_312 = erased
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.KeyPair
d_KeyPair_314 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_KeyPair_314 = erased
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.SKey
d_SKey_316 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_SKey_316 = erased
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.ScriptHash
d_ScriptHash_318 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ScriptHash_318 = erased
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.Ser
d_Ser_320 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Ser_320 = erased
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.Show-ScriptHash
d_Show'45'ScriptHash_322 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_322 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_212
      (coe d___292 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.Show-THash
d_Show'45'THash_324 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_324 v0
  = let v1 = d___292 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206 (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.Sig
d_Sig_326 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Sig_326 = erased
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.T-Hashable
d_T'45'Hashable_328 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_328 v0
  = let v1 = d___292 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206 (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.VKey
d_VKey_330 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VKey_330 = erased
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.isKeyPair
d_isKeyPair_332 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 -> ()
d_isKeyPair_332 = erased
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.isSigned
d_isSigned_334 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer -> Integer -> ()
d_isSigned_334 = erased
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.isSigned-correct
d_isSigned'45'correct_336 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isSigned'45'correct_336 = erased
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.khs
d_khs_338 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_338 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
      (coe d___292 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.pkk
d_pkk_340 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_340 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178
      (coe d___292 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.sign
d_sign_342 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer
d_sign_342 v0
  = let v1 = d___292 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.GovParams
d_GovParams_358 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.PParams
d_PParams_382 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.paramsWellFormed
d_paramsWellFormed_404 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  ()
d_paramsWellFormed_404 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_412 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_412 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1504
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovParams.ppUpd
d_ppUpd_418 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438
d_ppUpd_418 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.Emax
d_Emax_448 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_Emax_448 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_402
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.a
d_a_450 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_a_450 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_374 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.a0
d_a0_452 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_452 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_406 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.b
d_b_454 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_b_454 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_376 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.ccMaxTermLength
d_ccMaxTermLength_456 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_ccMaxTermLength_456 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_418
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.ccMinSize
d_ccMinSize_458 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_ccMinSize_458 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_416
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_460 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_coinsPerUTxOByte_460 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_386
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.collateralPercentage
d_collateralPercentage_462 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_collateralPercentage_462 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_408
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.costmdlsAssoc
d_costmdlsAssoc_466 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_436
d_costmdlsAssoc_466 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdlsAssoc_410
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.drepActivity
d_drepActivity_468 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_drepActivity_468 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_426
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.drepDeposit
d_drepDeposit_470 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_drepDeposit_470 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_424
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.drepThresholds
d_drepThresholds_472 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218
d_drepThresholds_472 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_414
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.govActionDeposit
d_govActionDeposit_474 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_govActionDeposit_474 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_422
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.govActionLifetime
d_govActionLifetime_476 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_govActionLifetime_476 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_420
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.keyDeposit
d_keyDeposit_478 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_keyDeposit_478 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_378
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.maxBlockExUnits
d_maxBlockExUnits_480 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_480 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_366
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.maxBlockSize
d_maxBlockSize_482 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxBlockSize_482 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_358
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.maxCollateralInputs
d_maxCollateralInputs_484 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxCollateralInputs_484 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_370
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.maxHeaderSize
d_maxHeaderSize_486 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxHeaderSize_486 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_362
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_488 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxRefScriptSizePerBlock_488 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_394
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_490 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxRefScriptSizePerTx_490 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_392
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.maxTxExUnits
d_maxTxExUnits_492 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_492 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_364
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.maxTxSize
d_maxTxSize_494 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxTxSize_494 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_360
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.maxValSize
d_maxValSize_496 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxValSize_496 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_368
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_498 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_498 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_390
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.minUTxOValue
d_minUTxOValue_500 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_minUTxOValue_500 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_400
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.monetaryExpansion
d_monetaryExpansion_502 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_502 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_382
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.nopt
d_nopt_504 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_nopt_504 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_404
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.poolDeposit
d_poolDeposit_506 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_poolDeposit_506 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_380
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.poolThresholds
d_poolThresholds_508 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262
d_poolThresholds_508 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_412
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.prices
d_prices_510 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_510 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_388
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.pv
d_pv_512 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_512 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_372 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_514 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_514 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_398
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.refScriptCostStride
d_refScriptCostStride_516 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_516 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_396
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.treasuryCut
d_treasuryCut_518 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_518 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_384
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsDiff.UpdateT
d_UpdateT_522 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438 ->
  ()
d_UpdateT_522 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsDiff.applyUpdate
d_applyUpdate_524 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_applyUpdate_524 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1454
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsDiff.ppWF?
d_ppWF'63'_526 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_526 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1462
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsDiff.updateGroups
d_updateGroups_530 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_206]
d_updateGroups_530 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1456
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_538 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_538 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamsUpdate_1436
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'46'extendedlambda0_362
         (coe MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8))
      (coe d___298 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_540 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_544 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_applyPParamsUpdate_544 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_applyPParamsUpdate_1278
      (coe d___298 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_566 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_Emax_566 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_716
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.a
d_a_568 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_a_568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_686 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.a0
d_a0_570 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_570 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_714 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.b
d_b_572 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_b_572 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_688 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_574 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_ccMaxTermLength_574 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_738
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_576 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_ccMinSize_576 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_736
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_578 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_coinsPerUTxOByte_578 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_698
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_580 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_collateralPercentage_580 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_720
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_582 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_436
d_costmdls_582 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_722
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_584 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_drepActivity_584 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_734
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_586 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_drepDeposit_586 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_732
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_588 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218
d_drepThresholds_588 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_724
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_590 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_govActionDeposit_590 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_730
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_592 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_govActionLifetime_592 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_728
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_594 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_keyDeposit_594 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_690
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_596 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_596 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_682
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_598 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxBlockSize_598 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_670
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_600 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxCollateralInputs_600 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_678
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_602 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxHeaderSize_602 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_674
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_604 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_604 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_706
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_606 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxRefScriptSizePerTx_606 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_704
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_608 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_608 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_680
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_610 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxTxSize_610 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_672
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_612 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxValSize_612 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_676
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_614 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_614 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_702
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_616 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_minUTxOValue_616 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_712
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_618 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_618 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_694
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_620 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_nopt_620 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_718
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_622 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_poolDeposit_622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_692
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_624 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262
d_poolThresholds_624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_726
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.prices
d_prices_626 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_700
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.pv
d_pv_628 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_628 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_684 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_630 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_630 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_710
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_632 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_632 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_708
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_634 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_696
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures.HsGovParams
d_HsGovParams_636 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472
d_HsGovParams_636 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_1506
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_1470
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.du_applyPParamsUpdate_1278
            (coe d___298 (coe v0)))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiedUpdateGroups_1208)
         (\ v1 -> coe du_ppWF_646 (coe v1)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamsUpdate_1436
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'46'extendedlambda0_362
            (coe MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8))
         (coe d___298 (coe v0)))
-- Ledger.Conway.Foreign.ExternalStructures._.ppWF
d_ppWF_646 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF_646 ~v0 v1 = du_ppWF_646 v1
du_ppWF_646 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_ppWF_646 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__106
              (coe
                 MAlonzo.Code.Class.Decidable.Core.d_dec_16
                 (coe
                    MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                    (coe
                       MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                       (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe (0 :: Integer)))
                    (coe
                       MAlonzo.Code.Axiom.Set.du_fromList_456
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1516
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe
                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_670
                             (coe v0))
                          (coe
                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_672
                                (coe v0))
                             (coe
                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_674
                                   (coe v0))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_676
                                      (coe v0))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_698
                                         (coe v0))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_692
                                            (coe v0))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_720
                                               (coe v0))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_738
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_728
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_730
                                                        (coe v0))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_732
                                                           (coe v0))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
              (coe
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)) in
    coe
      (case coe v1 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v2 v3
           -> if coe v2
                then coe
                       seq (coe v3)
                       (coe
                          MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                          (coe
                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                             (coe v2)
                             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)))
                else coe
                       seq (coe v3)
                       (coe
                          MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                          (coe
                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                             (coe v2)
                             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Foreign.ExternalStructures._._.trustMe
d_trustMe_662
  = error
      "MAlonzo Runtime Error: postulate evaluated: Ledger.Conway.Foreign.ExternalStructures._._.trustMe"
-- Ledger.Conway.Foreign.ExternalStructures._._.trustMe
d_trustMe_672
  = error
      "MAlonzo Runtime Error: postulate evaluated: Ledger.Conway.Foreign.ExternalStructures._._.trustMe"
-- Ledger.Conway.Foreign.ExternalStructures.HSTransactionStructure
d_HSTransactionStructure_682 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24
d_HSTransactionStructure_682 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_3748
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_isHashableSet'45'ℕ_34
      MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8
      (MAlonzo.Code.Ledger.Core.Foreign.Crypto.Structure.d_HSCryptoStructure_34
         (coe v0))
      (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'46'extendedlambda0_362
         (coe MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8))
      (MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_HSScriptStructure_372
         (coe v0))
      (d_HsGovParams_636 (coe v0))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Coin.du_Coin'45'TokenAlgebra_132)
      (\ v1 -> v1)
      (coe
         MAlonzo.Code.Interface.TypeClasses.Hashable.C_constructor_20
         (coe (\ v1 -> 0 :: Integer)))
-- Ledger.Conway.Foreign.ExternalStructures._._+ᵉ_
d__'43''7497'__688 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer
d__'43''7497'__688 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'__100
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._._+ᵉ'_
d__'43''7497'''__690 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer
d__'43''7497'''__690 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'''__102
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._._∙_
d__'8729'__692 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer
d__'8729'__692 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2516
                  (coe v1)))))
-- Ledger.Conway.Foreign.ExternalStructures._._≈_
d__'8776'__694 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> ()
d__'8776'__694 = erased
-- Ledger.Conway.Foreign.ExternalStructures._._≤ᵗ_
d__'8804''7511'__696 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> ()
d__'8804''7511'__696 = erased
-- Ledger.Conway.Foreign.ExternalStructures._._≥ᵉ_
d__'8805''7497'__698 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8805''7497'__698 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_700 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_700 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.==-GovAction
d_'61''61''45'GovAction_702 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872 ->
  Bool
d_'61''61''45'GovAction_702 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovAction_942
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.==-GovActionData
d_'61''61''45'GovActionData_704 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838 ->
  AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_704 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovActionData_924
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.==-GovProposal
d_'61''61''45'GovProposal_706 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1086 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1086 ->
  Bool
d_'61''61''45'GovProposal_706 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovProposal_1326
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.==-Set
d_'61''61''45'Set_708 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_708 ~v0 = du_'61''61''45'Set_708
du_'61''61''45'Set_708 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
du_'61''61''45'Set_708 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_'61''61''45'Set_912
      v1 v2 v3
-- Ledger.Conway.Foreign.ExternalStructures._.THash
d_THash_710 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_THash_710 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Acnt
d_Acnt_712 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.ActiveSlotCoeff
d_ActiveSlotCoeff_716 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_716 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ActiveSlotCoeff_328
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.Addr
d_Addr_718 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Addr_718 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Anchor
d_Anchor_722 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.AttrSizeOf
d_AttrSizeOf_726 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_202 ->
  AgdaAny -> Integer
d_AttrSizeOf_726 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_210
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.AuxiliaryData
d_AuxiliaryData_728 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_AuxiliaryData_728 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.BaseAddr
d_BaseAddr_730 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.BootstrapAddr
d_BootstrapAddr_734 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.CCMaxTermLengthOf
d_CCMaxTermLengthOf_740 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_456 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_740 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_464
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.CostModel
d_CostModel_744 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_CostModel_744 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Credential
d_Credential_746 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.CredentialOf
d_CredentialOf_748 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_748 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DCertsOf
d_DCertsOf_750 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasDCerts_3514 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1338]
d_DCertsOf_750 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DCertsOf_3522
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DReps
d_DReps_754 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_DReps_754 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.DRepsOf
d_DRepsOf_756 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1444 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_756 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1452
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.T
d_T_758 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_T_758 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.THash
d_THash_760 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_THash_760 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Dataʰ
d_Data'688'_762 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_762 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.Datum
d_Datum_764 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Datum_764 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Dec-isScript
d_Dec'45'isScript_766 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_766 ~v0 = du_Dec'45'isScript_766
du_Dec'45'isScript_766 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_766
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isScript_296
-- Ledger.Conway.Foreign.ExternalStructures._.Dec-isSigned
d_Dec'45'isSigned_768 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_768 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v2))))
-- Ledger.Conway.Foreign.ExternalStructures._.Dec-isVKey
d_Dec'45'isVKey_770 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_770 ~v0 = du_Dec'45'isVKey_770
du_Dec'45'isVKey_770 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_770
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_282
-- Ledger.Conway.Foreign.ExternalStructures._.Dec-validP1Script
d_Dec'45'validP1Script_772 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSTimelock_302 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_772 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_120
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_306
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_774 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSPlutusScript_328 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_774 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_274
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.Dec-≤ᵗ
d_Dec'45''8804''7511'_776 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_776 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2516
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEQ-Prices
d_DecEQ'45'Prices_778 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_778 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_244
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-Anchor
d_DecEq'45'Anchor_780 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_780 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'Anchor_1218
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_782 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_782 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BaseAddr_334
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
               (coe v1)))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                  (coe v1))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_784 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_784 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BootstrapAddr_336
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
               (coe v1)))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                  (coe v1))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-CostModel
d_DecEq'45'CostModel_786 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_786 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_230
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-Credential
d_DecEq'45'Credential_788 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_788 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_280
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                  (coe v1))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_790 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_790 ~v0 = du_DecEq'45'DrepThresholds_790
du_DecEq'45'DrepThresholds_790 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_790
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'DrepThresholds_582
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-Epoch
d_DecEq'45'Epoch_792 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_792 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-ExUnits
d_DecEq'45'ExUnits_794 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_794 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_242
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-GovActionType
d_DecEq'45'GovActionType_796 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_796 ~v0 = du_DecEq'45'GovActionType_796
du_DecEq'45'GovActionType_796 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_796
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovActionType_906
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-GovRole
d_DecEq'45'GovRole_798 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_798 ~v0 = du_DecEq'45'GovRole_798
du_DecEq'45'GovRole_798 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_798
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovRole_1212
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-GovVoter
d_DecEq'45'GovVoter_800 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_800 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'GovVoter_1220
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-Ix
d_DecEq'45'Ix_802 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_802 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1338
      (coe d_HSTransactionStructure_682 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-LangDepView
d_DecEq'45'LangDepView_804 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_804 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_232
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-Language
d_DecEq'45'Language_806 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_806 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_228
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_808 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_808 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_DecEq'45'LanguageCostModels_444
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-NeedsHash
d_DecEq'45'NeedsHash_810 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_810 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'NeedsHash_1324
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-Netw
d_DecEq'45'Netw_812 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_812 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-P1Script
d_DecEq'45'P1Script_814 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_814 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_124
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_306
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_816 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_816 ~v0 = du_DecEq'45'PParamGroup_816
du_DecEq'45'PParamGroup_816 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_816
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamGroup_588
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-PParams
d_DecEq'45'PParams_818 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_818 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParams_586
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
            (coe v1))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_820 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_820 ~v0 = du_DecEq'45'PoolThresholds_820
du_DecEq'45'PoolThresholds_820 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_820
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PoolThresholds_584
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-RewardAddress
d_DecEq'45'RewardAddress_822 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RewardAddress_822 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_338
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
               (coe v1)))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                  (coe v1))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_824 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_824 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-Ser
d_DecEq'45'Ser_826 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_826 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v2))))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-Sig
d_DecEq'45'Sig_828 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_828 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v2))))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-Slot
d_DecEq'45'Slot_830 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_830 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Slot_88
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-T
d_DecEq'45'T_832 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_832 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1342
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-T
d_DecEq'45'T_834 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_834 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
               (coe v2))))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-THash
d_DecEq'45'THash_836 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_836 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1342
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-THash
d_DecEq'45'THash_838 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_838 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206 (coe v2))))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-THash
d_DecEq'45'THash_840 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_840 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
               (coe v2))))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-TxId
d_DecEq'45'TxId_842 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_842 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1340
      (coe d_HSTransactionStructure_682 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-UpdT
d_DecEq'45'UpdT_844 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_844 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1504
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2498
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-VDeleg
d_DecEq'45'VDeleg_846 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_846 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1216
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-Value
d_DecEq'45'Value_848 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_848 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2516
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-Vote
d_DecEq'45'Vote_850 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_850 ~v0 = du_DecEq'45'Vote_850
du_DecEq'45'Vote_850 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_850
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'Vote_1214
-- Ledger.Conway.Foreign.ExternalStructures._.DecPo-Slot
d_DecPo'45'Slot_852 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_262
d_DecPo'45'Slot_852 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DrepThresholds
d_DrepThresholds_854 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.Epoch
d_Epoch_860 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Epoch_860 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_862 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_862 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_224
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.ExUnits
d_ExUnits_864 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ExUnits_864 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.GovAction
d_GovAction_866 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActionData
d_GovActionData_870 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838 ->
  ()
d_GovActionData_870 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.GovActionID
d_GovActionID_872 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_GovActionID_872 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.GovActionOf
d_GovActionOf_874 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_886 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872
d_GovActionOf_874 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionOf_892
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActionState
d_GovActionState_876 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActionType
d_GovActionType_880 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActionTypeOf
d_GovActionTypeOf_882 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_856 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838
d_GovActionTypeOf_882 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionTypeOf_862
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovParams
d_GovParams_884 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovProposal
d_GovProposal_888 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovProposalsOf
d_GovProposalsOf_892 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovProposals_3534 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1086]
d_GovProposalsOf_892 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_GovProposalsOf_3542
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovRole
d_GovRole_894 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovRoleCredential
d_GovRoleCredential_896 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_826 ->
  ()
d_GovRoleCredential_896 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.GovVote
d_GovVote_898 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovVoter
d_GovVoter_902 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovVoterOf
d_GovVoterOf_906 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1142 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_982
d_GovVoterOf_906 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovVoterOf_1150
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovVotes
d_GovVotes_908 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasAttrSize
d_HasAttrSize_914 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasAttrSize-BootstrapAddr
d_HasAttrSize'45'BootstrapAddr_918 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_202
d_HasAttrSize'45'BootstrapAddr_918 ~v0
  = du_HasAttrSize'45'BootstrapAddr_918
du_HasAttrSize'45'BootstrapAddr_918 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_202
du_HasAttrSize'45'BootstrapAddr_918
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasAttrSize'45'BootstrapAddr_226
-- Ledger.Conway.Foreign.ExternalStructures._.HasCCMaxTermLength
d_HasCCMaxTermLength_920 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasCast-Acnt
d_HasCast'45'Acnt_924 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_924 ~v0 = du_HasCast'45'Acnt_924
du_HasCast'45'Acnt_924 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Acnt_924
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasCast'45'Acnt_204
-- Ledger.Conway.Foreign.ExternalStructures._.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_926 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_926 ~v0
  = du_HasCast'45'GovAction'45'Sigma_926
du_HasCast'45'GovAction'45'Sigma_926 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_926
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_902
-- Ledger.Conway.Foreign.ExternalStructures._.HasCast-GovVote
d_HasCast'45'GovVote_928 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_928 ~v0 = du_HasCast'45'GovVote_928
du_HasCast'45'GovVote_928 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_928
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovVote_1318
-- Ledger.Conway.Foreign.ExternalStructures._.HasCast-HashProtected
d_HasCast'45'HashProtected_930 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_930 ~v0
  = du_HasCast'45'HashProtected_930
du_HasCast'45'HashProtected_930 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_930 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1080
-- Ledger.Conway.Foreign.ExternalStructures._.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_932 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_932 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_932
du_HasCast'45'HashProtected'45'MaybeScriptHash_932 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_932
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1082
-- Ledger.Conway.Foreign.ExternalStructures._.HasCoin-TxOut
d_HasCoin'45'TxOut_934 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_934 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_HasCoin'45'TxOut_3746
      (coe d_HSTransactionStructure_682 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.HasCredential
d_HasCredential_936 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasCredential-RewardAddress
d_HasCredential'45'RewardAddress_940 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
d_HasCredential'45'RewardAddress_940 ~v0
  = du_HasCredential'45'RewardAddress_940
du_HasCredential'45'RewardAddress_940 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
du_HasCredential'45'RewardAddress_940
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RewardAddress_224
-- Ledger.Conway.Foreign.ExternalStructures._.HasDCerts
d_HasDCerts_942 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasDCerts-Tx
d_HasDCerts'45'Tx_946 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasDCerts_3514
d_HasDCerts'45'Tx_946 ~v0 = du_HasDCerts'45'Tx_946
du_HasDCerts'45'Tx_946 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasDCerts_3514
du_HasDCerts'45'Tx_946
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasDCerts'45'Tx_3622
-- Ledger.Conway.Foreign.ExternalStructures._.HasDReps
d_HasDReps_948 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasDonations-Tx
d_HasDonations'45'Tx_952 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'Tx_952 ~v0 = du_HasDonations'45'Tx_952
du_HasDonations'45'Tx_952 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
du_HasDonations'45'Tx_952
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasDonations'45'Tx_3632
-- Ledger.Conway.Foreign.ExternalStructures._.HasDonations-TxBody
d_HasDonations'45'TxBody_954 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'TxBody_954 ~v0 = du_HasDonations'45'TxBody_954
du_HasDonations'45'TxBody_954 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
du_HasDonations'45'TxBody_954
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasDonations'45'TxBody_3570
-- Ledger.Conway.Foreign.ExternalStructures._.HasFees-Tx
d_HasFees'45'Tx_956 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFees'45'Tx_956 ~v0 = du_HasFees'45'Tx_956
du_HasFees'45'Tx_956 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFees'45'Tx_956
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasFees'45'Tx_3620
-- Ledger.Conway.Foreign.ExternalStructures._.HasGovAction
d_HasGovAction_958 a0 a1 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_962 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_886
d_HasGovAction'45'GovActionState_962 ~v0
  = du_HasGovAction'45'GovActionState_962
du_HasGovAction'45'GovActionState_962 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_886
du_HasGovAction'45'GovActionState_962
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1206
-- Ledger.Conway.Foreign.ExternalStructures._.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_964 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_886
d_HasGovAction'45'GovProposal_964 ~v0
  = du_HasGovAction'45'GovProposal_964
du_HasGovAction'45'GovProposal_964 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_886
du_HasGovAction'45'GovProposal_964
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1204
-- Ledger.Conway.Foreign.ExternalStructures._.HasGovActionType
d_HasGovActionType_966 a0 a1 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_970 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_856
d_HasGovActionType'45'GovAction_970 ~v0
  = du_HasGovActionType'45'GovAction_970
du_HasGovActionType'45'GovAction_970 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_856
du_HasGovActionType'45'GovAction_970
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_900
-- Ledger.Conway.Foreign.ExternalStructures._.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_972 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_856
d_HasGovActionType'45'GovActionState_972 ~v0
  = du_HasGovActionType'45'GovActionState_972
du_HasGovActionType'45'GovActionState_972 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_856
du_HasGovActionType'45'GovActionState_972
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1210
-- Ledger.Conway.Foreign.ExternalStructures._.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_974 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_856
d_HasGovActionType'45'GovProposal_974 ~v0
  = du_HasGovActionType'45'GovProposal_974
du_HasGovActionType'45'GovProposal_974 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_856
du_HasGovActionType'45'GovProposal_974
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1208
-- Ledger.Conway.Foreign.ExternalStructures._.HasGovProposals
d_HasGovProposals_976 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasGovProposals-Tx
d_HasGovProposals'45'Tx_980 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovProposals_3534
d_HasGovProposals'45'Tx_980 ~v0 = du_HasGovProposals'45'Tx_980
du_HasGovProposals'45'Tx_980 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovProposals_3534
du_HasGovProposals'45'Tx_980
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasGovProposals'45'Tx_3624
-- Ledger.Conway.Foreign.ExternalStructures._.HasGovVoter
d_HasGovVoter_982 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_986 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1142
d_HasGovVoter'45'GovVote_986 ~v0 = du_HasGovVoter'45'GovVote_986
du_HasGovVoter'45'GovVote_986 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1142
du_HasGovVoter'45'GovVote_986
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1198
-- Ledger.Conway.Foreign.ExternalStructures._.HasMaybeNetworkId
d_HasMaybeNetworkId_988 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasNetworkId
d_HasNetworkId_992 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_996 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_142
d_HasNetworkId'45'BaseAddr_996 ~v0
  = du_HasNetworkId'45'BaseAddr_996
du_HasNetworkId'45'BaseAddr_996 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_142
du_HasNetworkId'45'BaseAddr_996
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BaseAddr_218
-- Ledger.Conway.Foreign.ExternalStructures._.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_998 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_142
d_HasNetworkId'45'BootstrapAddr_998 ~v0
  = du_HasNetworkId'45'BootstrapAddr_998
du_HasNetworkId'45'BootstrapAddr_998 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_142
du_HasNetworkId'45'BootstrapAddr_998
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BootstrapAddr_220
-- Ledger.Conway.Foreign.ExternalStructures._.HasNetworkId-RewardAddress
d_HasNetworkId'45'RewardAddress_1000 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_142
d_HasNetworkId'45'RewardAddress_1000 ~v0
  = du_HasNetworkId'45'RewardAddress_1000
du_HasNetworkId'45'RewardAddress_1000 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_142
du_HasNetworkId'45'RewardAddress_1000
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RewardAddress_222
-- Ledger.Conway.Foreign.ExternalStructures._.HasPParams
d_HasPParams_1002 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasPolicy
d_HasPolicy_1006 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_1010 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1182
d_HasPolicy'45'GovProposal_1010 ~v0
  = du_HasPolicy'45'GovProposal_1010
du_HasPolicy'45'GovProposal_1010 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1182
du_HasPolicy'45'GovProposal_1010
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1202
-- Ledger.Conway.Foreign.ExternalStructures._.HasReserves-Acnt
d_HasReserves'45'Acnt_1012 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
d_HasReserves'45'Acnt_1012 ~v0 = du_HasReserves'45'Acnt_1012
du_HasReserves'45'Acnt_1012 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
du_HasReserves'45'Acnt_1012
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasReserves'45'Acnt_202
-- Ledger.Conway.Foreign.ExternalStructures._.HasRewardAddress
d_HasRewardAddress_1014 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasTreasury-Acnt
d_HasTreasury'45'Acnt_1018 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'Acnt_1018 ~v0 = du_HasTreasury'45'Acnt_1018
du_HasTreasury'45'Acnt_1018 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
du_HasTreasury'45'Acnt_1018
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasTreasury'45'Acnt_200
-- Ledger.Conway.Foreign.ExternalStructures._.HasTxBody
d_HasTxBody_1020 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasTxBody-Tx
d_HasTxBody'45'Tx_1024 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxBody_3494
d_HasTxBody'45'Tx_1024 ~v0 = du_HasTxBody'45'Tx_1024
du_HasTxBody'45'Tx_1024 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxBody_3494
du_HasTxBody'45'Tx_1024
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasTxBody'45'Tx_3618
-- Ledger.Conway.Foreign.ExternalStructures._.HasTxId
d_HasTxId_1026 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasTxId-Tx
d_HasTxId'45'Tx_1030 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxId_3554
d_HasTxId'45'Tx_1030 ~v0 = du_HasTxId'45'Tx_1030
du_HasTxId'45'Tx_1030 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxId_3554
du_HasTxId'45'Tx_1030
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasTxId'45'Tx_3630
-- Ledger.Conway.Foreign.ExternalStructures._.HasUTxO
d_HasUTxO_1032 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasVote
d_HasVote_1036 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasVote-GovVote
d_HasVote'45'GovVote_1040 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1162
d_HasVote'45'GovVote_1040 ~v0 = du_HasVote'45'GovVote_1040
du_HasVote'45'GovVote_1040 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1162
du_HasVote'45'GovVote_1040
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasVote'45'GovVote_1200
-- Ledger.Conway.Foreign.ExternalStructures._.HasVoteDelegs
d_HasVoteDelegs_1042 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasWithdrawals
d_HasWithdrawals_1046 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasWithdrawals-Tx
d_HasWithdrawals'45'Tx_1050 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_182
d_HasWithdrawals'45'Tx_1050 ~v0 = du_HasWithdrawals'45'Tx_1050
du_HasWithdrawals'45'Tx_1050 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_182
du_HasWithdrawals'45'Tx_1050
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasWithdrawals'45'Tx_3628
-- Ledger.Conway.Foreign.ExternalStructures._.HasWithdrawals-TxBody
d_HasWithdrawals'45'TxBody_1052 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_182
d_HasWithdrawals'45'TxBody_1052 ~v0
  = du_HasWithdrawals'45'TxBody_1052
du_HasWithdrawals'45'TxBody_1052 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_182
du_HasWithdrawals'45'TxBody_1052
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasWithdrawals'45'TxBody_3626
-- Ledger.Conway.Foreign.ExternalStructures._.HashProtected
d_HashProtected_1054 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () -> ()
d_HashProtected_1054 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Hashable-P1Script
d_Hashable'45'P1Script_1056 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_1056 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_122
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_306
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1058 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_1058 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_226
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.Hashable-Script
d_Hashable'45'Script_1060 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_1060 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_404
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.Hashable-ScriptIntegrity
d_Hashable'45'ScriptIntegrity_1062 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'ScriptIntegrity_1062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_Hashable'45'ScriptIntegrity_2632
      (coe d_HSTransactionStructure_682 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.IsBootstrapAddr
d_IsBootstrapAddr_1066 a0 a1 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.IsBootstrapAddr?
d_IsBootstrapAddr'63'_1068 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsBootstrapAddr'63'_1068 ~v0 = du_IsBootstrapAddr'63'_1068
du_IsBootstrapAddr'63'_1068 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsBootstrapAddr'63'_1068
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsBootstrapAddr'63'_310
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_1070 a0 a1 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1074 a0 a1 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1078 a0 a1 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.Ix
d_Ix_1082 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Ix_1082 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.THash
d_THash_1084 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_THash_1084 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.KeyPair
d_KeyPair_1088 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_KeyPair_1088 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.LangDepView
d_LangDepView_1090 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_LangDepView_1090 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Language
d_Language_1092 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Language_1092 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.LanguageCostModels
d_LanguageCostModels_1094 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.MaxLovelaceSupplyᶜ
d_MaxLovelaceSupply'7580'_1098 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_MaxLovelaceSupply'7580'_1098 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_336
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.MaybeNetworkIdOf
d_MaybeNetworkIdOf_1100 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_162 ->
  AgdaAny -> Maybe Integer
d_MaybeNetworkIdOf_1100 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_170
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.MemoryEstimate
d_MemoryEstimate_1102 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_MemoryEstimate_1102 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.NeedsHash
d_NeedsHash_1104 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838 ->
  ()
d_NeedsHash_1104 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Network
d_Network_1106 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Network_1106 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.NetworkId
d_NetworkId_1110 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_NetworkId_1110 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.NetworkIdOf
d_NetworkIdOf_1112 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_142 ->
  AgdaAny -> Integer
d_NetworkIdOf_1112 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_150
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_1118 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_1118 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'ActiveSlotCoeff_342
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1120 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_1120 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_326
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.Number-Epoch
d_Number'45'Epoch_1122 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_1122 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Number'45'Epoch_286
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.P1Script
d_P1Script_1124 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_P1Script_1124 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.P1ScriptStructure
d_P1ScriptStructure_1126 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusScript
d_PlutusScript_1130 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_PlutusScript_1130 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.POSIXTimeRange
d_POSIXTimeRange_1132 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_POSIXTimeRange_1132 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PParamGroup
d_PParamGroup_1134 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.PParams
d_PParams_1136 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsDiff
d_PParamsDiff_1140 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsOf
d_PParamsOf_1144 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_PParamsOf_1144 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_444
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.UpdateT
d_UpdateT_1146 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_UpdateT_1146 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure
d_PlutusStructure_1148 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusV1
d_PlutusV1_1152 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.T_HSLanguage_10
d_PlutusV1_1152 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_218
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusV2
d_PlutusV2_1154 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.T_HSLanguage_10
d_PlutusV2_1154 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_220
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusV3
d_PlutusV3_1156 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.T_HSLanguage_10
d_PlutusV3_1156 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_222
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.Policy
d_Policy_1158 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Policy_1158 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PolicyOf
d_PolicyOf_1160 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1182 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_1160 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_PolicyOf_1190
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PoolThresholds
d_PoolThresholds_1162 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.Positive-ActiveSlotCoeff
d_Positive'45'ActiveSlotCoeff_1166 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_Positive'45'ActiveSlotCoeff_1166 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Positive'45'ActiveSlotCoeff_330
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.Prices
d_Prices_1168 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Prices_1168 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ProposedPPUpdates
d_ProposedPPUpdates_1170 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ProposedPPUpdates_1170 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Quorum
d_Quorum_1172 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_Quorum_1172 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Quorum_338
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_1174 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_RandomnessStabilisationWindow_1174 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_94
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.RandomnessStabilisationWindowᶜ
d_RandomnessStabilisationWindow'7580'_1176 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_RandomnessStabilisationWindow'7580'_1176 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow'7580'_332
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.RdmrPtr
d_RdmrPtr_1178 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_RdmrPtr_1178 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Redeemer
d_Redeemer_1180 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Redeemer_1180 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.RewardAddress
d_RewardAddress_1182 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.RewardAddressOf
d_RewardAddressOf_1186 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_122 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_RewardAddressOf_1186 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_130
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.SKey
d_SKey_1190 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_SKey_1190 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Script
d_Script_1194 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Script_1194 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptAddr
d_ScriptAddr_1196 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ScriptAddr_1196 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptBaseAddr
d_ScriptBaseAddr_1198 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ScriptBaseAddr_1198 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1200 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ScriptBootstrapAddr_1200 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptHash
d_ScriptHash_1202 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ScriptHash_1202 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure
d_ScriptStructure_1206 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.Ser
d_Ser_1212 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Ser_1212 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Show-CostModel
d_Show'45'CostModel_1214 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1214 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_236
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.Show-Credential
d_Show'45'Credential_1216 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_1216 ~v0 = du_Show'45'Credential_1216
du_Show'45'Credential_1216 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_1216 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential_350
      v1 v2
-- Ledger.Conway.Foreign.ExternalStructures._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_1218 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_1218 ~v0
  = du_Show'45'Credential'215'Coin_1218
du_Show'45'Credential'215'Coin_1218 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_1218 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential'215'Coin_354
      v1 v2
-- Ledger.Conway.Foreign.ExternalStructures._.Show-DrepThresholds
d_Show'45'DrepThresholds_1220 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_1220 ~v0 = du_Show'45'DrepThresholds_1220
du_Show'45'DrepThresholds_1220 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_1220
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'DrepThresholds_590
-- Ledger.Conway.Foreign.ExternalStructures._.Show-Epoch
d_Show'45'Epoch_1222 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_1222 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Epoch_82
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.Show-ExUnits
d_Show'45'ExUnits_1224 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1224 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_246
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.Show-GovRole
d_Show'45'GovRole_1226 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_1226 ~v0 = du_Show'45'GovRole_1226
du_Show'45'GovRole_1226 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'GovRole_1226
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_Show'45'GovRole_834
-- Ledger.Conway.Foreign.ExternalStructures._.Show-Language
d_Show'45'Language_1228 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_1228 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Language_234
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.Show-LanguageCostModels
d_Show'45'LanguageCostModels_1230 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_1230 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Show'45'LanguageCostModels_450
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.Show-Network
d_Show'45'Network_1232 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_1232 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Network_322
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.Show-PParams
d_Show'45'PParams_1234 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_1234 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'PParams_594
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
            (coe v1))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.Show-PoolThresholds
d_Show'45'PoolThresholds_1236 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_1236 ~v0 = du_Show'45'PoolThresholds_1236
du_Show'45'PoolThresholds_1236 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_1236
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'PoolThresholds_592
-- Ledger.Conway.Foreign.ExternalStructures._.Show-Prices
d_Show'45'Prices_1238 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1238 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_248
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.Show-RewardAddress
d_Show'45'RewardAddress_1240 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RewardAddress_1240 ~v0 = du_Show'45'RewardAddress_1240
du_Show'45'RewardAddress_1240 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RewardAddress_1240
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'RewardAddress_352
-- Ledger.Conway.Foreign.ExternalStructures._.Show-ScriptHash
d_Show'45'ScriptHash_1242 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_1242 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_212
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.Show-THash
d_Show'45'THash_1244 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1244 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1342
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.Show-THash
d_Show'45'THash_1246 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1246 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206 (coe v2))))
-- Ledger.Conway.Foreign.ExternalStructures._.Show-THash
d_Show'45'THash_1248 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1248 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
               (coe v2))))
-- Ledger.Conway.Foreign.ExternalStructures._.Show-VDeleg
d_Show'45'VDeleg_1250 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_1250 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_Show'45'VDeleg_1320
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.Sig
d_Sig_1252 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Sig_1252 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Slot
d_Slot_1254 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Slot_1254 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1256 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_SlotsPerEpoch'7580'_1256 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_324
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.Slotʳ
d_Slot'691'_1258 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_Slot'691'_1258 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_76
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.StabilityWindow
d_StabilityWindow_1260 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_StabilityWindow_1260 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow_96
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.StabilityWindowᶜ
d_StabilityWindow'7580'_1262 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_StabilityWindow'7580'_1262 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow'7580'_334
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.T-Hashable
d_T'45'Hashable_1264 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1264 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1342
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.T-Hashable
d_T'45'Hashable_1266 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1266 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206 (coe v2))))
-- Ledger.Conway.Foreign.ExternalStructures._.T-Hashable
d_T'45'Hashable_1268 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1268 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
               (coe v2))))
-- Ledger.Conway.Foreign.ExternalStructures._.T-isHashable
d_T'45'isHashable_1270 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_1270 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
                  (coe v1)))))
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra
d_TokenAlgebra_1274 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.Tx
d_Tx_1282 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody
d_TxBody_1286 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.TxBodyOf
d_TxBodyOf_1290 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxBody_3494 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414
d_TxBodyOf_1290 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxBodyOf_3502
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxId
d_TxId_1292 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_TxId_1292 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.TxIdOf
d_TxIdOf_1294 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxId_3554 ->
  AgdaAny -> Integer
d_TxIdOf_1294 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxIdOf_3562
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxIn
d_TxIn_1296 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_TxIn_1296 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.TxOut
d_TxOut_1298 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_TxOut_1298 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.TxOutʰ
d_TxOut'688'_1300 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_TxOut'688'_1300 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.TxWitnesses
d_TxWitnesses_1302 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.UTxO
d_UTxO_1306 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_UTxO_1306 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.UTxOOf
d_UTxOOf_1308 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3398 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_1308 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3406
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.Update
d_Update_1310 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Update_1310 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.VDeleg
d_VDeleg_1314 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.VKey
d_VKey_1316 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VKey_1316 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.VKeyAddr
d_VKeyAddr_1318 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VKeyAddr_1318 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.VKeyBaseAddr
d_VKeyBaseAddr_1320 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VKeyBaseAddr_1320 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1322 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VKeyBootstrapAddr_1322 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Value
d_Value_1326 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Value_1326 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1328 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_1328 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2516
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.VoteDelegs
d_VoteDelegs_1330 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VoteDelegs_1330 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.VoteDelegsOf
d_VoteDelegsOf_1332 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1056 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1332 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_1064
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.VoteOf
d_VoteOf_1334 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1162 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_974
d_VoteOf_1334 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteOf_1170
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.Withdrawals
d_Withdrawals_1336 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Withdrawals_1336 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.WithdrawalsOf
d_WithdrawalsOf_1338 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_182 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_1338 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_190
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.activeDRepsOf
d_activeDRepsOf_1340 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1444 ->
  AgdaAny -> Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_1340 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (\ v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_activeDRepsOf_1470
           (coe
              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
              (coe v1))
           v3 v4 v5)
-- Ledger.Conway.Foreign.ExternalStructures._.activeInEpoch
d_activeInEpoch_1342 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_1342 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.adHashingScheme
d_adHashingScheme_1344 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_adHashingScheme_1344 ~v0 = du_adHashingScheme_1344
du_adHashingScheme_1344 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
du_adHashingScheme_1344
  = coe
      MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_isHashableSet'45'ℕ_34
-- Ledger.Conway.Foreign.ExternalStructures._.addEpoch
d_addEpoch_1346 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_1346 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_280
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.addSlot
d_addSlot_1348 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_1348 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_278
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.addValue
d_addValue_1350 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_1350 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2516
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.applyUpdate
d_applyUpdate_1352 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_applyUpdate_1352 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1454
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2498
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.coin
d_coin_1354 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_coin_1354 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2516
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.coin-inject-lemma
d_coin'45'inject'45'lemma_1356 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_1356 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1358 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_1358 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2516
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.coin∘inject≗id
d_coin'8728'inject'8791'id_1360 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_1360 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.cryptoStructure
d_cryptoStructure_1362 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
d_cryptoStructure_1362 v0
  = coe
      MAlonzo.Code.Ledger.Core.Foreign.Crypto.Structure.d_HSCryptoStructure_34
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.e<sucᵉ
d_e'60'suc'7497'_1364 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_e'60'suc'7497'_1364 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_e'60'suc'7497'_120
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.epoch
d_epoch_1366 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_epoch_1366 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.epochStructure
d_epochStructure_1368 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_epochStructure_1368 ~v0 = du_epochStructure_1368
du_epochStructure_1368 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
du_epochStructure_1368
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'46'extendedlambda0_362
      (coe MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8)
-- Ledger.Conway.Foreign.ExternalStructures._.firstSlot
d_firstSlot_1370 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_firstSlot_1370 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.gaData
d_gaData_1372 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872 ->
  AgdaAny
d_gaData_1372 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_880
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.gaType
d_gaType_1374 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838
d_gaType_1374 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_878
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.getLanguage
d_getLanguage_1376 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.T_HSLanguage_10
d_getLanguage_1376 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_getLanguage_432
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.getScriptHash
d_getScriptHash_1378 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_66 ->
  Integer
d_getScriptHash_1378 ~v0 = du_getScriptHash_1378
du_getScriptHash_1378 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_66 ->
  Integer
du_getScriptHash_1378
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_getScriptHash_328
-- Ledger.Conway.Foreign.ExternalStructures._.getValue
d_getValue_1380 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue_1380 ~v0 = du_getValue_1380
du_getValue_1380 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_getValue_1380
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue_3634
-- Ledger.Conway.Foreign.ExternalStructures._.getValueʰ
d_getValue'688'_1382 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue'688'_1382 ~v0 = du_getValue'688'_1382
du_getValue'688'_1382 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_getValue'688'_1382
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3650
-- Ledger.Conway.Foreign.ExternalStructures._.globalConstants
d_globalConstants_1384 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
d_globalConstants_1384 ~v0 = du_globalConstants_1384
du_globalConstants_1384 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
du_globalConstants_1384
  = coe MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8
-- Ledger.Conway.Foreign.ExternalStructures._.govParams
d_govParams_1386 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472
d_govParams_1386 v0 = coe d_HsGovParams_636 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.govStructure
d_govStructure_1388 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10
d_govStructure_1388 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
      (coe d_HSTransactionStructure_682 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.govVoterCredential
d_govVoterCredential_1390 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_982 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_1390 ~v0 = du_govVoterCredential_1390
du_govVoterCredential_1390 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_982 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_govVoterCredential_1390
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_govVoterCredential_1426
-- Ledger.Conway.Foreign.ExternalStructures._.hashRespectsUnion
d_hashRespectsUnion_1392 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_1392 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_hashRespectsUnion_326
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.inject
d_inject_1394 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_inject_1394 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2516
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.isBootstrapAddr
d_isBootstrapAddr_1396 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_88
d_isBootstrapAddr_1396 ~v0 = du_isBootstrapAddr_1396
du_isBootstrapAddr_1396 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_88
du_isBootstrapAddr_1396
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isBootstrapAddr_278
-- Ledger.Conway.Foreign.ExternalStructures._.isGovVoterDRep
d_isGovVoterDRep_1398 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_982 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_1398 ~v0 = du_isGovVoterDRep_1398
du_isGovVoterDRep_1398 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_982 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_isGovVoterDRep_1398
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_isGovVoterDRep_1422
-- Ledger.Conway.Foreign.ExternalStructures._.isKeyHash
d_isKeyHash_1400 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_isKeyHash_1400 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.isKeyHashObj
d_isKeyHashObj_1402 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
d_isKeyHashObj_1402 ~v0 = du_isKeyHashObj_1402
du_isKeyHashObj_1402 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
du_isKeyHashObj_1402
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- Ledger.Conway.Foreign.ExternalStructures._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1404 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
d_isKeyHashObj'7495'_1404 ~v0 = du_isKeyHashObj'7495'_1404
du_isKeyHashObj'7495'_1404 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
du_isKeyHashObj'7495'_1404
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj'7495'_50
-- Ledger.Conway.Foreign.ExternalStructures._.isKeyPair
d_isKeyPair_1406 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 -> ()
d_isKeyPair_1406 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.isNativeScript
d_isNativeScript_1408 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_1408 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.isP1Script
d_isP1Script_1410 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_1410 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.isP1Script?
d_isP1Script'63'_1412 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_1412 ~v0 = du_isP1Script'63'_1412
du_isP1Script'63'_1412 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_1412
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP1Script'63'_410
-- Ledger.Conway.Foreign.ExternalStructures._.isP2Script
d_isP2Script_1414 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_1414 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.isP2Script?
d_isP2Script'63'_1416 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_1416 ~v0 = du_isP2Script'63'_1416
du_isP2Script'63'_1416 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_1416
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP2Script'63'_424
-- Ledger.Conway.Foreign.ExternalStructures._.isScript
d_isScript_1418 a0 a1 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.isScriptAddr
d_isScriptAddr_1420 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1420 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.isScriptObj
d_isScriptObj_1422 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
d_isScriptObj_1422 ~v0 = du_isScriptObj_1422
du_isScriptObj_1422 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
du_isScriptObj_1422
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_56
-- Ledger.Conway.Foreign.ExternalStructures._.isScriptRewardAddress
d_isScriptRewardAddress_1424 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  ()
d_isScriptRewardAddress_1424 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.isSigned
d_isSigned_1426 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer -> Integer -> ()
d_isSigned_1426 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.isSigned-correct
d_isSigned'45'correct_1428 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isSigned'45'correct_1428 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.isVKey
d_isVKey_1430 a0 a1 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.isVKeyAddr
d_isVKeyAddr_1432 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1432 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.khs
d_khs_1434 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_1434 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.language
d_language_1436 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSPlutusScript_328 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.T_HSLanguage_10
d_language_1436 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_276
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.languageCostModels
d_languageCostModels_1438 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_436 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_1438 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_440
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.lookupScriptHash
d_lookupScriptHash_1440 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_1440 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_lookupScriptHash_3732
      (coe d_HSTransactionStructure_682 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.monoid
d_monoid_1444 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_1444 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_monoid_1066
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2516
                  (coe v1)))))
-- Ledger.Conway.Foreign.ExternalStructures._.netId
d_netId_1446 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_netId_1446 ~v0 = du_netId_1446
du_netId_1446 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
du_netId_1446
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_254
-- Ledger.Conway.Foreign.ExternalStructures._.p1s
d_p1s_1448 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104
d_p1s_1448 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_306
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.paramsWF-elim
d_paramsWF'45'elim_1450 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_1450 ~v0 = du_paramsWF'45'elim_1450
du_paramsWF'45'elim_1450 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_1450 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_paramsWF'45'elim_562
      v2
-- Ledger.Conway.Foreign.ExternalStructures._.paramsWellFormed
d_paramsWellFormed_1452 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  ()
d_paramsWellFormed_1452 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.payCred
d_payCred_1454 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_payCred_1454 ~v0 = du_payCred_1454
du_payCred_1454 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_payCred_1454
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_250
-- Ledger.Conway.Foreign.ExternalStructures._.pkk
d_pkk_1456 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_1456 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.policies
d_policies_1458 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> [Integer]
d_policies_1458 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2516
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.positivePParams
d_positivePParams_1460 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  [Integer]
d_positivePParams_1460 ~v0 = du_positivePParams_1460
du_positivePParams_1460 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  [Integer]
du_positivePParams_1460
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_positivePParams_472
-- Ledger.Conway.Foreign.ExternalStructures._.ppUpd
d_ppUpd_1462 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438
d_ppUpd_1462 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2498
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.ppWF?
d_ppWF'63'_1464 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1464 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1462
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2498
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.ppdWellFormed
d_ppdWellFormed_1466 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  ()
d_ppdWellFormed_1466 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.preoEpoch
d_preoEpoch_1468 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_1468 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_110
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.proposedCC
d_proposedCC_1470 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_1470 ~v0 = du_proposedCC_1470
du_proposedCC_1470 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_proposedCC_1470
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_proposedCC_1434
-- Ledger.Conway.Foreign.ExternalStructures._.ps
d_ps_1472 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128
d_ps_1472 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.rawMonoid
d_rawMonoid_1474 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_1474 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2516
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
            (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v2))))
-- Ledger.Conway.Foreign.ExternalStructures._.refScripts
d_refScripts_1476 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_1476 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refScripts_3674
      (coe d_HSTransactionStructure_682 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.scriptOuts
d_scriptOuts_1478 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOuts_1478 ~v0 = du_scriptOuts_1478
du_scriptOuts_1478 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_scriptOuts_1478
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_scriptOuts_3660
-- Ledger.Conway.Foreign.ExternalStructures._.scriptStructure
d_scriptStructure_1480 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280
d_scriptStructure_1480 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_HSScriptStructure_372
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.sign
d_sign_1482 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer
d_sign_1482 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v2))))
-- Ledger.Conway.Foreign.ExternalStructures._.size
d_size_1484 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_size_1484 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2516
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.stakeCred
d_stakeCred_1486 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stakeCred_1486 ~v0 = du_stakeCred_1486
du_stakeCred_1486 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_stakeCred_1486
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_stakeCred_252
-- Ledger.Conway.Foreign.ExternalStructures._.sucᵉ
d_suc'7497'_1488 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_suc'7497'_1488 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_suc'7497'_98
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.sumᵛ
d_sum'7515'_1490 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] -> Integer
d_sum'7515'_1490 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2516
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.toP1Script
d_toP1Script_1492 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSTimelock_302
d_toP1Script_1492 ~v0 = du_toP1Script_1492
du_toP1Script_1492 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSTimelock_302
du_toP1Script_1492
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_418
-- Ledger.Conway.Foreign.ExternalStructures._.toP2Script
d_toP2Script_1494 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSPlutusScript_328
d_toP2Script_1494 ~v0 = du_toP2Script_1494
du_toP2Script_1494 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSPlutusScript_328
du_toP2Script_1494
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP2Script_430
-- Ledger.Conway.Foreign.ExternalStructures._.tokenAlgebra
d_tokenAlgebra_1496 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14
d_tokenAlgebra_1496 ~v0 = du_tokenAlgebra_1496
du_tokenAlgebra_1496 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14
du_tokenAlgebra_1496
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Coin.du_Coin'45'TokenAlgebra_132
-- Ledger.Conway.Foreign.ExternalStructures._.txInsScript
d_txInsScript_1498 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txInsScript_1498 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txInsScript_3668
      (coe d_HSTransactionStructure_682 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.txInsVKey
d_txInsVKey_1500 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txInsVKey_1500 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txInsVKey_3654
      (coe d_HSTransactionStructure_682 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.txOutHash
d_txOutHash_1502 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_1502 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3640
      (coe d_HSTransactionStructure_682 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.txidBytes
d_txidBytes_1504 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_txidBytes_1504 ~v0 v1 = du_txidBytes_1504 v1
du_txidBytes_1504 :: Integer -> Integer
du_txidBytes_1504 v0 = coe v0
-- Ledger.Conway.Foreign.ExternalStructures._.txscripts
d_txscripts_1506 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_1506 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txscripts_3722
      (coe d_HSTransactionStructure_682 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.updateGroups
d_updateGroups_1508 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_206]
d_updateGroups_1508 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1456
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2498
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.validP1Script
d_validP1Script_1516 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSTimelock_302 ->
  ()
d_validP1Script_1516 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.validPlutusScript
d_validPlutusScript_1518 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSPlutusScript_328 ->
  ()
d_validPlutusScript_1518 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ε
d_ε_1520 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_ε_1520 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Class.Monoid.Core.d_ε_20
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2516
                  (coe v1)))))
-- Ledger.Conway.Foreign.ExternalStructures._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1522 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1522 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ℕEpochStructure
d_ℕEpochStructure_1524 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_ℕEpochStructure_1524 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕEpochStructure_356
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.ℕtoEpoch
d_ℕtoEpoch_1526 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_ℕtoEpoch_1526 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕtoEpoch_274
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.≤-predᵉ
d_'8804''45'pred'7497'_1528 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'pred'7497'_1528 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'8804''45'pred'7497'_126
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.≥ᵉ-Dec
d_'8805''7497''45'Dec_1530 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_1530 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_'8805''7497''45'Dec_240
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.Acnt.reserves
d_reserves_1540 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188 ->
  Integer
d_reserves_1540 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_196
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.Acnt.treasury
d_treasury_1542 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188 ->
  Integer
d_treasury_1542 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_194
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.Anchor.hash
d_hash_1546 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_994 ->
  Integer
d_hash_1546 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_hash_1002
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.Anchor.url
d_url_1548 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_994 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_1548 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_url_1000
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.BaseAddr.net
d_net_1552 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_72 ->
  Integer
d_net_1552 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_80 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.BaseAddr.pay
d_pay_1554 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_72 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1554 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_82 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.BaseAddr.stake
d_stake_1556 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_72 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1556 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_84 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.BootstrapAddr.attrsSize
d_attrsSize_1560 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_88 ->
  Integer
d_attrsSize_1560 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_100
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.BootstrapAddr.net
d_net_1562 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_88 ->
  Integer
d_net_1562 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_96 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.BootstrapAddr.pay
d_pay_1564 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_88 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1564 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_98 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DrepThresholds.P1
d_P1_1574 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_1574 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P1_240 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DrepThresholds.P2a
d_P2a_1576 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_1576 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2a_242 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DrepThresholds.P2b
d_P2b_1578 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_1578 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2b_244 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DrepThresholds.P3
d_P3_1580 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_1580 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P3_246 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DrepThresholds.P4
d_P4_1582 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_1582 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P4_248 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DrepThresholds.P5a
d_P5a_1584 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_1584 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5a_250 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DrepThresholds.P5b
d_P5b_1586 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_1586 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5b_252 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DrepThresholds.P5c
d_P5c_1588 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_1588 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5c_254 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DrepThresholds.P5d
d_P5d_1590 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_1590 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5d_256 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DrepThresholds.P6
d_P6_1592 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_1592 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P6_258 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovAction.gaData
d_gaData_1596 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872 ->
  AgdaAny
d_gaData_1596 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_880
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovAction.gaType
d_gaType_1598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838
d_gaType_1598 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_878
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActionState.action
d_action_1602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872
d_action_1602 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1132
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActionState.expiresIn
d_expiresIn_1604 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  Integer
d_expiresIn_1604 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_expiresIn_1130
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActionState.prevAction
d_prevAction_1606 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  AgdaAny
d_prevAction_1606 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1134
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActionState.returnAddr
d_returnAddr_1608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_returnAddr_1608 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1128
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActionState.votes
d_votes_1610 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_1026
d_votes_1610 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1126
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.==-GovAction
d_'61''61''45'GovAction_1630 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872 ->
  Bool
d_'61''61''45'GovAction_1630 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovAction_942
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.==-GovActionData
d_'61''61''45'GovActionData_1632 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838 ->
  AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_1632 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovActionData_924
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.==-GovProposal
d_'61''61''45'GovProposal_1634 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1086 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1086 ->
  Bool
d_'61''61''45'GovProposal_1634 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovProposal_1326
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.==-Set
d_'61''61''45'Set_1636 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_1636 ~v0 = du_'61''61''45'Set_1636
du_'61''61''45'Set_1636 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
du_'61''61''45'Set_1636 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_'61''61''45'Set_912
      v1 v2 v3
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.Anchor
d_Anchor_1638 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.DReps
d_DReps_1648 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_DReps_1648 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.DRepsOf
d_DRepsOf_1650 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1444 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1650 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1452
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.DecEq-Anchor
d_DecEq'45'Anchor_1652 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_1652 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'Anchor_1218
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.DecEq-GovActionType
d_DecEq'45'GovActionType_1654 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_1654 ~v0 = du_DecEq'45'GovActionType_1654
du_DecEq'45'GovActionType_1654 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_1654
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovActionType_906
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.DecEq-GovRole
d_DecEq'45'GovRole_1656 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_1656 ~v0 = du_DecEq'45'GovRole_1656
du_DecEq'45'GovRole_1656 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_1656
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovRole_1212
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.DecEq-GovVoter
d_DecEq'45'GovVoter_1658 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_1658 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'GovVoter_1220
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.DecEq-NeedsHash
d_DecEq'45'NeedsHash_1660 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_1660 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'NeedsHash_1324
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.DecEq-VDeleg
d_DecEq'45'VDeleg_1662 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_1662 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1216
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.DecEq-Vote
d_DecEq'45'Vote_1664 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_1664 ~v0 = du_DecEq'45'Vote_1664
du_DecEq'45'Vote_1664 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_1664
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'Vote_1214
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovAction
d_GovAction_1666 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovActionData
d_GovActionData_1670 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838 ->
  ()
d_GovActionData_1670 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovActionID
d_GovActionID_1672 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_GovActionID_1672 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovActionOf
d_GovActionOf_1674 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_886 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872
d_GovActionOf_1674 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionOf_892
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovActionState
d_GovActionState_1676 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovActionType
d_GovActionType_1680 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovActionTypeOf
d_GovActionTypeOf_1682 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_856 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838
d_GovActionTypeOf_1682 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionTypeOf_862
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovProposal
d_GovProposal_1684 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovRole
d_GovRole_1688 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovRoleCredential
d_GovRoleCredential_1690 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_826 ->
  ()
d_GovRoleCredential_1690 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovVote
d_GovVote_1692 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovVoter
d_GovVoter_1696 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovVoterOf
d_GovVoterOf_1700 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1142 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_982
d_GovVoterOf_1700 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovVoterOf_1150
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovVotes
d_GovVotes_1702 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_1706 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_1706 ~v0
  = du_HasCast'45'GovAction'45'Sigma_1706
du_HasCast'45'GovAction'45'Sigma_1706 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_1706
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_902
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasCast-GovVote
d_HasCast'45'GovVote_1708 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_1708 ~v0 = du_HasCast'45'GovVote_1708
du_HasCast'45'GovVote_1708 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_1708
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovVote_1318
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasCast-HashProtected
d_HasCast'45'HashProtected_1710 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_1710 ~v0
  = du_HasCast'45'HashProtected_1710
du_HasCast'45'HashProtected_1710 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_1710 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1080
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_1712 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_1712 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_1712
du_HasCast'45'HashProtected'45'MaybeScriptHash_1712 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_1712
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1082
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasDReps
d_HasDReps_1714 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasGovAction
d_HasGovAction_1718 a0 a1 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_1722 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_886
d_HasGovAction'45'GovActionState_1722 ~v0
  = du_HasGovAction'45'GovActionState_1722
du_HasGovAction'45'GovActionState_1722 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_886
du_HasGovAction'45'GovActionState_1722
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1206
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_1724 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_886
d_HasGovAction'45'GovProposal_1724 ~v0
  = du_HasGovAction'45'GovProposal_1724
du_HasGovAction'45'GovProposal_1724 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_886
du_HasGovAction'45'GovProposal_1724
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1204
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasGovActionType
d_HasGovActionType_1726 a0 a1 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_1730 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_856
d_HasGovActionType'45'GovAction_1730 ~v0
  = du_HasGovActionType'45'GovAction_1730
du_HasGovActionType'45'GovAction_1730 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_856
du_HasGovActionType'45'GovAction_1730
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_900
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_1732 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_856
d_HasGovActionType'45'GovActionState_1732 ~v0
  = du_HasGovActionType'45'GovActionState_1732
du_HasGovActionType'45'GovActionState_1732 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_856
du_HasGovActionType'45'GovActionState_1732
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1210
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_1734 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_856
d_HasGovActionType'45'GovProposal_1734 ~v0
  = du_HasGovActionType'45'GovProposal_1734
du_HasGovActionType'45'GovProposal_1734 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_856
du_HasGovActionType'45'GovProposal_1734
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1208
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasGovVoter
d_HasGovVoter_1736 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_1740 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1142
d_HasGovVoter'45'GovVote_1740 ~v0 = du_HasGovVoter'45'GovVote_1740
du_HasGovVoter'45'GovVote_1740 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1142
du_HasGovVoter'45'GovVote_1740
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1198
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasPolicy
d_HasPolicy_1742 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_1746 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1182
d_HasPolicy'45'GovProposal_1746 ~v0
  = du_HasPolicy'45'GovProposal_1746
du_HasPolicy'45'GovProposal_1746 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1182
du_HasPolicy'45'GovProposal_1746
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1202
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasVote
d_HasVote_1748 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasVote-GovVote
d_HasVote'45'GovVote_1752 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1162
d_HasVote'45'GovVote_1752 ~v0 = du_HasVote'45'GovVote_1752
du_HasVote'45'GovVote_1752 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1162
du_HasVote'45'GovVote_1752
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasVote'45'GovVote_1200
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasVoteDelegs
d_HasVoteDelegs_1754 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HashProtected
d_HashProtected_1758 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () -> ()
d_HashProtected_1758 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.NeedsHash
d_NeedsHash_1762 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838 ->
  ()
d_NeedsHash_1762 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.Policy
d_Policy_1768 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Policy_1768 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.PolicyOf
d_PolicyOf_1770 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1182 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_1770 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_PolicyOf_1190
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.Show-GovRole
d_Show'45'GovRole_1774 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_1774 ~v0 = du_Show'45'GovRole_1774
du_Show'45'GovRole_1774 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'GovRole_1774
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_Show'45'GovRole_834
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.Show-VDeleg
d_Show'45'VDeleg_1776 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_1776 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_Show'45'VDeleg_1320
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.VDeleg
d_VDeleg_1784 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.Vote
d_Vote_1786 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.VoteDelegs
d_VoteDelegs_1788 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VoteDelegs_1788 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.VoteDelegsOf
d_VoteDelegsOf_1790 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1056 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_1064
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.VoteOf
d_VoteOf_1792 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1162 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_974
d_VoteOf_1792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteOf_1170
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.activeDRepsOf
d_activeDRepsOf_1796 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1444 ->
  AgdaAny -> Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_1796 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (\ v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_activeDRepsOf_1470
           (coe
              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
              (coe v1))
           v3 v4 v5)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.activeInEpoch
d_activeInEpoch_1798 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_1798 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.gaData
d_gaData_1800 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872 ->
  AgdaAny
d_gaData_1800 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_880
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.gaType
d_gaType_1802 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838
d_gaType_1802 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_878
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.govVoterCredential
d_govVoterCredential_1804 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_982 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_1804 ~v0 = du_govVoterCredential_1804
du_govVoterCredential_1804 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_982 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_govVoterCredential_1804
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_govVoterCredential_1426
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.isGovVoterDRep
d_isGovVoterDRep_1806 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_982 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_1806 ~v0 = du_isGovVoterDRep_1806
du_isGovVoterDRep_1806 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_982 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_isGovVoterDRep_1806
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_isGovVoterDRep_1422
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.proposedCC
d_proposedCC_1810 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_1810 ~v0 = du_proposedCC_1810
du_proposedCC_1810 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_proposedCC_1810
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_proposedCC_1434
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovProposal.action
d_action_1826 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1086 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872
d_action_1826 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1100
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovProposal.anchor
d_anchor_1828 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1086 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_994
d_anchor_1828 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_1110
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovProposal.deposit
d_deposit_1830 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1086 ->
  Integer
d_deposit_1830 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_deposit_1106
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovProposal.policy
d_policy_1832 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1086 ->
  Maybe Integer
d_policy_1832 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_policy_1104
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovProposal.prevAction
d_prevAction_1834 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1086 ->
  AgdaAny
d_prevAction_1834 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1102
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovProposal.returnAddr
d_returnAddr_1836 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1086 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_returnAddr_1836 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1108
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovVote.anchor
d_anchor_1848 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1006 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_994
d_anchor_1848 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_1022
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovVote.gid
d_gid_1850 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1850 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gid_1016
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovVote.vote
d_vote_1852 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1006 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_974
d_vote_1852 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_vote_1020
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovVote.voter
d_voter_1854 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1006 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_982
d_voter_1854 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_voter_1018
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovVoter.gvCredential
d_gvCredential_1858 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_982 ->
  AgdaAny
d_gvCredential_1858 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvCredential_990
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovVoter.gvRole
d_gvRole_1860 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_982 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_826
d_gvRole_1860 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvRole_988
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovVotes.gvCC
d_gvCC_1864 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_1026 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvCC_1864 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvCC_1034
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovVotes.gvDRep
d_gvDRep_1866 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_1026 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvDRep_1866 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvDRep_1036
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovVotes.gvSPO
d_gvSPO_1868 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_1026 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvSPO_1868 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvSPO_1038
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasDReps.DRepsOf
d_DRepsOf_1872 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1444 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1872 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1452
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasGovAction.GovActionOf
d_GovActionOf_1876 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_886 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872
d_GovActionOf_1876 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionOf_892
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasGovActionType.GovActionTypeOf
d_GovActionTypeOf_1880 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_856 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838
d_GovActionTypeOf_1880 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionTypeOf_862
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasGovVoter.GovVoterOf
d_GovVoterOf_1884 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1142 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_982
d_GovVoterOf_1884 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovVoterOf_1150
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasPolicy.PolicyOf
d_PolicyOf_1888 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1182 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_1888 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_PolicyOf_1190
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasVote.VoteOf
d_VoteOf_1892 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1162 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_974
d_VoteOf_1892 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteOf_1170
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasVoteDelegs.VoteDelegsOf
d_VoteDelegsOf_1896 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1056 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1896 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_1064
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1916 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1916 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1504
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovParams.UpdateT
d_UpdateT_1918 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  ()
d_UpdateT_1918 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.GovParams.applyUpdate
d_applyUpdate_1920 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_applyUpdate_1920 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1454
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.GovParams.ppUpd
d_ppUpd_1922 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438
d_ppUpd_1922 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovParams.ppWF?
d_ppWF'63'_1924 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1924 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1462
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.GovParams.ppdWellFormed
d_ppdWellFormed_1926 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  AgdaAny -> ()
d_ppdWellFormed_1926 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.GovParams.updateGroups
d_updateGroups_1928 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_206]
d_updateGroups_1928 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1456
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.HasAttrSize.AttrSizeOf
d_AttrSizeOf_1932 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_202 ->
  AgdaAny -> Integer
d_AttrSizeOf_1932 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_210
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasCCMaxTermLength.CCMaxTermLengthOf
d_CCMaxTermLengthOf_1936 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_456 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_1936 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_464
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasCredential.CredentialOf
d_CredentialOf_1940 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_1940 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasDCerts.DCertsOf
d_DCertsOf_1944 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasDCerts_3514 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1338]
d_DCertsOf_1944 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DCertsOf_3522
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasGovProposals.GovProposalsOf
d_GovProposalsOf_1948 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovProposals_3534 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1086]
d_GovProposalsOf_1948 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_GovProposalsOf_3542
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasMaybeNetworkId.MaybeNetworkIdOf
d_MaybeNetworkIdOf_1952 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_162 ->
  AgdaAny -> Maybe Integer
d_MaybeNetworkIdOf_1952 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_170
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasNetworkId.NetworkIdOf
d_NetworkIdOf_1956 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_142 ->
  AgdaAny -> Integer
d_NetworkIdOf_1956 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_150
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasPParams.PParamsOf
d_PParamsOf_1960 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_PParamsOf_1960 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_444
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasRewardAddress.RewardAddressOf
d_RewardAddressOf_1964 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_122 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_RewardAddressOf_1964 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_130
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasTxBody.TxBodyOf
d_TxBodyOf_1968 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxBody_3494 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414
d_TxBodyOf_1968 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxBodyOf_3502
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasTxId.TxIdOf
d_TxIdOf_1972 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxId_3554 ->
  AgdaAny -> Integer
d_TxIdOf_1972 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxIdOf_3562
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasUTxO.UTxOOf
d_UTxOOf_1976 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3398 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_1976 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3406
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasWithdrawals.WithdrawalsOf
d_WithdrawalsOf_1980 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_182 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_1980 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_190
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidHomomorphism.homo
d_homo_1988 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1988 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1990 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_1990 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1992 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1992 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1994 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1994 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidHomomorphism.cong
d_cong_1996 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1996 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidIsomorphism.homo
d_homo_2000 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2000 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidIsomorphism.injective
d_injective_2002 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_2002 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2004 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2004 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2006 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_2006 ~v0 = du_isMagmaIsomorphism_2006
du_isMagmaIsomorphism_2006 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_2006 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2008 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2008 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_2008 v2
du_isMagmaMonomorphism_2008 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2008 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2010 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2010 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2012 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_2012 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2014 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2014 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
               (coe v0))))
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_2016 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_2016 ~v0 ~v1 v2 = du_isRelIsomorphism_2016 v2
du_isRelIsomorphism_2016 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_2016 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2018 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2018 ~v0 ~v1 v2 = du_isRelMonomorphism_2018 v2
du_isRelMonomorphism_2018 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2018 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidIsomorphism.surjective
d_surjective_2020 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2020 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2022 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2022 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidIsomorphism.cong
d_cong_2024 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2024 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidMonomorphism.homo
d_homo_2028 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2028 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidMonomorphism.injective
d_injective_2030 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_2030 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2032 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2032 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2034 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2034 ~v0 = du_isMagmaMonomorphism_2034
du_isMagmaMonomorphism_2034 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2034 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2036 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2036 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2038 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2038 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2040 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2040 ~v0 ~v1 v2 = du_isRelMonomorphism_2040 v2
du_isRelMonomorphism_2040 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2040 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2042 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2042 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidMonomorphism.cong
d_cong_2044 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2044 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.LanguageCostModels.languageCostModels
d_languageCostModels_2048 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_436 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_2048 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_440
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_2052 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2052 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_120
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_2054 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2054 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_124
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_2056 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_2056 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_122
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.P1ScriptStructure.P1Script
d_P1Script_2058 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104 ->
  ()
d_P1Script_2058 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.P1ScriptStructure.validP1Script
d_validP1Script_2060 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_2060 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.Emax
d_Emax_2076 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_Emax_2076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_402
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.a
d_a_2078 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_a_2078 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_374 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.a0
d_a0_2080 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2080 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_406 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.b
d_b_2082 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_b_2082 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_376 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.ccMaxTermLength
d_ccMaxTermLength_2084 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_ccMaxTermLength_2084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_418
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.ccMinSize
d_ccMinSize_2086 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_ccMinSize_2086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_416
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_2088 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_coinsPerUTxOByte_2088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_386
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.collateralPercentage
d_collateralPercentage_2090 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_collateralPercentage_2090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_408
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.costmdls
d_costmdls_2092 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_costmdls_2092 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.du_costmdls_428
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.costmdlsAssoc
d_costmdlsAssoc_2094 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_436
d_costmdlsAssoc_2094 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdlsAssoc_410
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.drepActivity
d_drepActivity_2096 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_drepActivity_2096 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_426
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.drepDeposit
d_drepDeposit_2098 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_drepDeposit_2098 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_424
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.drepThresholds
d_drepThresholds_2100 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218
d_drepThresholds_2100 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_414
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.govActionDeposit
d_govActionDeposit_2102 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_govActionDeposit_2102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_422
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.govActionLifetime
d_govActionLifetime_2104 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_govActionLifetime_2104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_420
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.keyDeposit
d_keyDeposit_2106 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_keyDeposit_2106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_378
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.maxBlockExUnits
d_maxBlockExUnits_2108 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_2108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_366
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.maxBlockSize
d_maxBlockSize_2110 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxBlockSize_2110 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_358
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.maxCollateralInputs
d_maxCollateralInputs_2112 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxCollateralInputs_2112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_370
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.maxHeaderSize
d_maxHeaderSize_2114 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxHeaderSize_2114 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_362
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2116 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxRefScriptSizePerBlock_2116 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_394
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2118 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxRefScriptSizePerTx_2118 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_392
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.maxTxExUnits
d_maxTxExUnits_2120 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_2120 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_364
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.maxTxSize
d_maxTxSize_2122 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxTxSize_2122 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_360
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.maxValSize
d_maxValSize_2124 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxValSize_2124 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_368
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2126 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2126 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_390
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.minUTxOValue
d_minUTxOValue_2128 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_minUTxOValue_2128 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_400
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.monetaryExpansion
d_monetaryExpansion_2130 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_382
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.nopt
d_nopt_2132 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_nopt_2132 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_404
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.poolDeposit
d_poolDeposit_2134 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_poolDeposit_2134 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_380
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.poolThresholds
d_poolThresholds_2136 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262
d_poolThresholds_2136 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_412
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.prices
d_prices_2138 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_2138 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_388
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.pv
d_pv_2140 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2140 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_372 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_2142 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2142 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_398
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.refScriptCostStride
d_refScriptCostStride_2144 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2144 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_396
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.treasuryCut
d_treasuryCut_2146 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2146 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_384
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsDiff.UpdateT
d_UpdateT_2150 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438 ->
  ()
d_UpdateT_2150 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsDiff.applyUpdate
d_applyUpdate_2152 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_applyUpdate_2152 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1454
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsDiff.ppWF?
d_ppWF'63'_2154 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1462
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_2156 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438 ->
  AgdaAny -> ()
d_ppdWellFormed_2156 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsDiff.updateGroups
d_updateGroups_2158 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_206]
d_updateGroups_2158 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1456
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate._?↗_
d__'63''8599'__2162 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__2162 ~v0 = du__'63''8599'__2162
du__'63''8599'__2162 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__2162 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du__'63''8599'__1224
      v1 v2
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate._∪ˡᶜᵐ_
d__'8746''737''7580''7504'__2164 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_436 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_436 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_436
d__'8746''737''7580''7504'__2164 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Script.Base.C_mkLanguageCostModels_442
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                 (coe
                    MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1516
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_228
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
                             (coe v1))))
                    (coe
                       MAlonzo.Code.Data.List.Base.du__'43''43'__32
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_440
                          (coe v2))
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_440
                          (coe v3)))))))
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_2166 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_2166 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamsUpdate_1436
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
            (coe v1))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_2168 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_2172 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_applyPParamsUpdate_2172 v0
  = let v1 = d_HSTransactionStructure_682 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.du_applyPParamsUpdate_1278
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_2174 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_206]
d_modifiedUpdateGroups_2174 ~v0 = du_modifiedUpdateGroups_2174
du_modifiedUpdateGroups_2174 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_206]
du_modifiedUpdateGroups_2174
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiedUpdateGroups_1208
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_2176 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
d_modifiesEconomicGroup_2176 ~v0 = du_modifiesEconomicGroup_2176
du_modifiesEconomicGroup_2176 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
du_modifiesEconomicGroup_2176
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesEconomicGroup_904
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_2178 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
d_modifiesGovernanceGroup_2178 ~v0
  = du_modifiesGovernanceGroup_2178
du_modifiesGovernanceGroup_2178 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
du_modifiesGovernanceGroup_2178
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesGovernanceGroup_1056
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_2180 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
d_modifiesNetworkGroup_2180 ~v0 = du_modifiesNetworkGroup_2180
du_modifiesNetworkGroup_2180 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
du_modifiesNetworkGroup_2180
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesNetworkGroup_828
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_2182 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
d_modifiesSecurityGroup_2182 ~v0 = du_modifiesSecurityGroup_2182
du_modifiesSecurityGroup_2182 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
du_modifiesSecurityGroup_2182
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesSecurityGroup_1132
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_2184 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
d_modifiesTechnicalGroup_2184 ~v0 = du_modifiesTechnicalGroup_2184
du_modifiesTechnicalGroup_2184 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
du_modifiesTechnicalGroup_2184
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesTechnicalGroup_980
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_2186 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  ()
d_paramsUpdateWellFormed_2186 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_2188 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_2188 v0
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__106
      (coe
         MAlonzo.Code.Class.Decidable.Core.d_dec_16
         (coe
            MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
            (coe
               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
               (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
            (coe
               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe (0 :: Integer)))
            (coe
               MAlonzo.Code.Axiom.Set.du_fromList_456
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_670
                     (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_672
                        (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_674
                           (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_676
                              (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_698
                                 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_692
                                    (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_720
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_738
                                          (coe v0))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_728
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_730
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_732
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
         (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
         (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.≡-update
d_'8801''45'update_2190 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'update_2190 ~v0 = du_'8801''45'update_2190
du_'8801''45'update_2190 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8801''45'update_2190 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_'8801''45'update_1238
      v1
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_2194 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_Emax_2194 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_716
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.a
d_a_2196 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_a_2196 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_686 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.a0
d_a0_2198 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2198 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_714 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.b
d_b_2200 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_b_2200 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_688 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_2202 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_ccMaxTermLength_2202 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_738
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_2204 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_ccMinSize_2204 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_736
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_2206 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_coinsPerUTxOByte_2206 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_698
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_2208 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_collateralPercentage_2208 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_720
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_2210 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_436
d_costmdls_2210 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_722
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_2212 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_drepActivity_2212 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_734
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_2214 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_drepDeposit_2214 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_732
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_2216 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218
d_drepThresholds_2216 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_724
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_2218 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_govActionDeposit_2218 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_730
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_2220 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_govActionLifetime_2220 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_728
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_2222 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_keyDeposit_2222 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_690
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_2224 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_2224 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_682
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_2226 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxBlockSize_2226 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_670
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_2228 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxCollateralInputs_2228 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_678
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_2230 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxHeaderSize_2230 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_674
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2232 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_2232 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_706
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2234 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxRefScriptSizePerTx_2234 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_704
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_2236 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_2236 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_680
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_2238 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxTxSize_2238 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_672
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_2240 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxValSize_2240 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_676
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2242 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2242 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_702
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_2244 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_minUTxOValue_2244 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_712
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_2246 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2246 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_694
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_2248 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_nopt_2248 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_718
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_2250 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_poolDeposit_2250 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_692
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_2252 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262
d_poolThresholds_2252 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_726
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.prices
d_prices_2254 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_2254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_700
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.pv
d_pv_2256 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2256 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_684 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_2258 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2258 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_710
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_2260 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2260 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_708
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_2262 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_696
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure._≥ᵉ_
d__'8805''7497'__2266 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2266 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.CostModel
d_CostModel_2268 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_CostModel_2268 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.T
d_T_2270 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_T_2270 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.THash
d_THash_2272 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_THash_2272 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.Dataʰ
d_Data'688'_2274 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_2274 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.Datum
d_Datum_2276 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_Datum_2276 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2278 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2278 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_274
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_2280 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2280 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_244
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_2282 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2282 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_230
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2284 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2284 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_242
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2286 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2286 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_232
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_2288 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_228
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.DecEq-T
d_DecEq'45'T_2290 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2290 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_2292 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2292 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2294 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2294 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_224
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.ExUnits
d_ExUnits_2296 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_ExUnits_2296 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2298 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_2298 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_226
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.LangDepView
d_LangDepView_2300 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_LangDepView_2300 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.Language
d_Language_2302 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_Language_2302 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.PlutusScript
d_PlutusScript_2304 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_PlutusScript_2304 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.PlutusV1
d_PlutusV1_2306 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny
d_PlutusV1_2306 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_218
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.PlutusV2
d_PlutusV2_2308 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny
d_PlutusV2_2308 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_220
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.PlutusV3
d_PlutusV3_2310 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny
d_PlutusV3_2310 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_222
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.Prices
d_Prices_2312 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_Prices_2312 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.Redeemer
d_Redeemer_2314 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_Redeemer_2314 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_2316 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2316 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_236
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_2318 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2318 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_246
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.Show-Language
d_Show'45'Language_2320 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_2320 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Language_234
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.Show-Prices
d_Show'45'Prices_2322 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2322 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_248
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.Show-THash
d_Show'45'THash_2324 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2324 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.T-Hashable
d_T'45'Hashable_2326 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_2326 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.T-isHashable
d_T'45'isHashable_2328 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_2328 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.language
d_language_2330 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny -> AgdaAny
d_language_2330 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_276
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.validPlutusScript
d_validPlutusScript_2332 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2332 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_2334 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_2334 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_'8805''7497''45'Dec_240
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PoolThresholds.Q1
d_Q1_2338 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_2338 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q1_274 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PoolThresholds.Q2a
d_Q2a_2340 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_2340 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2a_276 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PoolThresholds.Q2b
d_Q2b_2342 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_2342 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2b_278 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PoolThresholds.Q4
d_Q4_2344 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_2344 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q4_280 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PoolThresholds.Q5
d_Q5_2346 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_2346 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q5_282 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.RewardAddress.net
d_net_2350 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  Integer
d_net_2350 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_110 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.RewardAddress.stake
d_stake_2352 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_2352 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure._≥ᵉ_
d__'8805''7497'__2356 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2356 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.CostModel
d_CostModel_2358 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_CostModel_2358 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.T
d_T_2360 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_T_2360 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.THash
d_THash_2362 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_THash_2362 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.Dataʰ
d_Data'688'_2364 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_2364 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.Datum
d_Datum_2366 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_Datum_2366 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_2368 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2368 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_120
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_306
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2370 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2370 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_274
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_2372 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2372 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_244
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_2374 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2374 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_230
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2376 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2376 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_242
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2378 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2378 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_232
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_2380 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2380 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_228
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_2382 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_2382 ~v0
  = du_DecEq'45'LanguageCostModels_2382
du_DecEq'45'LanguageCostModels_2382 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'LanguageCostModels_2382
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_DecEq'45'LanguageCostModels_444
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_2384 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_124
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_306
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.DecEq-T
d_DecEq'45'T_2386 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2386 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_2388 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2388 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2390 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2390 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_224
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.ExUnits
d_ExUnits_2392 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_ExUnits_2392 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_2394 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_2394 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_122
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_306
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2396 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_2396 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_226
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_2398 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_2398 ~v0 = du_Hashable'45'Script_2398
du_Hashable'45'Script_2398 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
du_Hashable'45'Script_2398
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_404
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.LangDepView
d_LangDepView_2400 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_LangDepView_2400 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.Language
d_Language_2402 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_Language_2402 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.LanguageCostModels
d_LanguageCostModels_2404 a0 a1 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.P1Script
d_P1Script_2408 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_P1Script_2408 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.PlutusScript
d_PlutusScript_2410 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_PlutusScript_2410 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.PlutusV1
d_PlutusV1_2412 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  AgdaAny
d_PlutusV1_2412 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_218
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.PlutusV2
d_PlutusV2_2414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  AgdaAny
d_PlutusV2_2414 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_220
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.PlutusV3
d_PlutusV3_2416 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  AgdaAny
d_PlutusV3_2416 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_222
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.Prices
d_Prices_2418 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_Prices_2418 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.Redeemer
d_Redeemer_2420 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_Redeemer_2420 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.Script
d_Script_2422 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_Script_2422 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.Show-CostModel
d_Show'45'CostModel_2424 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2424 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_236
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_2426 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2426 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_246
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.Show-Language
d_Show'45'Language_2428 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_2428 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Language_234
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.Show-LanguageCostModels
d_Show'45'LanguageCostModels_2430 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_2430 ~v0
  = du_Show'45'LanguageCostModels_2430
du_Show'45'LanguageCostModels_2430 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'LanguageCostModels_2430
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Show'45'LanguageCostModels_450
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.Show-Prices
d_Show'45'Prices_2432 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2432 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_248
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.Show-THash
d_Show'45'THash_2434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2434 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.T-Hashable
d_T'45'Hashable_2436 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_2436 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.T-isHashable
d_T'45'isHashable_2438 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_2438 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
            (coe v0)))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.getLanguage
d_getLanguage_2440 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_getLanguage_2440 ~v0 = du_getLanguage_2440
du_getLanguage_2440 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_getLanguage_2440
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_getLanguage_432
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_2442 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_2442 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_hashRespectsUnion_326
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.isNativeScript
d_isNativeScript_2444 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_2444 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.isP1Script
d_isP1Script_2446 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_2446 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.isP1Script?
d_isP1Script'63'_2448 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_2448 ~v0 = du_isP1Script'63'_2448
du_isP1Script'63'_2448 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_2448 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP1Script'63'_410
      v1
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.isP2Script
d_isP2Script_2450 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_2450 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.isP2Script?
d_isP2Script'63'_2452 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_2452 ~v0 = du_isP2Script'63'_2452
du_isP2Script'63'_2452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_2452 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP2Script'63'_424
      v1
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.language
d_language_2454 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  AgdaAny -> AgdaAny
d_language_2454 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_276
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.languageCostModels
d_languageCostModels_2456 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_436 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_2456 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_440
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.p1s
d_p1s_2460 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104
d_p1s_2460 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_306
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.ps
d_ps_2462 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128
d_ps_2462 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.toP1Script
d_toP1Script_2464 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_2464 ~v0 = du_toP1Script_2464
du_toP1Script_2464 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_2464 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_418
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.toP2Script
d_toP2Script_2466 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_2466 ~v0 = du_toP2Script_2466
du_toP2Script_2466 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_2466 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP2Script_430
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.validP1Script
d_validP1Script_2468 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_2468 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.validPlutusScript
d_validPlutusScript_2470 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2470 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_2472 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_2472 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_'8805''7497''45'Dec_240
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.LanguageCostModels.languageCostModels
d_languageCostModels_2476 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_436 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_2476 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_440
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra._∙_
d__'8729'__2480 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__2480 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra._≈_
d__'8776'__2482 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__2482 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__2484 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__2484 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_2486 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_2486 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_2488 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_2488 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_2490 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_2494 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_2498 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.Value
d_Value_2502 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  ()
d_Value_2502 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_2504 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_2504 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.addValue
d_addValue_2506 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_2506 ~v0 = du_addValue_2506
du_addValue_2506 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
du_addValue_2506
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.coin
d_coin_2508 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_coin_2508 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_2510 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_2510 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_2512 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_2512 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_2514 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_2514 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.inject
d_inject_2516 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> AgdaAny
d_inject_2516 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.monoid
d_monoid_2518 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_2518 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1066
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.policies
d_policies_2520 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> [Integer]
d_policies_2520 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.rawMonoid
d_rawMonoid_2522 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_2522 v0
  = let v1
          = coe
              MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.size
d_size_2524 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_size_2524 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.sumᵛ
d_sum'7515'_2526 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_2526 ~v0 = du_sum'7515'_2526
du_sum'7515'_2526 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
du_sum'7515'_2526
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.ε
d_ε_2528 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny
d_ε_2528 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_2532 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2532 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2534 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2534 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2536 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2536 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2538 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2538 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_2540 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2540 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_2544 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2544 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_2546 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2546 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2548 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2548 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2550 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_2550 ~v0 = du_isMagmaIsomorphism_2550
du_isMagmaIsomorphism_2550 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_2550 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2552 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2552 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_2552 v2
du_isMagmaMonomorphism_2552 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2552 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2554 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2554 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2556 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_2556 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2558 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2558 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
               (coe v0))))
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_2560 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_2560 ~v0 ~v1 v2 = du_isRelIsomorphism_2560 v2
du_isRelIsomorphism_2560 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_2560 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2562 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2562 ~v0 ~v1 v2 = du_isRelMonomorphism_2562 v2
du_isRelMonomorphism_2562 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2562 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.surjective
d_surjective_2564 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2564 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2566 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2566 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_2568 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2568 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_2572 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2572 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_2574 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2574 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2576 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2576 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2578 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2578 ~v0 = du_isMagmaMonomorphism_2578
du_isMagmaMonomorphism_2578 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2578 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2580 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2580 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2582 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2582 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2584 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2584 ~v0 ~v1 v2 = du_isRelMonomorphism_2584 v2
du_isRelMonomorphism_2584 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2584 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2586 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2586 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_2588 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2588 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Tx.body
d_body_2592 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414
d_body_2592 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3606
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.Tx.isValid
d_isValid_2594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  Bool
d_isValid_2594 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3612
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.Tx.txAD
d_txAD_2596 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  Maybe Integer
d_txAD_2596 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3614
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.Tx.txsize
d_txsize_2598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  Integer
d_txsize_2598 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3610
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.Tx.wits
d_wits_2600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3572
d_wits_2600 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3608
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody.collateralInputs
d_collateralInputs_2604 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_2604 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3456
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody.currentTreasury
d_currentTreasury_2606 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  Maybe Integer
d_currentTreasury_2606 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3480
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody.mint
d_mint_2608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  Integer
d_mint_2608 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3482
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody.refInputs
d_refInputs_2610 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2610 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3454
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody.reqSignerHashes
d_reqSignerHashes_2612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  [Integer]
d_reqSignerHashes_2612 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_reqSignerHashes_3484
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody.scriptIntegrityHash
d_scriptIntegrityHash_2614 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  Maybe Integer
d_scriptIntegrityHash_2614 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptIntegrityHash_3486
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody.txADhash
d_txADhash_2616 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  Maybe Integer
d_txADhash_2616 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_3470
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody.txCerts
d_txCerts_2618 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1338]
d_txCerts_2618 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3462
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody.txDonation
d_txDonation_2620 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  Integer
d_txDonation_2620 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txDonation_3472
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody.txFee
d_txFee_2622 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  Integer
d_txFee_2622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3464
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody.txGovProposals
d_txGovProposals_2624 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1086]
d_txGovProposals_2624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3476
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody.txGovVotes
d_txGovVotes_2626 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1006]
d_txGovVotes_2626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3474
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody.txId
d_txId_2628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  Integer
d_txId_2628 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3460
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody.txIns
d_txIns_2630 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_2630 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3452
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody.txNetworkId
d_txNetworkId_2632 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  Maybe Integer
d_txNetworkId_2632 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3478
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody.txOuts
d_txOuts_2634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_2634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3458
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody.txVldt
d_txVldt_2636 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_2636 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3468
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody.txWithdrawals
d_txWithdrawals_2638 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2638 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3466
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxWitnesses.scripts
d_scripts_2642 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3572 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2642 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scripts_3584
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxWitnesses.scriptsP1
d_scriptsP1_2644 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3572 ->
  [MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSTimelock_302]
d_scriptsP1_2644 ~v0 = du_scriptsP1_2644
du_scriptsP1_2644 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3572 ->
  [MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSTimelock_302]
du_scriptsP1_2644
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_scriptsP1_3590
-- Ledger.Conway.Foreign.ExternalStructures._.TxWitnesses.txdats
d_txdats_2646 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3572 ->
  [Integer]
d_txdats_2646 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3586
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxWitnesses.txrdmrs
d_txrdmrs_2648 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3572 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_2648 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3588
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxWitnesses.vkSigs
d_vkSigs_2650 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3572 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2650 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3582
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2662 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1378 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1446 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1338] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1446 ->
  ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2662 = erased
-- Ledger.Conway.Foreign.ExternalStructures._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__2664 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Foreign.ExternalStructures._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__2666 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Foreign.ExternalStructures._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__2668 a0 a1 a2 a3 a4
  = ()
-- Ledger.Conway.Foreign.ExternalStructures._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__2670 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Foreign.ExternalStructures._._⊢_⇀⦇_,POST-CERT⦈_
d__'8866'_'8640''10631'_'44'POST'45'CERT'10632'__2672 a0 a1 a2 a3
                                                      a4
  = ()
-- Ledger.Conway.Foreign.ExternalStructures._._⊢_⇀⦇_,PRE-CERT⦈_
d__'8866'_'8640''10631'_'44'PRE'45'CERT'10632'__2674 a0 a1 a2 a3 a4
  = ()
-- Ledger.Conway.Foreign.ExternalStructures._.CCHotKeys
d_CCHotKeys_2676 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_CCHotKeys_2676 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.CCHotKeysOf
d_CCHotKeysOf_2678 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1222 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_2678 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CCHotKeysOf_1230
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.CertEnv
d_CertEnv_2690 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.CertState
d_CertState_2694 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.CertStateOf
d_CertStateOf_2698 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1542 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1446
d_CertStateOf_2698 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1550
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DCert
d_DCert_2702 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.DState
d_DState_2712 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.DStateOf
d_DStateOf_2716 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1482 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1402
d_DStateOf_2716 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1490
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-DCert
d_DecEq'45'DCert_2718 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DCert_2718 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DCert_1358
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe d_HSTransactionStructure_682 (coe v0)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_2720 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_2720 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1202
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe d_HSTransactionStructure_682 (coe v0)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-StakePoolParams
d_DecEq'45'StakePoolParams_2722 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'StakePoolParams_2722 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'StakePoolParams_1356
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe d_HSTransactionStructure_682 (coe v0)))
-- Ledger.Conway.Foreign.ExternalStructures._.DelegEnv
d_DelegEnv_2724 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.DepositPurpose
d_DepositPurpose_2728 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.Deposits
d_Deposits_2730 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Deposits_2730 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.DepositsOf
d_DepositsOf_2732 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1186 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2732 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1194
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GState
d_GState_2740 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GStateOf
d_GStateOf_2744 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1522 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1434
d_GStateOf_2744 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1530
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasCCHotKeys
d_HasCCHotKeys_2748 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasCCHotKeys-CertState
d_HasCCHotKeys'45'CertState_2752 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1222
d_HasCCHotKeys'45'CertState_2752 ~v0
  = du_HasCCHotKeys'45'CertState_2752
du_HasCCHotKeys'45'CertState_2752 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1222
du_HasCCHotKeys'45'CertState_2752
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCCHotKeys'45'CertState_1586
-- Ledger.Conway.Foreign.ExternalStructures._.HasCCHotKeys-GState
d_HasCCHotKeys'45'GState_2754 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1222
d_HasCCHotKeys'45'GState_2754 ~v0 = du_HasCCHotKeys'45'GState_2754
du_HasCCHotKeys'45'GState_2754 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1222
du_HasCCHotKeys'45'GState_2754
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCCHotKeys'45'GState_1574
-- Ledger.Conway.Foreign.ExternalStructures._.HasCast-CertEnv
d_HasCast'45'CertEnv_2756 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2756 ~v0 = du_HasCast'45'CertEnv_2756
du_HasCast'45'CertEnv_2756 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2756
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1602
-- Ledger.Conway.Foreign.ExternalStructures._.HasCast-CertState
d_HasCast'45'CertState_2758 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertState_2758 ~v0 = du_HasCast'45'CertState_2758
du_HasCast'45'CertState_2758 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertState_2758
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertState_1610
-- Ledger.Conway.Foreign.ExternalStructures._.HasCast-DState
d_HasCast'45'DState_2760 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DState_2760 ~v0 = du_HasCast'45'DState_2760
du_HasCast'45'DState_2760 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'DState_2760
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DState_1604
-- Ledger.Conway.Foreign.ExternalStructures._.HasCast-DelegEnv
d_HasCast'45'DelegEnv_2762 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DelegEnv_2762 ~v0 = du_HasCast'45'DelegEnv_2762
du_HasCast'45'DelegEnv_2762 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'DelegEnv_2762
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DelegEnv_1612
-- Ledger.Conway.Foreign.ExternalStructures._.HasCast-GState
d_HasCast'45'GState_2764 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GState_2764 ~v0 = du_HasCast'45'GState_2764
du_HasCast'45'GState_2764 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GState_2764
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'GState_1608
-- Ledger.Conway.Foreign.ExternalStructures._.HasCast-PState
d_HasCast'45'PState_2766 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PState_2766 ~v0 = du_HasCast'45'PState_2766
du_HasCast'45'PState_2766 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'PState_2766
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'PState_1606
-- Ledger.Conway.Foreign.ExternalStructures._.HasCertState
d_HasCertState_2768 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasCoin-CertState
d_HasCoin'45'CertState_2772 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'CertState_2772 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_HasCoin'45'CertState_1600
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe d_HSTransactionStructure_682 (coe v0)))
-- Ledger.Conway.Foreign.ExternalStructures._.HasDReps-CertState
d_HasDReps'45'CertState_2774 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1444
d_HasDReps'45'CertState_2774 ~v0 = du_HasDReps'45'CertState_2774
du_HasDReps'45'CertState_2774 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1444
du_HasDReps'45'CertState_2774
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'CertState_1584
-- Ledger.Conway.Foreign.ExternalStructures._.HasDReps-GState
d_HasDReps'45'GState_2776 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1444
d_HasDReps'45'GState_2776 ~v0 = du_HasDReps'45'GState_2776
du_HasDReps'45'GState_2776 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1444
du_HasDReps'45'GState_2776
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'GState_1572
-- Ledger.Conway.Foreign.ExternalStructures._.HasDState
d_HasDState_2778 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasDState-CertState
d_HasDState'45'CertState_2782 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1482
d_HasDState'45'CertState_2782 ~v0 = du_HasDState'45'CertState_2782
du_HasDState'45'CertState_2782 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1482
du_HasDState'45'CertState_2782
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDState'45'CertState_1576
-- Ledger.Conway.Foreign.ExternalStructures._.HasDeposits
d_HasDeposits_2784 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasGState
d_HasGState_2788 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasGState-CertState
d_HasGState'45'CertState_2792 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1522
d_HasGState'45'CertState_2792 ~v0 = du_HasGState'45'CertState_2792
du_HasGState'45'CertState_2792 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1522
du_HasGState'45'CertState_2792
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasGState'45'CertState_1580
-- Ledger.Conway.Foreign.ExternalStructures._.HasPParams-CertEnv
d_HasPParams'45'CertEnv_2794 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
d_HasPParams'45'CertEnv_2794 ~v0 = du_HasPParams'45'CertEnv_2794
du_HasPParams'45'CertEnv_2794 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
du_HasPParams'45'CertEnv_2794
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPParams'45'CertEnv_1558
-- Ledger.Conway.Foreign.ExternalStructures._.HasPState
d_HasPState_2796 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasPState-CertState
d_HasPState'45'CertState_2800 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1502
d_HasPState'45'CertState_2800 ~v0 = du_HasPState'45'CertState_2800
du_HasPState'45'CertState_2800 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1502
du_HasPState'45'CertState_2800
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPState'45'CertState_1578
-- Ledger.Conway.Foreign.ExternalStructures._.HasPools
d_HasPools_2802 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasPools-CertState
d_HasPools'45'CertState_2806 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1238
d_HasPools'45'CertState_2806 ~v0 = du_HasPools'45'CertState_2806
du_HasPools'45'CertState_2806 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1238
du_HasPools'45'CertState_2806
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPools'45'CertState_1588
-- Ledger.Conway.Foreign.ExternalStructures._.HasPools-PState
d_HasPools'45'PState_2808 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1238
d_HasPools'45'PState_2808 ~v0 = du_HasPools'45'PState_2808
du_HasPools'45'PState_2808 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1238
du_HasPools'45'PState_2808
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPools'45'PState_1568
-- Ledger.Conway.Foreign.ExternalStructures._.HasRetiring
d_HasRetiring_2810 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasRetiring-PState
d_HasRetiring'45'PState_2814 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1254
d_HasRetiring'45'PState_2814 ~v0 = du_HasRetiring'45'PState_2814
du_HasRetiring'45'PState_2814 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1254
du_HasRetiring'45'PState_2814
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRetiring'45'PState_1570
-- Ledger.Conway.Foreign.ExternalStructures._.HasRewards
d_HasRewards_2816 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasRewards-CertState
d_HasRewards'45'CertState_2820 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1270
d_HasRewards'45'CertState_2820 ~v0
  = du_HasRewards'45'CertState_2820
du_HasRewards'45'CertState_2820 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1270
du_HasRewards'45'CertState_2820
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1582
-- Ledger.Conway.Foreign.ExternalStructures._.HasRewards-DState
d_HasRewards'45'DState_2822 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1270
d_HasRewards'45'DState_2822 ~v0 = du_HasRewards'45'DState_2822
du_HasRewards'45'DState_2822 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1270
du_HasRewards'45'DState_2822
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'DState_1566
-- Ledger.Conway.Foreign.ExternalStructures._.HasStake
d_HasStake_2824 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasStakeDelegs
d_HasStakeDelegs_2828 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasStakeDelegs-CertState
d_HasStakeDelegs'45'CertState_2832 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1302
d_HasStakeDelegs'45'CertState_2832 ~v0
  = du_HasStakeDelegs'45'CertState_2832
du_HasStakeDelegs'45'CertState_2832 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1302
du_HasStakeDelegs'45'CertState_2832
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasStakeDelegs'45'CertState_1592
-- Ledger.Conway.Foreign.ExternalStructures._.HasStakeDelegs-DState
d_HasStakeDelegs'45'DState_2834 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1302
d_HasStakeDelegs'45'DState_2834 ~v0
  = du_HasStakeDelegs'45'DState_2834
du_HasStakeDelegs'45'DState_2834 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1302
du_HasStakeDelegs'45'DState_2834
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasStakeDelegs'45'DState_1564
-- Ledger.Conway.Foreign.ExternalStructures._.HasVoteDelegs-CertState
d_HasVoteDelegs'45'CertState_2836 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1056
d_HasVoteDelegs'45'CertState_2836 ~v0
  = du_HasVoteDelegs'45'CertState_2836
du_HasVoteDelegs'45'CertState_2836 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1056
du_HasVoteDelegs'45'CertState_2836
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasVoteDelegs'45'CertState_1590
-- Ledger.Conway.Foreign.ExternalStructures._.HasVoteDelegs-DState
d_HasVoteDelegs'45'DState_2838 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1056
d_HasVoteDelegs'45'DState_2838 ~v0
  = du_HasVoteDelegs'45'DState_2838
du_HasVoteDelegs'45'DState_2838 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1056
du_HasVoteDelegs'45'DState_2838
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasVoteDelegs'45'DState_1562
-- Ledger.Conway.Foreign.ExternalStructures._.HasWithdrawals-CertEnv
d_HasWithdrawals'45'CertEnv_2840 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_182
d_HasWithdrawals'45'CertEnv_2840 ~v0
  = du_HasWithdrawals'45'CertEnv_2840
du_HasWithdrawals'45'CertEnv_2840 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_182
du_HasWithdrawals'45'CertEnv_2840
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasWithdrawals'45'CertEnv_1560
-- Ledger.Conway.Foreign.ExternalStructures._.PState
d_PState_2846 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.PStateOf
d_PStateOf_2850 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1502 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1418
d_PStateOf_2850 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1510
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PoolEnv
d_PoolEnv_2854 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_PoolEnv_2854 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Pools
d_Pools_2856 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Pools_2856 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PoolsOf
d_PoolsOf_2858 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1238 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_2858 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1246
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.Retiring
d_Retiring_2860 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Retiring_2860 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.RetiringOf
d_RetiringOf_2862 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1254 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_2862 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RetiringOf_1262
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.Rewards
d_Rewards_2864 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Rewards_2864 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.RewardsOf
d_RewardsOf_2866 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1270 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_2866 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1278
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.Stake
d_Stake_2868 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Stake_2868 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.StakeDelegs
d_StakeDelegs_2870 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_StakeDelegs_2870 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.StakeDelegsOf
d_StakeDelegsOf_2872 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1302 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_2872 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeDelegsOf_1310
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.StakeOf
d_StakeOf_2874 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1286 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_2874 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeOf_1294
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.StakePoolParams
d_StakePoolParams_2876 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.cwitness
d_cwitness_2882 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1338 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_cwitness_2882 ~v0 = du_cwitness_2882
du_cwitness_2882 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1338 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_cwitness_2882
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_cwitness_1360
-- Ledger.Conway.Foreign.ExternalStructures._.isPoolRegistered
d_isPoolRegistered_2890 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1146
d_isPoolRegistered_2890 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_isPoolRegistered_1692
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe d_HSTransactionStructure_682 (coe v0)))
-- Ledger.Conway.Foreign.ExternalStructures._.rewardsBalance
d_rewardsBalance_2900 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1402 ->
  Integer
d_rewardsBalance_2900 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardsBalance_1594
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe d_HSTransactionStructure_682 (coe v0)))
-- Ledger.Conway.Foreign.ExternalStructures._.CertEnv.coldCreds
d_coldCreds_2948 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1378 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_coldCreds_2948 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_coldCreds_1398
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.CertEnv.epoch
d_epoch_2950 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1378 ->
  Integer
d_epoch_2950 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_epoch_1390
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.CertEnv.pp
d_pp_2952 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1378 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pp_2952 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pp_1392 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.CertEnv.votes
d_votes_2954 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1378 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1006]
d_votes_2954 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_votes_1394
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.CertEnv.wdrls
d_wdrls_2956 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1378 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_2956 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_wdrls_1396
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.CertState.dState
d_dState_2960 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1446 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1402
d_dState_2960 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dState_1454
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.CertState.gState
d_gState_2962 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1446 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1434
d_gState_2962 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1458
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.CertState.pState
d_pState_2964 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1446 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1418
d_pState_2964 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pState_1456
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DState.rewards
d_rewards_2986 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1402 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2986 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1414
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DState.stakeDelegs
d_stakeDelegs_2988 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1402 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2988 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1412
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DState.voteDelegs
d_voteDelegs_2990 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1402 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2990 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1410
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DelegEnv.delegatees
d_delegatees_2994 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1462 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_delegatees_2994 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_delegatees_1474
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DelegEnv.pools
d_pools_2996 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1462 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2996 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1472
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DelegEnv.pparams
d_pparams_2998 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1462 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_2998 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pparams_1470
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GState.ccHotKeys
d_ccHotKeys_3012 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1434 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_3012 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_ccHotKeys_1442
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GState.dreps
d_dreps_3014 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1434 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_3014 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dreps_1440
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasCCHotKeys.CCHotKeysOf
d_CCHotKeysOf_3018 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1222 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_3018 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CCHotKeysOf_1230
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasCertState.CertStateOf
d_CertStateOf_3022 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1542 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1446
d_CertStateOf_3022 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1550
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasDState.DStateOf
d_DStateOf_3026 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1482 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1402
d_DStateOf_3026 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1490
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasDeposits.DepositsOf
d_DepositsOf_3030 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1186 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_3030 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1194
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasGState.GStateOf
d_GStateOf_3034 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1522 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1434
d_GStateOf_3034 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1530
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasPState.PStateOf
d_PStateOf_3038 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1502 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1418
d_PStateOf_3038 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1510
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasPools.PoolsOf
d_PoolsOf_3042 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1238 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_3042 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1246
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasRetiring.RetiringOf
d_RetiringOf_3046 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1254 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_3046 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RetiringOf_1262
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasRewards.RewardsOf
d_RewardsOf_3050 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1270 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_3050 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1278
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasStake.StakeOf
d_StakeOf_3054 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1286 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_3054 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeOf_1294
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasStakeDelegs.StakeDelegsOf
d_StakeDelegsOf_3058 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1302 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_3058 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeDelegsOf_1310
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PState.fPools
d_fPools_3062 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1418 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fPools_3062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1428
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PState.pools
d_pools_3064 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1418 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_3064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1426
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PState.retiring
d_retiring_3066 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1418 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_3066 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1430
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.StakePoolParams.cost
d_cost_3070 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1146 ->
  Integer
d_cost_3070 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_cost_1160 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.StakePoolParams.margin
d_margin_3072 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1146 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_margin_3072 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_margin_1162
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.StakePoolParams.owners
d_owners_3074 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1146 ->
  [Integer]
d_owners_3074 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_owners_1158
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.StakePoolParams.pledge
d_pledge_3076 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1146 ->
  Integer
d_pledge_3076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pledge_1164
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.StakePoolParams.rewardAccount
d_rewardAccount_3078 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1146 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_rewardAccount_3078 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1166
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.AbstractFunctions
d_AbstractFunctions_3082 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.AbstractFunctions.DecEq-UTCTime
d_DecEq'45'UTCTime_3094 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UTCTime_3094 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_DecEq'45'UTCTime_2516
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.AbstractFunctions.UTCTime
d_UTCTime_3096 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  ()
d_UTCTime_3096 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.AbstractFunctions.epochInfoSlotToUTCTime
d_epochInfoSlotToUTCTime_3098 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  Integer -> Maybe AgdaAny
d_epochInfoSlotToUTCTime_3098 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_epochInfoSlotToUTCTime_2530
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.AbstractFunctions.getLanguageView
d_getLanguageView_3100 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.T_HSLanguage_10 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_getLanguageView_3100 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_getLanguageView_2528
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.AbstractFunctions.indexOfImp
d_indexOfImp_3102 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_indexOf_2462
d_indexOfImp_3102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_indexOfImp_2522
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.AbstractFunctions.scriptSize
d_scriptSize_3104 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_scriptSize_3104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_scriptSize_2524
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.AbstractFunctions.serSize
d_serSize_3106 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  Integer -> Integer
d_serSize_3106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_serSize_2520
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.AbstractFunctions.transVITime
d_transVITime_3108 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_transVITime_3108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_transVITime_2532
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.AbstractFunctions.txscriptfee
d_txscriptfee_3110 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txscriptfee_3110 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_txscriptfee_2518
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.AbstractFunctions.valContext
d_valContext_3112 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2420 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_ScriptPurpose_2406 ->
  Integer
d_valContext_3112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_valContext_2526
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures.HSAbstractFunctions
d_HSAbstractFunctions_3128 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492
d_HSAbstractFunctions_3128 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Abstract.C_constructor_2534
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (\ v1 v2 -> 0 :: Integer) (\ v1 -> 0 :: Integer)
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Abstract.C_constructor_2488
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Data.Maybe.Base.du_map_64
                 (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_18)
                 (coe
                    MAlonzo.Code.Data.List.Base.du_findIndex'7495'_928
                    (\ v3 ->
                       coe
                         MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18 (coe ())
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DCert_1358
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
                               (coe d_HSTransactionStructure_682 (coe v0))))
                         (coe v3) (coe v1))
                    v2)))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Data.Maybe.Base.du_map_64
                 (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_18)
                 (coe
                    MAlonzo.Code.Data.List.Base.du_findIndex'7495'_928
                    (\ v3 ->
                       coe
                         MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18 (coe ())
                         (coe
                            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                            (coe
                               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_188
                               (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                               (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))
                         (coe v3) (coe du_rewardAddressToSOP_3134 (coe v1)))
                    (coe
                       MAlonzo.Code.Data.List.Sort.Base.d_sort_248
                       (coe
                          MAlonzo.Code.Data.List.Sort.du_sortingAlgorithm_138
                          (coe du_DecTotalOrder'45'RewardAddressSOP_3148))
                       (coe
                          MAlonzo.Code.Axiom.Set.du_map_426
                          (MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe du_rewardAddressToSOP_3134)
                          (coe
                             MAlonzo.Code.Class.IsSet.du_dom_586
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1516
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_594) (coe v2)))))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Data.Maybe.Base.du_map_64
                 (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_18)
                 (coe
                    MAlonzo.Code.Data.List.Base.du_findIndex'7495'_928
                    (\ v3 ->
                       coe
                         MAlonzo.Code.Class.DecEq.Core.du__'61''61'__18 (coe ())
                         (coe
                            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                         (coe v3) (coe v1))
                    v2)))
         (coe (\ v1 v2 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
         (coe (\ v1 v2 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Data.Maybe.Base.du_map_64
                 (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_18)
                 (coe
                    MAlonzo.Code.Data.List.Base.du_findIndex'7495'_928
                    (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovProposal_1326
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
                          (coe d_HSTransactionStructure_682 (coe v0)))
                       (coe v1))
                    v2))))
      (\ v1 ->
         case coe v1 of
           MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v2
             -> coe
                  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_tlScriptSize_314
                  (coe v2)
           MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v2
             -> coe
                  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_psScriptSize_338
                  (coe v2)
           _ -> MAlonzo.RTE.mazUnreachableError)
      (\ v1 v2 -> 0 :: Integer)
      (\ v1 v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (\ v1 ->
         coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe (0 :: Integer)))
      (\ v1 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
-- Ledger.Conway.Foreign.ExternalStructures._.rewardAddressToSOP
d_rewardAddressToSOP_3134 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewardAddressToSOP_3134 ~v0 v1 = du_rewardAddressToSOP_3134 v1
du_rewardAddressToSOP_3134 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewardAddressToSOP_3134 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_114 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22 v3
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                    (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe v3))
             MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24 v3
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                    (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Foreign.ExternalStructures._.DecTotalOrder-RewardAddressSOP
d_DecTotalOrder'45'RewardAddressSOP_3148 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098
d_DecTotalOrder'45'RewardAddressSOP_3148 ~v0
  = du_DecTotalOrder'45'RewardAddressSOP_3148
du_DecTotalOrder'45'RewardAddressSOP_3148 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098
du_DecTotalOrder'45'RewardAddressSOP_3148
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_1272
      (coe
         MAlonzo.Code.Data.Product.Relation.Binary.Lex.NonStrict.du_'215''45'isDecTotalOrder_334
         (coe
            MAlonzo.Code.Data.Nat.Instances.d_ℕ'45''8804''45'isDecTotalOrder_8)
         (coe
            MAlonzo.Code.Data.Sum.Relation.Binary.LeftOrder.du_'8846''45''60''45'isDecTotalOrder_596
            (coe
               MAlonzo.Code.Data.Nat.Instances.d_ℕ'45''8804''45'isDecTotalOrder_8)
            (coe
               MAlonzo.Code.Data.Nat.Instances.d_ℕ'45''8804''45'isDecTotalOrder_8)))
