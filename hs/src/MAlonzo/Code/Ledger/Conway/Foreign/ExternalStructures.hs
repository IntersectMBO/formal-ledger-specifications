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
import qualified MAlonzo.Code.Class.Convertible.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.HasAdd.Core
import qualified MAlonzo.Code.Class.HasHsType.Core
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
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.Qstdlib.Data.List.Relation.Unary.MOf

-- Ledger.Conway.Foreign.ExternalStructures._.CryptoStructure.Dec-isSigned
d_Dec'45'isSigned_80 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_80 ~v0 v1 = du_Dec'45'isSigned_80 v1
du_Dec'45'isSigned_80 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isSigned_80 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.CryptoStructure.DecEq-Ser
d_DecEq'45'Ser_100 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_100 ~v0 v1 = du_DecEq'45'Ser_100 v1
du_DecEq'45'Ser_100 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Ser_100 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.CryptoStructure.DecEq-Sig
d_DecEq'45'Sig_102 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_102 ~v0 v1 = du_DecEq'45'Sig_102 v1
du_DecEq'45'Sig_102 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Sig_102 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.CryptoStructure.DecEq-THash
d_DecEq'45'THash_104 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_104 ~v0 v1 = du_DecEq'45'THash_104 v1
du_DecEq'45'THash_104 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'THash_104 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.CryptoStructure.THash
d_THash_112 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  ()
d_THash_112 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.CryptoStructure.KeyPair
d_KeyPair_114 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  ()
d_KeyPair_114 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.CryptoStructure.SKey
d_SKey_118 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  ()
d_SKey_118 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.CryptoStructure.Ser
d_Ser_122 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  ()
d_Ser_122 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.CryptoStructure.Show-THash
d_Show'45'THash_126 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_126 ~v0 v1 = du_Show'45'THash_126 v1
du_Show'45'THash_126 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'THash_126 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.CryptoStructure.Sig
d_Sig_128 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  ()
d_Sig_128 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.CryptoStructure.T-Hashable
d_T'45'Hashable_130 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_130 ~v0 v1 = du_T'45'Hashable_130 v1
du_T'45'Hashable_130 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
du_T'45'Hashable_130 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.CryptoStructure.VKey
d_VKey_134 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  ()
d_VKey_134 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.CryptoStructure.isKeyPair
d_isKeyPair_140 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  AgdaAny -> AgdaAny -> ()
d_isKeyPair_140 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.CryptoStructure.isSigned
d_isSigned_142 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_142 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.CryptoStructure.isSigned-correct
d_isSigned'45'correct_144 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_144 ~v0 v1 = du_isSigned'45'correct_144 v1
du_isSigned'45'correct_144 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_isSigned'45'correct_144 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_isSigned'45'correct_132
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.CryptoStructure.sign
d_sign_156 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_sign_156 ~v0 v1 = du_sign_156 v1
du_sign_156 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_sign_156 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.Dec-evalTimelock
d_Dec'45'evalTimelock_218 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.T_Timelock_152 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'evalTimelock_218 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.d_Dec'45'evalTimelock_210
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d___12
         (coe v0))
      (coe MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.du___14)
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-HSTimelock
d_DecEq'45'HSTimelock_220 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'HSTimelock_220 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_DecEq'45'HSTimelock_320
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-Timelock
d_DecEq'45'Timelock_222 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Timelock_222 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.d_DecEq'45'Timelock_166
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d___12
         (coe v0))
      (coe MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.du___14)
-- Ledger.Conway.Foreign.ExternalStructures._.HSP1ScriptStructure
d_HSP1ScriptStructure_224 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_152
d_HSP1ScriptStructure_224 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_HSP1ScriptStructure_322
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HSP2ScriptStructure
d_HSP2ScriptStructure_226 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176
d_HSP2ScriptStructure_226 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_HSP2ScriptStructure_344
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HSPlutusScript
d_HSPlutusScript_228 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HSScriptStructure
d_HSScriptStructure_232 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328
d_HSScriptStructure_232 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_HSScriptStructure_372
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HSTimelock
d_HSTimelock_234 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.Hashable-HSTimelock
d_Hashable'45'HSTimelock_238 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'HSTimelock_238 ~v0 = du_Hashable'45'HSTimelock_238
du_Hashable'45'HSTimelock_238 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
du_Hashable'45'HSTimelock_238
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.du_Hashable'45'HSTimelock_318
-- Ledger.Conway.Foreign.ExternalStructures._.Timelock
d_Timelock_254 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.evalTimelock
d_evalTimelock_268 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HSPlutusScript.psScriptHash
d_psScriptHash_272 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSPlutusScript_328 ->
  Integer
d_psScriptHash_272 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_psScriptHash_336
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HSPlutusScript.psScriptLanguage
d_psScriptLanguage_274 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSPlutusScript_328 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.T_HSLanguage_10
d_psScriptLanguage_274 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_psScriptLanguage_340
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HSPlutusScript.psScriptSize
d_psScriptSize_276 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSPlutusScript_328 ->
  Integer
d_psScriptSize_276 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_psScriptSize_338
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HSTimelock.timelock
d_timelock_280 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSTimelock_302 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.T_Timelock_152
d_timelock_280 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_timelock_310
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HSTimelock.tlScriptHash
d_tlScriptHash_282 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSTimelock_302 ->
  Integer
d_tlScriptHash_282 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_tlScriptHash_312
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HSTimelock.tlScriptSize
d_tlScriptSize_284 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSTimelock_302 ->
  Integer
d_tlScriptSize_284 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_tlScriptSize_314
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.Base.Convert-HSLanguage
d_Convert'45'HSLanguage_316 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Convert'45'HSLanguage_316 ~v0 = du_Convert'45'HSLanguage_316
du_Convert'45'HSLanguage_316 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
du_Convert'45'HSLanguage_316
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.d_Convert'45'HSLanguage_20
-- Ledger.Conway.Foreign.ExternalStructures._.Base.DecEq-HSLanguage
d_DecEq'45'HSLanguage_318 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'HSLanguage_318 ~v0 = du_DecEq'45'HSLanguage_318
du_DecEq'45'HSLanguage_318 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'HSLanguage_318
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.d_DecEq'45'HSLanguage_22
-- Ledger.Conway.Foreign.ExternalStructures._.Base.HSLanguage
d_HSLanguage_320 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.Base.HsType-HSLanguage
d_HsType'45'HSLanguage_322 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsType'45'HSLanguage_322 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Base.Show-HSLanguage
d_Show'45'HSLanguage_332 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'HSLanguage_332 ~v0 = du_Show'45'HSLanguage_332
du_Show'45'HSLanguage_332 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'HSLanguage_332
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.d_Show'45'HSLanguage_24
-- Ledger.Conway.Foreign.ExternalStructures._
d___340 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
d___340 v0
  = coe
      MAlonzo.Code.Ledger.Core.Foreign.Crypto.Structure.d_HSCryptoStructure_34
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._
d___346 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328
d___346 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_HSScriptStructure_372
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures.Crypto._<ᵏʰ_
d__'60''7503''688'__350 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> ()
d__'60''7503''688'__350 = erased
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.<ᵏʰ-isSTO
d_'60''7503''688''45'isSTO_352 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_624
d_'60''7503''688''45'isSTO_352 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_'60''7503''688''45'isSTO_300
      (coe d___340 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.BlsPoP
d_BlsPoP_354 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_BlsPoP_354 = erased
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.BlsSig
d_BlsSig_356 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_BlsSig_356 = erased
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.BlsVKey
d_BlsVKey_358 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_BlsVKey_358 = erased
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.Dec-<ᵏʰ
d_Dec'45''60''7503''688'_360 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''60''7503''688'_360 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45''60''7503''688'_310
      (coe d___340 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.Dec-isSigned
d_Dec'45'isSigned_362 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_362 v0
  = let v1 = d___340 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236 (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.Dec-isSignedBy
d_Dec'45'isSignedBy_364 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSignedBy_364 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSignedBy_320
      (coe d___340 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.Dec-isSignedByAggregate
d_Dec'45'isSignedByAggregate_366 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSignedByAggregate_366 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSignedByAggregate_322
      (coe d___340 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.Dec-isValidPoP
d_Dec'45'isValidPoP_368 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isValidPoP_368 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isValidPoP_318
      (coe d___340 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.DecEq-BlsPoP
d_DecEq'45'BlsPoP_370 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BlsPoP_370 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'BlsPoP_316
      (coe d___340 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.DecEq-BlsSig
d_DecEq'45'BlsSig_372 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BlsSig_372 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'BlsSig_314
      (coe d___340 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.DecEq-BlsVKey
d_DecEq'45'BlsVKey_374 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BlsVKey_374 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'BlsVKey_312
      (coe d___340 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.DecEq-EBHash
d_DecEq'45'EBHash_376 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'EBHash_376 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'EBHash_324
      (coe d___340 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.DecEq-RBHeaderHash
d_DecEq'45'RBHeaderHash_378 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RBHeaderHash_378 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'RBHeaderHash_328
      (coe d___340 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.DecEq-ScriptHash
d_DecEq'45'ScriptHash_380 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_380 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_268
      (coe d___340 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.DecEq-Ser
d_DecEq'45'Ser_382 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_382 v0
  = let v1 = d___340 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236 (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.DecEq-Sig
d_DecEq'45'Sig_384 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_384 v0
  = let v1 = d___340 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236 (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.DecEq-THash
d_DecEq'45'THash_386 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_386 v0
  = let v1 = d___340 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264 (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.DecEq-TxRefHash
d_DecEq'45'TxRefHash_388 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxRefHash_388 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'TxRefHash_326
      (coe d___340 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.DecEq-VRF
d_DecEq'45'VRF_390 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VRF_390 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'VRF_284
      (coe d___340 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.EBHash
d_EBHash_392 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_EBHash_392 = erased
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.THash
d_THash_394 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_THash_394 = erased
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.KeyPair
d_KeyPair_396 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_KeyPair_396 = erased
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.RBHeaderHash
d_RBHeaderHash_398 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_RBHeaderHash_398 = erased
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.SKey
d_SKey_400 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_SKey_400 = erased
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.ScriptHash
d_ScriptHash_402 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ScriptHash_402 = erased
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.Ser
d_Ser_404 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Ser_404 = erased
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.Show-ScriptHash
d_Show'45'ScriptHash_406 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_406 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_270
      (coe d___340 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.Show-THash
d_Show'45'THash_408 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_408 v0
  = let v1 = d___340 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264 (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.Sig
d_Sig_410 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Sig_410 = erased
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.T-Hashable
d_T'45'Hashable_412 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_412 v0
  = let v1 = d___340 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264 (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.TxRefHash
d_TxRefHash_414 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_TxRefHash_414 = erased
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.VKey
d_VKey_416 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VKey_416 = erased
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.VRF
d_VRF_418 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VRF_418 = erased
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.hashEBRefs
d_hashEBRefs_420 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Integer
d_hashEBRefs_420 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_hashEBRefs_308
      (coe d___340 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.isKeyPair
d_isKeyPair_422 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 -> ()
d_isKeyPair_422 = erased
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.isSigned
d_isSigned_424 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer -> Integer -> ()
d_isSigned_424 = erased
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.isSigned-correct
d_isSigned'45'correct_426 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isSigned'45'correct_426 = erased
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.isSignedBy
d_isSignedBy_428 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer -> ()
d_isSignedBy_428 = erased
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.isSignedByAggregate
d_isSignedByAggregate_430 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] -> Integer -> Integer -> ()
d_isSignedByAggregate_430 = erased
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.isValidPoP
d_isValidPoP_432 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> ()
d_isValidPoP_432 = erased
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.khs
d_khs_434 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_434 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
      (coe d___340 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.pkk
d_pkk_436 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_436 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236
      (coe d___340 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures.Crypto.sign
d_sign_438 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer
d_sign_438 v0
  = let v1 = d___340 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236 (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.GovParams
d_GovParams_454 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.PParams
d_PParams_478 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.paramsWellFormed
d_paramsWellFormed_500 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  ()
d_paramsWellFormed_500 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_508 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_508 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1504
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovParams.ppUpd
d_ppUpd_514 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438
d_ppUpd_514 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.Emax
d_Emax_544 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_Emax_544 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_402
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.a
d_a_546 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_a_546 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_374 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.a0
d_a0_548 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_548 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_406 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.b
d_b_550 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_b_550 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_376 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.ccMaxTermLength
d_ccMaxTermLength_552 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_ccMaxTermLength_552 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_418
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.ccMinSize
d_ccMinSize_554 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_ccMinSize_554 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_416
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_556 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_coinsPerUTxOByte_556 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_386
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.collateralPercentage
d_collateralPercentage_558 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_collateralPercentage_558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_408
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.costmdlsAssoc
d_costmdlsAssoc_562 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_484
d_costmdlsAssoc_562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdlsAssoc_410
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.drepActivity
d_drepActivity_564 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_drepActivity_564 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_426
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.drepDeposit
d_drepDeposit_566 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_drepDeposit_566 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_424
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.drepThresholds
d_drepThresholds_568 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218
d_drepThresholds_568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_414
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.govActionDeposit
d_govActionDeposit_570 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_govActionDeposit_570 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_422
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.govActionLifetime
d_govActionLifetime_572 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_govActionLifetime_572 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_420
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.keyDeposit
d_keyDeposit_574 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_keyDeposit_574 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_378
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.maxBlockExUnits
d_maxBlockExUnits_576 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_576 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_366
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.maxBlockSize
d_maxBlockSize_578 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxBlockSize_578 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_358
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.maxCollateralInputs
d_maxCollateralInputs_580 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxCollateralInputs_580 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_370
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.maxHeaderSize
d_maxHeaderSize_582 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxHeaderSize_582 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_362
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_584 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxRefScriptSizePerBlock_584 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_394
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_586 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxRefScriptSizePerTx_586 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_392
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.maxTxExUnits
d_maxTxExUnits_588 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_588 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_364
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.maxTxSize
d_maxTxSize_590 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxTxSize_590 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_360
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.maxValSize
d_maxValSize_592 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxValSize_592 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_368
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_594 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_594 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_390
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.minUTxOValue
d_minUTxOValue_596 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_minUTxOValue_596 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_400
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.monetaryExpansion
d_monetaryExpansion_598 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_598 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_382
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.nopt
d_nopt_600 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_nopt_600 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_404
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.poolDeposit
d_poolDeposit_602 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_poolDeposit_602 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_380
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.poolThresholds
d_poolThresholds_604 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262
d_poolThresholds_604 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_412
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.prices
d_prices_606 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_606 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_388
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.pv
d_pv_608 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_608 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_372 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_610 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_610 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_398
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.refScriptCostStride
d_refScriptCostStride_612 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_612 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_396
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.treasuryCut
d_treasuryCut_614 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_614 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_384
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsDiff.UpdateT
d_UpdateT_618 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438 ->
  ()
d_UpdateT_618 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsDiff.applyUpdate
d_applyUpdate_620 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_applyUpdate_620 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1454
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsDiff.ppWF?
d_ppWF'63'_622 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1462
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsDiff.updateGroups
d_updateGroups_626 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_206]
d_updateGroups_626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1456
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_634 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamsUpdate_1436
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'46'extendedlambda0_366
         (coe MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8))
      (coe d___346 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_636 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_640 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_applyPParamsUpdate_640 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_applyPParamsUpdate_1278
      (coe d___346 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_662 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_Emax_662 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_716
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.a
d_a_664 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_a_664 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_686 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.a0
d_a0_666 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_666 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_714 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.b
d_b_668 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_b_668 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_688 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_670 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_ccMaxTermLength_670 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_738
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_672 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_ccMinSize_672 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_736
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_674 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_coinsPerUTxOByte_674 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_698
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_676 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_collateralPercentage_676 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_720
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_678 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_484
d_costmdls_678 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_722
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_680 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_drepActivity_680 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_734
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_682 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_drepDeposit_682 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_732
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_684 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218
d_drepThresholds_684 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_724
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_686 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_govActionDeposit_686 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_730
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_688 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_govActionLifetime_688 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_728
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_690 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_keyDeposit_690 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_690
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_692 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_692 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_682
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_694 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxBlockSize_694 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_670
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_696 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxCollateralInputs_696 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_678
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_698 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxHeaderSize_698 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_674
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_700 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_700 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_706
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_702 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxRefScriptSizePerTx_702 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_704
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_704 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_704 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_680
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_706 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxTxSize_706 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_672
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_708 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxValSize_708 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_676
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_710 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_710 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_702
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_712 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_minUTxOValue_712 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_712
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_714 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_714 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_694
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_716 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_nopt_716 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_718
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_718 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_poolDeposit_718 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_692
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_720 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262
d_poolThresholds_720 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_726
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.prices
d_prices_722 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_722 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_700
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.pv
d_pv_724 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_724 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_684 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_726 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_710
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_728 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_708
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_730 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_730 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_696
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures.HsGovParams
d_HsGovParams_732 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472
d_HsGovParams_732 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_1506
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.C_constructor_1470
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.du_applyPParamsUpdate_1278
            (coe d___346 (coe v0)))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiedUpdateGroups_1208)
         (\ v1 -> coe du_ppWF_742 (coe v1)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamsUpdate_1436
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'46'extendedlambda0_366
            (coe MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8))
         (coe d___346 (coe v0)))
-- Ledger.Conway.Foreign.ExternalStructures._.ppWF
d_ppWF_742 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF_742 ~v0 v1 = du_ppWF_742 v1
du_ppWF_742 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_ppWF_742 v0
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
d_trustMe_758
  = error
      "MAlonzo Runtime Error: postulate evaluated: Ledger.Conway.Foreign.ExternalStructures._._.trustMe"
-- Ledger.Conway.Foreign.ExternalStructures._._.trustMe
d_trustMe_768
  = error
      "MAlonzo Runtime Error: postulate evaluated: Ledger.Conway.Foreign.ExternalStructures._._.trustMe"
-- Ledger.Conway.Foreign.ExternalStructures.HSTransactionStructure
d_HSTransactionStructure_778 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24
d_HSTransactionStructure_778 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.C_constructor_3882
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
      (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'46'extendedlambda0_366
         (coe MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8))
      (MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_HSScriptStructure_372
         (coe v0))
      (d_HsGovParams_732 (coe v0))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Coin.du_Coin'45'TokenAlgebra_132)
      (\ v1 -> v1)
      (coe
         MAlonzo.Code.Interface.TypeClasses.Hashable.C_constructor_20
         (coe (\ v1 -> 0 :: Integer)))
-- Ledger.Conway.Foreign.ExternalStructures._._+ᵉ_
d__'43''7497'__784 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer
d__'43''7497'__784 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'__100
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._._+ᵉ'_
d__'43''7497'''__786 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer
d__'43''7497'''__786 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'''__102
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._._∙_
d__'8729'__788 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer
d__'8729'__788 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2636
                  (coe v1)))))
-- Ledger.Conway.Foreign.ExternalStructures._._<ᵏʰ_
d__'60''7503''688'__790 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> ()
d__'60''7503''688'__790 = erased
-- Ledger.Conway.Foreign.ExternalStructures._._≈_
d__'8776'__792 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> ()
d__'8776'__792 = erased
-- Ledger.Conway.Foreign.ExternalStructures._._≤ᵗ_
d__'8804''7511'__794 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> ()
d__'8804''7511'__794 = erased
-- Ledger.Conway.Foreign.ExternalStructures._._≥ᵉ_
d__'8805''7497'__796 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8805''7497'__796 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_798 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_798 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.<ᵏʰ-isSTO
d_'60''7503''688''45'isSTO_800 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_624
d_'60''7503''688''45'isSTO_800 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_'60''7503''688''45'isSTO_300
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.==-GovAction
d_'61''61''45'GovAction_802 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932 ->
  Bool
d_'61''61''45'GovAction_802 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovAction_1002
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.==-GovActionData
d_'61''61''45'GovActionData_804 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_898 ->
  AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_804 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovActionData_984
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.==-GovProposal
d_'61''61''45'GovProposal_806 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1146 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1146 ->
  Bool
d_'61''61''45'GovProposal_806 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovProposal_1386
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.==-Set
d_'61''61''45'Set_808 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_808 ~v0 = du_'61''61''45'Set_808
du_'61''61''45'Set_808 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
du_'61''61''45'Set_808 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_'61''61''45'Set_972
      v1 v2 v3
-- Ledger.Conway.Foreign.ExternalStructures._.THash
d_THash_810 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_THash_810 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Acnt
d_Acnt_812 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.ActiveSlotCoeff
d_ActiveSlotCoeff_816 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_816 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ActiveSlotCoeff_330
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1416
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.Addr
d_Addr_818 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Addr_818 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Anchor
d_Anchor_822 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.AttrSizeOf
d_AttrSizeOf_826 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214 ->
  AgdaAny -> Integer
d_AttrSizeOf_826 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_222
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.AuxiliaryData
d_AuxiliaryData_828 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_AuxiliaryData_828 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.BaseAddr
d_BaseAddr_830 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.BlsKeyMaxAgeᶜ
d_BlsKeyMaxAge'7580'_834 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_BlsKeyMaxAge'7580'_834 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_BlsKeyMaxAge'7580'_344
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1416
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.BlsPoP
d_BlsPoP_836 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_BlsPoP_836 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.BlsSig
d_BlsSig_838 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_BlsSig_838 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.BlsVKey
d_BlsVKey_840 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_BlsVKey_840 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.BootstrapAddr
d_BootstrapAddr_842 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.CCMaxTermLengthOf
d_CCMaxTermLengthOf_848 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_456 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_848 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_464
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.CostModel
d_CostModel_852 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_CostModel_852 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Credential
d_Credential_854 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.CredentialOf
d_CredentialOf_856 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_856 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DCertsOf
d_DCertsOf_858 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasDCerts_3626 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1398]
d_DCertsOf_858 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DCertsOf_3634
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DReps
d_DReps_862 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_DReps_862 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.DRepsOf
d_DRepsOf_864 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1504 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_864 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1512
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.T
d_T_866 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_T_866 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.THash
d_THash_868 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_THash_868 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Dataʰ
d_Data'688'_870 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_870 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_252
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.Datum
d_Datum_872 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Datum_872 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Dec-<ᵏʰ
d_Dec'45''60''7503''688'_874 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''60''7503''688'_874 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45''60''7503''688'_310
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.Dec-isScript
d_Dec'45'isScript_876 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_876 ~v0 = du_Dec'45'isScript_876
du_Dec'45'isScript_876 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_876
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isScript_308
-- Ledger.Conway.Foreign.ExternalStructures._.Dec-isSigned
d_Dec'45'isSigned_878 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_878 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236 (coe v2))))
-- Ledger.Conway.Foreign.ExternalStructures._.Dec-isSignedBy
d_Dec'45'isSignedBy_880 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSignedBy_880 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSignedBy_320
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.Dec-isSignedByAggregate
d_Dec'45'isSignedByAggregate_882 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSignedByAggregate_882 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSignedByAggregate_322
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.Dec-isVKey
d_Dec'45'isVKey_884 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_884 ~v0 = du_Dec'45'isVKey_884
du_Dec'45'isVKey_884 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_884
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_294
-- Ledger.Conway.Foreign.ExternalStructures._.Dec-isValidPoP
d_Dec'45'isValidPoP_886 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isValidPoP_886 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isValidPoP_318
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.Dec-validP1Script
d_Dec'45'validP1Script_888 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSTimelock_302 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_888 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_168
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_354
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_890 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSPlutusScript_328 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_890 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_322
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.Dec-≤ᵗ
d_Dec'45''8804''7511'_892 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_892 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2636
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEQ-Prices
d_DecEQ'45'Prices_894 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_894 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_292
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-Anchor
d_DecEq'45'Anchor_896 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_896 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'Anchor_1278
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_898 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_898 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BaseAddr_346
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_322
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1416
               (coe v1)))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
                  (coe v1))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_268
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-BlsPoP
d_DecEq'45'BlsPoP_900 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BlsPoP_900 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'BlsPoP_316
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-BlsSig
d_DecEq'45'BlsSig_902 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BlsSig_902 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'BlsSig_314
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-BlsVKey
d_DecEq'45'BlsVKey_904 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BlsVKey_904 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'BlsVKey_312
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_906 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_906 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BootstrapAddr_348
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_322
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1416
               (coe v1)))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
                  (coe v1))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_268
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-CostModel
d_DecEq'45'CostModel_908 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_908 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_278
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-Credential
d_DecEq'45'Credential_910 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_910 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
                  (coe v1))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_268
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_912 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_912 ~v0 = du_DecEq'45'DrepThresholds_912
du_DecEq'45'DrepThresholds_912 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_912
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'DrepThresholds_582
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-EBHash
d_DecEq'45'EBHash_914 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'EBHash_914 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'EBHash_324
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-Epoch
d_DecEq'45'Epoch_916 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_916 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-ExUnits
d_DecEq'45'ExUnits_918 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_918 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_290
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-GovActionType
d_DecEq'45'GovActionType_920 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_920 ~v0 = du_DecEq'45'GovActionType_920
du_DecEq'45'GovActionType_920 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_920
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovActionType_966
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-GovRole
d_DecEq'45'GovRole_922 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_922 ~v0 = du_DecEq'45'GovRole_922
du_DecEq'45'GovRole_922 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_922
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovRole_1272
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-GovVoter
d_DecEq'45'GovVoter_924 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_924 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'GovVoter_1280
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-Ix
d_DecEq'45'Ix_926 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_926 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1398
      (coe d_HSTransactionStructure_778 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-LangDepView
d_DecEq'45'LangDepView_928 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_928 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_280
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-Language
d_DecEq'45'Language_930 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_930 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_276
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_932 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_932 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_DecEq'45'LanguageCostModels_492
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-NeedsHash
d_DecEq'45'NeedsHash_934 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_898 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_934 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'NeedsHash_1384
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-Netw
d_DecEq'45'Netw_936 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_936 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_322
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1416
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-P1Script
d_DecEq'45'P1Script_938 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_938 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_172
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_354
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_940 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_940 ~v0 = du_DecEq'45'PParamGroup_940
du_DecEq'45'PParamGroup_940 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_940
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamGroup_588
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-PParams
d_DecEq'45'PParams_942 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_942 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParams_586
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
            (coe v1))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_944 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_944 ~v0 = du_DecEq'45'PoolThresholds_944
du_DecEq'45'PoolThresholds_944 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_944
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PoolThresholds_584
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-RBHeaderHash
d_DecEq'45'RBHeaderHash_946 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RBHeaderHash_946 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'RBHeaderHash_328
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-RewardAddress
d_DecEq'45'RewardAddress_948 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RewardAddress_948 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_322
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1416
               (coe v1)))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
                  (coe v1))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_268
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_950 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_950 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_268
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-Ser
d_DecEq'45'Ser_952 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_952 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236 (coe v2))))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-Sig
d_DecEq'45'Sig_954 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_954 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236 (coe v2))))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-Slot
d_DecEq'45'Slot_956 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_956 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Slot_88
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-T
d_DecEq'45'T_958 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_958 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1402
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-T
d_DecEq'45'T_960 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_960 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_252
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
               (coe v2))))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-THash
d_DecEq'45'THash_962 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_962 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1402
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-THash
d_DecEq'45'THash_964 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_964 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264 (coe v2))))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-THash
d_DecEq'45'THash_966 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_966 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_252
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
               (coe v2))))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-TxId
d_DecEq'45'TxId_968 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_968 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1400
      (coe d_HSTransactionStructure_778 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-TxRefHash
d_DecEq'45'TxRefHash_970 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxRefHash_970 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'TxRefHash_326
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-UpdT
d_DecEq'45'UpdT_972 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_972 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1504
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2618
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-VDeleg
d_DecEq'45'VDeleg_974 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_974 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1276
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-VRF
d_DecEq'45'VRF_976 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VRF_976 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'VRF_284
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-Value
d_DecEq'45'Value_978 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_978 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2636
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-Vote
d_DecEq'45'Vote_980 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_980 ~v0 = du_DecEq'45'Vote_980
du_DecEq'45'Vote_980 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_980
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'Vote_1274
-- Ledger.Conway.Foreign.ExternalStructures._.DecPo-Slot
d_DecPo'45'Slot_982 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_262
d_DecPo'45'Slot_982 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.DrepThresholds
d_DrepThresholds_984 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.EBHash
d_EBHash_988 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_EBHash_988 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Epoch
d_Epoch_992 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Epoch_992 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_994 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_994 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_272
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.ExUnits
d_ExUnits_996 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ExUnits_996 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.GovAction
d_GovAction_998 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActionData
d_GovActionData_1002 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_898 ->
  ()
d_GovActionData_1002 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.GovActionID
d_GovActionID_1004 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_GovActionID_1004 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.GovActionOf
d_GovActionOf_1006 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_946 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932
d_GovActionOf_1006 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionOf_952
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActionState
d_GovActionState_1008 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActionType
d_GovActionType_1012 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActionTypeOf
d_GovActionTypeOf_1014 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_916 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_898
d_GovActionTypeOf_1014 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionTypeOf_922
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovParams
d_GovParams_1016 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovProposal
d_GovProposal_1020 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovProposalsOf
d_GovProposalsOf_1024 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovProposals_3646 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1146]
d_GovProposalsOf_1024 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_GovProposalsOf_3654
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovRole
d_GovRole_1026 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovRoleCredential
d_GovRoleCredential_1028 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_886 ->
  ()
d_GovRoleCredential_1028 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.GovVote
d_GovVote_1030 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovVoter
d_GovVoter_1034 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovVoterOf
d_GovVoterOf_1038 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1202 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1042
d_GovVoterOf_1038 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovVoterOf_1210
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovVotes
d_GovVotes_1040 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovVotesOf
d_GovVotesOf_1044 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovVotes_3666 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1066]
d_GovVotesOf_1044 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_GovVotesOf_3674
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasAttrSize
d_HasAttrSize_1048 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasAttrSize-BootstrapAddr
d_HasAttrSize'45'BootstrapAddr_1052 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214
d_HasAttrSize'45'BootstrapAddr_1052 ~v0
  = du_HasAttrSize'45'BootstrapAddr_1052
du_HasAttrSize'45'BootstrapAddr_1052 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214
du_HasAttrSize'45'BootstrapAddr_1052
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasAttrSize'45'BootstrapAddr_238
-- Ledger.Conway.Foreign.ExternalStructures._.HasCCMaxTermLength
d_HasCCMaxTermLength_1054 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasCast-Acnt
d_HasCast'45'Acnt_1058 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_1058 ~v0 = du_HasCast'45'Acnt_1058
du_HasCast'45'Acnt_1058 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Acnt_1058
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasCast'45'Acnt_204
-- Ledger.Conway.Foreign.ExternalStructures._.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_1060 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_1060 ~v0
  = du_HasCast'45'GovAction'45'Sigma_1060
du_HasCast'45'GovAction'45'Sigma_1060 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_1060
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_962
-- Ledger.Conway.Foreign.ExternalStructures._.HasCast-GovVote
d_HasCast'45'GovVote_1062 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_1062 ~v0 = du_HasCast'45'GovVote_1062
du_HasCast'45'GovVote_1062 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_1062
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovVote_1378
-- Ledger.Conway.Foreign.ExternalStructures._.HasCast-HashProtected
d_HasCast'45'HashProtected_1064 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_1064 ~v0
  = du_HasCast'45'HashProtected_1064
du_HasCast'45'HashProtected_1064 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_1064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1140
-- Ledger.Conway.Foreign.ExternalStructures._.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_1066 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_1066 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_1066
du_HasCast'45'HashProtected'45'MaybeScriptHash_1066 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_1066
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1142
-- Ledger.Conway.Foreign.ExternalStructures._.HasCoin-TxOut
d_HasCoin'45'TxOut_1068 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_1068 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_HasCoin'45'TxOut_3880
      (coe d_HSTransactionStructure_778 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.HasCredential
d_HasCredential_1070 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasCredential-RewardAddress
d_HasCredential'45'RewardAddress_1074 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
d_HasCredential'45'RewardAddress_1074 ~v0
  = du_HasCredential'45'RewardAddress_1074
du_HasCredential'45'RewardAddress_1074 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
du_HasCredential'45'RewardAddress_1074
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RewardAddress_236
-- Ledger.Conway.Foreign.ExternalStructures._.HasDCerts
d_HasDCerts_1076 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasDCerts-Tx
d_HasDCerts'45'Tx_1080 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasDCerts_3626
d_HasDCerts'45'Tx_1080 ~v0 = du_HasDCerts'45'Tx_1080
du_HasDCerts'45'Tx_1080 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasDCerts_3626
du_HasDCerts'45'Tx_1080
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasDCerts'45'Tx_3754
-- Ledger.Conway.Foreign.ExternalStructures._.HasDReps
d_HasDReps_1082 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasDonations-Tx
d_HasDonations'45'Tx_1086 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'Tx_1086 ~v0 = du_HasDonations'45'Tx_1086
du_HasDonations'45'Tx_1086 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
du_HasDonations'45'Tx_1086
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasDonations'45'Tx_3766
-- Ledger.Conway.Foreign.ExternalStructures._.HasDonations-TxBody
d_HasDonations'45'TxBody_1088 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'TxBody_1088 ~v0 = du_HasDonations'45'TxBody_1088
du_HasDonations'45'TxBody_1088 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
du_HasDonations'45'TxBody_1088
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasDonations'45'TxBody_3702
-- Ledger.Conway.Foreign.ExternalStructures._.HasFees-Tx
d_HasFees'45'Tx_1090 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFees'45'Tx_1090 ~v0 = du_HasFees'45'Tx_1090
du_HasFees'45'Tx_1090 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFees'45'Tx_1090
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasFees'45'Tx_3752
-- Ledger.Conway.Foreign.ExternalStructures._.HasGovAction
d_HasGovAction_1092 a0 a1 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_1096 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_946
d_HasGovAction'45'GovActionState_1096 ~v0
  = du_HasGovAction'45'GovActionState_1096
du_HasGovAction'45'GovActionState_1096 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_946
du_HasGovAction'45'GovActionState_1096
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1266
-- Ledger.Conway.Foreign.ExternalStructures._.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_1098 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_946
d_HasGovAction'45'GovProposal_1098 ~v0
  = du_HasGovAction'45'GovProposal_1098
du_HasGovAction'45'GovProposal_1098 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_946
du_HasGovAction'45'GovProposal_1098
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1264
-- Ledger.Conway.Foreign.ExternalStructures._.HasGovActionType
d_HasGovActionType_1100 a0 a1 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_1104 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_916
d_HasGovActionType'45'GovAction_1104 ~v0
  = du_HasGovActionType'45'GovAction_1104
du_HasGovActionType'45'GovAction_1104 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_916
du_HasGovActionType'45'GovAction_1104
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_960
-- Ledger.Conway.Foreign.ExternalStructures._.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_1106 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_916
d_HasGovActionType'45'GovActionState_1106 ~v0
  = du_HasGovActionType'45'GovActionState_1106
du_HasGovActionType'45'GovActionState_1106 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_916
du_HasGovActionType'45'GovActionState_1106
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1270
-- Ledger.Conway.Foreign.ExternalStructures._.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_1108 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_916
d_HasGovActionType'45'GovProposal_1108 ~v0
  = du_HasGovActionType'45'GovProposal_1108
du_HasGovActionType'45'GovProposal_1108 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_916
du_HasGovActionType'45'GovProposal_1108
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1268
-- Ledger.Conway.Foreign.ExternalStructures._.HasGovProposals
d_HasGovProposals_1110 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasGovProposals-Tx
d_HasGovProposals'45'Tx_1114 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovProposals_3646
d_HasGovProposals'45'Tx_1114 ~v0 = du_HasGovProposals'45'Tx_1114
du_HasGovProposals'45'Tx_1114 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovProposals_3646
du_HasGovProposals'45'Tx_1114
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasGovProposals'45'Tx_3756
-- Ledger.Conway.Foreign.ExternalStructures._.HasGovVoter
d_HasGovVoter_1116 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_1120 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1202
d_HasGovVoter'45'GovVote_1120 ~v0 = du_HasGovVoter'45'GovVote_1120
du_HasGovVoter'45'GovVote_1120 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1202
du_HasGovVoter'45'GovVote_1120
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1258
-- Ledger.Conway.Foreign.ExternalStructures._.HasGovVotes
d_HasGovVotes_1122 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasGovVotes-Tx
d_HasGovVotes'45'Tx_1126 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovVotes_3666
d_HasGovVotes'45'Tx_1126 ~v0 = du_HasGovVotes'45'Tx_1126
du_HasGovVotes'45'Tx_1126 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovVotes_3666
du_HasGovVotes'45'Tx_1126
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasGovVotes'45'Tx_3758
-- Ledger.Conway.Foreign.ExternalStructures._.HasMaybeNetworkId
d_HasMaybeNetworkId_1128 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasNetworkId
d_HasNetworkId_1132 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_1136 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'BaseAddr_1136 ~v0
  = du_HasNetworkId'45'BaseAddr_1136
du_HasNetworkId'45'BaseAddr_1136 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'BaseAddr_1136
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BaseAddr_230
-- Ledger.Conway.Foreign.ExternalStructures._.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_1138 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'BootstrapAddr_1138 ~v0
  = du_HasNetworkId'45'BootstrapAddr_1138
du_HasNetworkId'45'BootstrapAddr_1138 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'BootstrapAddr_1138
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BootstrapAddr_232
-- Ledger.Conway.Foreign.ExternalStructures._.HasNetworkId-RewardAddress
d_HasNetworkId'45'RewardAddress_1140 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'RewardAddress_1140 ~v0
  = du_HasNetworkId'45'RewardAddress_1140
du_HasNetworkId'45'RewardAddress_1140 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'RewardAddress_1140
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RewardAddress_234
-- Ledger.Conway.Foreign.ExternalStructures._.HasPParams
d_HasPParams_1142 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasPolicy
d_HasPolicy_1146 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_1150 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1242
d_HasPolicy'45'GovProposal_1150 ~v0
  = du_HasPolicy'45'GovProposal_1150
du_HasPolicy'45'GovProposal_1150 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1242
du_HasPolicy'45'GovProposal_1150
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1262
-- Ledger.Conway.Foreign.ExternalStructures._.HasReserves-Acnt
d_HasReserves'45'Acnt_1152 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
d_HasReserves'45'Acnt_1152 ~v0 = du_HasReserves'45'Acnt_1152
du_HasReserves'45'Acnt_1152 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
du_HasReserves'45'Acnt_1152
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasReserves'45'Acnt_202
-- Ledger.Conway.Foreign.ExternalStructures._.HasRewardAddress
d_HasRewardAddress_1154 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasTreasury-Acnt
d_HasTreasury'45'Acnt_1158 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'Acnt_1158 ~v0 = du_HasTreasury'45'Acnt_1158
du_HasTreasury'45'Acnt_1158 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
du_HasTreasury'45'Acnt_1158
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasTreasury'45'Acnt_200
-- Ledger.Conway.Foreign.ExternalStructures._.HasTxBody
d_HasTxBody_1160 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasTxBody-Tx
d_HasTxBody'45'Tx_1164 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxBody_3606
d_HasTxBody'45'Tx_1164 ~v0 = du_HasTxBody'45'Tx_1164
du_HasTxBody'45'Tx_1164 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxBody_3606
du_HasTxBody'45'Tx_1164
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasTxBody'45'Tx_3750
-- Ledger.Conway.Foreign.ExternalStructures._.HasTxId
d_HasTxId_1166 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasTxId-Tx
d_HasTxId'45'Tx_1170 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxId_3686
d_HasTxId'45'Tx_1170 ~v0 = du_HasTxId'45'Tx_1170
du_HasTxId'45'Tx_1170 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxId_3686
du_HasTxId'45'Tx_1170
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasTxId'45'Tx_3764
-- Ledger.Conway.Foreign.ExternalStructures._.HasUTxO
d_HasUTxO_1172 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasVote
d_HasVote_1176 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasVote-GovVote
d_HasVote'45'GovVote_1180 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1222
d_HasVote'45'GovVote_1180 ~v0 = du_HasVote'45'GovVote_1180
du_HasVote'45'GovVote_1180 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1222
du_HasVote'45'GovVote_1180
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasVote'45'GovVote_1260
-- Ledger.Conway.Foreign.ExternalStructures._.HasVoteDelegs
d_HasVoteDelegs_1182 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasWithdrawals
d_HasWithdrawals_1186 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasWithdrawals-Tx
d_HasWithdrawals'45'Tx_1190 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
d_HasWithdrawals'45'Tx_1190 ~v0 = du_HasWithdrawals'45'Tx_1190
du_HasWithdrawals'45'Tx_1190 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
du_HasWithdrawals'45'Tx_1190
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasWithdrawals'45'Tx_3762
-- Ledger.Conway.Foreign.ExternalStructures._.HasWithdrawals-TxBody
d_HasWithdrawals'45'TxBody_1192 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
d_HasWithdrawals'45'TxBody_1192 ~v0
  = du_HasWithdrawals'45'TxBody_1192
du_HasWithdrawals'45'TxBody_1192 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
du_HasWithdrawals'45'TxBody_1192
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasWithdrawals'45'TxBody_3760
-- Ledger.Conway.Foreign.ExternalStructures._.HashProtected
d_HashProtected_1194 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () -> ()
d_HashProtected_1194 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Hashable-P1Script
d_Hashable'45'P1Script_1196 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_1196 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_170
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_354
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1198 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_1198 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_274
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.Hashable-Script
d_Hashable'45'Script_1200 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_1200 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_452
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.Hashable-ScriptIntegrity
d_Hashable'45'ScriptIntegrity_1202 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'ScriptIntegrity_1202 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_Hashable'45'ScriptIntegrity_2752
      (coe d_HSTransactionStructure_778 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.IsBootstrapAddr
d_IsBootstrapAddr_1206 a0 a1 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.IsBootstrapAddr?
d_IsBootstrapAddr'63'_1208 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsBootstrapAddr'63'_1208 ~v0 = du_IsBootstrapAddr'63'_1208
du_IsBootstrapAddr'63'_1208 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsBootstrapAddr'63'_1208
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsBootstrapAddr'63'_322
-- Ledger.Conway.Foreign.ExternalStructures._.IsKeyHashObj
d_IsKeyHashObj_1212 a0 a1 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.IsKeyHashObj?
d_IsKeyHashObj'63'_1214 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsKeyHashObj'63'_1214 ~v0 = du_IsKeyHashObj'63'_1214
du_IsKeyHashObj'63'_1214 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsKeyHashObj'63'_1214
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsKeyHashObj'63'_56
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_1216 a0 a1 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1220 a0 a1 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1224 a0 a1 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.Ix
d_Ix_1228 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Ix_1228 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.THash
d_THash_1230 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_THash_1230 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.KeyPair
d_KeyPair_1234 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_KeyPair_1234 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.LangDepView
d_LangDepView_1236 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_LangDepView_1236 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Language
d_Language_1238 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Language_1238 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.LanguageCostModels
d_LanguageCostModels_1240 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.MaxLovelaceSupplyᶜ
d_MaxLovelaceSupply'7580'_1244 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_MaxLovelaceSupply'7580'_1244 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_338
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1416
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.MaybeNetworkIdOf
d_MaybeNetworkIdOf_1246 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174 ->
  AgdaAny -> Maybe Integer
d_MaybeNetworkIdOf_1246 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_182
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.MemoryEstimate
d_MemoryEstimate_1248 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_MemoryEstimate_1248 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.NeedsHash
d_NeedsHash_1250 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_898 ->
  ()
d_NeedsHash_1250 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Network
d_Network_1252 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Network_1252 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.NetworkId
d_NetworkId_1256 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_NetworkId_1256 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_342
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1416
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.NetworkIdOf
d_NetworkIdOf_1258 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154 ->
  AgdaAny -> Integer
d_NetworkIdOf_1258 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_162
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_1264 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_1264 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'ActiveSlotCoeff_346
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1416
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1266 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_1266 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_328
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1416
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.Number-Epoch
d_Number'45'Epoch_1268 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_1268 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Number'45'Epoch_286
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.P1Script
d_P1Script_1270 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_P1Script_1270 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.P1ScriptStructure
d_P1ScriptStructure_1272 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusScript
d_PlutusScript_1276 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_PlutusScript_1276 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.POSIXTimeRange
d_POSIXTimeRange_1278 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_POSIXTimeRange_1278 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PParamGroup
d_PParamGroup_1280 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.PParams
d_PParams_1282 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsDiff
d_PParamsDiff_1286 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsOf
d_PParamsOf_1290 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_PParamsOf_1290 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_444
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.UpdateT
d_UpdateT_1292 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_UpdateT_1292 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure
d_PlutusStructure_1294 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusV1
d_PlutusV1_1298 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.T_HSLanguage_10
d_PlutusV1_1298 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_266
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusV2
d_PlutusV2_1300 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.T_HSLanguage_10
d_PlutusV2_1300 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_268
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusV3
d_PlutusV3_1302 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.T_HSLanguage_10
d_PlutusV3_1302 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_270
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.Policy
d_Policy_1304 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Policy_1304 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PolicyOf
d_PolicyOf_1306 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1242 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_1306 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_PolicyOf_1250
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PoolThresholds
d_PoolThresholds_1308 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.Positive-ActiveSlotCoeff
d_Positive'45'ActiveSlotCoeff_1312 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_Positive'45'ActiveSlotCoeff_1312 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Positive'45'ActiveSlotCoeff_332
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1416
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.Prices
d_Prices_1314 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Prices_1314 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ProposedPPUpdates
d_ProposedPPUpdates_1316 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ProposedPPUpdates_1316 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Quorum
d_Quorum_1318 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_Quorum_1318 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Quorum_340
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1416
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.RBHeaderHash
d_RBHeaderHash_1320 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_RBHeaderHash_1320 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_1322 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_RandomnessStabilisationWindow_1322 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_94
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.RandomnessStabilisationWindowᶜ
d_RandomnessStabilisationWindow'7580'_1324 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_RandomnessStabilisationWindow'7580'_1324 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow'7580'_334
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1416
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.RdmrPtr
d_RdmrPtr_1326 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_RdmrPtr_1326 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Redeemer
d_Redeemer_1328 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Redeemer_1328 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.RewardAddress
d_RewardAddress_1330 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.RewardAddressOf
d_RewardAddressOf_1334 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_1334 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.SKey
d_SKey_1338 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_SKey_1338 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Script
d_Script_1342 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Script_1342 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptAddr
d_ScriptAddr_1344 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ScriptAddr_1344 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptBaseAddr
d_ScriptBaseAddr_1346 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ScriptBaseAddr_1346 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1348 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ScriptBootstrapAddr_1348 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptHash
d_ScriptHash_1350 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ScriptHash_1350 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure
d_ScriptStructure_1354 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.Ser
d_Ser_1360 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Ser_1360 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Show-CostModel
d_Show'45'CostModel_1362 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1362 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_284
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.Show-Credential
d_Show'45'Credential_1364 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_1364 ~v0 = du_Show'45'Credential_1364
du_Show'45'Credential_1364 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_1364 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential_362
      v1 v2
-- Ledger.Conway.Foreign.ExternalStructures._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_1366 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_1366 ~v0
  = du_Show'45'Credential'215'Coin_1366
du_Show'45'Credential'215'Coin_1366 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_1366 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential'215'Coin_366
      v1 v2
-- Ledger.Conway.Foreign.ExternalStructures._.Show-DrepThresholds
d_Show'45'DrepThresholds_1368 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_1368 ~v0 = du_Show'45'DrepThresholds_1368
du_Show'45'DrepThresholds_1368 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_1368
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'DrepThresholds_590
-- Ledger.Conway.Foreign.ExternalStructures._.Show-Epoch
d_Show'45'Epoch_1370 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_1370 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Epoch_82
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.Show-ExUnits
d_Show'45'ExUnits_1372 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1372 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_294
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.Show-GovRole
d_Show'45'GovRole_1374 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_1374 ~v0 = du_Show'45'GovRole_1374
du_Show'45'GovRole_1374 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'GovRole_1374
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_Show'45'GovRole_894
-- Ledger.Conway.Foreign.ExternalStructures._.Show-Language
d_Show'45'Language_1376 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_1376 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Language_282
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.Show-LanguageCostModels
d_Show'45'LanguageCostModels_1378 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_1378 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Show'45'LanguageCostModels_498
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.Show-Network
d_Show'45'Network_1380 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_1380 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Network_324
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1416
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.Show-PParams
d_Show'45'PParams_1382 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_1382 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'PParams_594
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
            (coe v1))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.Show-PoolThresholds
d_Show'45'PoolThresholds_1384 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_1384 ~v0 = du_Show'45'PoolThresholds_1384
du_Show'45'PoolThresholds_1384 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_1384
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'PoolThresholds_592
-- Ledger.Conway.Foreign.ExternalStructures._.Show-Prices
d_Show'45'Prices_1386 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1386 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_296
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.Show-RewardAddress
d_Show'45'RewardAddress_1388 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RewardAddress_1388 ~v0 = du_Show'45'RewardAddress_1388
du_Show'45'RewardAddress_1388 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RewardAddress_1388
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'RewardAddress_364
-- Ledger.Conway.Foreign.ExternalStructures._.Show-ScriptHash
d_Show'45'ScriptHash_1390 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_1390 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_270
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.Show-THash
d_Show'45'THash_1392 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1392 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1402
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.Show-THash
d_Show'45'THash_1394 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1394 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264 (coe v2))))
-- Ledger.Conway.Foreign.ExternalStructures._.Show-THash
d_Show'45'THash_1396 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1396 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_252
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
               (coe v2))))
-- Ledger.Conway.Foreign.ExternalStructures._.Show-VDeleg
d_Show'45'VDeleg_1398 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_1398 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_Show'45'VDeleg_1380
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.Sig
d_Sig_1400 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Sig_1400 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Slot
d_Slot_1402 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Slot_1402 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1404 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_SlotsPerEpoch'7580'_1404 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_326
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1416
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.Slotʳ
d_Slot'691'_1406 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_Slot'691'_1406 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_76
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.StabilityWindow
d_StabilityWindow_1408 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_StabilityWindow_1408 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow_96
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.StabilityWindowᶜ
d_StabilityWindow'7580'_1410 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_StabilityWindow'7580'_1410 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow'7580'_336
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1416
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.T-Hashable
d_T'45'Hashable_1412 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1412 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1402
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.T-Hashable
d_T'45'Hashable_1414 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1414 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264 (coe v2))))
-- Ledger.Conway.Foreign.ExternalStructures._.T-Hashable
d_T'45'Hashable_1416 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1416 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_252
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
               (coe v2))))
-- Ledger.Conway.Foreign.ExternalStructures._.T-isHashable
d_T'45'isHashable_1418 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_1418 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_252
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
                  (coe v1)))))
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra
d_TokenAlgebra_1422 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.Tx
d_Tx_1430 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody
d_TxBody_1434 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.TxBodyOf
d_TxBodyOf_1438 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxBody_3606 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526
d_TxBodyOf_1438 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxBodyOf_3614
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxId
d_TxId_1440 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_TxId_1440 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.TxIdOf
d_TxIdOf_1442 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxId_3686 ->
  AgdaAny -> Integer
d_TxIdOf_1442 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxIdOf_3694
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxIn
d_TxIn_1444 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_TxIn_1444 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.TxOut
d_TxOut_1446 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_TxOut_1446 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.TxOutʰ
d_TxOut'688'_1448 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_TxOut'688'_1448 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.TxRefHash
d_TxRefHash_1450 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_TxRefHash_1450 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.TxWitnesses
d_TxWitnesses_1452 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.UTxO
d_UTxO_1456 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_UTxO_1456 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.UTxOOf
d_UTxOOf_1458 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3510 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_1458 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3518
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.Update
d_Update_1460 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Update_1460 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.VDeleg
d_VDeleg_1464 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.VKey
d_VKey_1466 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VKey_1466 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.VKeyAddr
d_VKeyAddr_1468 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VKeyAddr_1468 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.VKeyBaseAddr
d_VKeyBaseAddr_1470 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VKeyBaseAddr_1470 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1472 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VKeyBootstrapAddr_1472 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.VRF
d_VRF_1476 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VRF_1476 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Value
d_Value_1478 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Value_1478 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1480 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_1480 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2636
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.VoteDelegs
d_VoteDelegs_1482 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VoteDelegs_1482 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.VoteDelegsOf
d_VoteDelegsOf_1484 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1116 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1484 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_1124
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.VoteOf
d_VoteOf_1486 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1222 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_1034
d_VoteOf_1486 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteOf_1230
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.Withdrawals
d_Withdrawals_1488 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Withdrawals_1488 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.WithdrawalsOf
d_WithdrawalsOf_1490 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_1490 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_202
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.activeDRepsOf
d_activeDRepsOf_1492 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1504 ->
  AgdaAny -> Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_1492 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (\ v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_activeDRepsOf_1530
           (coe
              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
              (coe v1))
           v3 v4 v5)
-- Ledger.Conway.Foreign.ExternalStructures._.activeInEpoch
d_activeInEpoch_1494 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_1494 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.adHashingScheme
d_adHashingScheme_1496 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_adHashingScheme_1496 ~v0 = du_adHashingScheme_1496
du_adHashingScheme_1496 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
du_adHashingScheme_1496
  = coe
      MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_isHashableSet'45'ℕ_34
-- Ledger.Conway.Foreign.ExternalStructures._.addEpoch
d_addEpoch_1498 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_1498 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_280
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.addSlot
d_addSlot_1500 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_1500 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_278
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.addValue
d_addValue_1502 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_1502 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2636
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.applyUpdate
d_applyUpdate_1504 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_applyUpdate_1504 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1454
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2618
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.coin
d_coin_1506 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_coin_1506 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2636
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.coin-inject-lemma
d_coin'45'inject'45'lemma_1508 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_1508 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1510 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_1510 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2636
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.coin∘inject≗id
d_coin'8728'inject'8791'id_1512 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_1512 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.cryptoStructure
d_cryptoStructure_1514 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
d_cryptoStructure_1514 v0
  = coe
      MAlonzo.Code.Ledger.Core.Foreign.Crypto.Structure.d_HSCryptoStructure_34
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.e<sucᵉ
d_e'60'suc'7497'_1516 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_e'60'suc'7497'_1516 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_e'60'suc'7497'_120
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.epoch
d_epoch_1518 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_epoch_1518 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.epochStructure
d_epochStructure_1520 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_epochStructure_1520 ~v0 = du_epochStructure_1520
du_epochStructure_1520 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
du_epochStructure_1520
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'46'extendedlambda0_366
      (coe MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8)
-- Ledger.Conway.Foreign.ExternalStructures._.firstSlot
d_firstSlot_1522 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_firstSlot_1522 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.gaData
d_gaData_1524 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932 ->
  AgdaAny
d_gaData_1524 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_940
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.gaType
d_gaType_1526 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_898
d_gaType_1526 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_938
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.getLanguage
d_getLanguage_1528 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.T_HSLanguage_10
d_getLanguage_1528 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_getLanguage_480
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.getScriptHash
d_getScriptHash_1530 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_78 ->
  Integer
d_getScriptHash_1530 ~v0 = du_getScriptHash_1530
du_getScriptHash_1530 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_78 ->
  Integer
du_getScriptHash_1530
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_getScriptHash_340
-- Ledger.Conway.Foreign.ExternalStructures._.getValue
d_getValue_1532 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue_1532 ~v0 = du_getValue_1532
du_getValue_1532 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_getValue_1532
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue_3768
-- Ledger.Conway.Foreign.ExternalStructures._.getValueʰ
d_getValue'688'_1534 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue'688'_1534 ~v0 = du_getValue'688'_1534
du_getValue'688'_1534 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_getValue'688'_1534
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3784
-- Ledger.Conway.Foreign.ExternalStructures._.globalConstants
d_globalConstants_1536 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
d_globalConstants_1536 ~v0 = du_globalConstants_1536
du_globalConstants_1536 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
du_globalConstants_1536
  = coe MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8
-- Ledger.Conway.Foreign.ExternalStructures._.govParams
d_govParams_1538 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472
d_govParams_1538 v0 = coe d_HsGovParams_732 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.govStructure
d_govStructure_1540 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10
d_govStructure_1540 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
      (coe d_HSTransactionStructure_778 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.govVoterCredential
d_govVoterCredential_1542 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1042 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_1542 ~v0 = du_govVoterCredential_1542
du_govVoterCredential_1542 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1042 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_govVoterCredential_1542
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_govVoterCredential_1486
-- Ledger.Conway.Foreign.ExternalStructures._.hashEBRefs
d_hashEBRefs_1544 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Integer
d_hashEBRefs_1544 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_hashEBRefs_308
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.hashRespectsUnion
d_hashRespectsUnion_1546 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_1546 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_hashRespectsUnion_374
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.inject
d_inject_1548 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_inject_1548 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2636
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.isBootstrapAddr
d_isBootstrapAddr_1550 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100
d_isBootstrapAddr_1550 ~v0 = du_isBootstrapAddr_1550
du_isBootstrapAddr_1550 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100
du_isBootstrapAddr_1550
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isBootstrapAddr_290
-- Ledger.Conway.Foreign.ExternalStructures._.isGovVoterDRep
d_isGovVoterDRep_1552 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1042 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_1552 ~v0 = du_isGovVoterDRep_1552
du_isGovVoterDRep_1552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1042 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_isGovVoterDRep_1552
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_isGovVoterDRep_1482
-- Ledger.Conway.Foreign.ExternalStructures._.isKeyHash
d_isKeyHash_1554 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_isKeyHash_1554 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.isKeyHashObj
d_isKeyHashObj_1556 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
d_isKeyHashObj_1556 ~v0 = du_isKeyHashObj_1556
du_isKeyHashObj_1556 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
du_isKeyHashObj_1556
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- Ledger.Conway.Foreign.ExternalStructures._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1558 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
d_isKeyHashObj'7495'_1558 ~v0 = du_isKeyHashObj'7495'_1558
du_isKeyHashObj'7495'_1558 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
du_isKeyHashObj'7495'_1558
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj'7495'_62
-- Ledger.Conway.Foreign.ExternalStructures._.isKeyPair
d_isKeyPair_1560 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 -> ()
d_isKeyPair_1560 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.isNativeScript
d_isNativeScript_1562 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_1562 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.isP1Script
d_isP1Script_1564 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_1564 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.isP1Script?
d_isP1Script'63'_1566 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_1566 ~v0 = du_isP1Script'63'_1566
du_isP1Script'63'_1566 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_1566
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP1Script'63'_458
-- Ledger.Conway.Foreign.ExternalStructures._.isP2Script
d_isP2Script_1568 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_1568 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.isP2Script?
d_isP2Script'63'_1570 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_1570 ~v0 = du_isP2Script'63'_1570
du_isP2Script'63'_1570 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_1570
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP2Script'63'_472
-- Ledger.Conway.Foreign.ExternalStructures._.isScript
d_isScript_1572 a0 a1 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.isScriptAddr
d_isScriptAddr_1574 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1574 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.isScriptObj
d_isScriptObj_1576 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
d_isScriptObj_1576 ~v0 = du_isScriptObj_1576
du_isScriptObj_1576 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
du_isScriptObj_1576
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
-- Ledger.Conway.Foreign.ExternalStructures._.isScriptRewardAddress
d_isScriptRewardAddress_1578 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  ()
d_isScriptRewardAddress_1578 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.isSigned
d_isSigned_1580 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer -> Integer -> ()
d_isSigned_1580 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.isSigned-correct
d_isSigned'45'correct_1582 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isSigned'45'correct_1582 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.isSignedBy
d_isSignedBy_1584 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer -> ()
d_isSignedBy_1584 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.isSignedByAggregate
d_isSignedByAggregate_1586 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] -> Integer -> Integer -> ()
d_isSignedByAggregate_1586 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.isVKey
d_isVKey_1588 a0 a1 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.isVKeyAddr
d_isVKeyAddr_1590 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1590 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.isValidPoP
d_isValidPoP_1592 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> ()
d_isValidPoP_1592 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.khs
d_khs_1594 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_1594 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.language
d_language_1596 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSPlutusScript_328 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.T_HSLanguage_10
d_language_1596 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_324
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.languageCostModels
d_languageCostModels_1598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_484 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_1598 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_488
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.lookupScriptHash
d_lookupScriptHash_1600 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_1600 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_lookupScriptHash_3866
      (coe d_HSTransactionStructure_778 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.monoid
d_monoid_1604 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_1604 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_monoid_1066
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2636
                  (coe v1)))))
-- Ledger.Conway.Foreign.ExternalStructures._.netId
d_netId_1606 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_netId_1606 ~v0 = du_netId_1606
du_netId_1606 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
du_netId_1606
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_266
-- Ledger.Conway.Foreign.ExternalStructures._.p1s
d_p1s_1608 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_152
d_p1s_1608 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_354
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.paramsWF-elim
d_paramsWF'45'elim_1610 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_1610 ~v0 = du_paramsWF'45'elim_1610
du_paramsWF'45'elim_1610 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_1610 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_paramsWF'45'elim_562
      v2
-- Ledger.Conway.Foreign.ExternalStructures._.paramsWellFormed
d_paramsWellFormed_1612 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  ()
d_paramsWellFormed_1612 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.payCred
d_payCred_1614 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_payCred_1614 ~v0 = du_payCred_1614
du_payCred_1614 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_payCred_1614
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_262
-- Ledger.Conway.Foreign.ExternalStructures._.pkk
d_pkk_1616 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_1616 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.policies
d_policies_1618 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> [Integer]
d_policies_1618 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2636
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.positivePParams
d_positivePParams_1620 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  [Integer]
d_positivePParams_1620 ~v0 = du_positivePParams_1620
du_positivePParams_1620 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  [Integer]
du_positivePParams_1620
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_positivePParams_472
-- Ledger.Conway.Foreign.ExternalStructures._.ppUpd
d_ppUpd_1622 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438
d_ppUpd_1622 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2618
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.ppWF?
d_ppWF'63'_1624 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1624 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1462
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2618
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.ppdWellFormed
d_ppdWellFormed_1626 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  ()
d_ppdWellFormed_1626 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.preoEpoch
d_preoEpoch_1628 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_1628 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_110
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.proposedCC
d_proposedCC_1630 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_1630 ~v0 = du_proposedCC_1630
du_proposedCC_1630 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_proposedCC_1630
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_proposedCC_1494
-- Ledger.Conway.Foreign.ExternalStructures._.ps
d_ps_1632 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176
d_ps_1632 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.rawMonoid
d_rawMonoid_1634 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_1634 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2636
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
            (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v2))))
-- Ledger.Conway.Foreign.ExternalStructures._.refScripts
d_refScripts_1636 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_1636 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refScripts_3808
      (coe d_HSTransactionStructure_778 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.scriptOuts
d_scriptOuts_1638 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOuts_1638 ~v0 = du_scriptOuts_1638
du_scriptOuts_1638 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_scriptOuts_1638
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_scriptOuts_3794
-- Ledger.Conway.Foreign.ExternalStructures._.scriptStructure
d_scriptStructure_1640 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328
d_scriptStructure_1640 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_HSScriptStructure_372
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.sign
d_sign_1642 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer
d_sign_1642 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236 (coe v2))))
-- Ledger.Conway.Foreign.ExternalStructures._.size
d_size_1644 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_size_1644 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2636
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.stakeCred
d_stakeCred_1646 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stakeCred_1646 ~v0 = du_stakeCred_1646
du_stakeCred_1646 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_stakeCred_1646
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_stakeCred_264
-- Ledger.Conway.Foreign.ExternalStructures._.sucᵉ
d_suc'7497'_1648 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_suc'7497'_1648 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_suc'7497'_98
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.sumᵛ
d_sum'7515'_1650 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] -> Integer
d_sum'7515'_1650 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2636
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.toP1Script
d_toP1Script_1652 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSTimelock_302
d_toP1Script_1652 ~v0 = du_toP1Script_1652
du_toP1Script_1652 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSTimelock_302
du_toP1Script_1652
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_466
-- Ledger.Conway.Foreign.ExternalStructures._.toP2Script
d_toP2Script_1654 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSPlutusScript_328
d_toP2Script_1654 ~v0 = du_toP2Script_1654
du_toP2Script_1654 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSPlutusScript_328
du_toP2Script_1654
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP2Script_478
-- Ledger.Conway.Foreign.ExternalStructures._.tokenAlgebra
d_tokenAlgebra_1656 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14
d_tokenAlgebra_1656 ~v0 = du_tokenAlgebra_1656
du_tokenAlgebra_1656 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14
du_tokenAlgebra_1656
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Coin.du_Coin'45'TokenAlgebra_132
-- Ledger.Conway.Foreign.ExternalStructures._.txInsScript
d_txInsScript_1658 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txInsScript_1658 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txInsScript_3802
      (coe d_HSTransactionStructure_778 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.txInsVKey
d_txInsVKey_1660 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txInsVKey_1660 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txInsVKey_3788
      (coe d_HSTransactionStructure_778 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.txOutHash
d_txOutHash_1662 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_1662 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3774
      (coe d_HSTransactionStructure_778 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.txidBytes
d_txidBytes_1664 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_txidBytes_1664 ~v0 v1 = du_txidBytes_1664 v1
du_txidBytes_1664 :: Integer -> Integer
du_txidBytes_1664 v0 = coe v0
-- Ledger.Conway.Foreign.ExternalStructures._.txscripts
d_txscripts_1666 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_1666 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txscripts_3856
      (coe d_HSTransactionStructure_778 (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.updateGroups
d_updateGroups_1668 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_206]
d_updateGroups_1668 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1456
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2618
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.validP1Script
d_validP1Script_1676 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSTimelock_302 ->
  ()
d_validP1Script_1676 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.validPlutusScript
d_validPlutusScript_1678 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSPlutusScript_328 ->
  ()
d_validPlutusScript_1678 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ε
d_ε_1680 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_ε_1680 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Class.Monoid.Core.d_ε_20
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2636
                  (coe v1)))))
-- Ledger.Conway.Foreign.ExternalStructures._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1682 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1682 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ℕEpochStructure
d_ℕEpochStructure_1684 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_ℕEpochStructure_1684 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕEpochStructure_360
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1416
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.ℕtoEpoch
d_ℕtoEpoch_1686 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_ℕtoEpoch_1686 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕtoEpoch_274
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.≤-predᵉ
d_'8804''45'pred'7497'_1688 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'pred'7497'_1688 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'8804''45'pred'7497'_126
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.≥ᵉ-Dec
d_'8805''7497''45'Dec_1690 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_1690 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_'8805''7497''45'Dec_288
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
               (coe v1))))
-- Ledger.Conway.Foreign.ExternalStructures._.Acnt.reserves
d_reserves_1700 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188 ->
  Integer
d_reserves_1700 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_196
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.Acnt.treasury
d_treasury_1702 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188 ->
  Integer
d_treasury_1702 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_194
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.Anchor.hash
d_hash_1706 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_1054 ->
  Integer
d_hash_1706 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_hash_1062
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.Anchor.url
d_url_1708 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_1054 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_1708 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_url_1060
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.BaseAddr.net
d_net_1712 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  Integer
d_net_1712 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_92 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.BaseAddr.pay
d_pay_1714 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1714 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_94 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.BaseAddr.stake
d_stake_1716 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1716 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_96 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.BootstrapAddr.attrsSize
d_attrsSize_1720 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  Integer
d_attrsSize_1720 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_112
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.BootstrapAddr.net
d_net_1722 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  Integer
d_net_1722 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_108 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.BootstrapAddr.pay
d_pay_1724 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1724 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_110 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DrepThresholds.P1
d_P1_1734 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_1734 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P1_240 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DrepThresholds.P2a
d_P2a_1736 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_1736 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2a_242 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DrepThresholds.P2b
d_P2b_1738 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_1738 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2b_244 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DrepThresholds.P3
d_P3_1740 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_1740 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P3_246 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DrepThresholds.P4
d_P4_1742 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_1742 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P4_248 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DrepThresholds.P5a
d_P5a_1744 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_1744 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5a_250 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DrepThresholds.P5b
d_P5b_1746 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_1746 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5b_252 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DrepThresholds.P5c
d_P5c_1748 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_1748 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5c_254 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DrepThresholds.P5d
d_P5d_1750 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_1750 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5d_256 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DrepThresholds.P6
d_P6_1752 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_1752 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P6_258 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovAction.gaData
d_gaData_1756 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932 ->
  AgdaAny
d_gaData_1756 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_940
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovAction.gaType
d_gaType_1758 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_898
d_gaType_1758 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_938
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActionState.action
d_action_1762 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1174 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932
d_action_1762 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1192
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActionState.expiresIn
d_expiresIn_1764 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1174 ->
  Integer
d_expiresIn_1764 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_expiresIn_1190
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActionState.prevAction
d_prevAction_1766 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1174 ->
  AgdaAny
d_prevAction_1766 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1194
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActionState.returnAddr
d_returnAddr_1768 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1174 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_1768 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1188
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActionState.votes
d_votes_1770 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1174 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_1086
d_votes_1770 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1186
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.==-GovAction
d_'61''61''45'GovAction_1790 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932 ->
  Bool
d_'61''61''45'GovAction_1790 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovAction_1002
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.==-GovActionData
d_'61''61''45'GovActionData_1792 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_898 ->
  AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_1792 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovActionData_984
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.==-GovProposal
d_'61''61''45'GovProposal_1794 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1146 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1146 ->
  Bool
d_'61''61''45'GovProposal_1794 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovProposal_1386
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.==-Set
d_'61''61''45'Set_1796 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_1796 ~v0 = du_'61''61''45'Set_1796
du_'61''61''45'Set_1796 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
du_'61''61''45'Set_1796 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_'61''61''45'Set_972
      v1 v2 v3
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.Anchor
d_Anchor_1798 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.DReps
d_DReps_1808 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_DReps_1808 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.DRepsOf
d_DRepsOf_1810 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1504 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1810 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1512
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.DecEq-Anchor
d_DecEq'45'Anchor_1812 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_1812 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'Anchor_1278
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.DecEq-GovActionType
d_DecEq'45'GovActionType_1814 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_1814 ~v0 = du_DecEq'45'GovActionType_1814
du_DecEq'45'GovActionType_1814 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_1814
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovActionType_966
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.DecEq-GovRole
d_DecEq'45'GovRole_1816 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_1816 ~v0 = du_DecEq'45'GovRole_1816
du_DecEq'45'GovRole_1816 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_1816
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovRole_1272
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.DecEq-GovVoter
d_DecEq'45'GovVoter_1818 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_1818 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'GovVoter_1280
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.DecEq-NeedsHash
d_DecEq'45'NeedsHash_1820 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_898 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_1820 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'NeedsHash_1384
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.DecEq-VDeleg
d_DecEq'45'VDeleg_1822 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_1822 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1276
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.DecEq-Vote
d_DecEq'45'Vote_1824 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_1824 ~v0 = du_DecEq'45'Vote_1824
du_DecEq'45'Vote_1824 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_1824
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'Vote_1274
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovAction
d_GovAction_1826 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovActionData
d_GovActionData_1830 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_898 ->
  ()
d_GovActionData_1830 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovActionID
d_GovActionID_1832 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_GovActionID_1832 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovActionOf
d_GovActionOf_1834 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_946 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932
d_GovActionOf_1834 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionOf_952
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovActionState
d_GovActionState_1836 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovActionType
d_GovActionType_1840 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovActionTypeOf
d_GovActionTypeOf_1842 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_916 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_898
d_GovActionTypeOf_1842 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionTypeOf_922
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovProposal
d_GovProposal_1844 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovRole
d_GovRole_1848 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovRoleCredential
d_GovRoleCredential_1850 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_886 ->
  ()
d_GovRoleCredential_1850 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovVote
d_GovVote_1852 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovVoter
d_GovVoter_1856 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovVoterOf
d_GovVoterOf_1860 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1202 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1042
d_GovVoterOf_1860 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovVoterOf_1210
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovVotes
d_GovVotes_1862 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_1866 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_1866 ~v0
  = du_HasCast'45'GovAction'45'Sigma_1866
du_HasCast'45'GovAction'45'Sigma_1866 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_1866
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_962
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasCast-GovVote
d_HasCast'45'GovVote_1868 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_1868 ~v0 = du_HasCast'45'GovVote_1868
du_HasCast'45'GovVote_1868 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_1868
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovVote_1378
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasCast-HashProtected
d_HasCast'45'HashProtected_1870 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_1870 ~v0
  = du_HasCast'45'HashProtected_1870
du_HasCast'45'HashProtected_1870 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_1870 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1140
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_1872 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_1872 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_1872
du_HasCast'45'HashProtected'45'MaybeScriptHash_1872 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_1872
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1142
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasDReps
d_HasDReps_1874 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasGovAction
d_HasGovAction_1878 a0 a1 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_1882 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_946
d_HasGovAction'45'GovActionState_1882 ~v0
  = du_HasGovAction'45'GovActionState_1882
du_HasGovAction'45'GovActionState_1882 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_946
du_HasGovAction'45'GovActionState_1882
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1266
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_1884 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_946
d_HasGovAction'45'GovProposal_1884 ~v0
  = du_HasGovAction'45'GovProposal_1884
du_HasGovAction'45'GovProposal_1884 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_946
du_HasGovAction'45'GovProposal_1884
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1264
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasGovActionType
d_HasGovActionType_1886 a0 a1 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_1890 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_916
d_HasGovActionType'45'GovAction_1890 ~v0
  = du_HasGovActionType'45'GovAction_1890
du_HasGovActionType'45'GovAction_1890 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_916
du_HasGovActionType'45'GovAction_1890
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_960
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_1892 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_916
d_HasGovActionType'45'GovActionState_1892 ~v0
  = du_HasGovActionType'45'GovActionState_1892
du_HasGovActionType'45'GovActionState_1892 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_916
du_HasGovActionType'45'GovActionState_1892
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1270
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_1894 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_916
d_HasGovActionType'45'GovProposal_1894 ~v0
  = du_HasGovActionType'45'GovProposal_1894
du_HasGovActionType'45'GovProposal_1894 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_916
du_HasGovActionType'45'GovProposal_1894
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1268
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasGovVoter
d_HasGovVoter_1896 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_1900 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1202
d_HasGovVoter'45'GovVote_1900 ~v0 = du_HasGovVoter'45'GovVote_1900
du_HasGovVoter'45'GovVote_1900 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1202
du_HasGovVoter'45'GovVote_1900
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1258
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasPolicy
d_HasPolicy_1902 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_1906 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1242
d_HasPolicy'45'GovProposal_1906 ~v0
  = du_HasPolicy'45'GovProposal_1906
du_HasPolicy'45'GovProposal_1906 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1242
du_HasPolicy'45'GovProposal_1906
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1262
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasVote
d_HasVote_1908 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasVote-GovVote
d_HasVote'45'GovVote_1912 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1222
d_HasVote'45'GovVote_1912 ~v0 = du_HasVote'45'GovVote_1912
du_HasVote'45'GovVote_1912 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1222
du_HasVote'45'GovVote_1912
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasVote'45'GovVote_1260
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasVoteDelegs
d_HasVoteDelegs_1914 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HashProtected
d_HashProtected_1918 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () -> ()
d_HashProtected_1918 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.NeedsHash
d_NeedsHash_1922 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_898 ->
  ()
d_NeedsHash_1922 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.Policy
d_Policy_1928 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Policy_1928 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.PolicyOf
d_PolicyOf_1930 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1242 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_1930 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_PolicyOf_1250
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.Show-GovRole
d_Show'45'GovRole_1934 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_1934 ~v0 = du_Show'45'GovRole_1934
du_Show'45'GovRole_1934 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'GovRole_1934
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_Show'45'GovRole_894
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.Show-VDeleg
d_Show'45'VDeleg_1936 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_1936 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_Show'45'VDeleg_1380
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.VDeleg
d_VDeleg_1944 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.Vote
d_Vote_1946 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.VoteDelegs
d_VoteDelegs_1948 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VoteDelegs_1948 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.VoteDelegsOf
d_VoteDelegsOf_1950 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1116 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1950 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_1124
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.VoteOf
d_VoteOf_1952 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1222 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_1034
d_VoteOf_1952 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteOf_1230
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.activeDRepsOf
d_activeDRepsOf_1956 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1504 ->
  AgdaAny -> Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_1956 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (\ v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_activeDRepsOf_1530
           (coe
              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
              (coe v1))
           v3 v4 v5)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.activeInEpoch
d_activeInEpoch_1958 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_1958 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.gaData
d_gaData_1960 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932 ->
  AgdaAny
d_gaData_1960 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_940
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.gaType
d_gaType_1962 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_898
d_gaType_1962 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_938
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.govVoterCredential
d_govVoterCredential_1964 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1042 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_1964 ~v0 = du_govVoterCredential_1964
du_govVoterCredential_1964 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1042 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_govVoterCredential_1964
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_govVoterCredential_1486
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.isGovVoterDRep
d_isGovVoterDRep_1966 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1042 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_1966 ~v0 = du_isGovVoterDRep_1966
du_isGovVoterDRep_1966 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1042 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_isGovVoterDRep_1966
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_isGovVoterDRep_1482
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.proposedCC
d_proposedCC_1970 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_1970 ~v0 = du_proposedCC_1970
du_proposedCC_1970 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_proposedCC_1970
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_proposedCC_1494
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovProposal.action
d_action_1986 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1146 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932
d_action_1986 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1160
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovProposal.anchor
d_anchor_1988 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1146 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_1054
d_anchor_1988 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_1170
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovProposal.deposit
d_deposit_1990 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1146 ->
  Integer
d_deposit_1990 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_deposit_1166
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovProposal.policy
d_policy_1992 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1146 ->
  Maybe Integer
d_policy_1992 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_policy_1164
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovProposal.prevAction
d_prevAction_1994 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1146 ->
  AgdaAny
d_prevAction_1994 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1162
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovProposal.returnAddr
d_returnAddr_1996 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1146 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_1996 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1168
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovVote.anchor
d_anchor_2008 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1066 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_1054
d_anchor_2008 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_1082
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovVote.gid
d_gid_2010 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1066 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_2010 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gid_1076
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovVote.vote
d_vote_2012 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1066 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_1034
d_vote_2012 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_vote_1080
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovVote.voter
d_voter_2014 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1066 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1042
d_voter_2014 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_voter_1078
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovVoter.gvCredential
d_gvCredential_2018 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1042 ->
  AgdaAny
d_gvCredential_2018 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvCredential_1050
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovVoter.gvRole
d_gvRole_2020 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1042 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_886
d_gvRole_2020 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvRole_1048
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovVotes.gvCC
d_gvCC_2024 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_1086 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvCC_2024 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvCC_1094
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovVotes.gvDRep
d_gvDRep_2026 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_1086 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvDRep_2026 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvDRep_1096
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.GovVotes.gvSPO
d_gvSPO_2028 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_1086 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvSPO_2028 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvSPO_1098
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasDReps.DRepsOf
d_DRepsOf_2032 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1504 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_2032 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1512
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasGovAction.GovActionOf
d_GovActionOf_2036 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_946 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932
d_GovActionOf_2036 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionOf_952
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasGovActionType.GovActionTypeOf
d_GovActionTypeOf_2040 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_916 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_898
d_GovActionTypeOf_2040 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionTypeOf_922
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasGovVoter.GovVoterOf
d_GovVoterOf_2044 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1202 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1042
d_GovVoterOf_2044 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovVoterOf_1210
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasPolicy.PolicyOf
d_PolicyOf_2048 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1242 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_2048 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_PolicyOf_1250
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasVote.VoteOf
d_VoteOf_2052 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1222 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_1034
d_VoteOf_2052 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteOf_1230
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovActions.HasVoteDelegs.VoteDelegsOf
d_VoteDelegsOf_2056 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1116 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_2056 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_1124
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_2076 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_2076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1504
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovParams.UpdateT
d_UpdateT_2078 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  ()
d_UpdateT_2078 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.GovParams.applyUpdate
d_applyUpdate_2080 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_applyUpdate_2080 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1454
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.GovParams.ppUpd
d_ppUpd_2082 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438
d_ppUpd_2082 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GovParams.ppWF?
d_ppWF'63'_2084 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1462
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.GovParams.ppdWellFormed
d_ppdWellFormed_2086 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  AgdaAny -> ()
d_ppdWellFormed_2086 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.GovParams.updateGroups
d_updateGroups_2088 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_206]
d_updateGroups_2088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1456
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.HasAttrSize.AttrSizeOf
d_AttrSizeOf_2092 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214 ->
  AgdaAny -> Integer
d_AttrSizeOf_2092 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_222
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasCCMaxTermLength.CCMaxTermLengthOf
d_CCMaxTermLengthOf_2096 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_456 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_2096 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_464
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasCredential.CredentialOf
d_CredentialOf_2100 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_2100 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasDCerts.DCertsOf
d_DCertsOf_2104 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasDCerts_3626 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1398]
d_DCertsOf_2104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DCertsOf_3634
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasGovProposals.GovProposalsOf
d_GovProposalsOf_2108 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovProposals_3646 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1146]
d_GovProposalsOf_2108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_GovProposalsOf_3654
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasGovVotes.GovVotesOf
d_GovVotesOf_2112 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovVotes_3666 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1066]
d_GovVotesOf_2112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_GovVotesOf_3674
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasMaybeNetworkId.MaybeNetworkIdOf
d_MaybeNetworkIdOf_2116 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174 ->
  AgdaAny -> Maybe Integer
d_MaybeNetworkIdOf_2116 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_182
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasNetworkId.NetworkIdOf
d_NetworkIdOf_2120 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154 ->
  AgdaAny -> Integer
d_NetworkIdOf_2120 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_162
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasPParams.PParamsOf
d_PParamsOf_2124 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_PParamsOf_2124 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_444
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasRewardAddress.RewardAddressOf
d_RewardAddressOf_2128 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_2128 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasTxBody.TxBodyOf
d_TxBodyOf_2132 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxBody_3606 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526
d_TxBodyOf_2132 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxBodyOf_3614
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasTxId.TxIdOf
d_TxIdOf_2136 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxId_3686 ->
  AgdaAny -> Integer
d_TxIdOf_2136 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxIdOf_3694
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasUTxO.UTxOOf
d_UTxOOf_2140 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3510 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_2140 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3518
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasWithdrawals.WithdrawalsOf
d_WithdrawalsOf_2144 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_2144 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_202
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidHomomorphism.homo
d_homo_2156 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2156 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2158 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2158 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2160 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2160 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2162 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2162 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidHomomorphism.cong
d_cong_2164 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2164 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidIsomorphism.homo
d_homo_2168 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2168 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidIsomorphism.injective
d_injective_2170 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_2170 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2172 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2172 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2174 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_2174 ~v0 = du_isMagmaIsomorphism_2174
du_isMagmaIsomorphism_2174 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_2174 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2176 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2176 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_2176 v2
du_isMagmaMonomorphism_2176 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2176 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2178 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2178 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2180 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_2180 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2182 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2182 v0
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
d_isRelIsomorphism_2184 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_2184 ~v0 ~v1 v2 = du_isRelIsomorphism_2184 v2
du_isRelIsomorphism_2184 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_2184 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2186 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2186 ~v0 ~v1 v2 = du_isRelMonomorphism_2186 v2
du_isRelMonomorphism_2186 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2186 v0
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
d_surjective_2188 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2188 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2190 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2190 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidIsomorphism.cong
d_cong_2192 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2192 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidMonomorphism.homo
d_homo_2196 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2196 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidMonomorphism.injective
d_injective_2198 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_2198 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2200 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2200 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2202 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2202 ~v0 = du_isMagmaMonomorphism_2202
du_isMagmaMonomorphism_2202 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2202 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2204 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2204 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2206 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2206 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2208 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2208 ~v0 ~v1 v2 = du_isRelMonomorphism_2208 v2
du_isRelMonomorphism_2208 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2208 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2210 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2210 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.IsMonoidMonomorphism.cong
d_cong_2212 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2212 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.LanguageCostModels.languageCostModels
d_languageCostModels_2216 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_484 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_2216 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_488
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_2220 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_152 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2220 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_168
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_2222 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_152 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2222 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_172
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_2224 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_152 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_2224 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_170
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.P1ScriptStructure.P1Script
d_P1Script_2226 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_152 ->
  ()
d_P1Script_2226 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.P1ScriptStructure.validP1Script
d_validP1Script_2228 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_152 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_2228 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.Emax
d_Emax_2244 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_Emax_2244 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_402
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.a
d_a_2246 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_a_2246 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_374 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.a0
d_a0_2248 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2248 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_406 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.b
d_b_2250 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_b_2250 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_376 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.ccMaxTermLength
d_ccMaxTermLength_2252 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_ccMaxTermLength_2252 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_418
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.ccMinSize
d_ccMinSize_2254 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_ccMinSize_2254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_416
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_2256 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_coinsPerUTxOByte_2256 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_386
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.collateralPercentage
d_collateralPercentage_2258 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_collateralPercentage_2258 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_408
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.costmdls
d_costmdls_2260 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_costmdls_2260 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.du_costmdls_428
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.costmdlsAssoc
d_costmdlsAssoc_2262 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_484
d_costmdlsAssoc_2262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdlsAssoc_410
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.drepActivity
d_drepActivity_2264 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_drepActivity_2264 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_426
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.drepDeposit
d_drepDeposit_2266 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_drepDeposit_2266 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_424
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.drepThresholds
d_drepThresholds_2268 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218
d_drepThresholds_2268 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_414
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.govActionDeposit
d_govActionDeposit_2270 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_govActionDeposit_2270 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_422
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.govActionLifetime
d_govActionLifetime_2272 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_govActionLifetime_2272 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_420
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.keyDeposit
d_keyDeposit_2274 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_keyDeposit_2274 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_378
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.maxBlockExUnits
d_maxBlockExUnits_2276 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_2276 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_366
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.maxBlockSize
d_maxBlockSize_2278 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxBlockSize_2278 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_358
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.maxCollateralInputs
d_maxCollateralInputs_2280 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxCollateralInputs_2280 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_370
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.maxHeaderSize
d_maxHeaderSize_2282 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxHeaderSize_2282 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_362
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2284 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxRefScriptSizePerBlock_2284 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_394
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2286 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxRefScriptSizePerTx_2286 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_392
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.maxTxExUnits
d_maxTxExUnits_2288 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_2288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_364
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.maxTxSize
d_maxTxSize_2290 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxTxSize_2290 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_360
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.maxValSize
d_maxValSize_2292 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxValSize_2292 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_368
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2294 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2294 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_390
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.minUTxOValue
d_minUTxOValue_2296 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_minUTxOValue_2296 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_400
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.monetaryExpansion
d_monetaryExpansion_2298 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2298 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_382
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.nopt
d_nopt_2300 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_nopt_2300 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_404
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.poolDeposit
d_poolDeposit_2302 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_poolDeposit_2302 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_380
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.poolThresholds
d_poolThresholds_2304 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262
d_poolThresholds_2304 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_412
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.prices
d_prices_2306 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_2306 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_388
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.pv
d_pv_2308 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2308 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_372 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_2310 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2310 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_398
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.refScriptCostStride
d_refScriptCostStride_2312 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2312 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_396
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParams.treasuryCut
d_treasuryCut_2314 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2314 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_384
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsDiff.UpdateT
d_UpdateT_2318 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438 ->
  ()
d_UpdateT_2318 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsDiff.applyUpdate
d_applyUpdate_2320 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_applyUpdate_2320 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1454
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsDiff.ppWF?
d_ppWF'63'_2322 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2322 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1462
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_2324 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438 ->
  AgdaAny -> ()
d_ppdWellFormed_2324 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsDiff.updateGroups
d_updateGroups_2326 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_206]
d_updateGroups_2326 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1456
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate._?↗_
d__'63''8599'__2330 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__2330 ~v0 = du__'63''8599'__2330
du__'63''8599'__2330 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__2330 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du__'63''8599'__1224
      v1 v2
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate._∪ˡᶜᵐ_
d__'8746''737''7580''7504'__2332 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_484 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_484 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_484
d__'8746''737''7580''7504'__2332 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Script.Base.C_mkLanguageCostModels_490
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                 (coe
                    MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1516
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_276
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
                             (coe v1))))
                    (coe
                       MAlonzo.Code.Data.List.Base.du__'43''43'__32
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_488
                          (coe v2))
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_488
                          (coe v3)))))))
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_2334 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_2334 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamsUpdate_1436
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
            (coe v1))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_2336 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_2340 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_applyPParamsUpdate_2340 v0
  = let v1 = d_HSTransactionStructure_778 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.du_applyPParamsUpdate_1278
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_2342 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_206]
d_modifiedUpdateGroups_2342 ~v0 = du_modifiedUpdateGroups_2342
du_modifiedUpdateGroups_2342 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_206]
du_modifiedUpdateGroups_2342
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiedUpdateGroups_1208
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_2344 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
d_modifiesEconomicGroup_2344 ~v0 = du_modifiesEconomicGroup_2344
du_modifiesEconomicGroup_2344 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
du_modifiesEconomicGroup_2344
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesEconomicGroup_904
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_2346 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
d_modifiesGovernanceGroup_2346 ~v0
  = du_modifiesGovernanceGroup_2346
du_modifiesGovernanceGroup_2346 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
du_modifiesGovernanceGroup_2346
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesGovernanceGroup_1056
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_2348 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
d_modifiesNetworkGroup_2348 ~v0 = du_modifiesNetworkGroup_2348
du_modifiesNetworkGroup_2348 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
du_modifiesNetworkGroup_2348
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesNetworkGroup_828
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_2350 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
d_modifiesSecurityGroup_2350 ~v0 = du_modifiesSecurityGroup_2350
du_modifiesSecurityGroup_2350 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
du_modifiesSecurityGroup_2350
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesSecurityGroup_1132
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_2352 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
d_modifiesTechnicalGroup_2352 ~v0 = du_modifiesTechnicalGroup_2352
du_modifiesTechnicalGroup_2352 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
du_modifiesTechnicalGroup_2352
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesTechnicalGroup_980
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_2354 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  ()
d_paramsUpdateWellFormed_2354 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_2356 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_2356 v0
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
d_'8801''45'update_2358 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'update_2358 ~v0 = du_'8801''45'update_2358
du_'8801''45'update_2358 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8801''45'update_2358 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_'8801''45'update_1238
      v1
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_2362 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_Emax_2362 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_716
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.a
d_a_2364 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_a_2364 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_686 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.a0
d_a0_2366 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2366 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_714 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.b
d_b_2368 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_b_2368 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_688 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_2370 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_ccMaxTermLength_2370 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_738
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_2372 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_ccMinSize_2372 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_736
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_2374 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_coinsPerUTxOByte_2374 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_698
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_2376 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_collateralPercentage_2376 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_720
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_2378 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_484
d_costmdls_2378 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_722
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_2380 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_drepActivity_2380 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_734
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_2382 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_drepDeposit_2382 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_732
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_2384 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218
d_drepThresholds_2384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_724
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_2386 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_govActionDeposit_2386 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_730
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_2388 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_govActionLifetime_2388 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_728
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_2390 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_keyDeposit_2390 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_690
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_2392 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_2392 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_682
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_2394 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxBlockSize_2394 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_670
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_2396 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxCollateralInputs_2396 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_678
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_2398 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxHeaderSize_2398 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_674
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2400 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_2400 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_706
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2402 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxRefScriptSizePerTx_2402 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_704
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_2404 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_2404 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_680
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_2406 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxTxSize_2406 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_672
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_2408 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxValSize_2408 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_676
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2410 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2410 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_702
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_2412 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_minUTxOValue_2412 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_712
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_2414 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2414 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_694
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_2416 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_nopt_2416 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_718
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_2418 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_poolDeposit_2418 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_692
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_2420 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262
d_poolThresholds_2420 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_726
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.prices
d_prices_2422 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_2422 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_700
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.pv
d_pv_2424 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2424 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_684 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_2426 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2426 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_710
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_2428 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2428 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_708
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_2430 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2430 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_696
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure._≥ᵉ_
d__'8805''7497'__2434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2434 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.CostModel
d_CostModel_2436 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  ()
d_CostModel_2436 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.T
d_T_2438 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  ()
d_T_2438 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.THash
d_THash_2440 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  ()
d_THash_2440 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.Dataʰ
d_Data'688'_2442 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_2442 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_252
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.Datum
d_Datum_2444 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  ()
d_Datum_2444 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2446 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2446 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_322
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_2448 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2448 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_292
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_2450 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2450 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_278
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2452 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_290
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2454 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2454 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_280
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_2456 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2456 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_276
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.DecEq-T
d_DecEq'45'T_2458 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2458 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_252
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_2460 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2460 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_252
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2462 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2462 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_272
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.ExUnits
d_ExUnits_2464 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  ()
d_ExUnits_2464 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2466 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_2466 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_274
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.LangDepView
d_LangDepView_2468 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  ()
d_LangDepView_2468 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.Language
d_Language_2470 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  ()
d_Language_2470 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.PlutusScript
d_PlutusScript_2472 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  ()
d_PlutusScript_2472 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.PlutusV1
d_PlutusV1_2474 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  AgdaAny
d_PlutusV1_2474 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_266
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.PlutusV2
d_PlutusV2_2476 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  AgdaAny
d_PlutusV2_2476 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_268
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.PlutusV3
d_PlutusV3_2478 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  AgdaAny
d_PlutusV3_2478 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_270
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.Prices
d_Prices_2480 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  ()
d_Prices_2480 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.Redeemer
d_Redeemer_2482 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  ()
d_Redeemer_2482 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_2484 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2484 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_284
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_2486 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2486 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_294
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.Show-Language
d_Show'45'Language_2488 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_2488 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Language_282
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.Show-Prices
d_Show'45'Prices_2490 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2490 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_296
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.Show-THash
d_Show'45'THash_2492 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2492 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_252
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.T-Hashable
d_T'45'Hashable_2494 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_2494 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_252
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.T-isHashable
d_T'45'isHashable_2496 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_2496 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_252
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.language
d_language_2498 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  AgdaAny -> AgdaAny
d_language_2498 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_324
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.validPlutusScript
d_validPlutusScript_2500 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2500 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PlutusStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_2502 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_2502 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_'8805''7497''45'Dec_288
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PoolThresholds.Q1
d_Q1_2506 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_2506 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q1_274 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PoolThresholds.Q2a
d_Q2a_2508 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_2508 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2a_276 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PoolThresholds.Q2b
d_Q2b_2510 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_2510 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2b_278 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PoolThresholds.Q4
d_Q4_2512 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_2512 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q4_280 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PoolThresholds.Q5
d_Q5_2514 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_2514 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q5_282 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.RewardAddress.net
d_net_2518 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  Integer
d_net_2518 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.RewardAddress.stake
d_stake_2520 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_2520 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure._≥ᵉ_
d__'8805''7497'__2524 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2524 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.CostModel
d_CostModel_2526 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  ()
d_CostModel_2526 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.T
d_T_2528 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  ()
d_T_2528 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.THash
d_THash_2530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  ()
d_THash_2530 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.Dataʰ
d_Data'688'_2532 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_2532 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_252
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.Datum
d_Datum_2534 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  ()
d_Datum_2534 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_2536 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2536 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_168
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_354
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2538 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2538 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_322
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_2540 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2540 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_292
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_2542 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2542 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_278
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2544 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2544 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_290
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2546 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2546 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_280
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_2548 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2548 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_276
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_2550 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_2550 ~v0
  = du_DecEq'45'LanguageCostModels_2550
du_DecEq'45'LanguageCostModels_2550 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'LanguageCostModels_2550
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_DecEq'45'LanguageCostModels_492
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_2552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2552 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_172
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_354
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.DecEq-T
d_DecEq'45'T_2554 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2554 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_252
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_2556 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2556 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_252
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2558 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_272
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.ExUnits
d_ExUnits_2560 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  ()
d_ExUnits_2560 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_2562 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_2562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_170
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_354
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2564 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_2564 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_274
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_2566 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_2566 ~v0 = du_Hashable'45'Script_2566
du_Hashable'45'Script_2566 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
du_Hashable'45'Script_2566
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_452
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.LangDepView
d_LangDepView_2568 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  ()
d_LangDepView_2568 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.Language
d_Language_2570 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  ()
d_Language_2570 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.LanguageCostModels
d_LanguageCostModels_2572 a0 a1 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.P1Script
d_P1Script_2576 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  ()
d_P1Script_2576 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.PlutusScript
d_PlutusScript_2578 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  ()
d_PlutusScript_2578 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.PlutusV1
d_PlutusV1_2580 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  AgdaAny
d_PlutusV1_2580 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_266
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.PlutusV2
d_PlutusV2_2582 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  AgdaAny
d_PlutusV2_2582 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_268
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.PlutusV3
d_PlutusV3_2584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  AgdaAny
d_PlutusV3_2584 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_270
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.Prices
d_Prices_2586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  ()
d_Prices_2586 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.Redeemer
d_Redeemer_2588 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  ()
d_Redeemer_2588 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.Script
d_Script_2590 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  ()
d_Script_2590 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.Show-CostModel
d_Show'45'CostModel_2592 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2592 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_284
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_2594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2594 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_294
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.Show-Language
d_Show'45'Language_2596 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_2596 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Language_282
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.Show-LanguageCostModels
d_Show'45'LanguageCostModels_2598 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_2598 ~v0
  = du_Show'45'LanguageCostModels_2598
du_Show'45'LanguageCostModels_2598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'LanguageCostModels_2598
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Show'45'LanguageCostModels_498
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.Show-Prices
d_Show'45'Prices_2600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2600 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_296
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.Show-THash
d_Show'45'THash_2602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2602 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_252
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.T-Hashable
d_T'45'Hashable_2604 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_2604 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_252
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.T-isHashable
d_T'45'isHashable_2606 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_2606 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_252
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
            (coe v0)))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.getLanguage
d_getLanguage_2608 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_getLanguage_2608 ~v0 = du_getLanguage_2608
du_getLanguage_2608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_getLanguage_2608
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_getLanguage_480
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_2610 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_2610 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_hashRespectsUnion_374
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.isNativeScript
d_isNativeScript_2612 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_2612 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.isP1Script
d_isP1Script_2614 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_2614 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.isP1Script?
d_isP1Script'63'_2616 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_2616 ~v0 = du_isP1Script'63'_2616
du_isP1Script'63'_2616 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_2616 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP1Script'63'_458
      v1
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.isP2Script
d_isP2Script_2618 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_2618 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.isP2Script?
d_isP2Script'63'_2620 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_2620 ~v0 = du_isP2Script'63'_2620
du_isP2Script'63'_2620 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_2620 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP2Script'63'_472
      v1
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.language
d_language_2622 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  AgdaAny -> AgdaAny
d_language_2622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_324
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.languageCostModels
d_languageCostModels_2624 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_484 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_2624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_488
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.p1s
d_p1s_2628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_152
d_p1s_2628 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_354
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.ps
d_ps_2630 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176
d_ps_2630 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.toP1Script
d_toP1Script_2632 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_2632 ~v0 = du_toP1Script_2632
du_toP1Script_2632 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_2632 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_466
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.toP2Script
d_toP2Script_2634 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_2634 ~v0 = du_toP2Script_2634
du_toP2Script_2634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_2634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP2Script_478
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.validP1Script
d_validP1Script_2636 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_2636 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.validPlutusScript
d_validPlutusScript_2638 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2638 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_2640 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_2640 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_'8805''7497''45'Dec_288
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.ScriptStructure.LanguageCostModels.languageCostModels
d_languageCostModels_2644 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_484 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_2644 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_488
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra._∙_
d__'8729'__2648 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__2648 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra._≈_
d__'8776'__2650 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__2650 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__2652 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__2652 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_2654 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_2654 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_2656 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_2656 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_2658 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_2662 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_2666 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.Value
d_Value_2670 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  ()
d_Value_2670 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_2672 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_2672 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.addValue
d_addValue_2674 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_2674 ~v0 = du_addValue_2674
du_addValue_2674 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
du_addValue_2674
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.coin
d_coin_2676 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_coin_2676 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_2678 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_2678 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_2680 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_2680 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_2682 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_2682 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.inject
d_inject_2684 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> AgdaAny
d_inject_2684 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.monoid
d_monoid_2686 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_2686 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1066
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.policies
d_policies_2688 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> [Integer]
d_policies_2688 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.rawMonoid
d_rawMonoid_2690 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_2690 v0
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
d_size_2692 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_size_2692 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.sumᵛ
d_sum'7515'_2694 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_2694 ~v0 = du_sum'7515'_2694
du_sum'7515'_2694 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
du_sum'7515'_2694
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.ε
d_ε_2696 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny
d_ε_2696 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_2700 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2700 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2702 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2702 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2704 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2704 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2706 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2706 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_2708 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2708 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_2712 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2712 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_2714 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2714 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2716 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2716 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2718 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_2718 ~v0 = du_isMagmaIsomorphism_2718
du_isMagmaIsomorphism_2718 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_2718 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2720 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2720 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_2720 v2
du_isMagmaMonomorphism_2720 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2720 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2722 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2722 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2724 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_2724 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2726 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2726 v0
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
d_isRelIsomorphism_2728 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_2728 ~v0 ~v1 v2 = du_isRelIsomorphism_2728 v2
du_isRelIsomorphism_2728 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_2728 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2730 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2730 ~v0 ~v1 v2 = du_isRelMonomorphism_2730 v2
du_isRelMonomorphism_2730 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2730 v0
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
d_surjective_2732 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2732 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2734 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2734 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_2736 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2736 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_2740 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2740 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_2742 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2742 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2744 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2744 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2746 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2746 ~v0 = du_isMagmaMonomorphism_2746
du_isMagmaMonomorphism_2746 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2746 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2748 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2748 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2750 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2750 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2752 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2752 ~v0 ~v1 v2 = du_isRelMonomorphism_2752 v2
du_isRelMonomorphism_2752 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2752 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2754 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2754 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_2756 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2756 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Tx.body
d_body_2760 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526
d_body_2760 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3738
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.Tx.isValid
d_isValid_2762 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726 ->
  Bool
d_isValid_2762 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3744
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.Tx.txAD
d_txAD_2764 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726 ->
  Maybe Integer
d_txAD_2764 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3746
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.Tx.txsize
d_txsize_2766 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726 ->
  Integer
d_txsize_2766 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3742
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.Tx.wits
d_wits_2768 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3704
d_wits_2768 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3740
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody.collateralInputs
d_collateralInputs_2772 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_2772 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3568
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody.currentTreasury
d_currentTreasury_2774 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  Maybe Integer
d_currentTreasury_2774 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3592
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody.mint
d_mint_2776 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  Integer
d_mint_2776 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3594
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody.refInputs
d_refInputs_2778 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2778 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3566
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody.reqSignerHashes
d_reqSignerHashes_2780 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  [Integer]
d_reqSignerHashes_2780 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_reqSignerHashes_3596
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody.scriptIntegrityHash
d_scriptIntegrityHash_2782 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  Maybe Integer
d_scriptIntegrityHash_2782 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptIntegrityHash_3598
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody.txADhash
d_txADhash_2784 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  Maybe Integer
d_txADhash_2784 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_3582
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody.txCerts
d_txCerts_2786 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1398]
d_txCerts_2786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3574
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody.txDonation
d_txDonation_2788 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  Integer
d_txDonation_2788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txDonation_3584
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody.txFee
d_txFee_2790 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  Integer
d_txFee_2790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3576
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody.txGovProposals
d_txGovProposals_2792 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1146]
d_txGovProposals_2792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3588
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody.txGovVotes
d_txGovVotes_2794 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1066]
d_txGovVotes_2794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3586
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody.txId
d_txId_2796 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  Integer
d_txId_2796 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3572
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody.txIns
d_txIns_2798 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_2798 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3564
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody.txNetworkId
d_txNetworkId_2800 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  Maybe Integer
d_txNetworkId_2800 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3590
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody.txOuts
d_txOuts_2802 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_2802 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3570
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody.txVldt
d_txVldt_2804 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_2804 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3580
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxBody.txWithdrawals
d_txWithdrawals_2806 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2806 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3578
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxWitnesses.scripts
d_scripts_2810 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3704 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2810 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scripts_3716
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxWitnesses.scriptsP1
d_scriptsP1_2812 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3704 ->
  [MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSTimelock_302]
d_scriptsP1_2812 ~v0 = du_scriptsP1_2812
du_scriptsP1_2812 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3704 ->
  [MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSTimelock_302]
du_scriptsP1_2812
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_scriptsP1_3722
-- Ledger.Conway.Foreign.ExternalStructures._.TxWitnesses.txdats
d_txdats_2814 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3704 ->
  [Integer]
d_txdats_2814 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3718
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxWitnesses.txrdmrs
d_txrdmrs_2816 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3704 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_2816 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3720
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.TxWitnesses.vkSigs
d_vkSigs_2818 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3704 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2818 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3714
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2830 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1438 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1506 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1398] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1506 ->
  ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2830 = erased
-- Ledger.Conway.Foreign.ExternalStructures._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__2832 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Foreign.ExternalStructures._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__2834 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Foreign.ExternalStructures._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__2836 a0 a1 a2 a3 a4
  = ()
-- Ledger.Conway.Foreign.ExternalStructures._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__2838 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Foreign.ExternalStructures._._⊢_⇀⦇_,PRE-CERT⦈_
d__'8866'_'8640''10631'_'44'PRE'45'CERT'10632'__2840 a0 a1 a2 a3 a4
  = ()
-- Ledger.Conway.Foreign.ExternalStructures._.CCHotKeys
d_CCHotKeys_2842 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_CCHotKeys_2842 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.CCHotKeysOf
d_CCHotKeysOf_2844 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1282 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_2844 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CCHotKeysOf_1290
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.CertEnv
d_CertEnv_2854 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.CertState
d_CertState_2858 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.CertStateOf
d_CertStateOf_2862 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1602 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1506
d_CertStateOf_2862 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1610
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DCert
d_DCert_2866 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.DState
d_DState_2876 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.DStateOf
d_DStateOf_2880 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1542 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1462
d_DStateOf_2880 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1550
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-DCert
d_DecEq'45'DCert_2882 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DCert_2882 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DCert_1418
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
         (coe d_HSTransactionStructure_778 (coe v0)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_2884 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_2884 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1262
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
         (coe d_HSTransactionStructure_778 (coe v0)))
-- Ledger.Conway.Foreign.ExternalStructures._.DecEq-StakePoolParams
d_DecEq'45'StakePoolParams_2886 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'StakePoolParams_2886 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'StakePoolParams_1416
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
         (coe d_HSTransactionStructure_778 (coe v0)))
-- Ledger.Conway.Foreign.ExternalStructures._.DelegEnv
d_DelegEnv_2888 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.DepositPurpose
d_DepositPurpose_2892 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.Deposits
d_Deposits_2894 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Deposits_2894 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.DepositsOf
d_DepositsOf_2896 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1246 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_2896 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1254
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GState
d_GState_2904 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.GStateOf
d_GStateOf_2908 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1582 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1494
d_GStateOf_2908 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1590
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasCCHotKeys
d_HasCCHotKeys_2912 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasCCHotKeys-CertState
d_HasCCHotKeys'45'CertState_2916 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1282
d_HasCCHotKeys'45'CertState_2916 ~v0
  = du_HasCCHotKeys'45'CertState_2916
du_HasCCHotKeys'45'CertState_2916 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1282
du_HasCCHotKeys'45'CertState_2916
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCCHotKeys'45'CertState_1646
-- Ledger.Conway.Foreign.ExternalStructures._.HasCCHotKeys-GState
d_HasCCHotKeys'45'GState_2918 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1282
d_HasCCHotKeys'45'GState_2918 ~v0 = du_HasCCHotKeys'45'GState_2918
du_HasCCHotKeys'45'GState_2918 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1282
du_HasCCHotKeys'45'GState_2918
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCCHotKeys'45'GState_1634
-- Ledger.Conway.Foreign.ExternalStructures._.HasCast-CertEnv
d_HasCast'45'CertEnv_2920 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2920 ~v0 = du_HasCast'45'CertEnv_2920
du_HasCast'45'CertEnv_2920 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2920
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1662
-- Ledger.Conway.Foreign.ExternalStructures._.HasCast-CertState
d_HasCast'45'CertState_2922 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertState_2922 ~v0 = du_HasCast'45'CertState_2922
du_HasCast'45'CertState_2922 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertState_2922
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertState_1670
-- Ledger.Conway.Foreign.ExternalStructures._.HasCast-DState
d_HasCast'45'DState_2924 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DState_2924 ~v0 = du_HasCast'45'DState_2924
du_HasCast'45'DState_2924 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'DState_2924
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DState_1664
-- Ledger.Conway.Foreign.ExternalStructures._.HasCast-DelegEnv
d_HasCast'45'DelegEnv_2926 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DelegEnv_2926 ~v0 = du_HasCast'45'DelegEnv_2926
du_HasCast'45'DelegEnv_2926 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'DelegEnv_2926
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DelegEnv_1672
-- Ledger.Conway.Foreign.ExternalStructures._.HasCast-GState
d_HasCast'45'GState_2928 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GState_2928 ~v0 = du_HasCast'45'GState_2928
du_HasCast'45'GState_2928 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GState_2928
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'GState_1668
-- Ledger.Conway.Foreign.ExternalStructures._.HasCast-PState
d_HasCast'45'PState_2930 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PState_2930 ~v0 = du_HasCast'45'PState_2930
du_HasCast'45'PState_2930 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'PState_2930
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'PState_1666
-- Ledger.Conway.Foreign.ExternalStructures._.HasCertState
d_HasCertState_2932 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasCoin-CertState
d_HasCoin'45'CertState_2936 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'CertState_2936 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_HasCoin'45'CertState_1660
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
         (coe d_HSTransactionStructure_778 (coe v0)))
-- Ledger.Conway.Foreign.ExternalStructures._.HasDReps-CertState
d_HasDReps'45'CertState_2938 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1504
d_HasDReps'45'CertState_2938 ~v0 = du_HasDReps'45'CertState_2938
du_HasDReps'45'CertState_2938 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1504
du_HasDReps'45'CertState_2938
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'CertState_1644
-- Ledger.Conway.Foreign.ExternalStructures._.HasDReps-GState
d_HasDReps'45'GState_2940 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1504
d_HasDReps'45'GState_2940 ~v0 = du_HasDReps'45'GState_2940
du_HasDReps'45'GState_2940 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1504
du_HasDReps'45'GState_2940
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'GState_1632
-- Ledger.Conway.Foreign.ExternalStructures._.HasDState
d_HasDState_2942 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasDState-CertState
d_HasDState'45'CertState_2946 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1542
d_HasDState'45'CertState_2946 ~v0 = du_HasDState'45'CertState_2946
du_HasDState'45'CertState_2946 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1542
du_HasDState'45'CertState_2946
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDState'45'CertState_1636
-- Ledger.Conway.Foreign.ExternalStructures._.HasDeposits
d_HasDeposits_2948 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasGState
d_HasGState_2952 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasGState-CertState
d_HasGState'45'CertState_2956 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1582
d_HasGState'45'CertState_2956 ~v0 = du_HasGState'45'CertState_2956
du_HasGState'45'CertState_2956 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1582
du_HasGState'45'CertState_2956
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasGState'45'CertState_1640
-- Ledger.Conway.Foreign.ExternalStructures._.HasPParams-CertEnv
d_HasPParams'45'CertEnv_2958 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
d_HasPParams'45'CertEnv_2958 ~v0 = du_HasPParams'45'CertEnv_2958
du_HasPParams'45'CertEnv_2958 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
du_HasPParams'45'CertEnv_2958
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPParams'45'CertEnv_1618
-- Ledger.Conway.Foreign.ExternalStructures._.HasPState
d_HasPState_2960 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasPState-CertState
d_HasPState'45'CertState_2964 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1562
d_HasPState'45'CertState_2964 ~v0 = du_HasPState'45'CertState_2964
du_HasPState'45'CertState_2964 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1562
du_HasPState'45'CertState_2964
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPState'45'CertState_1638
-- Ledger.Conway.Foreign.ExternalStructures._.HasPools
d_HasPools_2966 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasPools-CertState
d_HasPools'45'CertState_2970 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1298
d_HasPools'45'CertState_2970 ~v0 = du_HasPools'45'CertState_2970
du_HasPools'45'CertState_2970 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1298
du_HasPools'45'CertState_2970
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPools'45'CertState_1648
-- Ledger.Conway.Foreign.ExternalStructures._.HasPools-PState
d_HasPools'45'PState_2972 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1298
d_HasPools'45'PState_2972 ~v0 = du_HasPools'45'PState_2972
du_HasPools'45'PState_2972 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1298
du_HasPools'45'PState_2972
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPools'45'PState_1628
-- Ledger.Conway.Foreign.ExternalStructures._.HasRetiring
d_HasRetiring_2974 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasRetiring-PState
d_HasRetiring'45'PState_2978 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1314
d_HasRetiring'45'PState_2978 ~v0 = du_HasRetiring'45'PState_2978
du_HasRetiring'45'PState_2978 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1314
du_HasRetiring'45'PState_2978
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRetiring'45'PState_1630
-- Ledger.Conway.Foreign.ExternalStructures._.HasRewards
d_HasRewards_2980 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasRewards-CertState
d_HasRewards'45'CertState_2984 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1330
d_HasRewards'45'CertState_2984 ~v0
  = du_HasRewards'45'CertState_2984
du_HasRewards'45'CertState_2984 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1330
du_HasRewards'45'CertState_2984
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1642
-- Ledger.Conway.Foreign.ExternalStructures._.HasRewards-DState
d_HasRewards'45'DState_2986 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1330
d_HasRewards'45'DState_2986 ~v0 = du_HasRewards'45'DState_2986
du_HasRewards'45'DState_2986 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1330
du_HasRewards'45'DState_2986
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'DState_1626
-- Ledger.Conway.Foreign.ExternalStructures._.HasStake
d_HasStake_2988 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasStakeDelegs
d_HasStakeDelegs_2992 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.HasStakeDelegs-CertState
d_HasStakeDelegs'45'CertState_2996 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1362
d_HasStakeDelegs'45'CertState_2996 ~v0
  = du_HasStakeDelegs'45'CertState_2996
du_HasStakeDelegs'45'CertState_2996 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1362
du_HasStakeDelegs'45'CertState_2996
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasStakeDelegs'45'CertState_1652
-- Ledger.Conway.Foreign.ExternalStructures._.HasStakeDelegs-DState
d_HasStakeDelegs'45'DState_2998 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1362
d_HasStakeDelegs'45'DState_2998 ~v0
  = du_HasStakeDelegs'45'DState_2998
du_HasStakeDelegs'45'DState_2998 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1362
du_HasStakeDelegs'45'DState_2998
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasStakeDelegs'45'DState_1624
-- Ledger.Conway.Foreign.ExternalStructures._.HasVoteDelegs-CertState
d_HasVoteDelegs'45'CertState_3000 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1116
d_HasVoteDelegs'45'CertState_3000 ~v0
  = du_HasVoteDelegs'45'CertState_3000
du_HasVoteDelegs'45'CertState_3000 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1116
du_HasVoteDelegs'45'CertState_3000
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasVoteDelegs'45'CertState_1650
-- Ledger.Conway.Foreign.ExternalStructures._.HasVoteDelegs-DState
d_HasVoteDelegs'45'DState_3002 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1116
d_HasVoteDelegs'45'DState_3002 ~v0
  = du_HasVoteDelegs'45'DState_3002
du_HasVoteDelegs'45'DState_3002 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1116
du_HasVoteDelegs'45'DState_3002
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasVoteDelegs'45'DState_1622
-- Ledger.Conway.Foreign.ExternalStructures._.HasWithdrawals-CertEnv
d_HasWithdrawals'45'CertEnv_3004 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
d_HasWithdrawals'45'CertEnv_3004 ~v0
  = du_HasWithdrawals'45'CertEnv_3004
du_HasWithdrawals'45'CertEnv_3004 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
du_HasWithdrawals'45'CertEnv_3004
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasWithdrawals'45'CertEnv_1620
-- Ledger.Conway.Foreign.ExternalStructures._.PState
d_PState_3010 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.PStateOf
d_PStateOf_3014 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1562 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1478
d_PStateOf_3014 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1570
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PoolEnv
d_PoolEnv_3018 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_PoolEnv_3018 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.Pools
d_Pools_3020 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Pools_3020 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.PoolsOf
d_PoolsOf_3022 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1298 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_3022 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1306
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.Retiring
d_Retiring_3024 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Retiring_3024 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.RetiringOf
d_RetiringOf_3026 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1314 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_3026 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RetiringOf_1322
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.Rewards
d_Rewards_3028 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Rewards_3028 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.RewardsOf
d_RewardsOf_3030 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1330 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_3030 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1338
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.Stake
d_Stake_3032 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Stake_3032 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.StakeDelegs
d_StakeDelegs_3034 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_StakeDelegs_3034 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.StakeDelegsOf
d_StakeDelegsOf_3036 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1362 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_3036 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeDelegsOf_1370
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.StakeOf
d_StakeOf_3038 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1346 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_3038 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeOf_1354
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.StakePoolParams
d_StakePoolParams_3040 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.cwitness
d_cwitness_3046 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1398 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_cwitness_3046 ~v0 = du_cwitness_3046
du_cwitness_3046 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1398 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_cwitness_3046
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_cwitness_1420
-- Ledger.Conway.Foreign.ExternalStructures._.isPoolRegistered
d_isPoolRegistered_3054 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1206
d_isPoolRegistered_3054 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_isPoolRegistered_1756
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
         (coe d_HSTransactionStructure_778 (coe v0)))
-- Ledger.Conway.Foreign.ExternalStructures._.rewardsBalance
d_rewardsBalance_3064 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1462 ->
  Integer
d_rewardsBalance_3064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardsBalance_1654
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
         (coe d_HSTransactionStructure_778 (coe v0)))
-- Ledger.Conway.Foreign.ExternalStructures._.CertEnv.coldCreds
d_coldCreds_3108 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1438 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_coldCreds_3108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_coldCreds_1458
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.CertEnv.epoch
d_epoch_3110 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1438 ->
  Integer
d_epoch_3110 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_epoch_1450
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.CertEnv.pp
d_pp_3112 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1438 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pp_3112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pp_1452 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.CertEnv.votes
d_votes_3114 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1438 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1066]
d_votes_3114 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_votes_1454
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.CertEnv.wdrls
d_wdrls_3116 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1438 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_3116 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_wdrls_1456
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.CertState.dState
d_dState_3120 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1462
d_dState_3120 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dState_1514
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.CertState.gState
d_gState_3122 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1494
d_gState_3122 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1518
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.CertState.pState
d_pState_3124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1478
d_pState_3124 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pState_1516
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DState.rewards
d_rewards_3146 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1462 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_3146 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1474
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DState.stakeDelegs
d_stakeDelegs_3148 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1462 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_3148 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1472
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DState.voteDelegs
d_voteDelegs_3150 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1462 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_3150 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1470
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DelegEnv.delegatees
d_delegatees_3154 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1522 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_delegatees_3154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_delegatees_1534
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DelegEnv.pools
d_pools_3156 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1522 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_3156 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1532
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.DelegEnv.pparams
d_pparams_3158 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1522 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_3158 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pparams_1530
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GState.ccHotKeys
d_ccHotKeys_3172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1494 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_3172 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_ccHotKeys_1502
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.GState.dreps
d_dreps_3174 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1494 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_3174 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dreps_1500
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasCCHotKeys.CCHotKeysOf
d_CCHotKeysOf_3178 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1282 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_3178 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CCHotKeysOf_1290
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasCertState.CertStateOf
d_CertStateOf_3182 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1602 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1506
d_CertStateOf_3182 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1610
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasDState.DStateOf
d_DStateOf_3186 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1542 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1462
d_DStateOf_3186 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1550
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasDeposits.DepositsOf
d_DepositsOf_3190 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1246 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_3190 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1254
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasGState.GStateOf
d_GStateOf_3194 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1582 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1494
d_GStateOf_3194 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1590
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasPState.PStateOf
d_PStateOf_3198 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1562 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1478
d_PStateOf_3198 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1570
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasPools.PoolsOf
d_PoolsOf_3202 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1298 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_3202 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1306
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasRetiring.RetiringOf
d_RetiringOf_3206 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1314 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_3206 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RetiringOf_1322
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasRewards.RewardsOf
d_RewardsOf_3210 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1330 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_3210 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1338
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasStake.StakeOf
d_StakeOf_3214 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1346 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_3214 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeOf_1354
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.HasStakeDelegs.StakeDelegsOf
d_StakeDelegsOf_3218 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1362 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_3218 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeDelegsOf_1370
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PState.fPools
d_fPools_3222 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1478 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fPools_3222 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1488
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PState.pools
d_pools_3224 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1478 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_3224 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1486
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.PState.retiring
d_retiring_3226 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1478 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_3226 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1490
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.StakePoolParams.cost
d_cost_3230 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1206 ->
  Integer
d_cost_3230 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_cost_1220 (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.StakePoolParams.margin
d_margin_3232 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1206 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_margin_3232 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_margin_1222
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.StakePoolParams.owners
d_owners_3234 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1206 ->
  [Integer]
d_owners_3234 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_owners_1218
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.StakePoolParams.pledge
d_pledge_3236 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1206 ->
  Integer
d_pledge_3236 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pledge_1224
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.StakePoolParams.rewardAccount
d_rewardAccount_3238 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1206 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_rewardAccount_3238 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1226
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.AbstractFunctions
d_AbstractFunctions_3242 a0 = ()
-- Ledger.Conway.Foreign.ExternalStructures._.AbstractFunctions.DecEq-UTCTime
d_DecEq'45'UTCTime_3254 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UTCTime_3254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_DecEq'45'UTCTime_2580
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.AbstractFunctions.UTCTime
d_UTCTime_3256 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  ()
d_UTCTime_3256 = erased
-- Ledger.Conway.Foreign.ExternalStructures._.AbstractFunctions.epochInfoSlotToUTCTime
d_epochInfoSlotToUTCTime_3258 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  Integer -> Maybe AgdaAny
d_epochInfoSlotToUTCTime_3258 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_epochInfoSlotToUTCTime_2594
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.AbstractFunctions.getLanguageView
d_getLanguageView_3260 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.T_HSLanguage_10 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_getLanguageView_3260 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_getLanguageView_2592
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.AbstractFunctions.indexOfImp
d_indexOfImp_3262 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_indexOf_2526
d_indexOfImp_3262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_indexOfImp_2586
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.AbstractFunctions.scriptSize
d_scriptSize_3264 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_scriptSize_3264 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_scriptSize_2588
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.AbstractFunctions.serSize
d_serSize_3266 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  Integer -> Integer
d_serSize_3266 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_serSize_2584
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.AbstractFunctions.transVITime
d_transVITime_3268 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_transVITime_3268 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_transVITime_2596
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.AbstractFunctions.txscriptfee
d_txscriptfee_3270 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txscriptfee_3270 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_txscriptfee_2582
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures._.AbstractFunctions.valContext
d_valContext_3272 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_TxInfo_2484 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.ScriptPurpose.T_ScriptPurpose_2470 ->
  Integer
d_valContext_3272 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Abstract.d_valContext_2590
      (coe v0)
-- Ledger.Conway.Foreign.ExternalStructures.HSAbstractFunctions
d_HSAbstractFunctions_3288 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556
d_HSAbstractFunctions_3288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Abstract.C_constructor_2598
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (\ v1 v2 -> 0 :: Integer) (\ v1 -> 0 :: Integer)
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Abstract.C_constructor_2552
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
                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DCert_1418
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
                               (coe d_HSTransactionStructure_778 (coe v0))))
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
                         (coe v3) (coe du_rewardAddressToSOP_3294 (coe v1)))
                    (coe
                       MAlonzo.Code.Data.List.Sort.Base.d_sort_248
                       (coe
                          MAlonzo.Code.Data.List.Sort.du_sortingAlgorithm_138
                          (coe du_DecTotalOrder'45'RewardAddressSOP_3308))
                       (coe
                          MAlonzo.Code.Axiom.Set.du_map_426
                          (MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe du_rewardAddressToSOP_3294)
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
                    (MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovProposal_1386
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
                          (coe d_HSTransactionStructure_778 (coe v0)))
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
d_rewardAddressToSOP_3294 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewardAddressToSOP_3294 ~v0 v1 = du_rewardAddressToSOP_3294 v1
du_rewardAddressToSOP_3294 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewardAddressToSOP_3294 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_126 v1 v2
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
d_DecTotalOrder'45'RewardAddressSOP_3308 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098
d_DecTotalOrder'45'RewardAddressSOP_3308 ~v0
  = du_DecTotalOrder'45'RewardAddressSOP_3308
du_DecTotalOrder'45'RewardAddressSOP_3308 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098
du_DecTotalOrder'45'RewardAddressSOP_3308
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
