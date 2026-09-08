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

module MAlonzo.Code.Ledger.Dijkstra.Foreign.ExternalStructures where

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
import qualified MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Coin
import qualified MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base
import qualified MAlonzo.Code.Ledger.Core.Foreign.Crypto.Structure
import qualified MAlonzo.Code.Ledger.Core.Foreign.Epoch
import qualified MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base
import qualified MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Account
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Certs
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.PParams
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction
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

-- Ledger.Dijkstra.Foreign.ExternalStructures._.CryptoStructure.Dec-isSigned
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
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CryptoStructure.DecEq-Ser
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
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CryptoStructure.DecEq-Sig
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
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CryptoStructure.DecEq-THash
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
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CryptoStructure.THash
d_THash_112 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  ()
d_THash_112 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CryptoStructure.KeyPair
d_KeyPair_114 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  ()
d_KeyPair_114 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CryptoStructure.SKey
d_SKey_118 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  ()
d_SKey_118 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CryptoStructure.Ser
d_Ser_122 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  ()
d_Ser_122 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CryptoStructure.Show-THash
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
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CryptoStructure.Sig
d_Sig_128 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  ()
d_Sig_128 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CryptoStructure.T-Hashable
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
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CryptoStructure.VKey
d_VKey_134 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  ()
d_VKey_134 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CryptoStructure.isKeyPair
d_isKeyPair_140 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  AgdaAny -> AgdaAny -> ()
d_isKeyPair_140 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CryptoStructure.isSigned
d_isSigned_142 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_142 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CryptoStructure.isSigned-correct
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
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CryptoStructure.sign
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
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-HSNativeScript
d_DecEq'45'HSNativeScript_218 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'HSNativeScript_218 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_DecEq'45'HSNativeScript_354
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HSNativeScript
d_HSNativeScript_220 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HSP1ScriptStructure
d_HSP1ScriptStructure_224 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_370
d_HSP1ScriptStructure_224 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_HSP1ScriptStructure_356
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HSP2ScriptStructure
d_HSP2ScriptStructure_226 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408
d_HSP2ScriptStructure_226 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_HSP2ScriptStructure_390
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HSPlutusScript
d_HSPlutusScript_228 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HSScriptStructure
d_HSScriptStructure_232 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568
d_HSScriptStructure_232 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_HSScriptStructure_418
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Hashable-HSNativeScript
d_Hashable'45'HSNativeScript_234 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'HSNativeScript_234 ~v0
  = du_Hashable'45'HSNativeScript_234
du_Hashable'45'HSNativeScript_234 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
du_Hashable'45'HSNativeScript_234
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.du_Hashable'45'HSNativeScript_352
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HSNativeScript.nativeScript
d_nativeScript_240 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_336 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.T_NativeScript_370
d_nativeScript_240 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_nativeScript_344
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HSNativeScript.nsScriptHash
d_nsScriptHash_242 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_336 ->
  Integer
d_nsScriptHash_242 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_nsScriptHash_346
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HSNativeScript.nsScriptSize
d_nsScriptSize_244 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_336 ->
  Integer
d_nsScriptSize_244 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_nsScriptSize_348
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HSPlutusScript.psScriptHash
d_psScriptHash_248 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_364 ->
  Integer
d_psScriptHash_248 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_psScriptHash_372
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HSPlutusScript.psScriptLanguage
d_psScriptLanguage_250 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_364 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.T_HSLanguage_10
d_psScriptLanguage_250 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_psScriptLanguage_376
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HSPlutusScript.psScriptSize
d_psScriptSize_252 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_364 ->
  Integer
d_psScriptSize_252 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_psScriptSize_374
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Base.Convert-HSLanguage
d_Convert'45'HSLanguage_256 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Convert'45'HSLanguage_256 ~v0 = du_Convert'45'HSLanguage_256
du_Convert'45'HSLanguage_256 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
du_Convert'45'HSLanguage_256
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.d_Convert'45'HSLanguage_22
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Base.DecEq-HSLanguage
d_DecEq'45'HSLanguage_258 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'HSLanguage_258 ~v0 = du_DecEq'45'HSLanguage_258
du_DecEq'45'HSLanguage_258 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'HSLanguage_258
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.d_DecEq'45'HSLanguage_24
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Base.HSLanguage
d_HSLanguage_260 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Base.HsType-HSLanguage
d_HsType'45'HSLanguage_262 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsType'45'HSLanguage_262 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Base.Show-HSLanguage
d_Show'45'HSLanguage_274 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'HSLanguage_274 ~v0 = du_Show'45'HSLanguage_274
du_Show'45'HSLanguage_274 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'HSLanguage_274
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.d_Show'45'HSLanguage_26
-- Ledger.Dijkstra.Foreign.ExternalStructures._
d___284 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
d___284 v0
  = coe
      MAlonzo.Code.Ledger.Core.Foreign.Crypto.Structure.d_HSCryptoStructure_34
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._
d___288 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
d___288 ~v0 = du___288
du___288 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
du___288
  = coe MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8
-- Ledger.Dijkstra.Foreign.ExternalStructures._
d___290 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568
d___290 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_HSScriptStructure_418
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto._<ᵏʰ_
d__'60''7503''688'__294 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> ()
d__'60''7503''688'__294 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.<ᵏʰ-isSTO
d_'60''7503''688''45'isSTO_296 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_624
d_'60''7503''688''45'isSTO_296 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_'60''7503''688''45'isSTO_300
      (coe d___284 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.BlsPoP
d_BlsPoP_298 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_BlsPoP_298 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.BlsSig
d_BlsSig_300 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_BlsSig_300 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.BlsVKey
d_BlsVKey_302 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_BlsVKey_302 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.Dec-<ᵏʰ
d_Dec'45''60''7503''688'_304 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''60''7503''688'_304 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45''60''7503''688'_310
      (coe d___284 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.Dec-isSigned
d_Dec'45'isSigned_306 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_306 v0
  = let v1 = d___284 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236 (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.Dec-isSignedBy
d_Dec'45'isSignedBy_308 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSignedBy_308 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSignedBy_320
      (coe d___284 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.Dec-isSignedByAggregate
d_Dec'45'isSignedByAggregate_310 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSignedByAggregate_310 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSignedByAggregate_322
      (coe d___284 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.Dec-isValidPoP
d_Dec'45'isValidPoP_312 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isValidPoP_312 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isValidPoP_318
      (coe d___284 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.DecEq-BlsPoP
d_DecEq'45'BlsPoP_314 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BlsPoP_314 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'BlsPoP_316
      (coe d___284 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.DecEq-BlsSig
d_DecEq'45'BlsSig_316 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BlsSig_316 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'BlsSig_314
      (coe d___284 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.DecEq-BlsVKey
d_DecEq'45'BlsVKey_318 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BlsVKey_318 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'BlsVKey_312
      (coe d___284 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.DecEq-EBHash
d_DecEq'45'EBHash_320 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'EBHash_320 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'EBHash_324
      (coe d___284 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.DecEq-RBHeaderHash
d_DecEq'45'RBHeaderHash_322 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RBHeaderHash_322 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'RBHeaderHash_328
      (coe d___284 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.DecEq-ScriptHash
d_DecEq'45'ScriptHash_324 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_324 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_268
      (coe d___284 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.DecEq-Ser
d_DecEq'45'Ser_326 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_326 v0
  = let v1 = d___284 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236 (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.DecEq-Sig
d_DecEq'45'Sig_328 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_328 v0
  = let v1 = d___284 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236 (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.DecEq-THash
d_DecEq'45'THash_330 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_330 v0
  = let v1 = d___284 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264 (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.DecEq-TxRefHash
d_DecEq'45'TxRefHash_332 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxRefHash_332 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'TxRefHash_326
      (coe d___284 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.DecEq-VRF
d_DecEq'45'VRF_334 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VRF_334 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'VRF_284
      (coe d___284 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.EBHash
d_EBHash_336 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_EBHash_336 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.THash
d_THash_338 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_THash_338 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.KeyPair
d_KeyPair_340 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_KeyPair_340 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.RBHeaderHash
d_RBHeaderHash_342 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_RBHeaderHash_342 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.SKey
d_SKey_344 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_SKey_344 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.ScriptHash
d_ScriptHash_346 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ScriptHash_346 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.Ser
d_Ser_348 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Ser_348 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.Show-ScriptHash
d_Show'45'ScriptHash_350 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_350 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_270
      (coe d___284 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.Show-THash
d_Show'45'THash_352 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_352 v0
  = let v1 = d___284 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264 (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.Sig
d_Sig_354 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Sig_354 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.T-Hashable
d_T'45'Hashable_356 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_356 v0
  = let v1 = d___284 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264 (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.TxRefHash
d_TxRefHash_358 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_TxRefHash_358 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.VKey
d_VKey_360 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VKey_360 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.VRF
d_VRF_362 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VRF_362 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.hashEBRefs
d_hashEBRefs_364 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Integer
d_hashEBRefs_364 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_hashEBRefs_308
      (coe d___284 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.isKeyPair
d_isKeyPair_366 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 -> ()
d_isKeyPair_366 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.isSigned
d_isSigned_368 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer -> Integer -> ()
d_isSigned_368 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.isSigned-correct
d_isSigned'45'correct_370 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isSigned'45'correct_370 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.isSignedBy
d_isSignedBy_372 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer -> ()
d_isSignedBy_372 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.isSignedByAggregate
d_isSignedByAggregate_374 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] -> Integer -> Integer -> ()
d_isSignedByAggregate_374 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.isValidPoP
d_isValidPoP_376 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> ()
d_isValidPoP_376 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.khs
d_khs_378 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_378 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
      (coe d___284 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.pkk
d_pkk_380 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_380 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236
      (coe d___284 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.sign
d_sign_382 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer
d_sign_382 v0
  = let v1 = d___284 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236 (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovParams
d_GovParams_400 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams
d_PParams_428 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.paramsWellFormed
d_paramsWellFormed_450 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  ()
d_paramsWellFormed_450 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_458 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_458 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_DecEq'45'UpdT_1556
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovParams.ppUpd
d_ppUpd_464 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1490
d_ppUpd_464 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1542
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.Emax
d_Emax_498 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_Emax_498 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_432
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.a
d_a_500 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_a_500 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_402 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.a0
d_a0_502 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_502 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_436
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.b
d_b_504 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_b_504 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_404 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.ccMaxTermLength
d_ccMaxTermLength_506 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMaxTermLength_506 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_448
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.ccMinSize
d_ccMinSize_508 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMinSize_508 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_446
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_510 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_coinsPerUTxOByte_510 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_416
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.collateralPercentage
d_collateralPercentage_512 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_collateralPercentage_512 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_438
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.costmdlsAssoc
d_costmdlsAssoc_516 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_724
d_costmdlsAssoc_516 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdlsAssoc_440
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.drepActivity
d_drepActivity_518 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_drepActivity_518 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_456
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.drepDeposit
d_drepDeposit_520 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_drepDeposit_520 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_454
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.drepThresholds
d_drepThresholds_522 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244
d_drepThresholds_522 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_444
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.govActionDeposit
d_govActionDeposit_524 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionDeposit_524 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_452
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.govActionLifetime
d_govActionLifetime_526 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionLifetime_526 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_450
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.keyDeposit
d_keyDeposit_528 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_keyDeposit_528 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_406
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.maxBlockExUnits
d_maxBlockExUnits_530 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_530 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_394
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.maxBlockSize
d_maxBlockSize_532 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxBlockSize_532 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_386
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.maxCollateralInputs
d_maxCollateralInputs_534 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxCollateralInputs_534 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_398
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.maxHeaderSize
d_maxHeaderSize_536 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxHeaderSize_536 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_390
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_538 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerBlock_538 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_424
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_540 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerTx_540 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_422
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.maxTxExUnits
d_maxTxExUnits_542 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_542 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_392
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.maxTxSize
d_maxTxSize_544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxTxSize_544 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_388
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.maxValSize
d_maxValSize_546 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxValSize_546 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_396
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_548 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_548 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_420
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.minPoolCost
d_minPoolCost_550 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minPoolCost_550 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_410
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.minUTxOValue
d_minUTxOValue_552 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minUTxOValue_552 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_430
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.monetaryExpansion
d_monetaryExpansion_554 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_554 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_412
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.nopt
d_nopt_556 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_nopt_556 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_434
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.poolDeposit
d_poolDeposit_558 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_poolDeposit_558 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_408
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.poolThresholds
d_poolThresholds_560 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288
d_poolThresholds_560 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_442
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.prices
d_prices_562 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_562 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_418
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.pv
d_pv_564 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_564 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_400
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_566 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_566 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_428
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.refScriptCostStride
d_refScriptCostStride_568 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_568 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_426
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.treasuryCut
d_treasuryCut_570 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_570 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_414
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsDiff.UpdateT
d_UpdateT_574 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1490 ->
  ()
d_UpdateT_574 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsDiff.applyUpdate
d_applyUpdate_576 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1490 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyUpdate_576 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1506
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsDiff.ppWF?
d_ppWF'63'_578 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1490 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_578 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1514
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsDiff.updateGroups
d_updateGroups_582 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1490 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_updateGroups_582 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1508
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_590 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_590 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParamsUpdate_1488
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'46'extendedlambda0_366
         (coe MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8))
      (coe d___290 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_592 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_596 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyPParamsUpdate_596 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_applyPParamsUpdate_1326
      (coe d___290 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_618 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_Emax_618 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_752
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.a
d_a_620 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_a_620 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_720 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.a0
d_a0_622 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_622 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_750
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.b
d_b_624 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_b_624 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_722 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_626 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_ccMaxTermLength_626 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_774
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_628 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_ccMinSize_628 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_772
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_630 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_coinsPerUTxOByte_630 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_734
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_632 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_collateralPercentage_632 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_756
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_634 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_724
d_costmdls_634 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdls_758
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_636 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_drepActivity_636 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_770
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_638 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_drepDeposit_638 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_768
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_640 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244
d_drepThresholds_640 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_760
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_642 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_govActionDeposit_642 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_766
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_644 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_govActionLifetime_644 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_764
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_646 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_keyDeposit_646 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_724
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_648 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_648 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_716
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_650 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_maxBlockSize_650 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_704
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_652 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_maxCollateralInputs_652 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_712
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_654 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_maxHeaderSize_654 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_708
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_656 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_656 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_742
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_658 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_maxRefScriptSizePerTx_658 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_740
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_660 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_660 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_714
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_662 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_maxTxSize_662 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_706
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_664 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_maxValSize_664 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_710
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_666 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_666 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_738
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.minPoolCost
d_minPoolCost_668 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_minPoolCost_668 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_728
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_670 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_minUTxOValue_670 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_748
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_672 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_672 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_730
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_674 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_nopt_674 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_754
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_676 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_poolDeposit_676 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_726
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_678 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288
d_poolThresholds_678 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_762
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.prices
d_prices_680 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_680 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_736
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.pv
d_pv_682 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_682 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_718
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_684 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_684 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_746
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_686 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_686 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_744
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_688 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_688 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_732
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures.HsGovParams
d_HsGovParams_690 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524
d_HsGovParams_690 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_constructor_1558
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_constructor_1522
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_applyPParamsUpdate_1326
            (coe d___290 (coe v0)))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiedUpdateGroups_1256)
         (\ v1 -> coe du_ppWF_700 (coe v1)))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParamsUpdate_1488
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'46'extendedlambda0_366
            (coe MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8))
         (coe d___290 (coe v0)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ppWF
d_ppWF_700 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF_700 ~v0 v1 = du_ppWF_700 v1
du_ppWF_700 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_ppWF_700 v0
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
                             MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_704
                             (coe v0))
                          (coe
                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_706
                                (coe v0))
                             (coe
                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_708
                                   (coe v0))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_710
                                      (coe v0))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_734
                                         (coe v0))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_726
                                            (coe v0))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_756
                                               (coe v0))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_774
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_764
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_766
                                                        (coe v0))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_768
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
-- Ledger.Dijkstra.Foreign.ExternalStructures._._.trustMe
d_trustMe_716
  = error
      "MAlonzo Runtime Error: postulate evaluated: Ledger.Dijkstra.Foreign.ExternalStructures._._.trustMe"
-- Ledger.Dijkstra.Foreign.ExternalStructures._._.trustMe
d_trustMe_726
  = error
      "MAlonzo Runtime Error: postulate evaluated: Ledger.Dijkstra.Foreign.ExternalStructures._._.trustMe"
-- Ledger.Dijkstra.Foreign.ExternalStructures.HSTransactionStructure
d_HSTransactionStructure_736 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58
d_HSTransactionStructure_736 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_4752
      MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_isHashableSet'45'ℕ_34
      MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8
      (MAlonzo.Code.Ledger.Core.Foreign.Crypto.Structure.d_HSCryptoStructure_34
         (coe v0))
      (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'46'extendedlambda0_366
         (coe MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_HSScriptStructure_418
         (coe v0))
      (d_HsGovParams_690 (coe v0))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Coin.du_Coin'45'TokenAlgebra_132)
      (\ v1 -> v1)
      (coe
         MAlonzo.Code.Interface.TypeClasses.Hashable.C_constructor_20
         (coe (\ v1 -> 0 :: Integer)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._._+ᵉ_
d__'43''7497'__742 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer
d__'43''7497'__742 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'__100
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._._+ᵉ'_
d__'43''7497'''__744 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer
d__'43''7497'''__744 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'''__102
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._._∙_
d__'8729'__746 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer
d__'8729'__746 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2742
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._._<ᵏʰ_
d__'60''7503''688'__748 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> ()
d__'60''7503''688'__748 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._._≈_
d__'8776'__750 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> ()
d__'8776'__750 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._._≤ᵗ_
d__'8804''7511'__752 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> ()
d__'8804''7511'__752 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._._≥ᵉ_
d__'8805''7497'__754 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8805''7497'__754 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_756 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_756 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.<ᵏʰ-isSTO
d_'60''7503''688''45'isSTO_758 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_624
d_'60''7503''688''45'isSTO_758 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_'60''7503''688''45'isSTO_300
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.==-GovAction
d_'61''61''45'GovAction_760 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930 ->
  Bool
d_'61''61''45'GovAction_760 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovAction_1480
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.==-GovActionData
d_'61''61''45'GovActionData_762 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_912 ->
  AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_762 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovActionData_1462
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.==-GovProposal
d_'61''61''45'GovProposal_764 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030 ->
  Bool
d_'61''61''45'GovProposal_764 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovProposal_1514
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.==-Set
d_'61''61''45'Set_766 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_766 ~v0 = du_'61''61''45'Set_766
du_'61''61''45'Set_766 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
du_'61''61''45'Set_766 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_'61''61''45'Set_1450
      v1 v2 v3
-- Ledger.Dijkstra.Foreign.ExternalStructures._.THash
d_THash_768 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_THash_768 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.AccountBalanceIntervals
d_AccountBalanceIntervals_770 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_AccountBalanceIntervals_770 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.AccountOf
d_AccountOf_772 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasAccount_210 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194
d_AccountOf_772 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_AccountOf_218
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Acnt
d_Acnt_774 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ActiveSlotCoeff
d_ActiveSlotCoeff_778 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_778 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ActiveSlotCoeff_330
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Addr
d_Addr_780 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Addr_780 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Anchor
d_Anchor_784 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.AnchorOf
d_AnchorOf_788 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1260 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_964
d_AnchorOf_788 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_AnchorOf_1268
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.AnyLevelTx
d_AnyLevelTx_790 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_AnyLevelTx_790 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.AttrSizeOf
d_AttrSizeOf_792 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214 ->
  AgdaAny -> Integer
d_AttrSizeOf_792 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_222
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.AuxiliaryData
d_AuxiliaryData_794 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_AuxiliaryData_794 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.BalanceInterval
d_BalanceInterval_796 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.BalanceIntervalsOf
d_BalanceIntervalsOf_798 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasBalanceIntervals_4470 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_BalanceIntervalsOf_798 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_BalanceIntervalsOf_4478
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.BaseAddr
d_BaseAddr_800 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.BlsKeyMaxAgeᶜ
d_BlsKeyMaxAge'7580'_804 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_BlsKeyMaxAge'7580'_804 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_BlsKeyMaxAge'7580'_344
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.BlsPoP
d_BlsPoP_806 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_BlsPoP_806 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.BlsSig
d_BlsSig_808 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_BlsSig_808 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.BlsVKey
d_BlsVKey_810 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_BlsVKey_810 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.BootstrapAddr
d_BootstrapAddr_812 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CCMaxTermLengthOf
d_CCMaxTermLengthOf_818 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasCCMaxTermLength_598 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_818 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_CCMaxTermLengthOf_606
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CollateralInputsOf
d_CollateralInputsOf_822 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCollateralInputs_4020 ->
  AgdaAny -> AgdaAny
d_CollateralInputsOf_822 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CollateralInputsOf_4030
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CostModel
d_CostModel_824 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_CostModel_824 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Credential
d_Credential_826 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CredentialOf
d_CredentialOf_828 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_828 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CurrentTreasuryOf
d_CurrentTreasuryOf_830 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4430 ->
  AgdaAny -> Maybe Integer
d_CurrentTreasuryOf_830 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CurrentTreasuryOf_4438
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DCertsOf
d_DCertsOf_832 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4250 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1354]
d_DCertsOf_832 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DCertsOf_4258
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DReps
d_DReps_836 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_DReps_836 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DRepsOf
d_DRepsOf_838 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1240 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_838 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1248
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.T
d_T_840 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_T_840 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.THash
d_THash_842 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_THash_842 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DataOf
d_DataOf_844 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4290 ->
  AgdaAny -> [Integer]
d_DataOf_844 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DataOf_4298
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Dataʰ
d_Data'688'_846 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_846 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Datum
d_Datum_848 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Datum_848 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Dec-<ᵏʰ
d_Dec'45''60''7503''688'_850 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''60''7503''688'_850 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45''60''7503''688'_310
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Dec-EvalNativeScript
d_Dec'45'EvalNativeScript_852 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.T_NativeScript_370 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'EvalNativeScript_852 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
                    (coe v1) in
          coe
            (let v4
                   = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_322
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
                          (coe v1)) in
             coe
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.du_Dec'45'EvalNativeScript_440
                  (coe v2) (coe v3) (coe v4)))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Dec-InBalanceInterval
d_Dec'45'InBalanceInterval_854 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Account.T_BalanceInterval_902 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'InBalanceInterval_854 ~v0
  = du_Dec'45'InBalanceInterval_854
du_Dec'45'InBalanceInterval_854 ::
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Account.T_BalanceInterval_902 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'InBalanceInterval_854
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Account.du_Dec'45'InBalanceInterval_936
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Dec-isScript
d_Dec'45'isScript_856 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_856 ~v0 = du_Dec'45'isScript_856
du_Dec'45'isScript_856 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_856
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isScript_308
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Dec-isSigned
d_Dec'45'isSigned_858 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_858 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236 (coe v2))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Dec-isSignedBy
d_Dec'45'isSignedBy_860 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSignedBy_860 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSignedBy_320
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Dec-isSignedByAggregate
d_Dec'45'isSignedByAggregate_862 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSignedByAggregate_862 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSignedByAggregate_322
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Dec-isVKey
d_Dec'45'isVKey_864 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_864 ~v0 = du_Dec'45'isVKey_864
du_Dec'45'isVKey_864 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_864
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_294
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Dec-isValidPoP
d_Dec'45'isValidPoP_866 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isValidPoP_866 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isValidPoP_318
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Dec-validP1Script
d_Dec'45'validP1Script_868 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_336 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_868 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_390
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_594
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_870 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_364 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_870 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validPlutusScript_562
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Dec-≤ᵗ
d_Dec'45''8804''7511'_872 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_872 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2742
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEQ-Prices
d_DecEQ'45'Prices_874 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_874 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEQ'45'Prices_524
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-Anchor
d_DecEq'45'Anchor_876 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_876 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'Anchor_1444
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-BalanceInterval
d_DecEq'45'BalanceInterval_878 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BalanceInterval_878 ~v0
  = du_DecEq'45'BalanceInterval_878
du_DecEq'45'BalanceInterval_878 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BalanceInterval_878
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Account.du_DecEq'45'BalanceInterval_1060
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_880 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_880 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BaseAddr_346
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_322
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
               (coe v1)))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
                  (coe v1))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_268
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-BlsPoP
d_DecEq'45'BlsPoP_882 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BlsPoP_882 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'BlsPoP_316
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-BlsSig
d_DecEq'45'BlsSig_884 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BlsSig_884 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'BlsSig_314
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-BlsVKey
d_DecEq'45'BlsVKey_886 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BlsVKey_886 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'BlsVKey_312
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_888 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_888 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BootstrapAddr_348
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_322
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
               (coe v1)))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
                  (coe v1))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_268
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-CostModel
d_DecEq'45'CostModel_890 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_890 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'CostModel_508
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-Credential
d_DecEq'45'Credential_892 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_892 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
                  (coe v1))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_268
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_894 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_894 ~v0 = du_DecEq'45'DrepThresholds_894
du_DecEq'45'DrepThresholds_894 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_894
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'DrepThresholds_614
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-EBHash
d_DecEq'45'EBHash_896 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'EBHash_896 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'EBHash_324
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-Epoch
d_DecEq'45'Epoch_898 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_898 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-ExUnits
d_DecEq'45'ExUnits_900 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_900 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_522
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-GovActionType
d_DecEq'45'GovActionType_902 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_902 ~v0 = du_DecEq'45'GovActionType_902
du_DecEq'45'GovActionType_902 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_902
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'GovActionType_1334
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-GovRole
d_DecEq'45'GovRole_904 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_904 ~v0 = du_DecEq'45'GovRole_904
du_DecEq'45'GovRole_904 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_904
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'GovRole_1336
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-GovVoter
d_DecEq'45'GovVoter_906 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_906 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'GovVoter_1342
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-Ix
d_DecEq'45'Ix_908 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_908 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1418
      (coe d_HSTransactionStructure_736 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-LangDepView
d_DecEq'45'LangDepView_910 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_910 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'LangDepView_510
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-Language
d_DecEq'45'Language_912 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_912 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_514
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_914 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_914 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_DecEq'45'LanguageCostModels_732
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-NativeScript
d_DecEq'45'NativeScript_916 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NativeScript_916 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
                    (coe v1) in
          coe
            (let v4
                   = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_322
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
                          (coe v1)) in
             coe
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.du_DecEq'45'NativeScript_386
                  (coe v2) (coe v3) (coe v4)))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-NeedsHash
d_DecEq'45'NeedsHash_918 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_912 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_918 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'NeedsHash_1512
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-Netw
d_DecEq'45'Netw_920 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_920 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_322
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-P1Script
d_DecEq'45'P1Script_922 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_922 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'P1Script_394
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_594
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_924 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_924 ~v0 = du_DecEq'45'PParamGroup_924
du_DecEq'45'PParamGroup_924 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_924
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParamGroup_620
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-PParams
d_DecEq'45'PParams_926 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_926 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParams_618
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
            (coe v1))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_928 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_928 ~v0 = du_DecEq'45'PoolThresholds_928
du_DecEq'45'PoolThresholds_928 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_928
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PoolThresholds_616
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-RBHeaderHash
d_DecEq'45'RBHeaderHash_930 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RBHeaderHash_930 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'RBHeaderHash_328
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-RewardAddress
d_DecEq'45'RewardAddress_932 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RewardAddress_932 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_322
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
               (coe v1)))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
                  (coe v1))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_268
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_934 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_934 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_268
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-Ser
d_DecEq'45'Ser_936 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_936 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236 (coe v2))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-Sig
d_DecEq'45'Sig_938 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_938 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236 (coe v2))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-Slot
d_DecEq'45'Slot_940 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_940 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Slot_88
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-T
d_DecEq'45'T_942 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_942 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1410
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-T
d_DecEq'45'T_944 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_944 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
               (coe v2))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-THash
d_DecEq'45'THash_946 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_946 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1410
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-THash
d_DecEq'45'THash_948 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_948 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264 (coe v2))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-THash
d_DecEq'45'THash_950 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_950 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
               (coe v2))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-TxId
d_DecEq'45'TxId_952 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_952 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1420
      (coe d_HSTransactionStructure_736 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-TxRefHash
d_DecEq'45'TxRefHash_954 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxRefHash_954 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'TxRefHash_326
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-UpdT
d_DecEq'45'UpdT_956 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_956 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_DecEq'45'UpdT_1556
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2740
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-VDeleg
d_DecEq'45'VDeleg_958 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_958 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'VDeleg_1340
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-VRF
d_DecEq'45'VRF_960 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VRF_960 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'VRF_284
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-Value
d_DecEq'45'Value_962 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_962 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2742
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-Vote
d_DecEq'45'Vote_964 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_964 ~v0 = du_DecEq'45'Vote_964
du_DecEq'45'Vote_964 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_964
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'Vote_1338
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecPo-Slot
d_DecPo'45'Slot_966 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_262
d_DecPo'45'Slot_966 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DepositOf
d_DepositOf_968 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1280 ->
  AgdaAny -> Integer
d_DepositOf_968 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DepositOf_1288
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DirectDeposits
d_DirectDeposits_970 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_DirectDeposits_970 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DirectDepositsOf
d_DirectDepositsOf_972 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDirectDeposits_4450 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DirectDepositsOf_972 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DirectDepositsOf_4458
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DrepThresholds
d_DrepThresholds_974 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.EBHash
d_EBHash_978 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_EBHash_978 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Epoch
d_Epoch_982 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Epoch_982 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.EvalNativeScript
d_EvalNativeScript_984 a0 a1 a2 a3 a4 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_986 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_986 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_504
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ExUnits
d_ExUnits_988 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ExUnits_988 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.FeesOf?
d_FeesOf'63'_992 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasFees'63'_4230 ->
  AgdaAny -> Maybe Integer
d_FeesOf'63'_992 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_FeesOf'63'_4238
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovAction
d_GovAction_994 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovActionData
d_GovActionData_998 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_912 ->
  ()
d_GovActionData_998 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovActionID
d_GovActionID_1000 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_GovActionID_1000 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovActionOf
d_GovActionOf_1002 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1142 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930
d_GovActionOf_1002 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionOf_1148
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovActionState
d_GovActionState_1004 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovActionType
d_GovActionType_1008 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovActionTypeOf
d_GovActionTypeOf_1010 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1106 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_912
d_GovActionTypeOf_1010 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionTypeOf_1112
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovParams
d_GovParams_1012 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovProposal
d_GovProposal_1016 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovProposalsOf
d_GovProposalsOf_1020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGovProposals_4270 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030]
d_GovProposalsOf_1020 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_GovProposalsOf_4278
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovRole
d_GovRole_1022 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovRoleCredential
d_GovRoleCredential_1024 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_902 ->
  ()
d_GovRoleCredential_1024 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovVote
d_GovVote_1026 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovVoter
d_GovVoter_1030 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovVoterOf
d_GovVoterOf_1034 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1160 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_952
d_GovVoterOf_1034 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVoterOf_1168
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovVotes
d_GovVotes_1036 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovVotesOf
d_GovVotesOf_1040 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1180 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_996
d_GovVotesOf_1040 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVotesOf_1188
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GuardsOf
d_GuardsOf_1044 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4350 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_GuardsOf_1044 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_GuardsOf_4358
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasAccount
d_HasAccount_1046 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasAnchor
d_HasAnchor_1050 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasAnchor-GovProposal
d_HasAnchor'45'GovProposal_1054 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1260
d_HasAnchor'45'GovProposal_1054 ~v0
  = du_HasAnchor'45'GovProposal_1054
du_HasAnchor'45'GovProposal_1054 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1260
du_HasAnchor'45'GovProposal_1054
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasAnchor'45'GovProposal_1314
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasAttrSize
d_HasAttrSize_1056 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasAttrSize-BootstrapAddr
d_HasAttrSize'45'BootstrapAddr_1060 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214
d_HasAttrSize'45'BootstrapAddr_1060 ~v0
  = du_HasAttrSize'45'BootstrapAddr_1060
du_HasAttrSize'45'BootstrapAddr_1060 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214
du_HasAttrSize'45'BootstrapAddr_1060
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasAttrSize'45'BootstrapAddr_238
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasBalanceIntervals
d_HasBalanceIntervals_1062 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasBalanceIntervals-Tx
d_HasBalanceIntervals'45'Tx_1066 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasBalanceIntervals_4470
d_HasBalanceIntervals'45'Tx_1066 ~v0
  = du_HasBalanceIntervals'45'Tx_1066
du_HasBalanceIntervals'45'Tx_1066 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasBalanceIntervals_4470
du_HasBalanceIntervals'45'Tx_1066 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasBalanceIntervals'45'Tx_4542
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasBalanceIntervals-TxBody
d_HasBalanceIntervals'45'TxBody_1068 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasBalanceIntervals_4470
d_HasBalanceIntervals'45'TxBody_1068 ~v0
  = du_HasBalanceIntervals'45'TxBody_1068
du_HasBalanceIntervals'45'TxBody_1068 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasBalanceIntervals_4470
du_HasBalanceIntervals'45'TxBody_1068 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasBalanceIntervals'45'TxBody_4540
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCCMaxTermLength
d_HasCCMaxTermLength_1070 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCast-Acnt
d_HasCast'45'Acnt_1074 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_1074 ~v0 = du_HasCast'45'Acnt_1074
du_HasCast'45'Acnt_1074 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Acnt_1074
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasCast'45'Acnt_230
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_1076 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_1076 ~v0
  = du_HasCast'45'GovAction'45'Sigma_1076
du_HasCast'45'GovAction'45'Sigma_1076 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_1076
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_1298
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCast-GovVote
d_HasCast'45'GovVote_1078 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_1078 ~v0 = du_HasCast'45'GovVote_1078
du_HasCast'45'GovVote_1078 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_1078
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovVote_1440
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCast-HashProtected
d_HasCast'45'HashProtected_1080 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_1080 ~v0
  = du_HasCast'45'HashProtected_1080
du_HasCast'45'HashProtected_1080 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_1080 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected_1304
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_1082 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_1082 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_1082
du_HasCast'45'HashProtected'45'MaybeScriptHash_1082 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_1082
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1306
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCoin-TxOut
d_HasCoin'45'TxOut_1084 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_1084 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_HasCoin'45'TxOut_4590
      (coe d_HSTransactionStructure_736 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCollateralInputs
d_HasCollateralInputs_1086 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCollateralInputs-TopLevelTx
d_HasCollateralInputs'45'TopLevelTx_1090 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCollateralInputs_4020
d_HasCollateralInputs'45'TopLevelTx_1090 ~v0
  = du_HasCollateralInputs'45'TopLevelTx_1090
du_HasCollateralInputs'45'TopLevelTx_1090 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCollateralInputs_4020
du_HasCollateralInputs'45'TopLevelTx_1090
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasCollateralInputs'45'TopLevelTx_4518
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCredential
d_HasCredential_1092 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCredential-RewardAddress
d_HasCredential'45'RewardAddress_1096 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
d_HasCredential'45'RewardAddress_1096 ~v0
  = du_HasCredential'45'RewardAddress_1096
du_HasCredential'45'RewardAddress_1096 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
du_HasCredential'45'RewardAddress_1096
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RewardAddress_236
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCurrentTreasury
d_HasCurrentTreasury_1098 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCurrentTreasury-Tx
d_HasCurrentTreasury'45'Tx_1102 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4430
d_HasCurrentTreasury'45'Tx_1102 ~v0
  = du_HasCurrentTreasury'45'Tx_1102
du_HasCurrentTreasury'45'Tx_1102 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4430
du_HasCurrentTreasury'45'Tx_1102 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasCurrentTreasury'45'Tx_4614
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCurrentTreasury-TxBody
d_HasCurrentTreasury'45'TxBody_1104 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4430
d_HasCurrentTreasury'45'TxBody_1104 ~v0
  = du_HasCurrentTreasury'45'TxBody_1104
du_HasCurrentTreasury'45'TxBody_1104 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4430
du_HasCurrentTreasury'45'TxBody_1104 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasCurrentTreasury'45'TxBody_4612
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDCerts
d_HasDCerts_1106 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDCerts-Tx
d_HasDCerts'45'Tx_1110 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4250
d_HasDCerts'45'Tx_1110 ~v0 = du_HasDCerts'45'Tx_1110
du_HasDCerts'45'Tx_1110 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4250
du_HasDCerts'45'Tx_1110 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDCerts'45'Tx_4530
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDCerts-TxBody
d_HasDCerts'45'TxBody_1112 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4250
d_HasDCerts'45'TxBody_1112 ~v0 = du_HasDCerts'45'TxBody_1112
du_HasDCerts'45'TxBody_1112 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4250
du_HasDCerts'45'TxBody_1112 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDCerts'45'TxBody_4528
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDReps
d_HasDReps_1114 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasData
d_HasData_1118 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasData-Tx
d_HasData'45'Tx_1122 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4290
d_HasData'45'Tx_1122 ~v0 = du_HasData'45'Tx_1122
du_HasData'45'Tx_1122 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4290
du_HasData'45'Tx_1122 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasData'45'Tx_4594
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasData-TxWitnesses
d_HasData'45'TxWitnesses_1124 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4290
d_HasData'45'TxWitnesses_1124 ~v0 = du_HasData'45'TxWitnesses_1124
du_HasData'45'TxWitnesses_1124 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4290
du_HasData'45'TxWitnesses_1124
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasData'45'TxWitnesses_4592
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDeposit
d_HasDeposit_1126 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDeposit-GovProposal
d_HasDeposit'45'GovProposal_1130 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1280
d_HasDeposit'45'GovProposal_1130 ~v0
  = du_HasDeposit'45'GovProposal_1130
du_HasDeposit'45'GovProposal_1130 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1280
du_HasDeposit'45'GovProposal_1130
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasDeposit'45'GovProposal_1316
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDirectDeposits
d_HasDirectDeposits_1132 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDirectDeposits-Tx
d_HasDirectDeposits'45'Tx_1136 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDirectDeposits_4450
d_HasDirectDeposits'45'Tx_1136 ~v0
  = du_HasDirectDeposits'45'Tx_1136
du_HasDirectDeposits'45'Tx_1136 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDirectDeposits_4450
du_HasDirectDeposits'45'Tx_1136 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDirectDeposits'45'Tx_4538
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDirectDeposits-TxBody
d_HasDirectDeposits'45'TxBody_1138 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDirectDeposits_4450
d_HasDirectDeposits'45'TxBody_1138 ~v0
  = du_HasDirectDeposits'45'TxBody_1138
du_HasDirectDeposits'45'TxBody_1138 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDirectDeposits_4450
du_HasDirectDeposits'45'TxBody_1138 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDirectDeposits'45'TxBody_4536
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDonations-Tx
d_HasDonations'45'Tx_1140 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'Tx_1140 ~v0 = du_HasDonations'45'Tx_1140
du_HasDonations'45'Tx_1140 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
du_HasDonations'45'Tx_1140 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDonations'45'Tx_4588
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDonations-TxBody
d_HasDonations'45'TxBody_1142 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'TxBody_1142 ~v0 = du_HasDonations'45'TxBody_1142
du_HasDonations'45'TxBody_1142 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
du_HasDonations'45'TxBody_1142 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDonations'45'TxBody_4586
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasFees?
d_HasFees'63'_1144 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasFees?-Tx
d_HasFees'63''45'Tx_1148 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasFees'63'_4230
d_HasFees'63''45'Tx_1148 ~v0 = du_HasFees'63''45'Tx_1148
du_HasFees'63''45'Tx_1148 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasFees'63'_4230
du_HasFees'63''45'Tx_1148
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasFees'63''45'Tx_4580
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasFees?-TxBody
d_HasFees'63''45'TxBody_1150 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasFees'63'_4230
d_HasFees'63''45'TxBody_1150 ~v0 = du_HasFees'63''45'TxBody_1150
du_HasFees'63''45'TxBody_1150 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasFees'63'_4230
du_HasFees'63''45'TxBody_1150
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasFees'63''45'TxBody_4574
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGovAction
d_HasGovAction_1152 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_1156 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1142
d_HasGovAction'45'GovActionState_1156 ~v0
  = du_HasGovAction'45'GovActionState_1156
du_HasGovAction'45'GovActionState_1156 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1142
du_HasGovAction'45'GovActionState_1156
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1320
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_1158 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1142
d_HasGovAction'45'GovProposal_1158 ~v0
  = du_HasGovAction'45'GovProposal_1158
du_HasGovAction'45'GovProposal_1158 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1142
du_HasGovAction'45'GovProposal_1158
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1318
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGovActionType
d_HasGovActionType_1160 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_1164 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1106
d_HasGovActionType'45'GovAction_1164 ~v0
  = du_HasGovActionType'45'GovAction_1164
du_HasGovActionType'45'GovAction_1164 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1106
du_HasGovActionType'45'GovAction_1164
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_1296
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_1166 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1106
d_HasGovActionType'45'GovActionState_1166 ~v0
  = du_HasGovActionType'45'GovActionState_1166
du_HasGovActionType'45'GovActionState_1166 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1106
du_HasGovActionType'45'GovActionState_1166
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1324
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_1168 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1106
d_HasGovActionType'45'GovProposal_1168 ~v0
  = du_HasGovActionType'45'GovProposal_1168
du_HasGovActionType'45'GovProposal_1168 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1106
du_HasGovActionType'45'GovProposal_1168
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1322
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGovProposals
d_HasGovProposals_1170 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGovVoter
d_HasGovVoter_1174 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_1178 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1160
d_HasGovVoter'45'GovVote_1178 ~v0 = du_HasGovVoter'45'GovVote_1178
du_HasGovVoter'45'GovVote_1178 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1160
du_HasGovVoter'45'GovVote_1178
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1308
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGovVotes
d_HasGovVotes_1180 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGovVotes-GovActionState
d_HasGovVotes'45'GovActionState_1184 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1180
d_HasGovVotes'45'GovActionState_1184 ~v0
  = du_HasGovVotes'45'GovActionState_1184
du_HasGovVotes'45'GovActionState_1184 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1180
du_HasGovVotes'45'GovActionState_1184
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovVotes'45'GovActionState_1326
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGuards
d_HasGuards_1186 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGuards-Tx
d_HasGuards'45'Tx_1190 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4350
d_HasGuards'45'Tx_1190 ~v0 = du_HasGuards'45'Tx_1190
du_HasGuards'45'Tx_1190 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4350
du_HasGuards'45'Tx_1190 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasGuards'45'Tx_4598
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGuards-TxBody
d_HasGuards'45'TxBody_1192 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4350
d_HasGuards'45'TxBody_1192 ~v0 = du_HasGuards'45'TxBody_1192
du_HasGuards'45'TxBody_1192 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4350
du_HasGuards'45'TxBody_1192 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasGuards'45'TxBody_4596
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasIsValidFlag
d_HasIsValidFlag_1194 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasIsValidFlag-Tx
d_HasIsValidFlag'45'Tx_1198 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasIsValidFlag_4490
d_HasIsValidFlag'45'Tx_1198 ~v0 = du_HasIsValidFlag'45'Tx_1198
du_HasIsValidFlag'45'Tx_1198 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasIsValidFlag_4490
du_HasIsValidFlag'45'Tx_1198
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasIsValidFlag'45'Tx_4512
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasListOfGovProposals
d_HasListOfGovProposals_1200 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasListOfGovProposals-Tx
d_HasListOfGovProposals'45'Tx_1204 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovProposals_4310
d_HasListOfGovProposals'45'Tx_1204 ~v0
  = du_HasListOfGovProposals'45'Tx_1204
du_HasListOfGovProposals'45'Tx_1204 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovProposals_4310
du_HasListOfGovProposals'45'Tx_1204 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasListOfGovProposals'45'Tx_4566
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasListOfGovProposals-TxBody
d_HasListOfGovProposals'45'TxBody_1206 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovProposals_4310
d_HasListOfGovProposals'45'TxBody_1206 ~v0
  = du_HasListOfGovProposals'45'TxBody_1206
du_HasListOfGovProposals'45'TxBody_1206 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovProposals_4310
du_HasListOfGovProposals'45'TxBody_1206 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasListOfGovProposals'45'TxBody_4564
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasListOfGovVotes
d_HasListOfGovVotes_1208 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasListOfGovVotes-Tx
d_HasListOfGovVotes'45'Tx_1212 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovVotes_4330
d_HasListOfGovVotes'45'Tx_1212 ~v0
  = du_HasListOfGovVotes'45'Tx_1212
du_HasListOfGovVotes'45'Tx_1212 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovVotes_4330
du_HasListOfGovVotes'45'Tx_1212 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasListOfGovVotes'45'Tx_4562
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasListOfGovVotes-TxBody
d_HasListOfGovVotes'45'TxBody_1214 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovVotes_4330
d_HasListOfGovVotes'45'TxBody_1214 ~v0
  = du_HasListOfGovVotes'45'TxBody_1214
du_HasListOfGovVotes'45'TxBody_1214 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovVotes_4330
du_HasListOfGovVotes'45'TxBody_1214 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasListOfGovVotes'45'TxBody_4560
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasMaybeNetworkId
d_HasMaybeNetworkId_1216 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasMaybeNetworkId-Tx
d_HasMaybeNetworkId'45'Tx_1220 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174
d_HasMaybeNetworkId'45'Tx_1220 ~v0
  = du_HasMaybeNetworkId'45'Tx_1220
du_HasMaybeNetworkId'45'Tx_1220 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174
du_HasMaybeNetworkId'45'Tx_1220 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMaybeNetworkId'45'Tx_4570
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasMaybeNetworkId-TxBody
d_HasMaybeNetworkId'45'TxBody_1222 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174
d_HasMaybeNetworkId'45'TxBody_1222 ~v0
  = du_HasMaybeNetworkId'45'TxBody_1222
du_HasMaybeNetworkId'45'TxBody_1222 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174
du_HasMaybeNetworkId'45'TxBody_1222 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMaybeNetworkId'45'TxBody_4568
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasMintedValue
d_HasMintedValue_1224 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasMintedValue-Tx
d_HasMintedValue'45'Tx_1228 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4210
d_HasMintedValue'45'Tx_1228 ~v0 = du_HasMintedValue'45'Tx_1228
du_HasMintedValue'45'Tx_1228 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4210
du_HasMintedValue'45'Tx_1228 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMintedValue'45'Tx_4558
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasMintedValue-TxBody
d_HasMintedValue'45'TxBody_1230 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4210
d_HasMintedValue'45'TxBody_1230 ~v0
  = du_HasMintedValue'45'TxBody_1230
du_HasMintedValue'45'TxBody_1230 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4210
du_HasMintedValue'45'TxBody_1230 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMintedValue'45'TxBody_4556
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasNetworkId
d_HasNetworkId_1232 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_1236 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'BaseAddr_1236 ~v0
  = du_HasNetworkId'45'BaseAddr_1236
du_HasNetworkId'45'BaseAddr_1236 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'BaseAddr_1236
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BaseAddr_230
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_1238 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'BootstrapAddr_1238 ~v0
  = du_HasNetworkId'45'BootstrapAddr_1238
du_HasNetworkId'45'BootstrapAddr_1238 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'BootstrapAddr_1238
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BootstrapAddr_232
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasNetworkId-RewardAddress
d_HasNetworkId'45'RewardAddress_1240 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'RewardAddress_1240 ~v0
  = du_HasNetworkId'45'RewardAddress_1240
du_HasNetworkId'45'RewardAddress_1240 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'RewardAddress_1240
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RewardAddress_234
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasPParams
d_HasPParams_1242 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasPolicy
d_HasPolicy_1246 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_1250 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1220
d_HasPolicy'45'GovProposal_1250 ~v0
  = du_HasPolicy'45'GovProposal_1250
du_HasPolicy'45'GovProposal_1250 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1220
du_HasPolicy'45'GovProposal_1250
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1312
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRedeemers
d_HasRedeemers_1252 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRedeemers-Tx
d_HasRedeemers'45'Tx_1256 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_3998
d_HasRedeemers'45'Tx_1256 ~v0 = du_HasRedeemers'45'Tx_1256
du_HasRedeemers'45'Tx_1256 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_3998
du_HasRedeemers'45'Tx_1256 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasRedeemers'45'Tx_4516
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRedeemers-TxWitnesses
d_HasRedeemers'45'TxWitnesses_1258 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_3998
d_HasRedeemers'45'TxWitnesses_1258 ~v0
  = du_HasRedeemers'45'TxWitnesses_1258
du_HasRedeemers'45'TxWitnesses_1258 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_3998
du_HasRedeemers'45'TxWitnesses_1258
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasRedeemers'45'TxWitnesses_4514
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasReferenceInputs
d_HasReferenceInputs_1260 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasReferenceInputs-Tx
d_HasReferenceInputs'45'Tx_1264 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4190
d_HasReferenceInputs'45'Tx_1264 ~v0
  = du_HasReferenceInputs'45'Tx_1264
du_HasReferenceInputs'45'Tx_1264 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4190
du_HasReferenceInputs'45'Tx_1264 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasReferenceInputs'45'Tx_4554
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasReferenceInputs-TxBody
d_HasReferenceInputs'45'TxBody_1266 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4190
d_HasReferenceInputs'45'TxBody_1266 ~v0
  = du_HasReferenceInputs'45'TxBody_1266
du_HasReferenceInputs'45'TxBody_1266 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4190
du_HasReferenceInputs'45'TxBody_1266 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasReferenceInputs'45'TxBody_4552
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRequiredSingerHashes
d_HasRequiredSingerHashes_1268 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRequiredSingerHashes-Tx
d_HasRequiredSingerHashes'45'Tx_1272 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRequiredSingerHashes_4410
d_HasRequiredSingerHashes'45'Tx_1272 ~v0
  = du_HasRequiredSingerHashes'45'Tx_1272
du_HasRequiredSingerHashes'45'Tx_1272 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRequiredSingerHashes_4410
du_HasRequiredSingerHashes'45'Tx_1272 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasRequiredSingerHashes'45'Tx_4610
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRequiredSingerHashes-TxBody
d_HasRequiredSingerHashes'45'TxBody_1274 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRequiredSingerHashes_4410
d_HasRequiredSingerHashes'45'TxBody_1274 ~v0
  = du_HasRequiredSingerHashes'45'TxBody_1274
du_HasRequiredSingerHashes'45'TxBody_1274 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRequiredSingerHashes_4410
du_HasRequiredSingerHashes'45'TxBody_1274 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasRequiredSingerHashes'45'TxBody_4608
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasReserves-Acnt
d_HasReserves'45'Acnt_1276 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
d_HasReserves'45'Acnt_1276 ~v0 = du_HasReserves'45'Acnt_1276
du_HasReserves'45'Acnt_1276 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
du_HasReserves'45'Acnt_1276
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasReserves'45'Acnt_228
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRewardAddress
d_HasRewardAddress_1278 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRewardAddress-GovActionState
d_HasRewardAddress'45'GovActionState_1282 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
d_HasRewardAddress'45'GovActionState_1282 ~v0
  = du_HasRewardAddress'45'GovActionState_1282
du_HasRewardAddress'45'GovActionState_1282 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
du_HasRewardAddress'45'GovActionState_1282
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasRewardAddress'45'GovActionState_1328
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRewardAddress-GovProposal
d_HasRewardAddress'45'GovProposal_1284 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
d_HasRewardAddress'45'GovProposal_1284 ~v0
  = du_HasRewardAddress'45'GovProposal_1284
du_HasRewardAddress'45'GovProposal_1284 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
du_HasRewardAddress'45'GovProposal_1284
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasRewardAddress'45'GovProposal_1330
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasScripts
d_HasScripts_1286 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasScripts-Tx
d_HasScripts'45'Tx_1290 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasScripts_4370
d_HasScripts'45'Tx_1290 ~v0 = du_HasScripts'45'Tx_1290
du_HasScripts'45'Tx_1290 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasScripts_4370
du_HasScripts'45'Tx_1290 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasScripts'45'Tx_4602
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasScripts-TxWitnesses
d_HasScripts'45'TxWitnesses_1292 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasScripts_4370
d_HasScripts'45'TxWitnesses_1292 ~v0
  = du_HasScripts'45'TxWitnesses_1292
du_HasScripts'45'TxWitnesses_1292 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasScripts_4370
du_HasScripts'45'TxWitnesses_1292
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasScripts'45'TxWitnesses_4600
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasSize
d_HasSize_1294 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasSize-Tx
d_HasSize'45'Tx_1298 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_4110
d_HasSize'45'Tx_1298 ~v0 = du_HasSize'45'Tx_1298
du_HasSize'45'Tx_1298 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_4110
du_HasSize'45'Tx_1298 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSize'45'Tx_4508
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasSpendInputs
d_HasSpendInputs_1300 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasSpendInputs-Tx
d_HasSpendInputs'45'Tx_1304 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4170
d_HasSpendInputs'45'Tx_1304 ~v0 = du_HasSpendInputs'45'Tx_1304
du_HasSpendInputs'45'Tx_1304 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4170
du_HasSpendInputs'45'Tx_1304 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4550
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasSpendInputs-TxBody
d_HasSpendInputs'45'TxBody_1306 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4170
d_HasSpendInputs'45'TxBody_1306 ~v0
  = du_HasSpendInputs'45'TxBody_1306
du_HasSpendInputs'45'TxBody_1306 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4170
du_HasSpendInputs'45'TxBody_1306 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'TxBody_4548
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasSubTransactions
d_HasSubTransactions_1308 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasSubTransactions-TopLevelTx
d_HasSubTransactions'45'TopLevelTx_1312 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_4068
d_HasSubTransactions'45'TopLevelTx_1312 ~v0
  = du_HasSubTransactions'45'TopLevelTx_1312
du_HasSubTransactions'45'TopLevelTx_1312 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_4068
du_HasSubTransactions'45'TopLevelTx_1312
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSubTransactions'45'TopLevelTx_4522
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTopLevelGuards
d_HasTopLevelGuards_1314 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTopLevelGuards-Tx
d_HasTopLevelGuards'45'Tx_1318 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTopLevelGuards_4130
d_HasTopLevelGuards'45'Tx_1318 ~v0
  = du_HasTopLevelGuards'45'Tx_1318
du_HasTopLevelGuards'45'Tx_1318 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTopLevelGuards_4130
du_HasTopLevelGuards'45'Tx_1318 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTopLevelGuards'45'Tx_4526
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTopLevelGuards-TxBody
d_HasTopLevelGuards'45'TxBody_1320 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTopLevelGuards_4130
d_HasTopLevelGuards'45'TxBody_1320 ~v0
  = du_HasTopLevelGuards'45'TxBody_1320
du_HasTopLevelGuards'45'TxBody_1320 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTopLevelGuards_4130
du_HasTopLevelGuards'45'TxBody_1320 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTopLevelGuards'45'TxBody_4524
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTreasury-Acnt
d_HasTreasury'45'Acnt_1322 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'Acnt_1322 ~v0 = du_HasTreasury'45'Acnt_1322
du_HasTreasury'45'Acnt_1322 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
du_HasTreasury'45'Acnt_1322
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasTreasury'45'Acnt_226
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTxBody
d_HasTxBody_1324 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTxBody-Tx
d_HasTxBody'45'Tx_1328 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxBody_3956
d_HasTxBody'45'Tx_1328 ~v0 = du_HasTxBody'45'Tx_1328
du_HasTxBody'45'Tx_1328 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxBody_3956
du_HasTxBody'45'Tx_1328 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxBody'45'Tx_4506
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTxFees
d_HasTxFees_1330 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTxFees-TopLevelTx
d_HasTxFees'45'TopLevelTx_1334 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxFees_4044
d_HasTxFees'45'TopLevelTx_1334 ~v0
  = du_HasTxFees'45'TopLevelTx_1334
du_HasTxFees'45'TopLevelTx_1334 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxFees_4044
du_HasTxFees'45'TopLevelTx_1334
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxFees'45'TopLevelTx_4520
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTxId
d_HasTxId_1336 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTxId-Tx
d_HasTxId'45'Tx_1340 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4090
d_HasTxId'45'Tx_1340 ~v0 = du_HasTxId'45'Tx_1340
du_HasTxId'45'Tx_1340 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4090
du_HasTxId'45'Tx_1340 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxId'45'Tx_4584
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTxId-TxBody
d_HasTxId'45'TxBody_1342 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4090
d_HasTxId'45'TxBody_1342 ~v0 = du_HasTxId'45'TxBody_1342
du_HasTxId'45'TxBody_1342 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4090
du_HasTxId'45'TxBody_1342 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxId'45'TxBody_4582
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTxOuts
d_HasTxOuts_1344 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTxOuts-Tx
d_HasTxOuts'45'Tx_1348 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4390
d_HasTxOuts'45'Tx_1348 ~v0 = du_HasTxOuts'45'Tx_1348
du_HasTxOuts'45'Tx_1348 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4390
du_HasTxOuts'45'Tx_1348 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4606
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTxOuts-TxBody
d_HasTxOuts'45'TxBody_1350 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4390
d_HasTxOuts'45'TxBody_1350 ~v0 = du_HasTxOuts'45'TxBody_1350
du_HasTxOuts'45'TxBody_1350 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4390
du_HasTxOuts'45'TxBody_1350 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'TxBody_4604
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTxWitnesses
d_HasTxWitnesses_1352 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTxWitnesses-Tx
d_HasTxWitnesses'45'Tx_1356 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxWitnesses_3978
d_HasTxWitnesses'45'Tx_1356 ~v0 = du_HasTxWitnesses'45'Tx_1356
du_HasTxWitnesses'45'Tx_1356 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxWitnesses_3978
du_HasTxWitnesses'45'Tx_1356 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxWitnesses'45'Tx_4510
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasUTxO
d_HasUTxO_1358 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasValidInterval
d_HasValidInterval_1362 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasValidInterval-Tx
d_HasValidInterval'45'Tx_1366 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_4150
d_HasValidInterval'45'Tx_1366 ~v0 = du_HasValidInterval'45'Tx_1366
du_HasValidInterval'45'Tx_1366 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_4150
du_HasValidInterval'45'Tx_1366 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasValidInterval'45'Tx_4546
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasValidInterval-TxBody
d_HasValidInterval'45'TxBody_1368 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_4150
d_HasValidInterval'45'TxBody_1368 ~v0
  = du_HasValidInterval'45'TxBody_1368
du_HasValidInterval'45'TxBody_1368 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_4150
du_HasValidInterval'45'TxBody_1368 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasValidInterval'45'TxBody_4544
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasVote
d_HasVote_1370 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasVote-GovVote
d_HasVote'45'GovVote_1374 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1200
d_HasVote'45'GovVote_1374 ~v0 = du_HasVote'45'GovVote_1374
du_HasVote'45'GovVote_1374 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1200
du_HasVote'45'GovVote_1374
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasVote'45'GovVote_1310
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasVoteDelegs
d_HasVoteDelegs_1376 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasWithdrawals
d_HasWithdrawals_1380 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasWithdrawals-Tx
d_HasWithdrawals'45'Tx_1384 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
d_HasWithdrawals'45'Tx_1384 ~v0 = du_HasWithdrawals'45'Tx_1384
du_HasWithdrawals'45'Tx_1384 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
du_HasWithdrawals'45'Tx_1384 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasWithdrawals'45'Tx_4534
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasWithdrawals-TxBody
d_HasWithdrawals'45'TxBody_1386 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
d_HasWithdrawals'45'TxBody_1386 ~v0
  = du_HasWithdrawals'45'TxBody_1386
du_HasWithdrawals'45'TxBody_1386 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
du_HasWithdrawals'45'TxBody_1386 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasWithdrawals'45'TxBody_4532
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HashProtected
d_HashProtected_1388 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () -> ()
d_HashProtected_1388 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Hashable-P1Script
d_Hashable'45'P1Script_1390 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_1390 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_392
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_594
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1392 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_1392 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_506
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Hashable-Script
d_Hashable'45'Script_1394 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_1394 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_696
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Hashable-ScriptIntegrity
d_Hashable'45'ScriptIntegrity_1396 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'ScriptIntegrity_1396 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_Hashable'45'ScriptIntegrity_2746
      (coe d_HSTransactionStructure_736 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.InBalanceInterval
d_InBalanceInterval_1398 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsBootstrapAddr
d_IsBootstrapAddr_1402 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsBootstrapAddr?
d_IsBootstrapAddr'63'_1404 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsBootstrapAddr'63'_1404 ~v0 = du_IsBootstrapAddr'63'_1404
du_IsBootstrapAddr'63'_1404 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsBootstrapAddr'63'_1404
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsBootstrapAddr'63'_322
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsKeyHashObj
d_IsKeyHashObj_1408 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsKeyHashObj?
d_IsKeyHashObj'63'_1410 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsKeyHashObj'63'_1410 ~v0 = du_IsKeyHashObj'63'_1410
du_IsKeyHashObj'63'_1410 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsKeyHashObj'63'_1410
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsKeyHashObj'63'_56
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_1412 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1416 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1420 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsValidFlagOf
d_IsValidFlagOf_1424 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasIsValidFlag_4490 ->
  AgdaAny -> Bool
d_IsValidFlagOf_1424 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_IsValidFlagOf_4498
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Ix
d_Ix_1426 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Ix_1426 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.THash
d_THash_1428 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_THash_1428 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.KeyPair
d_KeyPair_1432 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_KeyPair_1432 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.LangDepView
d_LangDepView_1434 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_LangDepView_1434 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Language
d_Language_1436 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Language_1436 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.LanguageCostModels
d_LanguageCostModels_1438 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ListOfGovProposalsOf
d_ListOfGovProposalsOf_1442 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovProposals_4310 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030]
d_ListOfGovProposalsOf_1442 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ListOfGovProposalsOf_4318
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ListOfGovVotesOf
d_ListOfGovVotesOf_1444 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovVotes_4330 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_976]
d_ListOfGovVotesOf_1444 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ListOfGovVotesOf_4338
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.MaxLovelaceSupplyᶜ
d_MaxLovelaceSupply'7580'_1446 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_MaxLovelaceSupply'7580'_1446 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_338
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.MaybeNetworkIdOf
d_MaybeNetworkIdOf_1448 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174 ->
  AgdaAny -> Maybe Integer
d_MaybeNetworkIdOf_1448 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_182
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.MemoryEstimate
d_MemoryEstimate_1450 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_MemoryEstimate_1450 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.MintedValueOf
d_MintedValueOf_1452 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4210 ->
  AgdaAny -> Integer
d_MintedValueOf_1452 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_MintedValueOf_4218
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.NativeScript
d_NativeScript_1454 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.NeedsHash
d_NeedsHash_1456 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_912 ->
  ()
d_NeedsHash_1456 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Network
d_Network_1458 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Network_1458 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.NetworkId
d_NetworkId_1462 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_NetworkId_1462 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_342
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.NetworkIdOf
d_NetworkIdOf_1464 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154 ->
  AgdaAny -> Integer
d_NetworkIdOf_1464 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_162
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.NoOverlappingSpendInputs
d_NoOverlappingSpendInputs_1470 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  ()
d_NoOverlappingSpendInputs_1470 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_1472 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_1472 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'ActiveSlotCoeff_346
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1474 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_1474 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_328
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Number-Epoch
d_Number'45'Epoch_1476 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_1476 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Number'45'Epoch_286
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.P1Script
d_P1Script_1478 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_P1Script_1478 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.P1ScriptStructure
d_P1ScriptStructure_1480 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusScript
d_PlutusScript_1484 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_PlutusScript_1484 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamGroup
d_PParamGroup_1486 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams
d_PParams_1488 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsDiff
d_PParamsDiff_1492 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsOf
d_PParamsOf_1496 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_PParamsOf_1496 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_586
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.UpdateT
d_UpdateT_1498 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_UpdateT_1498 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusLanguage
d_PlutusLanguage_1500 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure
d_PlutusStructure_1502 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusV1
d_PlutusV1_1506 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.T_HSLanguage_10
d_PlutusV1_1506 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_530
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
               (coe v2))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusV2
d_PlutusV2_1508 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.T_HSLanguage_10
d_PlutusV2_1508 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_532
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
               (coe v2))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusV3
d_PlutusV3_1510 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.T_HSLanguage_10
d_PlutusV3_1510 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_534
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
               (coe v2))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusV4
d_PlutusV4_1512 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.T_HSLanguage_10
d_PlutusV4_1512 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_536
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
               (coe v2))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Policy
d_Policy_1514 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Policy_1514 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PolicyOf
d_PolicyOf_1516 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1220 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_1516 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_PolicyOf_1228
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PoolThresholds
d_PoolThresholds_1518 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Positive-ActiveSlotCoeff
d_Positive'45'ActiveSlotCoeff_1522 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_Positive'45'ActiveSlotCoeff_1522 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Positive'45'ActiveSlotCoeff_332
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Prices
d_Prices_1524 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Prices_1524 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ProposedPPUpdates
d_ProposedPPUpdates_1526 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ProposedPPUpdates_1526 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Quorum
d_Quorum_1528 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_Quorum_1528 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Quorum_340
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.RBHeaderHash
d_RBHeaderHash_1530 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_RBHeaderHash_1530 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_1532 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_RandomnessStabilisationWindow_1532 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_94
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.RandomnessStabilisationWindowᶜ
d_RandomnessStabilisationWindow'7580'_1534 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_RandomnessStabilisationWindow'7580'_1534 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow'7580'_334
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Redeemer
d_Redeemer_1536 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Redeemer_1536 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.RedeemerPtr
d_RedeemerPtr_1538 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_RedeemerPtr_1538 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.RedeemersOf
d_RedeemersOf_1540 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_3998 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RedeemersOf_1540 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_RedeemersOf_4006
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ReferenceInputsOf
d_ReferenceInputsOf_1542 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4190 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_ReferenceInputsOf_1542 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ReferenceInputsOf_4198
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.RequiredSignerHashesOf
d_RequiredSignerHashesOf_1558 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRequiredSingerHashes_4410 ->
  AgdaAny -> [Integer]
d_RequiredSignerHashesOf_1558 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_RequiredSignerHashesOf_4418
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.RewardAddress
d_RewardAddress_1560 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.RewardAddressOf
d_RewardAddressOf_1564 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_1564 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.SKey
d_SKey_1568 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_SKey_1568 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Script
d_Script_1572 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Script_1572 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptAddr
d_ScriptAddr_1574 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ScriptAddr_1574 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptBaseAddr
d_ScriptBaseAddr_1576 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ScriptBaseAddr_1576 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1578 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ScriptBootstrapAddr_1578 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptHash
d_ScriptHash_1580 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ScriptHash_1580 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure
d_ScriptStructure_1584 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptsOf
d_ScriptsOf_1588 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasScripts_4370 ->
  AgdaAny -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_ScriptsOf_1588 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ScriptsOf_4378
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Ser
d_Ser_1592 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Ser_1592 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-CostModel
d_Show'45'CostModel_1594 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1594 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'CostModel_512
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-Credential
d_Show'45'Credential_1596 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_1596 ~v0 = du_Show'45'Credential_1596
du_Show'45'Credential_1596 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_1596 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential_362
      v1 v2
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_1598 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_1598 ~v0
  = du_Show'45'Credential'215'Coin_1598
du_Show'45'Credential'215'Coin_1598 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_1598 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential'215'Coin_366
      v1 v2
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-DrepThresholds
d_Show'45'DrepThresholds_1600 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_1600 ~v0 = du_Show'45'DrepThresholds_1600
du_Show'45'DrepThresholds_1600 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_1600
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_Show'45'DrepThresholds_622
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-Epoch
d_Show'45'Epoch_1602 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_1602 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Epoch_82
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-ExUnits
d_Show'45'ExUnits_1604 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1604 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_526
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-GovRole
d_Show'45'GovRole_1606 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_1606 ~v0 = du_Show'45'GovRole_1606
du_Show'45'GovRole_1606 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'GovRole_1606
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_Show'45'GovRole_1332
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-Language
d_Show'45'Language_1608 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_1608 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Language_516
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-LanguageCostModels
d_Show'45'LanguageCostModels_1610 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_1610 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Show'45'LanguageCostModels_738
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-Network
d_Show'45'Network_1612 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_1612 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Network_324
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-PParams
d_Show'45'PParams_1614 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_1614 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_Show'45'PParams_626
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
            (coe v1))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-PoolThresholds
d_Show'45'PoolThresholds_1616 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_1616 ~v0 = du_Show'45'PoolThresholds_1616
du_Show'45'PoolThresholds_1616 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_1616
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_Show'45'PoolThresholds_624
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-Prices
d_Show'45'Prices_1618 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1618 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Prices_528
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-RewardAddress
d_Show'45'RewardAddress_1620 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RewardAddress_1620 ~v0 = du_Show'45'RewardAddress_1620
du_Show'45'RewardAddress_1620 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RewardAddress_1620
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'RewardAddress_364
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-ScriptHash
d_Show'45'ScriptHash_1622 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_1622 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_270
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-THash
d_Show'45'THash_1624 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1624 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1410
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-THash
d_Show'45'THash_1626 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1626 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264 (coe v2))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-THash
d_Show'45'THash_1628 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1628 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
               (coe v2))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-VDeleg
d_Show'45'VDeleg_1630 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_1630 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_Show'45'VDeleg_1442
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Sig
d_Sig_1632 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Sig_1632 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.SizeOf
d_SizeOf_1634 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_4110 ->
  AgdaAny -> Integer
d_SizeOf_1634 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SizeOf_4118
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Slot
d_Slot_1636 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Slot_1636 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1638 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_SlotsPerEpoch'7580'_1638 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_326
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Slotʳ
d_Slot'691'_1640 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_Slot'691'_1640 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_76
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.SpendInputsOf
d_SpendInputsOf_1642 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4170 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_SpendInputsOf_1642 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4178
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.StabilityWindow
d_StabilityWindow_1644 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_StabilityWindow_1644 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow_96
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.StabilityWindowᶜ
d_StabilityWindow'7580'_1646 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_StabilityWindow'7580'_1646 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow'7580'_336
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.SubLevelTx
d_SubLevelTx_1648 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_SubLevelTx_1648 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.SubTransactionsOf
d_SubTransactionsOf_1650 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_4068 ->
  AgdaAny -> AgdaAny
d_SubTransactionsOf_1650 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SubTransactionsOf_4078
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.T-Hashable
d_T'45'Hashable_1652 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1652 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1410
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.T-Hashable
d_T'45'Hashable_1654 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1654 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264 (coe v2))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.T-Hashable
d_T'45'Hashable_1656 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1656 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
               (coe v2))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.T-isHashable
d_T'45'isHashable_1658 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_1658 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra
d_TokenAlgebra_1662 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TopLevelGuardsOf
d_TopLevelGuardsOf_1666 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTopLevelGuards_4130 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_TopLevelGuardsOf_1666 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TopLevelGuardsOf_4138
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TopLevelTx
d_TopLevelTx_1668 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_TopLevelTx_1668 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Tx
d_Tx_1674 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody
d_TxBody_1678 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBodyOf
d_TxBodyOf_1682 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxBody_3956 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802
d_TxBodyOf_1682 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxBodyOf_3966
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxFeesOf
d_TxFeesOf_1684 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxFees_4044 ->
  AgdaAny -> AgdaAny
d_TxFeesOf_1684 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxFeesOf_4054
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxId
d_TxId_1686 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_TxId_1686 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxIdOf
d_TxIdOf_1688 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4090 ->
  AgdaAny -> Integer
d_TxIdOf_1688 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxIdOf_4098
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxIn
d_TxIn_1690 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_TxIn_1690 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxOut
d_TxOut_1692 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_TxOut_1692 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxOutsOf
d_TxOutsOf_1694 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4390 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_TxOutsOf_1694 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4398
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxRefHash
d_TxRefHash_1696 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_TxRefHash_1696 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxWitnesses
d_TxWitnesses_1698 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxWitnessesOf
d_TxWitnessesOf_1702 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxWitnesses_3978 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3804
d_TxWitnessesOf_1702 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxWitnessesOf_3986
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.UTxO
d_UTxO_1704 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_UTxO_1704 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.UTxOOf
d_UTxOOf_1706 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3780 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_1706 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3788
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Update
d_Update_1708 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Update_1708 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.VDeleg
d_VDeleg_1720 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.VKey
d_VKey_1722 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VKey_1722 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.VKeyAddr
d_VKeyAddr_1724 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VKeyAddr_1724 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.VKeyBaseAddr
d_VKeyBaseAddr_1726 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VKeyBaseAddr_1726 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1728 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VKeyBootstrapAddr_1728 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.VRF
d_VRF_1732 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VRF_1732 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ValidIntervalOf
d_ValidIntervalOf_1734 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_4150 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ValidIntervalOf_1734 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ValidIntervalOf_4158
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Value
d_Value_1736 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Value_1736 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1738 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_1738 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2742
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.VoteDelegs
d_VoteDelegs_1740 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VoteDelegs_1740 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.VoteDelegsOf
d_VoteDelegsOf_1742 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1124 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1742 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1132
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.VoteOf
d_VoteOf_1744 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1200 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_944
d_VoteOf_1744 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteOf_1208
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Withdrawals
d_Withdrawals_1746 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Withdrawals_1746 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.WithdrawalsOf
d_WithdrawalsOf_1748 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_1748 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_202
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.activeDRepsOf
d_activeDRepsOf_1750 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1240 ->
  AgdaAny -> Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_1750 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (\ v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_activeDRepsOf_1620
           (coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
              (coe v1))
           v3 v4 v5)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.activeInEpoch
d_activeInEpoch_1752 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_1752 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.adHashingScheme
d_adHashingScheme_1754 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_adHashingScheme_1754 ~v0 = du_adHashingScheme_1754
du_adHashingScheme_1754 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
du_adHashingScheme_1754
  = coe
      MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_isHashableSet'45'ℕ_34
-- Ledger.Dijkstra.Foreign.ExternalStructures._.addEpoch
d_addEpoch_1756 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_1756 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_280
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.addSlot
d_addSlot_1758 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_1758 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_278
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.addValue
d_addValue_1760 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_1760 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2742
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.allDCerts
d_allDCerts_1762 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1354]
d_allDCerts_1762 ~v0 = du_allDCerts_1762
du_allDCerts_1762 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1354]
du_allDCerts_1762
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allDCerts_4748
-- Ledger.Dijkstra.Foreign.ExternalStructures._.allMintedCoin
d_allMintedCoin_1764 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  Integer
d_allMintedCoin_1764 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_allMintedCoin_4732
      (coe d_HSTransactionStructure_736 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.allReferenceInputs
d_allReferenceInputs_1766 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_allReferenceInputs_1766 ~v0 = du_allReferenceInputs_1766
du_allReferenceInputs_1766 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_allReferenceInputs_1766
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allReferenceInputs_4642
-- Ledger.Dijkstra.Foreign.ExternalStructures._.allReferenceScripts
d_allReferenceScripts_1768 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allReferenceScripts_1768 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_allReferenceScripts_4678
      (coe d_HSTransactionStructure_736 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.allSpendInputs
d_allSpendInputs_1770 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_allSpendInputs_1770 ~v0 = du_allSpendInputs_1770
du_allSpendInputs_1770 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_allSpendInputs_1770
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allSpendInputs_4630
-- Ledger.Dijkstra.Foreign.ExternalStructures._.allSpendInputsList
d_allSpendInputsList_1772 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  [[MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]]
d_allSpendInputsList_1772 ~v0 = du_allSpendInputsList_1772
du_allSpendInputsList_1772 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  [[MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]]
du_allSpendInputsList_1772
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allSpendInputsList_4638
-- Ledger.Dijkstra.Foreign.ExternalStructures._.allWitnessScripts
d_allWitnessScripts_1774 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allWitnessScripts_1774 ~v0 = du_allWitnessScripts_1774
du_allWitnessScripts_1774 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_allWitnessScripts_1774
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allWitnessScripts_4690
-- Ledger.Dijkstra.Foreign.ExternalStructures._.applyUpdate
d_applyUpdate_1776 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyUpdate_1776 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1506
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1542
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2740
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.coin
d_coin_1780 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_coin_1780 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2742
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.coin-inject-lemma
d_coin'45'inject'45'lemma_1782 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_1782 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1784 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_1784 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2742
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.coin∘inject≗id
d_coin'8728'inject'8791'id_1786 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_1786 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.cryptoStructure
d_cryptoStructure_1788 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
d_cryptoStructure_1788 v0
  = coe
      MAlonzo.Code.Ledger.Core.Foreign.Crypto.Structure.d_HSCryptoStructure_34
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.dataOfTx
d_dataOfTx_1790 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  [Integer]
d_dataOfTx_1790 ~v0 = du_dataOfTx_1790
du_dataOfTx_1790 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  [Integer]
du_dataOfTx_1790 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_dataOfTx_4714
      v1
-- Ledger.Dijkstra.Foreign.ExternalStructures._.e<sucᵉ
d_e'60'suc'7497'_1792 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_e'60'suc'7497'_1792 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_e'60'suc'7497'_120
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.epoch
d_epoch_1794 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_epoch_1794 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.epochStructure
d_epochStructure_1796 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_epochStructure_1796 ~v0 = du_epochStructure_1796
du_epochStructure_1796 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
du_epochStructure_1796
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'46'extendedlambda0_366
      (coe MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.firstSlot
d_firstSlot_1814 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_firstSlot_1814 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.fromPlutusLanguage
d_fromPlutusLanguage_1816 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_1816 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_fromPlutusLanguage_502
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.gaData
d_gaData_1818 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930 ->
  AgdaAny
d_gaData_1818 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaData_938
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.gaType
d_gaType_1820 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_912
d_gaType_1820 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_936
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.getAllScripts
d_getAllScripts_1822 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_getAllScripts_1822 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_getAllScripts_4704
      (coe d_HSTransactionStructure_736 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.getScriptHash
d_getScriptHash_1824 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_78 ->
  Integer
d_getScriptHash_1824 ~v0 = du_getScriptHash_1824
du_getScriptHash_1824 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_78 ->
  Integer
du_getScriptHash_1824
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_getScriptHash_340
-- Ledger.Dijkstra.Foreign.ExternalStructures._.getTxData
d_getTxData_1826 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  [Integer]
d_getTxData_1826 ~v0 = du_getTxData_1826
du_getTxData_1826 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  [Integer]
du_getTxData_1826 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_getTxData_4724
      v1
-- Ledger.Dijkstra.Foreign.ExternalStructures._.getTxScripts
d_getTxScripts_1828 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_getTxScripts_1828 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_getTxScripts_4698
      (coe d_HSTransactionStructure_736 (coe v0)) v2 v3
-- Ledger.Dijkstra.Foreign.ExternalStructures._.globalConstants
d_globalConstants_1830 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
d_globalConstants_1830 ~v0 = du_globalConstants_1830
du_globalConstants_1830 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
du_globalConstants_1830
  = coe MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8
-- Ledger.Dijkstra.Foreign.ExternalStructures._.govParams
d_govParams_1832 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524
d_govParams_1832 v0 = coe d_HsGovParams_690 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.govStructure
d_govStructure_1834 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10
d_govStructure_1834 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
      (coe d_HSTransactionStructure_736 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.govVoterCredential
d_govVoterCredential_1836 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_952 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_1836 ~v0 = du_govVoterCredential_1836
du_govVoterCredential_1836 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_952 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_govVoterCredential_1836
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_govVoterCredential_1090
-- Ledger.Dijkstra.Foreign.ExternalStructures._.hashEBRefs
d_hashEBRefs_1838 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Integer
d_hashEBRefs_1838 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_hashEBRefs_308
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.hashRespectsUnion
d_hashRespectsUnion_1840 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_1840 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_hashRespectsUnion_614
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.inject
d_inject_1842 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_inject_1842 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2742
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isBootstrapAddr
d_isBootstrapAddr_1844 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100
d_isBootstrapAddr_1844 ~v0 = du_isBootstrapAddr_1844
du_isBootstrapAddr_1844 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100
du_isBootstrapAddr_1844
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isBootstrapAddr_290
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isGovVoterDRep
d_isGovVoterDRep_1846 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_952 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_1846 ~v0 = du_isGovVoterDRep_1846
du_isGovVoterDRep_1846 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_952 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_isGovVoterDRep_1846
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_isGovVoterDRep_1086
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isKeyHash
d_isKeyHash_1848 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_isKeyHash_1848 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isKeyHashObj
d_isKeyHashObj_1850 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
d_isKeyHashObj_1850 ~v0 = du_isKeyHashObj_1850
du_isKeyHashObj_1850 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
du_isKeyHashObj_1850
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1852 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
d_isKeyHashObj'7495'_1852 ~v0 = du_isKeyHashObj'7495'_1852
du_isKeyHashObj'7495'_1852 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
du_isKeyHashObj'7495'_1852
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj'7495'_62
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isKeyPair
d_isKeyPair_1854 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 -> ()
d_isKeyPair_1854 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isNativeScript
d_isNativeScript_1856 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_1856 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isP1Script
d_isP1Script_1858 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_1858 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isP1Script?
d_isP1Script'63'_1860 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_1860 ~v0 = du_isP1Script'63'_1860
du_isP1Script'63'_1860 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_1860
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP1Script'63'_702
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isP2Script
d_isP2Script_1862 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_1862 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isP2Script?
d_isP2Script'63'_1864 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_1864 ~v0 = du_isP2Script'63'_1864
du_isP2Script'63'_1864 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_1864
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP2Script'63'_716
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isScript
d_isScript_1866 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isScriptAddr
d_isScriptAddr_1868 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1868 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isScriptObj
d_isScriptObj_1870 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
d_isScriptObj_1870 ~v0 = du_isScriptObj_1870
du_isScriptObj_1870 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
du_isScriptObj_1870
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isScriptRewardAddress
d_isScriptRewardAddress_1872 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  ()
d_isScriptRewardAddress_1872 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isSigned
d_isSigned_1874 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer -> Integer -> ()
d_isSigned_1874 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isSigned-correct
d_isSigned'45'correct_1876 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isSigned'45'correct_1876 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isSignedBy
d_isSignedBy_1878 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer -> ()
d_isSignedBy_1878 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isSignedByAggregate
d_isSignedByAggregate_1880 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] -> Integer -> Integer -> ()
d_isSignedByAggregate_1880 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isVKey
d_isVKey_1882 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isVKeyAddr
d_isVKeyAddr_1884 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1884 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isValidPoP
d_isValidPoP_1886 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> ()
d_isValidPoP_1886 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.khs
d_khs_1888 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_1888 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.language
d_language_1890 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_364 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.T_HSLanguage_10
d_language_1890 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_564
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.languageCostModels
d_languageCostModels_1892 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_724 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_1892 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_728
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.lookupScriptHash
d_lookupScriptHash_1894 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_1894 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_lookupScriptHash_4740
      (coe d_HSTransactionStructure_736 (coe v0)) v2 v3 v4
-- Ledger.Dijkstra.Foreign.ExternalStructures._.monoid
d_monoid_1900 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_1900 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_monoid_1066
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2742
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.netId
d_netId_1902 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_netId_1902 ~v0 = du_netId_1902
du_netId_1902 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
du_netId_1902
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_266
-- Ledger.Dijkstra.Foreign.ExternalStructures._.p1s
d_p1s_1904 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_370
d_p1s_1904 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_594
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.paramsWF-elim
d_paramsWF'45'elim_1906 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_1906 ~v0 = du_paramsWF'45'elim_1906
du_paramsWF'45'elim_1906 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_1906 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_paramsWF'45'elim_554
      v2
-- Ledger.Dijkstra.Foreign.ExternalStructures._.paramsWellFormed
d_paramsWellFormed_1908 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  ()
d_paramsWellFormed_1908 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.payCred
d_payCred_1910 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_payCred_1910 ~v0 = du_payCred_1910
du_payCred_1910 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_payCred_1910
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_262
-- Ledger.Dijkstra.Foreign.ExternalStructures._.pkk
d_pkk_1912 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_1912 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.policies
d_policies_1914 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> [Integer]
d_policies_1914 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2742
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.positivePParams
d_positivePParams_1916 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  [Integer]
d_positivePParams_1916 ~v0 = du_positivePParams_1916
du_positivePParams_1916 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  [Integer]
du_positivePParams_1916
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_positivePParams_462
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ppUpd
d_ppUpd_1918 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1490
d_ppUpd_1918 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1542
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2740
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ppWF?
d_ppWF'63'_1920 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1920 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1514
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1542
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2740
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ppdWellFormed
d_ppdWellFormed_1922 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  ()
d_ppdWellFormed_1922 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.preoEpoch
d_preoEpoch_1924 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_1924 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_110
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.proposedCC
d_proposedCC_1926 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_1926 ~v0 = du_proposedCC_1926
du_proposedCC_1926 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_proposedCC_1926
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_proposedCC_1098
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ps
d_ps_1928 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408
d_ps_1928 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.rawMonoid
d_rawMonoid_1930 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_1930 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2742
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
            (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v2))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.referenceData
d_referenceData_1932 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [Integer]
d_referenceData_1932 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_referenceData_4720
      (coe d_HSTransactionStructure_736 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.referenceScripts
d_referenceScripts_1934 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_referenceScripts_1934 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_referenceScripts_4672
      (coe d_HSTransactionStructure_736 (coe v0)) v2 v3
-- Ledger.Dijkstra.Foreign.ExternalStructures._.referencedTxOuts
d_referencedTxOuts_1936 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_referencedTxOuts_1936 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_referencedTxOuts_4660
      (coe d_HSTransactionStructure_736 (coe v0)) v2 v3
-- Ledger.Dijkstra.Foreign.ExternalStructures._.scriptStructure
d_scriptStructure_1938 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568
d_scriptStructure_1938 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_HSScriptStructure_418
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.scriptsOfTx
d_scriptsOfTx_1940 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scriptsOfTx_1940 ~v0 = du_scriptsOfTx_1940
du_scriptsOfTx_1940 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_scriptsOfTx_1940 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_scriptsOfTx_4668
      v1
-- Ledger.Dijkstra.Foreign.ExternalStructures._.scriptsOfUTxO
d_scriptsOfUTxO_1942 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scriptsOfUTxO_1942 ~v0 = du_scriptsOfUTxO_1942
du_scriptsOfUTxO_1942 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_scriptsOfUTxO_1942
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_scriptsOfUTxO_4666
-- Ledger.Dijkstra.Foreign.ExternalStructures._.sign
d_sign_1944 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer
d_sign_1944 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236 (coe v2))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.size
d_size_1946 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_size_1946 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2742
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.spendData
d_spendData_1948 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [Integer]
d_spendData_1948 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_spendData_4718
      (coe d_HSTransactionStructure_736 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.spendScripts
d_spendScripts_1950 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_spendScripts_1950 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_spendScripts_4670
      (coe d_HSTransactionStructure_736 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.spendTxOuts
d_spendTxOuts_1952 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_spendTxOuts_1952 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_spendTxOuts_4654
      (coe d_HSTransactionStructure_736 (coe v0)) v2 v3
-- Ledger.Dijkstra.Foreign.ExternalStructures._.stakeCred
d_stakeCred_1954 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stakeCred_1954 ~v0 = du_stakeCred_1954
du_stakeCred_1954 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_stakeCred_1954
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_stakeCred_264
-- Ledger.Dijkstra.Foreign.ExternalStructures._.sucᵉ
d_suc'7497'_1956 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_suc'7497'_1956 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_suc'7497'_98
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.sumᵛ
d_sum'7515'_1958 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] -> Integer
d_sum'7515'_1958 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2742
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.toP1Script
d_toP1Script_1960 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_336
d_toP1Script_1960 ~v0 = du_toP1Script_1960
du_toP1Script_1960 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_336
du_toP1Script_1960
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP1Script_710
-- Ledger.Dijkstra.Foreign.ExternalStructures._.toP2Script
d_toP2Script_1962 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_364
d_toP2Script_1962 ~v0 = du_toP2Script_1962
du_toP2Script_1962 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_364
du_toP2Script_1962
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_722
-- Ledger.Dijkstra.Foreign.ExternalStructures._.tokenAlgebra
d_tokenAlgebra_1964 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14
d_tokenAlgebra_1964 ~v0 = du_tokenAlgebra_1964
du_tokenAlgebra_1964 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14
du_tokenAlgebra_1964
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Coin.du_Coin'45'TokenAlgebra_132
-- Ledger.Dijkstra.Foreign.ExternalStructures._.txOutDataOfUTxO
d_txOutDataOfUTxO_1966 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [Integer]
d_txOutDataOfUTxO_1966 ~v0 = du_txOutDataOfUTxO_1966
du_txOutDataOfUTxO_1966 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [Integer]
du_txOutDataOfUTxO_1966
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutDataOfUTxO_4716
-- Ledger.Dijkstra.Foreign.ExternalStructures._.txOutToDatum
d_txOutToDatum_1968 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe Integer
d_txOutToDatum_1968 ~v0 = du_txOutToDatum_1968
du_txOutToDatum_1968 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe Integer
du_txOutToDatum_1968
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToDatum_4620
-- Ledger.Dijkstra.Foreign.ExternalStructures._.txOutToScript
d_txOutToScript_1970 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_txOutToScript_1970 ~v0 = du_txOutToScript_1970
du_txOutToScript_1970 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_txOutToScript_1970
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToScript_4616
-- Ledger.Dijkstra.Foreign.ExternalStructures._.txOutToValue
d_txOutToValue_1972 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txOutToValue_1972 ~v0 = du_txOutToValue_1972
du_txOutToValue_1972 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_txOutToValue_1972
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToValue_4624
-- Ledger.Dijkstra.Foreign.ExternalStructures._.txidBytes
d_txidBytes_1974 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_txidBytes_1974 ~v0 v1 = du_txidBytes_1974 v1
du_txidBytes_1974 :: Integer -> Integer
du_txidBytes_1974 v0 = coe v0
-- Ledger.Dijkstra.Foreign.ExternalStructures._.updateGroups
d_updateGroups_1976 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_updateGroups_1976 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1508
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1542
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2740
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.validP1Script
d_validP1Script_1986 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_336 ->
  ()
d_validP1Script_1986 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.validPlutusScript
d_validPlutusScript_1988 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_364 ->
  ()
d_validPlutusScript_1988 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.valuesOfUTxO
d_valuesOfUTxO_1990 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [Integer]
d_valuesOfUTxO_1990 ~v0 = du_valuesOfUTxO_1990
du_valuesOfUTxO_1990 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [Integer]
du_valuesOfUTxO_1990
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_valuesOfUTxO_4628
-- Ledger.Dijkstra.Foreign.ExternalStructures._.witnessData
d_witnessData_1992 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  [Integer]
d_witnessData_1992 ~v0 = du_witnessData_1992
du_witnessData_1992 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  [Integer]
du_witnessData_1992 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_witnessData_4722
-- Ledger.Dijkstra.Foreign.ExternalStructures._.witnessScripts
d_witnessScripts_1994 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_witnessScripts_1994 ~v0 = du_witnessScripts_1994
du_witnessScripts_1994 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_witnessScripts_1994 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_witnessScripts_4688
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ε
d_ε_1996 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_ε_1996 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Class.Monoid.Core.d_ε_20
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2742
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1998 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1998 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ℕEpochStructure
d_ℕEpochStructure_2000 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_ℕEpochStructure_2000 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕEpochStructure_360
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1412
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ℕtoEpoch
d_ℕtoEpoch_2002 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_ℕtoEpoch_2002 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕtoEpoch_274
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.≤-predᵉ
d_'8804''45'pred'7497'_2004 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'pred'7497'_2004 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'8804''45'pred'7497'_126
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.≥ᵉ-Dec
d_'8805''7497''45'Dec_2006 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_2006 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8805''7497''45'Dec_520
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Acnt.reserves
d_reserves_2022 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  Integer
d_reserves_2022 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_reserves_202
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Acnt.treasury
d_treasury_2024 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  Integer
d_treasury_2024 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_200
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Anchor.hash
d_hash_2028 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_964 ->
  Integer
d_hash_2028 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_hash_972
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Anchor.url
d_url_2030 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_964 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_2030 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_url_970
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.BaseAddr.net
d_net_2044 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  Integer
d_net_2044 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_92 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.BaseAddr.pay
d_pay_2046 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_2046 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_94 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.BaseAddr.stake
d_stake_2048 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_2048 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_96 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.BootstrapAddr.attrsSize
d_attrsSize_2052 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  Integer
d_attrsSize_2052 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_112
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.BootstrapAddr.net
d_net_2054 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  Integer
d_net_2054 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_108 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.BootstrapAddr.pay
d_pay_2056 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_2056 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_110 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DrepThresholds.P1
d_P1_2066 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_2066 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P1_266
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DrepThresholds.P2a
d_P2a_2068 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_2068 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P2a_268
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DrepThresholds.P2b
d_P2b_2070 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_2070 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P2b_270
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DrepThresholds.P3
d_P3_2072 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_2072 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P3_272
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DrepThresholds.P4
d_P4_2074 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_2074 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P4_274
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DrepThresholds.P5a
d_P5a_2076 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_2076 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5a_276
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DrepThresholds.P5b
d_P5b_2078 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_2078 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5b_278
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DrepThresholds.P5c
d_P5c_2080 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_2080 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5c_280
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DrepThresholds.P5d
d_P5d_2082 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_2082 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5d_282
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DrepThresholds.P6
d_P6_2084 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_2084 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P6_284
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovAction.gaData
d_gaData_2104 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930 ->
  AgdaAny
d_gaData_2104 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaData_938
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovAction.gaType
d_gaType_2106 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_912
d_gaType_2106 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_936
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovActionState.action
d_action_2110 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1058 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930
d_action_2110 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1078
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovActionState.deposit
d_deposit_2112 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1058 ->
  Integer
d_deposit_2112 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1082
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovActionState.expiresIn
d_expiresIn_2114 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1058 ->
  Integer
d_expiresIn_2114 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_expiresIn_1076
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovActionState.prevAction
d_prevAction_2116 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1058 ->
  AgdaAny
d_prevAction_2116 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1080
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovActionState.returnAddr
d_returnAddr_2118 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1058 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_2118 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1074
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovActionState.votes
d_votes_2120 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1058 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_996
d_votes_2120 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_votes_1072
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_2140 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_2140 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_DecEq'45'UpdT_1556
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovParams.UpdateT
d_UpdateT_2142 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524 ->
  ()
d_UpdateT_2142 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovParams.applyUpdate
d_applyUpdate_2144 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyUpdate_2144 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1506
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1542
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovParams.ppUpd
d_ppUpd_2146 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1490
d_ppUpd_2146 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1542
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovParams.ppWF?
d_ppWF'63'_2148 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2148 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1514
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1542
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovParams.ppdWellFormed
d_ppdWellFormed_2150 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524 ->
  AgdaAny -> ()
d_ppdWellFormed_2150 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovParams.updateGroups
d_updateGroups_2152 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1524 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_updateGroups_2152 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1508
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1542
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovProposal.action
d_action_2156 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930
d_action_2156 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1044
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovProposal.anchor
d_anchor_2158 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_964
d_anchor_2158 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_1054
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovProposal.deposit
d_deposit_2160 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030 ->
  Integer
d_deposit_2160 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1050
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovProposal.policy
d_policy_2162 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030 ->
  Maybe Integer
d_policy_2162 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_policy_1048
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovProposal.prevAction
d_prevAction_2164 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030 ->
  AgdaAny
d_prevAction_2164 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1046
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovProposal.returnAddr
d_returnAddr_2166 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_2166 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1052
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovVote.anchor
d_anchor_2178 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_976 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_964
d_anchor_2178 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_992
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovVote.gid
d_gid_2180 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_976 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_2180 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gid_986
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovVote.vote
d_vote_2182 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_976 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_944
d_vote_2182 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_vote_990
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovVote.voter
d_voter_2184 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_976 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_952
d_voter_2184 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_voter_988
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovVoter.gvCredential
d_gvCredential_2188 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_952 ->
  AgdaAny
d_gvCredential_2188 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvCredential_960
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovVoter.gvRole
d_gvRole_2190 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_952 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_902
d_gvRole_2190 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvRole_958
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovVotes.gvCC
d_gvCC_2194 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_996 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvCC_2194 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvCC_1004
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovVotes.gvDRep
d_gvDRep_2196 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_996 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvDRep_2196 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvDRep_1006
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovVotes.gvSPO
d_gvSPO_2198 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_996 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvSPO_2198 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvSPO_1008
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.==-GovAction
d_'61''61''45'GovAction_2202 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930 ->
  Bool
d_'61''61''45'GovAction_2202 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovAction_1480
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.==-GovActionData
d_'61''61''45'GovActionData_2204 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_912 ->
  AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_2204 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovActionData_1462
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.==-GovProposal
d_'61''61''45'GovProposal_2206 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030 ->
  Bool
d_'61''61''45'GovProposal_2206 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovProposal_1514
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.==-Set
d_'61''61''45'Set_2208 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_2208 ~v0 = du_'61''61''45'Set_2208
du_'61''61''45'Set_2208 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
du_'61''61''45'Set_2208 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_'61''61''45'Set_1450
      v1 v2 v3
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.Anchor
d_Anchor_2210 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.AnchorOf
d_AnchorOf_2214 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1260 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_964
d_AnchorOf_2214 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_AnchorOf_1268
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.DReps
d_DReps_2222 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_DReps_2222 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.DRepsOf
d_DRepsOf_2224 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1240 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_2224 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1248
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.DecEq-Anchor
d_DecEq'45'Anchor_2226 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_2226 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'Anchor_1444
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.DecEq-GovActionType
d_DecEq'45'GovActionType_2228 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_2228 ~v0 = du_DecEq'45'GovActionType_2228
du_DecEq'45'GovActionType_2228 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_2228
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'GovActionType_1334
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.DecEq-GovRole
d_DecEq'45'GovRole_2230 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_2230 ~v0 = du_DecEq'45'GovRole_2230
du_DecEq'45'GovRole_2230 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_2230
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'GovRole_1336
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.DecEq-GovVoter
d_DecEq'45'GovVoter_2232 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_2232 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'GovVoter_1342
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.DecEq-NeedsHash
d_DecEq'45'NeedsHash_2234 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_912 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_2234 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'NeedsHash_1512
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.DecEq-VDeleg
d_DecEq'45'VDeleg_2236 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_2236 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'VDeleg_1340
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.DecEq-Vote
d_DecEq'45'Vote_2238 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_2238 ~v0 = du_DecEq'45'Vote_2238
du_DecEq'45'Vote_2238 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_2238
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'Vote_1338
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.DepositOf
d_DepositOf_2240 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1280 ->
  AgdaAny -> Integer
d_DepositOf_2240 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DepositOf_1288
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.GovAction
d_GovAction_2242 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.GovActionData
d_GovActionData_2246 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_912 ->
  ()
d_GovActionData_2246 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.GovActionID
d_GovActionID_2248 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_GovActionID_2248 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.GovActionOf
d_GovActionOf_2250 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1142 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930
d_GovActionOf_2250 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionOf_1148
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.GovActionState
d_GovActionState_2252 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.GovActionType
d_GovActionType_2256 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.GovActionTypeOf
d_GovActionTypeOf_2258 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1106 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_912
d_GovActionTypeOf_2258 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionTypeOf_1112
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.GovProposal
d_GovProposal_2260 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.GovRole
d_GovRole_2264 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.GovRoleCredential
d_GovRoleCredential_2266 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_902 ->
  ()
d_GovRoleCredential_2266 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.GovVote
d_GovVote_2268 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.GovVoter
d_GovVoter_2272 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.GovVoterOf
d_GovVoterOf_2276 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1160 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_952
d_GovVoterOf_2276 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVoterOf_1168
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.GovVotes
d_GovVotes_2278 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.GovVotesOf
d_GovVotesOf_2282 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1180 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_996
d_GovVotesOf_2282 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVotesOf_1188
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasAnchor
d_HasAnchor_2284 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasAnchor-GovProposal
d_HasAnchor'45'GovProposal_2288 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1260
d_HasAnchor'45'GovProposal_2288 ~v0
  = du_HasAnchor'45'GovProposal_2288
du_HasAnchor'45'GovProposal_2288 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1260
du_HasAnchor'45'GovProposal_2288
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasAnchor'45'GovProposal_1314
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_2290 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_2290 ~v0
  = du_HasCast'45'GovAction'45'Sigma_2290
du_HasCast'45'GovAction'45'Sigma_2290 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_2290
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_1298
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasCast-GovVote
d_HasCast'45'GovVote_2292 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_2292 ~v0 = du_HasCast'45'GovVote_2292
du_HasCast'45'GovVote_2292 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_2292
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovVote_1440
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasCast-HashProtected
d_HasCast'45'HashProtected_2294 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_2294 ~v0
  = du_HasCast'45'HashProtected_2294
du_HasCast'45'HashProtected_2294 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_2294 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected_1304
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_2296 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_2296 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_2296
du_HasCast'45'HashProtected'45'MaybeScriptHash_2296 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_2296
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1306
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasDReps
d_HasDReps_2298 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasDeposit
d_HasDeposit_2302 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasDeposit-GovProposal
d_HasDeposit'45'GovProposal_2306 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1280
d_HasDeposit'45'GovProposal_2306 ~v0
  = du_HasDeposit'45'GovProposal_2306
du_HasDeposit'45'GovProposal_2306 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1280
du_HasDeposit'45'GovProposal_2306
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasDeposit'45'GovProposal_1316
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasGovAction
d_HasGovAction_2308 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_2312 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1142
d_HasGovAction'45'GovActionState_2312 ~v0
  = du_HasGovAction'45'GovActionState_2312
du_HasGovAction'45'GovActionState_2312 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1142
du_HasGovAction'45'GovActionState_2312
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1320
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_2314 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1142
d_HasGovAction'45'GovProposal_2314 ~v0
  = du_HasGovAction'45'GovProposal_2314
du_HasGovAction'45'GovProposal_2314 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1142
du_HasGovAction'45'GovProposal_2314
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1318
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasGovActionType
d_HasGovActionType_2316 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_2320 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1106
d_HasGovActionType'45'GovAction_2320 ~v0
  = du_HasGovActionType'45'GovAction_2320
du_HasGovActionType'45'GovAction_2320 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1106
du_HasGovActionType'45'GovAction_2320
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_1296
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_2322 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1106
d_HasGovActionType'45'GovActionState_2322 ~v0
  = du_HasGovActionType'45'GovActionState_2322
du_HasGovActionType'45'GovActionState_2322 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1106
du_HasGovActionType'45'GovActionState_2322
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1324
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_2324 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1106
d_HasGovActionType'45'GovProposal_2324 ~v0
  = du_HasGovActionType'45'GovProposal_2324
du_HasGovActionType'45'GovProposal_2324 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1106
du_HasGovActionType'45'GovProposal_2324
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1322
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasGovVoter
d_HasGovVoter_2326 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_2330 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1160
d_HasGovVoter'45'GovVote_2330 ~v0 = du_HasGovVoter'45'GovVote_2330
du_HasGovVoter'45'GovVote_2330 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1160
du_HasGovVoter'45'GovVote_2330
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1308
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasGovVotes
d_HasGovVotes_2332 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasGovVotes-GovActionState
d_HasGovVotes'45'GovActionState_2336 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1180
d_HasGovVotes'45'GovActionState_2336 ~v0
  = du_HasGovVotes'45'GovActionState_2336
du_HasGovVotes'45'GovActionState_2336 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1180
du_HasGovVotes'45'GovActionState_2336
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovVotes'45'GovActionState_1326
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasPolicy
d_HasPolicy_2338 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_2342 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1220
d_HasPolicy'45'GovProposal_2342 ~v0
  = du_HasPolicy'45'GovProposal_2342
du_HasPolicy'45'GovProposal_2342 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1220
du_HasPolicy'45'GovProposal_2342
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1312
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasRewardAddress-GovActionState
d_HasRewardAddress'45'GovActionState_2344 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
d_HasRewardAddress'45'GovActionState_2344 ~v0
  = du_HasRewardAddress'45'GovActionState_2344
du_HasRewardAddress'45'GovActionState_2344 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
du_HasRewardAddress'45'GovActionState_2344
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasRewardAddress'45'GovActionState_1328
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasRewardAddress-GovProposal
d_HasRewardAddress'45'GovProposal_2346 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
d_HasRewardAddress'45'GovProposal_2346 ~v0
  = du_HasRewardAddress'45'GovProposal_2346
du_HasRewardAddress'45'GovProposal_2346 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
du_HasRewardAddress'45'GovProposal_2346
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasRewardAddress'45'GovProposal_1330
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasVote
d_HasVote_2348 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasVote-GovVote
d_HasVote'45'GovVote_2352 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1200
d_HasVote'45'GovVote_2352 ~v0 = du_HasVote'45'GovVote_2352
du_HasVote'45'GovVote_2352 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1200
du_HasVote'45'GovVote_2352
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasVote'45'GovVote_1310
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasVoteDelegs
d_HasVoteDelegs_2354 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HashProtected
d_HashProtected_2358 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () -> ()
d_HashProtected_2358 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.NeedsHash
d_NeedsHash_2362 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_912 ->
  ()
d_NeedsHash_2362 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.Policy
d_Policy_2368 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Policy_2368 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.PolicyOf
d_PolicyOf_2370 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1220 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_2370 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_PolicyOf_1228
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.Show-GovRole
d_Show'45'GovRole_2374 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_2374 ~v0 = du_Show'45'GovRole_2374
du_Show'45'GovRole_2374 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'GovRole_2374
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_Show'45'GovRole_1332
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.Show-VDeleg
d_Show'45'VDeleg_2376 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_2376 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_Show'45'VDeleg_1442
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.VDeleg
d_VDeleg_2384 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.Vote
d_Vote_2386 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.VoteDelegs
d_VoteDelegs_2388 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VoteDelegs_2388 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.VoteDelegsOf
d_VoteDelegsOf_2390 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1124 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_2390 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1132
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.VoteOf
d_VoteOf_2392 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1200 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_944
d_VoteOf_2392 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteOf_1208
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.activeDRepsOf
d_activeDRepsOf_2396 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1240 ->
  AgdaAny -> Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_2396 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (\ v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_activeDRepsOf_1620
           (coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
              (coe v1))
           v3 v4 v5)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.activeInEpoch
d_activeInEpoch_2398 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_2398 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.gaData
d_gaData_2400 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930 ->
  AgdaAny
d_gaData_2400 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaData_938
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.gaType
d_gaType_2402 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_912
d_gaType_2402 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_936
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.govVoterCredential
d_govVoterCredential_2404 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_952 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_2404 ~v0 = du_govVoterCredential_2404
du_govVoterCredential_2404 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_952 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_govVoterCredential_2404
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_govVoterCredential_1090
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.isGovVoterDRep
d_isGovVoterDRep_2406 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_952 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_2406 ~v0 = du_isGovVoterDRep_2406
du_isGovVoterDRep_2406 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_952 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_isGovVoterDRep_2406
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_isGovVoterDRep_1086
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.proposedCC
d_proposedCC_2410 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_2410 ~v0 = du_proposedCC_2410
du_proposedCC_2410 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_proposedCC_2410
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_proposedCC_1098
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasAnchor.AnchorOf
d_AnchorOf_2426 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1260 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_964
d_AnchorOf_2426 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_AnchorOf_1268
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasDReps.DRepsOf
d_DRepsOf_2430 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1240 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_2430 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1248
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasDeposit.DepositOf
d_DepositOf_2434 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1280 ->
  AgdaAny -> Integer
d_DepositOf_2434 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DepositOf_1288
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasGovAction.GovActionOf
d_GovActionOf_2438 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1142 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_930
d_GovActionOf_2438 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionOf_1148
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasGovActionType.GovActionTypeOf
d_GovActionTypeOf_2442 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1106 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_912
d_GovActionTypeOf_2442 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionTypeOf_1112
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasGovVoter.GovVoterOf
d_GovVoterOf_2446 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1160 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_952
d_GovVoterOf_2446 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVoterOf_1168
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasGovVotes.GovVotesOf
d_GovVotesOf_2450 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1180 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_996
d_GovVotesOf_2450 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVotesOf_1188
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasPolicy.PolicyOf
d_PolicyOf_2454 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1220 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_2454 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_PolicyOf_1228
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasVote.VoteOf
d_VoteOf_2458 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1200 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_944
d_VoteOf_2458 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteOf_1208
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasVoteDelegs.VoteDelegsOf
d_VoteDelegsOf_2462 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1124 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_2462 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1132
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasAccount.AccountOf
d_AccountOf_2482 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasAccount_210 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194
d_AccountOf_2482 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_AccountOf_218
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasAttrSize.AttrSizeOf
d_AttrSizeOf_2486 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214 ->
  AgdaAny -> Integer
d_AttrSizeOf_2486 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_222
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasBalanceIntervals.BalanceIntervalsOf
d_BalanceIntervalsOf_2490 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasBalanceIntervals_4470 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_BalanceIntervalsOf_2490 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_BalanceIntervalsOf_4478
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCCMaxTermLength.CCMaxTermLengthOf
d_CCMaxTermLengthOf_2494 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasCCMaxTermLength_598 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_2494 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_CCMaxTermLengthOf_606
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCollateralInputs.CollateralInputsOf
d_CollateralInputsOf_2498 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCollateralInputs_4020 ->
  AgdaAny -> AgdaAny
d_CollateralInputsOf_2498 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CollateralInputsOf_4030
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCredential.CredentialOf
d_CredentialOf_2502 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_2502 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCurrentTreasury.CurrentTreasuryOf
d_CurrentTreasuryOf_2506 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4430 ->
  AgdaAny -> Maybe Integer
d_CurrentTreasuryOf_2506 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CurrentTreasuryOf_4438
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDCerts.DCertsOf
d_DCertsOf_2510 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4250 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1354]
d_DCertsOf_2510 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DCertsOf_4258
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasData.DataOf
d_DataOf_2514 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4290 ->
  AgdaAny -> [Integer]
d_DataOf_2514 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DataOf_4298
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDirectDeposits.DirectDepositsOf
d_DirectDepositsOf_2518 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDirectDeposits_4450 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DirectDepositsOf_2518 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DirectDepositsOf_4458
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasFees?.FeesOf?
d_FeesOf'63'_2522 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasFees'63'_4230 ->
  AgdaAny -> Maybe Integer
d_FeesOf'63'_2522 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_FeesOf'63'_4238
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGovProposals.GovProposalsOf
d_GovProposalsOf_2526 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGovProposals_4270 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030]
d_GovProposalsOf_2526 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_GovProposalsOf_4278
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGuards.GuardsOf
d_GuardsOf_2530 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4350 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_GuardsOf_2530 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_GuardsOf_4358
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasIsValidFlag.IsValidFlagOf
d_IsValidFlagOf_2534 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasIsValidFlag_4490 ->
  AgdaAny -> Bool
d_IsValidFlagOf_2534 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_IsValidFlagOf_4498
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasListOfGovProposals.ListOfGovProposalsOf
d_ListOfGovProposalsOf_2538 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovProposals_4310 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030]
d_ListOfGovProposalsOf_2538 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ListOfGovProposalsOf_4318
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasListOfGovVotes.ListOfGovVotesOf
d_ListOfGovVotesOf_2542 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovVotes_4330 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_976]
d_ListOfGovVotesOf_2542 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ListOfGovVotesOf_4338
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasMaybeNetworkId.MaybeNetworkIdOf
d_MaybeNetworkIdOf_2546 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174 ->
  AgdaAny -> Maybe Integer
d_MaybeNetworkIdOf_2546 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_182
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasMintedValue.MintedValueOf
d_MintedValueOf_2550 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4210 ->
  AgdaAny -> Integer
d_MintedValueOf_2550 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_MintedValueOf_4218
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasNetworkId.NetworkIdOf
d_NetworkIdOf_2554 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154 ->
  AgdaAny -> Integer
d_NetworkIdOf_2554 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_162
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasPParams.PParamsOf
d_PParamsOf_2558 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_PParamsOf_2558 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_586
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRedeemers.RedeemersOf
d_RedeemersOf_2562 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_3998 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RedeemersOf_2562 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_RedeemersOf_4006
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasReferenceInputs.ReferenceInputsOf
d_ReferenceInputsOf_2566 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4190 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_ReferenceInputsOf_2566 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ReferenceInputsOf_4198
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRequiredSingerHashes.RequiredSignerHashesOf
d_RequiredSignerHashesOf_2570 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRequiredSingerHashes_4410 ->
  AgdaAny -> [Integer]
d_RequiredSignerHashesOf_2570 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_RequiredSignerHashesOf_4418
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRewardAddress.RewardAddressOf
d_RewardAddressOf_2574 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_2574 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasScripts.ScriptsOf
d_ScriptsOf_2578 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasScripts_4370 ->
  AgdaAny -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_ScriptsOf_2578 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ScriptsOf_4378
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasSize.SizeOf
d_SizeOf_2582 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_4110 ->
  AgdaAny -> Integer
d_SizeOf_2582 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SizeOf_4118
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasSpendInputs.SpendInputsOf
d_SpendInputsOf_2586 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4170 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_SpendInputsOf_2586 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4178
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasSubTransactions.SubTransactionsOf
d_SubTransactionsOf_2590 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_4068 ->
  AgdaAny -> AgdaAny
d_SubTransactionsOf_2590 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SubTransactionsOf_4078
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTopLevelGuards.TopLevelGuardsOf
d_TopLevelGuardsOf_2594 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTopLevelGuards_4130 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_TopLevelGuardsOf_2594 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TopLevelGuardsOf_4138
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTxBody.TxBodyOf
d_TxBodyOf_2598 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxBody_3956 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802
d_TxBodyOf_2598 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxBodyOf_3966
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTxFees.TxFeesOf
d_TxFeesOf_2602 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxFees_4044 ->
  AgdaAny -> AgdaAny
d_TxFeesOf_2602 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxFeesOf_4054
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTxId.TxIdOf
d_TxIdOf_2606 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4090 ->
  AgdaAny -> Integer
d_TxIdOf_2606 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxIdOf_4098
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTxOuts.TxOutsOf
d_TxOutsOf_2610 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4390 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_TxOutsOf_2610 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4398
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTxWitnesses.TxWitnessesOf
d_TxWitnessesOf_2614 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxWitnesses_3978 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3804
d_TxWitnessesOf_2614 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxWitnessesOf_3986
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasUTxO.UTxOOf
d_UTxOOf_2618 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3780 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_2618 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3788
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasValidInterval.ValidIntervalOf
d_ValidIntervalOf_2622 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_4150 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ValidIntervalOf_2622 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ValidIntervalOf_4158
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasWithdrawals.WithdrawalsOf
d_WithdrawalsOf_2626 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_2626 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_202
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidHomomorphism.homo
d_homo_2648 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2648 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2650 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2650 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2652 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2652 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2654 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2654 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidHomomorphism.cong
d_cong_2656 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2656 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidIsomorphism.homo
d_homo_2660 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2660 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidIsomorphism.injective
d_injective_2662 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_2662 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2664 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2664 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2666 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_2666 ~v0 = du_isMagmaIsomorphism_2666
du_isMagmaIsomorphism_2666 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_2666 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2668 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2668 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_2668 v2
du_isMagmaMonomorphism_2668 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2668 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2670 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2670 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2672 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_2672 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2674 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2674 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
               (coe v0))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_2676 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_2676 ~v0 ~v1 v2 = du_isRelIsomorphism_2676 v2
du_isRelIsomorphism_2676 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_2676 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2678 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2678 ~v0 ~v1 v2 = du_isRelMonomorphism_2678 v2
du_isRelMonomorphism_2678 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2678 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidIsomorphism.surjective
d_surjective_2680 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2680 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2682 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2682 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidIsomorphism.cong
d_cong_2684 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2684 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidMonomorphism.homo
d_homo_2688 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2688 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidMonomorphism.injective
d_injective_2690 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_2690 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2692 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2692 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2694 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2694 ~v0 = du_isMagmaMonomorphism_2694
du_isMagmaMonomorphism_2694 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2694 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2696 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2696 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2698 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2698 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2700 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2700 ~v0 ~v1 v2 = du_isRelMonomorphism_2700 v2
du_isRelMonomorphism_2700 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2700 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2702 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2702 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidMonomorphism.cong
d_cong_2704 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2704 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.LanguageCostModels.languageCostModels
d_languageCostModels_2708 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_724 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_2708 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_728
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_2728 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_370 ->
  [Integer] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2728 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_390
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_2730 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_370 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2730 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'P1Script_394
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_2732 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_370 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_2732 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_392
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.P1ScriptStructure.P1Script
d_P1Script_2734 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_370 ->
  ()
d_P1Script_2734 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.P1ScriptStructure.validP1Script
d_validP1Script_2736 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_370 ->
  [Integer] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_2736 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.Emax
d_Emax_2752 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_Emax_2752 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_432
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.a
d_a_2754 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_a_2754 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_402 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.a0
d_a0_2756 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2756 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_436
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.b
d_b_2758 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_b_2758 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_404 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.ccMaxTermLength
d_ccMaxTermLength_2760 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMaxTermLength_2760 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_448
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.ccMinSize
d_ccMinSize_2762 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMinSize_2762 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_446
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_2764 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_coinsPerUTxOByte_2764 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_416
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.collateralPercentage
d_collateralPercentage_2766 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_collateralPercentage_2766 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_438
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.costmdls
d_costmdls_2768 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_costmdls_2768 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_costmdls_458
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.costmdlsAssoc
d_costmdlsAssoc_2770 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_724
d_costmdlsAssoc_2770 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdlsAssoc_440
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.drepActivity
d_drepActivity_2772 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_drepActivity_2772 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_456
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.drepDeposit
d_drepDeposit_2774 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_drepDeposit_2774 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_454
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.drepThresholds
d_drepThresholds_2776 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244
d_drepThresholds_2776 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_444
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.govActionDeposit
d_govActionDeposit_2778 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionDeposit_2778 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_452
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.govActionLifetime
d_govActionLifetime_2780 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionLifetime_2780 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_450
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.keyDeposit
d_keyDeposit_2782 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_keyDeposit_2782 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_406
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.maxBlockExUnits
d_maxBlockExUnits_2784 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_2784 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_394
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.maxBlockSize
d_maxBlockSize_2786 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxBlockSize_2786 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_386
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.maxCollateralInputs
d_maxCollateralInputs_2788 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxCollateralInputs_2788 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_398
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.maxHeaderSize
d_maxHeaderSize_2790 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxHeaderSize_2790 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_390
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2792 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerBlock_2792 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_424
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2794 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerTx_2794 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_422
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.maxTxExUnits
d_maxTxExUnits_2796 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_2796 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_392
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.maxTxSize
d_maxTxSize_2798 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxTxSize_2798 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_388
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.maxValSize
d_maxValSize_2800 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxValSize_2800 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_396
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2802 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2802 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_420
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.minPoolCost
d_minPoolCost_2804 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minPoolCost_2804 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_410
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.minUTxOValue
d_minUTxOValue_2806 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minUTxOValue_2806 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_430
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.monetaryExpansion
d_monetaryExpansion_2808 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2808 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_412
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.nopt
d_nopt_2810 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_nopt_2810 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_434
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.poolDeposit
d_poolDeposit_2812 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_poolDeposit_2812 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_408
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.poolThresholds
d_poolThresholds_2814 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288
d_poolThresholds_2814 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_442
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.prices
d_prices_2816 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_2816 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_418
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.pv
d_pv_2818 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2818 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_400
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_2820 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2820 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_428
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.refScriptCostStride
d_refScriptCostStride_2822 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2822 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_426
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.treasuryCut
d_treasuryCut_2824 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2824 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_414
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsDiff.UpdateT
d_UpdateT_2828 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1490 ->
  ()
d_UpdateT_2828 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsDiff.applyUpdate
d_applyUpdate_2830 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1490 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyUpdate_2830 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1506
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsDiff.ppWF?
d_ppWF'63'_2832 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1490 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2832 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1514
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_2834 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1490 ->
  AgdaAny -> ()
d_ppdWellFormed_2834 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsDiff.updateGroups
d_updateGroups_2836 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1490 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_updateGroups_2836 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1508
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate._?↗_
d__'63''8599'__2840 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__2840 ~v0 = du__'63''8599'__2840
du__'63''8599'__2840 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__2840 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du__'63''8599'__1272
      v1 v2
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate._∪ˡᶜᵐ_
d__'8746''737''7580''7504'__2842 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_724 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_724 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_724
d__'8746''737''7580''7504'__2842 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.C_mkLanguageCostModels_730
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                 (coe
                    MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1516
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_514
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
                             (coe v1))))
                    (coe
                       MAlonzo.Code.Data.List.Base.du__'43''43'__32
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_728
                          (coe v2))
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_728
                          (coe v3)))))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_2844 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_2844 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParamsUpdate_1488
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1416
            (coe v1))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_2846 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_2850 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyPParamsUpdate_2850 v0
  = let v1 = d_HSTransactionStructure_736 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_applyPParamsUpdate_1326
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2254
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_2852 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_modifiedUpdateGroups_2852 ~v0 = du_modifiedUpdateGroups_2852
du_modifiedUpdateGroups_2852 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
du_modifiedUpdateGroups_2852
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiedUpdateGroups_1256
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_2854 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
d_modifiesEconomicGroup_2854 ~v0 = du_modifiesEconomicGroup_2854
du_modifiesEconomicGroup_2854 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
du_modifiesEconomicGroup_2854
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesEconomicGroup_944
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_2856 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
d_modifiesGovernanceGroup_2856 ~v0
  = du_modifiesGovernanceGroup_2856
du_modifiesGovernanceGroup_2856 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
du_modifiesGovernanceGroup_2856
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesGovernanceGroup_1100
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_2858 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
d_modifiesNetworkGroup_2858 ~v0 = du_modifiesNetworkGroup_2858
du_modifiesNetworkGroup_2858 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
du_modifiesNetworkGroup_2858
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesNetworkGroup_866
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_2860 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
d_modifiesSecurityGroup_2860 ~v0 = du_modifiesSecurityGroup_2860
du_modifiesSecurityGroup_2860 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
du_modifiesSecurityGroup_2860
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesSecurityGroup_1178
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_2862 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
d_modifiesTechnicalGroup_2862 ~v0 = du_modifiesTechnicalGroup_2862
du_modifiesTechnicalGroup_2862 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Bool
du_modifiesTechnicalGroup_2862
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesTechnicalGroup_1022
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_2864 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  ()
d_paramsUpdateWellFormed_2864 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_2866 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_2866 v0
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
                     MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_704
                     (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_706
                        (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_708
                           (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_710
                              (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_734
                                 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_726
                                    (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_756
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_774
                                          (coe v0))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_764
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_766
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_768
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
         (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
         (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.≡-update
d_'8801''45'update_2868 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'update_2868 ~v0 = du_'8801''45'update_2868
du_'8801''45'update_2868 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8801''45'update_2868 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_'8801''45'update_1286
      v1
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_2872 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_Emax_2872 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_752
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.a
d_a_2874 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_a_2874 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_720 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.a0
d_a0_2876 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2876 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_750
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.b
d_b_2878 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_b_2878 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_722 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_2880 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_ccMaxTermLength_2880 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_774
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_2882 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_ccMinSize_2882 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_772
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_2884 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_coinsPerUTxOByte_2884 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_734
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_2886 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_collateralPercentage_2886 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_756
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_2888 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_724
d_costmdls_2888 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdls_758
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_2890 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_drepActivity_2890 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_770
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_2892 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_drepDeposit_2892 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_768
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_2894 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244
d_drepThresholds_2894 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_760
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_2896 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_govActionDeposit_2896 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_766
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_2898 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_govActionLifetime_2898 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_764
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_2900 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_keyDeposit_2900 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_724
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_2902 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_2902 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_716
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_2904 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_maxBlockSize_2904 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_704
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_2906 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_maxCollateralInputs_2906 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_712
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_2908 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_maxHeaderSize_2908 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_708
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2910 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_2910 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_742
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2912 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_maxRefScriptSizePerTx_2912 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_740
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_2914 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_2914 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_714
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_2916 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_maxTxSize_2916 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_706
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_2918 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_maxValSize_2918 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_710
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2920 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2920 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_738
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.minPoolCost
d_minPoolCost_2922 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_minPoolCost_2922 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_728
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_2924 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_minUTxOValue_2924 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_748
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_2926 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2926 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_730
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_2928 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_nopt_2928 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_754
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_2930 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe Integer
d_poolDeposit_2930 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_726
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_2932 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288
d_poolThresholds_2932 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_762
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.prices
d_prices_2934 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_2934 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_736
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.pv
d_pv_2936 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2936 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_718
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_2938 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2938 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_746
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_2940 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2940 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_744
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_2942 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_630 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2942 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_732
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure._≥ᵉ_
d__'8805''7497'__2956 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2956 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.CostModel
d_CostModel_2958 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  ()
d_CostModel_2958 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.T
d_T_2960 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  ()
d_T_2960 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.THash
d_THash_2962 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  ()
d_THash_2962 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.Dataʰ
d_Data'688'_2964 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_2964 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.Datum
d_Datum_2966 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  ()
d_Datum_2966 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2968 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2968 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validPlutusScript_562
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_2970 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2970 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEQ'45'Prices_524
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_2972 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2972 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'CostModel_508
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2974 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2974 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_522
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2976 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2976 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'LangDepView_510
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_2978 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2978 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_514
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.DecEq-T
d_DecEq'45'T_2980 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2980 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_2982 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2982 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2984 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2984 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_504
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.ExUnits
d_ExUnits_2986 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  ()
d_ExUnits_2986 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2988 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_2988 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_506
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.LangDepView
d_LangDepView_2990 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  ()
d_LangDepView_2990 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.Language
d_Language_2992 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  ()
d_Language_2992 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.PlutusScript
d_PlutusScript_2994 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  ()
d_PlutusScript_2994 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.PlutusV1
d_PlutusV1_2996 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  AgdaAny
d_PlutusV1_2996 ~v0 = du_PlutusV1_2996
du_PlutusV1_2996 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  AgdaAny
du_PlutusV1_2996
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_530
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.PlutusV2
d_PlutusV2_2998 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  AgdaAny
d_PlutusV2_2998 ~v0 = du_PlutusV2_2998
du_PlutusV2_2998 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  AgdaAny
du_PlutusV2_2998
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_532
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.PlutusV3
d_PlutusV3_3000 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  AgdaAny
d_PlutusV3_3000 ~v0 = du_PlutusV3_3000
du_PlutusV3_3000 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  AgdaAny
du_PlutusV3_3000
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_534
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.PlutusV4
d_PlutusV4_3002 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  AgdaAny
d_PlutusV4_3002 ~v0 = du_PlutusV4_3002
du_PlutusV4_3002 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  AgdaAny
du_PlutusV4_3002
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_536
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.Prices
d_Prices_3004 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  ()
d_Prices_3004 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.Redeemer
d_Redeemer_3006 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  ()
d_Redeemer_3006 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_3008 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_3008 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'CostModel_512
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_3010 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_3010 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_526
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.Show-Language
d_Show'45'Language_3012 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_3012 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Language_516
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.Show-Prices
d_Show'45'Prices_3014 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_3014 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Prices_528
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.Show-THash
d_Show'45'THash_3016 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_3016 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.T-Hashable
d_T'45'Hashable_3018 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_3018 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.T-isHashable
d_T'45'isHashable_3020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_3020 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.fromPlutusLanguage
d_fromPlutusLanguage_3022 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_3022 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_fromPlutusLanguage_502
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.language
d_language_3024 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  AgdaAny -> AgdaAny
d_language_3024 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_564
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.validPlutusScript
d_validPlutusScript_3026 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_3026 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_3028 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_3028 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8805''7497''45'Dec_520
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PoolThresholds.Q1
d_Q1_3032 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_3032 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q1_300
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PoolThresholds.Q2a
d_Q2a_3034 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_3034 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q2a_302
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PoolThresholds.Q2b
d_Q2b_3036 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_3036 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q2b_304
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PoolThresholds.Q4
d_Q4_3038 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_3038 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q4_306
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PoolThresholds.Q5
d_Q5_3040 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_3040 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q5_308
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.RewardAddress.net
d_net_3044 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  Integer
d_net_3044 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.RewardAddress.stake
d_stake_3046 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_3046 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure._≥ᵉ_
d__'8805''7497'__3050 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__3050 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.CostModel
d_CostModel_3052 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  ()
d_CostModel_3052 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.T
d_T_3054 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  ()
d_T_3054 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.THash
d_THash_3056 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  ()
d_THash_3056 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.Dataʰ
d_Data'688'_3058 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_3058 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.Datum
d_Datum_3060 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  ()
d_Datum_3060 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_3062 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  [Integer] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_3062 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_390
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_594
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_3064 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_3064 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validPlutusScript_562
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_3066 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_3066 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEQ'45'Prices_524
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_3068 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_3068 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'CostModel_508
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_3070 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_3070 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_522
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_3072 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_3072 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'LangDepView_510
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_3074 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_3074 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_514
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_3076 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_3076 ~v0
  = du_DecEq'45'LanguageCostModels_3076
du_DecEq'45'LanguageCostModels_3076 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'LanguageCostModels_3076
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_DecEq'45'LanguageCostModels_732
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_3078 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_3078 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'P1Script_394
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_594
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.DecEq-T
d_DecEq'45'T_3080 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_3080 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_3082 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_3082 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_3084 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_3084 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_504
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.ExUnits
d_ExUnits_3086 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  ()
d_ExUnits_3086 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_3088 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_3088 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_392
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_594
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_3090 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_3090 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_506
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_3092 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_3092 ~v0 = du_Hashable'45'Script_3092
du_Hashable'45'Script_3092 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
du_Hashable'45'Script_3092
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_696
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.LangDepView
d_LangDepView_3094 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  ()
d_LangDepView_3094 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.Language
d_Language_3096 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  ()
d_Language_3096 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.LanguageCostModels
d_LanguageCostModels_3098 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.P1Script
d_P1Script_3102 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  ()
d_P1Script_3102 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.PlutusScript
d_PlutusScript_3104 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  ()
d_PlutusScript_3104 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.PlutusV1
d_PlutusV1_3106 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  AgdaAny
d_PlutusV1_3106 ~v0 v1 = du_PlutusV1_3106 v1
du_PlutusV1_3106 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  AgdaAny
du_PlutusV1_3106 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_530
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.PlutusV2
d_PlutusV2_3108 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  AgdaAny
d_PlutusV2_3108 ~v0 v1 = du_PlutusV2_3108 v1
du_PlutusV2_3108 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  AgdaAny
du_PlutusV2_3108 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_532
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.PlutusV3
d_PlutusV3_3110 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  AgdaAny
d_PlutusV3_3110 ~v0 v1 = du_PlutusV3_3110 v1
du_PlutusV3_3110 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  AgdaAny
du_PlutusV3_3110 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_534
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.PlutusV4
d_PlutusV4_3112 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  AgdaAny
d_PlutusV4_3112 ~v0 v1 = du_PlutusV4_3112 v1
du_PlutusV4_3112 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  AgdaAny
du_PlutusV4_3112 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_536
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.Prices
d_Prices_3114 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  ()
d_Prices_3114 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.Redeemer
d_Redeemer_3116 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  ()
d_Redeemer_3116 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.Script
d_Script_3118 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  ()
d_Script_3118 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.Show-CostModel
d_Show'45'CostModel_3120 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_3120 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'CostModel_512
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_3122 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_3122 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_526
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.Show-Language
d_Show'45'Language_3124 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_3124 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Language_516
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.Show-LanguageCostModels
d_Show'45'LanguageCostModels_3126 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_3126 ~v0
  = du_Show'45'LanguageCostModels_3126
du_Show'45'LanguageCostModels_3126 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'LanguageCostModels_3126
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Show'45'LanguageCostModels_738
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.Show-Prices
d_Show'45'Prices_3128 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_3128 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Prices_528
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.Show-THash
d_Show'45'THash_3130 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_3130 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.T-Hashable
d_T'45'Hashable_3132 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_3132 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.T-isHashable
d_T'45'isHashable_3134 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_3134 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_488
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
            (coe v0)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.fromPlutusLanguage
d_fromPlutusLanguage_3136 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_3136 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_fromPlutusLanguage_502
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_3138 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_3138 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_hashRespectsUnion_614
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.isNativeScript
d_isNativeScript_3140 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_3140 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.isP1Script
d_isP1Script_3142 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_3142 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.isP1Script?
d_isP1Script'63'_3144 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_3144 ~v0 = du_isP1Script'63'_3144
du_isP1Script'63'_3144 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_3144 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP1Script'63'_702
      v1
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.isP2Script
d_isP2Script_3146 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_3146 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.isP2Script?
d_isP2Script'63'_3148 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_3148 ~v0 = du_isP2Script'63'_3148
du_isP2Script'63'_3148 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_3148 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP2Script'63'_716
      v1
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.language
d_language_3150 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  AgdaAny -> AgdaAny
d_language_3150 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_564
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.languageCostModels
d_languageCostModels_3152 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_724 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_3152 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_728
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.p1s
d_p1s_3156 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_370
d_p1s_3156 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_594
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.ps
d_ps_3158 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_408
d_ps_3158 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.toP1Script
d_toP1Script_3160 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_3160 ~v0 = du_toP1Script_3160
du_toP1Script_3160 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_3160 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP1Script_710
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.toP2Script
d_toP2Script_3162 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_3162 ~v0 = du_toP2Script_3162
du_toP2Script_3162 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_3162 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_722
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.validP1Script
d_validP1Script_3164 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  [Integer] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_3164 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.validPlutusScript
d_validPlutusScript_3166 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_3166 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_3168 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_568 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_3168 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8805''7497''45'Dec_520
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_616
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.LanguageCostModels.languageCostModels
d_languageCostModels_3172 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_724 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_3172 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_728
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra._∙_
d__'8729'__3176 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__3176 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra._≈_
d__'8776'__3178 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__3178 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__3180 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__3180 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_3182 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_3182 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_3184 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_3184 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_3186 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_3190 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_3194 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.Value
d_Value_3198 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  ()
d_Value_3198 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_3200 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_3200 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.addValue
d_addValue_3202 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_3202 ~v0 = du_addValue_3202
du_addValue_3202 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
du_addValue_3202
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.coin
d_coin_3204 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_coin_3204 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_3206 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_3206 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_3208 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_3208 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_3210 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_3210 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.inject
d_inject_3212 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> AgdaAny
d_inject_3212 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.monoid
d_monoid_3214 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_3214 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1066
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.policies
d_policies_3216 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> [Integer]
d_policies_3216 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.rawMonoid
d_rawMonoid_3218 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_3218 v0
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
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.size
d_size_3220 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_size_3220 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.sumᵛ
d_sum'7515'_3222 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_3222 ~v0 = du_sum'7515'_3222
du_sum'7515'_3222 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
du_sum'7515'_3222
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.ε
d_ε_3224 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny
d_ε_3224 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_3228 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_3228 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_3230 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_3230 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_3232 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_3232 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_3234 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_3234 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_3236 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_3236 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_3240 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_3240 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_3242 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_3242 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_3244 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_3244 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_3246 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_3246 ~v0 = du_isMagmaIsomorphism_3246
du_isMagmaIsomorphism_3246 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_3246 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_3248 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_3248 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_3248 v2
du_isMagmaMonomorphism_3248 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_3248 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_3250 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_3250 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_3252 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_3252 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_3254 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_3254 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
               (coe v0))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_3256 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_3256 ~v0 ~v1 v2 = du_isRelIsomorphism_3256 v2
du_isRelIsomorphism_3256 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_3256 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_3258 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_3258 ~v0 ~v1 v2 = du_isRelMonomorphism_3258 v2
du_isRelMonomorphism_3258 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_3258 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.surjective
d_surjective_3260 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_3260 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_3262 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_3262 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_3264 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_3264 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_3268 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_3268 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_3270 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_3270 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_3272 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_3272 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_3274 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_3274 ~v0 = du_isMagmaMonomorphism_3274
du_isMagmaMonomorphism_3274 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_3274 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_3276 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_3276 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_3278 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_3278 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_3280 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_3280 ~v0 ~v1 v2 = du_isRelMonomorphism_3280 v2
du_isRelMonomorphism_3280 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_3280 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_3282 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_3282 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_3284 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_3284 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Tx.isValid
d_isValid_3288 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  AgdaAny
d_isValid_3288 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_isValid_3824
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Tx.txAuxData
d_txAuxData_3290 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  Maybe Integer
d_txAuxData_3290 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txAuxData_3826
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Tx.txBody
d_txBody_3292 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802
d_txBody_3292 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3818
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Tx.txSize
d_txSize_3294 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  Integer
d_txSize_3294 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSize_3822
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Tx.txWitnesses
d_txWitnesses_3296 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3798 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3804
d_txWitnesses_3296 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3820
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.collateralInputs
d_collateralInputs_3300 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  AgdaAny
d_collateralInputs_3300 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3880
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.currentTreasury
d_currentTreasury_3302 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  Maybe Integer
d_currentTreasury_3302 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_currentTreasury_3904
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.mint
d_mint_3304 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  Integer
d_mint_3304 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_mint_3906
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.referenceInputs
d_referenceInputs_3306 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_referenceInputs_3306 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_referenceInputs_3878
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.requiredSignerHashes
d_requiredSignerHashes_3308 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  [Integer]
d_requiredSignerHashes_3308 ~v0 = du_requiredSignerHashes_3308
du_requiredSignerHashes_3308 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  [Integer]
du_requiredSignerHashes_3308 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_requiredSignerHashes_3920
      v1
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.scriptIntegrityHash
d_scriptIntegrityHash_3310 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  Maybe Integer
d_scriptIntegrityHash_3310 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptIntegrityHash_3908
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.txADhash
d_txADhash_3312 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  Maybe Integer
d_txADhash_3312 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txADhash_3894
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.txBalanceIntervals
d_txBalanceIntervals_3314 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txBalanceIntervals_3314 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBalanceIntervals_3918
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.txCerts
d_txCerts_3316 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1354]
d_txCerts_3316 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txCerts_3886
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.txDirectDeposits
d_txDirectDeposits_3318 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txDirectDeposits_3318 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDirectDeposits_3916
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.txDonation
d_txDonation_3320 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  Integer
d_txDonation_3320 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDonation_3896
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.txFee
d_txFee_3322 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  AgdaAny
d_txFee_3322 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txFee_3888
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.txGovProposals
d_txGovProposals_3324 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1030]
d_txGovProposals_3324 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovProposals_3900
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.txGovVotes
d_txGovVotes_3326 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_976]
d_txGovVotes_3326 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovVotes_3898
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.txGuards
d_txGuards_3328 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_txGuards_3328 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGuards_3912
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.txId
d_txId_3330 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  Integer
d_txId_3330 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txId_3884
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.txIns
d_txIns_3332 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_3332 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3876
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.txNetworkId
d_txNetworkId_3334 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  Maybe Integer
d_txNetworkId_3334 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txNetworkId_3902
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.txOuts
d_txOuts_3336 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_3336 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txOuts_3882
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.txRequiredTopLevelGuards
d_txRequiredTopLevelGuards_3338 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txRequiredTopLevelGuards_3338 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRequiredTopLevelGuards_3914
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.txSubTransactions
d_txSubTransactions_3340 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  AgdaAny
d_txSubTransactions_3340 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3910
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.txVldt
d_txVldt_3342 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_3342 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3892
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.txWithdrawals
d_txWithdrawals_3344 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3802 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_3344 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWithdrawals_3890
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxWitnesses.scripts
d_scripts_3348 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3804 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_3348 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scripts_3934
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxWitnesses.scriptsP1
d_scriptsP1_3350 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3804 ->
  [MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_336]
d_scriptsP1_3350 ~v0 = du_scriptsP1_3350
du_scriptsP1_3350 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3804 ->
  [MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_336]
du_scriptsP1_3350
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_scriptsP1_3940
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxWitnesses.txData
d_txData_3352 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3804 ->
  [Integer]
d_txData_3352 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txData_3936
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxWitnesses.txRedeemers
d_txRedeemers_3354 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3804 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txRedeemers_3354 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_3938
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxWitnesses.vKeySigs
d_vKeySigs_3356 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3804 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vKeySigs_3356 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_vKeySigs_3932
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__3368 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertEnv_1394 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1466 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1354] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1466 ->
  ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__3368 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__3370 a0 a1 a2 a3 a4 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__3372 a0 a1 a2 a3 a4 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__3374 a0 a1 a2 a3 a4
  = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__3376 a0 a1 a2 a3 a4 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CCHotKeys
d_CCHotKeys_3378 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_CCHotKeys_3378 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CCHotKeysOf
d_CCHotKeysOf_3380 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1574 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_3380 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CCHotKeysOf_1582
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CertEnv
d_CertEnv_3388 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CertState
d_CertState_3392 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CertStateOf
d_CertStateOf_3396 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1794 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1466
d_CertStateOf_3396 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1802
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ColdCredentialsOf
d_ColdCredentialsOf_3398 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasColdCredentials_1594 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_ColdCredentialsOf_3398 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_ColdCredentialsOf_1602
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DCert
d_DCert_3400 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DState
d_DState_3406 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DStateOf
d_DStateOf_3410 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDState_1734 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1410
d_DStateOf_3410 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1742
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-DCert
d_DecEq'45'DCert_3412 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DCert_3412 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DecEq'45'DCert_2068
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
         (coe d_HSTransactionStructure_736 (coe v0)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-StakePoolParams
d_DecEq'45'StakePoolParams_3414 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'StakePoolParams_3414 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DecEq'45'StakePoolParams_2066
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
         (coe d_HSTransactionStructure_736 (coe v0)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DelegEnv
d_DelegEnv_3416 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DepositsOf
d_DepositsOf_3420 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDeposits_1554 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_3420 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DepositsOf_1562
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.EpochOf
d_EpochOf_3422 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasEpoch_1814 ->
  AgdaAny -> Integer
d_EpochOf_3422 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_EpochOf_1822
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.FuturePoolsOf
d_FuturePoolsOf_3424 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasFuturePools_1634 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_FuturePoolsOf_3424 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_FuturePoolsOf_1642
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GState
d_GState_3432 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GStateOf
d_GStateOf_3436 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasGState_1774 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1450
d_GStateOf_3436 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_GStateOf_1782
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovCertEnv
d_GovCertEnv_3438 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCCHotKeys
d_HasCCHotKeys_3442 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCCHotKeys-CertState
d_HasCCHotKeys'45'CertState_3446 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1574
d_HasCCHotKeys'45'CertState_3446 ~v0
  = du_HasCCHotKeys'45'CertState_3446
du_HasCCHotKeys'45'CertState_3446 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1574
du_HasCCHotKeys'45'CertState_3446
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCCHotKeys'45'CertState_1890
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCCHotKeys-GState
d_HasCCHotKeys'45'GState_3448 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1574
d_HasCCHotKeys'45'GState_3448 ~v0 = du_HasCCHotKeys'45'GState_3448
du_HasCCHotKeys'45'GState_3448 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1574
du_HasCCHotKeys'45'GState_3448
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCCHotKeys'45'GState_1876
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCast-CertEnv
d_HasCast'45'CertEnv_3450 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_3450 ~v0 = du_HasCast'45'CertEnv_3450
du_HasCast'45'CertEnv_3450 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_3450
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'CertEnv_1902
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCast-CertState
d_HasCast'45'CertState_3452 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertState_3452 ~v0 = du_HasCast'45'CertState_3452
du_HasCast'45'CertState_3452 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertState_3452
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'CertState_1910
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCast-DState
d_HasCast'45'DState_3454 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DState_3454 ~v0 = du_HasCast'45'DState_3454
du_HasCast'45'DState_3454 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'DState_3454
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'DState_1904
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCast-DelegEnv
d_HasCast'45'DelegEnv_3456 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DelegEnv_3456 ~v0 = du_HasCast'45'DelegEnv_3456
du_HasCast'45'DelegEnv_3456 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'DelegEnv_3456
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'DelegEnv_1912
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCast-GState
d_HasCast'45'GState_3458 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GState_3458 ~v0 = du_HasCast'45'GState_3458
du_HasCast'45'GState_3458 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GState_3458
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'GState_1908
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCast-GovCertEnv
d_HasCast'45'GovCertEnv_3460 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovCertEnv_3460 ~v0 = du_HasCast'45'GovCertEnv_3460
du_HasCast'45'GovCertEnv_3460 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovCertEnv_3460
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'GovCertEnv_1916
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCast-PState
d_HasCast'45'PState_3462 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PState_3462 ~v0 = du_HasCast'45'PState_3462
du_HasCast'45'PState_3462 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'PState_3462
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'PState_1906
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCast-PoolEnv
d_HasCast'45'PoolEnv_3464 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PoolEnv_3464 ~v0 = du_HasCast'45'PoolEnv_3464
du_HasCast'45'PoolEnv_3464 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'PoolEnv_3464
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'PoolEnv_1914
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCertState
d_HasCertState_3466 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCoin-CertState
d_HasCoin'45'CertState_3470 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'CertState_3470 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_HasCoin'45'CertState_2064
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
         (coe d_HSTransactionStructure_736 (coe v0)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasColdCredentials
d_HasColdCredentials_3472 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasColdCredentials-CertEnv
d_HasColdCredentials'45'CertEnv_3476 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasColdCredentials_1594
d_HasColdCredentials'45'CertEnv_3476 ~v0
  = du_HasColdCredentials'45'CertEnv_3476
du_HasColdCredentials'45'CertEnv_3476 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasColdCredentials_1594
du_HasColdCredentials'45'CertEnv_3476
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasColdCredentials'45'CertEnv_1856
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasColdCredentials-GovCertEnv
d_HasColdCredentials'45'GovCertEnv_3478 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasColdCredentials_1594
d_HasColdCredentials'45'GovCertEnv_3478 ~v0
  = du_HasColdCredentials'45'GovCertEnv_3478
du_HasColdCredentials'45'GovCertEnv_3478 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasColdCredentials_1594
du_HasColdCredentials'45'GovCertEnv_3478
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasColdCredentials'45'GovCertEnv_1854
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDReps-CertState
d_HasDReps'45'CertState_3480 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1240
d_HasDReps'45'CertState_3480 ~v0 = du_HasDReps'45'CertState_3480
du_HasDReps'45'CertState_3480 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1240
du_HasDReps'45'CertState_3480
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDReps'45'CertState_1888
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDReps-GState
d_HasDReps'45'GState_3482 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1240
d_HasDReps'45'GState_3482 ~v0 = du_HasDReps'45'GState_3482
du_HasDReps'45'GState_3482 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1240
du_HasDReps'45'GState_3482
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDReps'45'GState_1874
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDState
d_HasDState_3484 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDState-CertState
d_HasDState'45'CertState_3488 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDState_1734
d_HasDState'45'CertState_3488 ~v0 = du_HasDState'45'CertState_3488
du_HasDState'45'CertState_3488 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDState_1734
du_HasDState'45'CertState_3488
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDState'45'CertState_1880
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDeposits
d_HasDeposits_3490 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDeposits-DState
d_HasDeposits'45'DState_3494 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDeposits_1554
d_HasDeposits'45'DState_3494 ~v0 = du_HasDeposits'45'DState_3494
du_HasDeposits'45'DState_3494 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDeposits_1554
du_HasDeposits'45'DState_3494
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDeposits'45'DState_1864
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDeposits-GState
d_HasDeposits'45'GState_3496 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDeposits_1554
d_HasDeposits'45'GState_3496 ~v0 = du_HasDeposits'45'GState_3496
du_HasDeposits'45'GState_3496 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDeposits_1554
du_HasDeposits'45'GState_3496
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDeposits'45'GState_1878
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDeposits-PState
d_HasDeposits'45'PState_3498 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDeposits_1554
d_HasDeposits'45'PState_3498 ~v0 = du_HasDeposits'45'PState_3498
du_HasDeposits'45'PState_3498 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDeposits_1554
du_HasDeposits'45'PState_3498
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDeposits'45'PState_1870
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasEpoch
d_HasEpoch_3500 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasEpoch-CertEnv
d_HasEpoch'45'CertEnv_3504 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasEpoch_1814
d_HasEpoch'45'CertEnv_3504 ~v0 = du_HasEpoch'45'CertEnv_3504
du_HasEpoch'45'CertEnv_3504 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasEpoch_1814
du_HasEpoch'45'CertEnv_3504
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasEpoch'45'CertEnv_1900
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasEpoch-GovCertEnv
d_HasEpoch'45'GovCertEnv_3506 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasEpoch_1814
d_HasEpoch'45'GovCertEnv_3506 ~v0 = du_HasEpoch'45'GovCertEnv_3506
du_HasEpoch'45'GovCertEnv_3506 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasEpoch_1814
du_HasEpoch'45'GovCertEnv_3506
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasEpoch'45'GovCertEnv_1898
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasFuturePools
d_HasFuturePools_3508 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasFuturePools-PState
d_HasFuturePools'45'PState_3512 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasFuturePools_1634
d_HasFuturePools'45'PState_3512 ~v0
  = du_HasFuturePools'45'PState_3512
du_HasFuturePools'45'PState_3512 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasFuturePools_1634
du_HasFuturePools'45'PState_3512
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasFuturePools'45'PState_1868
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGState
d_HasGState_3514 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGState-CertState
d_HasGState'45'CertState_3518 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasGState_1774
d_HasGState'45'CertState_3518 ~v0 = du_HasGState'45'CertState_3518
du_HasGState'45'CertState_3518 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasGState_1774
du_HasGState'45'CertState_3518
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasGState'45'CertState_1884
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasPParams-CertEnv
d_HasPParams'45'CertEnv_3520 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578
d_HasPParams'45'CertEnv_3520 ~v0 = du_HasPParams'45'CertEnv_3520
du_HasPParams'45'CertEnv_3520 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578
du_HasPParams'45'CertEnv_3520
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPParams'45'CertEnv_1850
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasPParams-GovCertEnv
d_HasPParams'45'GovCertEnv_3522 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578
d_HasPParams'45'GovCertEnv_3522 ~v0
  = du_HasPParams'45'GovCertEnv_3522
du_HasPParams'45'GovCertEnv_3522 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_578
du_HasPParams'45'GovCertEnv_3522
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPParams'45'GovCertEnv_1852
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasPState
d_HasPState_3524 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasPState-CertState
d_HasPState'45'CertState_3528 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1754
d_HasPState'45'CertState_3528 ~v0 = du_HasPState'45'CertState_3528
du_HasPState'45'CertState_3528 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1754
du_HasPState'45'CertState_3528
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPState'45'CertState_1882
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasPools
d_HasPools_3530 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasPools-CertState
d_HasPools'45'CertState_3534 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1614
d_HasPools'45'CertState_3534 ~v0 = du_HasPools'45'CertState_3534
du_HasPools'45'CertState_3534 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1614
du_HasPools'45'CertState_3534
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPools'45'CertState_1892
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasPools-PState
d_HasPools'45'PState_3536 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1614
d_HasPools'45'PState_3536 ~v0 = du_HasPools'45'PState_3536
du_HasPools'45'PState_3536 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1614
du_HasPools'45'PState_3536
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPools'45'PState_1866
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRetiring
d_HasRetiring_3538 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRetiring-PState
d_HasRetiring'45'PState_3542 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRetiring_1654
d_HasRetiring'45'PState_3542 ~v0 = du_HasRetiring'45'PState_3542
du_HasRetiring'45'PState_3542 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRetiring_1654
du_HasRetiring'45'PState_3542
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasRetiring'45'PState_1872
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRewards
d_HasRewards_3544 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRewards-CertState
d_HasRewards'45'CertState_3548 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1674
d_HasRewards'45'CertState_3548 ~v0
  = du_HasRewards'45'CertState_3548
du_HasRewards'45'CertState_3548 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1674
du_HasRewards'45'CertState_3548
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasRewards'45'CertState_1886
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRewards-DState
d_HasRewards'45'DState_3550 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1674
d_HasRewards'45'DState_3550 ~v0 = du_HasRewards'45'DState_3550
du_HasRewards'45'DState_3550 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1674
du_HasRewards'45'DState_3550
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasRewards'45'DState_1862
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasStake
d_HasStake_3552 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasStakeDelegs
d_HasStakeDelegs_3556 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasStakeDelegs-CertState
d_HasStakeDelegs'45'CertState_3560 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStakeDelegs_1714
d_HasStakeDelegs'45'CertState_3560 ~v0
  = du_HasStakeDelegs'45'CertState_3560
du_HasStakeDelegs'45'CertState_3560 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStakeDelegs_1714
du_HasStakeDelegs'45'CertState_3560
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasStakeDelegs'45'CertState_1896
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasStakeDelegs-DState
d_HasStakeDelegs'45'DState_3562 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStakeDelegs_1714
d_HasStakeDelegs'45'DState_3562 ~v0
  = du_HasStakeDelegs'45'DState_3562
du_HasStakeDelegs'45'DState_3562 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStakeDelegs_1714
du_HasStakeDelegs'45'DState_3562
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasStakeDelegs'45'DState_1860
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasVoteDelegs-CertState
d_HasVoteDelegs'45'CertState_3564 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1124
d_HasVoteDelegs'45'CertState_3564 ~v0
  = du_HasVoteDelegs'45'CertState_3564
du_HasVoteDelegs'45'CertState_3564 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1124
du_HasVoteDelegs'45'CertState_3564
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasVoteDelegs'45'CertState_1894
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasVoteDelegs-DState
d_HasVoteDelegs'45'DState_3566 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1124
d_HasVoteDelegs'45'DState_3566 ~v0
  = du_HasVoteDelegs'45'DState_3566
du_HasVoteDelegs'45'DState_3566 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1124
du_HasVoteDelegs'45'DState_3566
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasVoteDelegs'45'DState_1858
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasVotes
d_HasVotes_3568 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsConwayCert
d_IsConwayCert_3572 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1354 -> ()
d_IsConwayCert_3572 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsConwayCert?
d_IsConwayCert'63'_3574 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1354 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsConwayCert'63'_3574 ~v0 = du_IsConwayCert'63'_3574
du_IsConwayCert'63'_3574 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1354 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsConwayCert'63'_3574
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_IsConwayCert'63'_1526
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsPoolRegistered
d_IsPoolRegistered_3576 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> ()
d_IsPoolRegistered_3576 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PState
d_PState_3584 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PStateOf
d_PStateOf_3588 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1754 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1430
d_PStateOf_3588 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PStateOf_1762
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PoolEnv
d_PoolEnv_3590 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Pools
d_Pools_3594 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Pools_3594 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PoolsOf
d_PoolsOf_3596 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1614 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_3596 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PoolsOf_1622
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Retiring
d_Retiring_3598 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Retiring_3598 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.RetiringOf
d_RetiringOf_3600 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRetiring_1654 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_3600 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RetiringOf_1662
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Rewards
d_Rewards_3602 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Rewards_3602 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.RewardsOf
d_RewardsOf_3604 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1674 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_3604 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RewardsOf_1682
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Stake
d_Stake_3606 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Stake_3606 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.StakeDelegs
d_StakeDelegs_3608 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_StakeDelegs_3608 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.StakeDelegsOf
d_StakeDelegsOf_3610 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStakeDelegs_1714 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_3610 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_StakeDelegsOf_1722
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.StakeOf
d_StakeOf_3612 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStake_1694 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_3612 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_StakeOf_1702
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.StakePoolParams
d_StakePoolParams_3614 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.VotesOf
d_VotesOf_3618 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasVotes_1834 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_976]
d_VotesOf_3618 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_VotesOf_1842
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.cwitness
d_cwitness_3622 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1354 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_cwitness_3622 ~v0 = du_cwitness_3622
du_cwitness_3622 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1354 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_cwitness_3622
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_cwitness_1370
-- Ledger.Dijkstra.Foreign.ExternalStructures._.newCertDeposits
d_newCertDeposits_3630 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  [Integer] ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1354] ->
  Integer
d_newCertDeposits_3630 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_newCertDeposits_2016
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
         (coe d_HSTransactionStructure_736 (coe v0)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.refundCertDeposits
d_refundCertDeposits_3632 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1354] ->
  Integer
d_refundCertDeposits_3632 ~v0 = du_refundCertDeposits_3632
du_refundCertDeposits_3632 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1354] ->
  Integer
du_refundCertDeposits_3632 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_refundCertDeposits_2046
-- Ledger.Dijkstra.Foreign.ExternalStructures._.rewardsBalance
d_rewardsBalance_3640 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1410 ->
  Integer
d_rewardsBalance_3640 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewardsBalance_2004
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
         (coe d_HSTransactionStructure_736 (coe v0)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CertEnv.coldCredentials
d_coldCredentials_3680 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertEnv_1394 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_coldCredentials_3680 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_coldCredentials_1406
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CertEnv.epoch
d_epoch_3682 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertEnv_1394 ->
  Integer
d_epoch_3682 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_epoch_1402
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CertEnv.pp
d_pp_3684 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertEnv_1394 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pp_3684 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pp_1404 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CertState.dState
d_dState_3688 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1466 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1410
d_dState_3688 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1474
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CertState.gState
d_gState_3690 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1466 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1450
d_gState_3690 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1478
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CertState.pState
d_pState_3692 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1466 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1430
d_pState_3692 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1476
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DState.deposits
d_deposits_3712 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1410 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_3712 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1426
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DState.rewards
d_rewards_3714 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1410 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_3714 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1424
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DState.stakeDelegs
d_stakeDelegs_3716 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1410 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_3716 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_stakeDelegs_1422
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DState.voteDelegs
d_voteDelegs_3718 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1410 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_3718 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_voteDelegs_1420
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DelegEnv.delegatees
d_delegatees_3722 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DelegEnv_1482 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_delegatees_3722 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_delegatees_1494
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DelegEnv.pools
d_pools_3724 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DelegEnv_1482 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_3724 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1492
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DelegEnv.pparams
d_pparams_3726 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DelegEnv_1482 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pparams_3726 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pparams_1490
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GState.ccHotKeys
d_ccHotKeys_3730 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1450 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_3730 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_ccHotKeys_1460
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GState.deposits
d_deposits_3732 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1450 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_3732 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1462
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GState.dreps
d_dreps_3734 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1450 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_3734 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dreps_1458
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovCertEnv.coldCredentials
d_coldCredentials_3738 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GovCertEnv_1510 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_coldCredentials_3738 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_coldCredentials_1522
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovCertEnv.epoch
d_epoch_3740 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GovCertEnv_1510 ->
  Integer
d_epoch_3740 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_epoch_1518
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovCertEnv.pp
d_pp_3742 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GovCertEnv_1510 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pp_3742 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pp_1520 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCCHotKeys.CCHotKeysOf
d_CCHotKeysOf_3746 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1574 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_3746 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CCHotKeysOf_1582
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCertState.CertStateOf
d_CertStateOf_3750 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1794 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1466
d_CertStateOf_3750 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1802
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasColdCredentials.ColdCredentialsOf
d_ColdCredentialsOf_3754 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasColdCredentials_1594 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_ColdCredentialsOf_3754 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_ColdCredentialsOf_1602
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDState.DStateOf
d_DStateOf_3758 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDState_1734 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1410
d_DStateOf_3758 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1742
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDeposits.DepositsOf
d_DepositsOf_3762 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDeposits_1554 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_3762 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DepositsOf_1562
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasEpoch.EpochOf
d_EpochOf_3766 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasEpoch_1814 ->
  AgdaAny -> Integer
d_EpochOf_3766 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_EpochOf_1822
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasFuturePools.FuturePoolsOf
d_FuturePoolsOf_3770 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasFuturePools_1634 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_FuturePoolsOf_3770 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_FuturePoolsOf_1642
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGState.GStateOf
d_GStateOf_3774 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasGState_1774 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1450
d_GStateOf_3774 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_GStateOf_1782
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasPState.PStateOf
d_PStateOf_3778 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1754 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1430
d_PStateOf_3778 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PStateOf_1762
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasPools.PoolsOf
d_PoolsOf_3782 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1614 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_3782 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PoolsOf_1622
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRetiring.RetiringOf
d_RetiringOf_3786 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRetiring_1654 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_3786 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RetiringOf_1662
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRewards.RewardsOf
d_RewardsOf_3790 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1674 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_3790 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RewardsOf_1682
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasStake.StakeOf
d_StakeOf_3794 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStake_1694 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_3794 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_StakeOf_1702
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasStakeDelegs.StakeDelegsOf
d_StakeDelegsOf_3798 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStakeDelegs_1714 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_3798 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_StakeDelegsOf_1722
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasVotes.VotesOf
d_VotesOf_3802 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasVotes_1834 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_976]
d_VotesOf_3802 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_VotesOf_1842
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PState.deposits
d_deposits_3806 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1430 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_3806 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1446
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PState.fPools
d_fPools_3808 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1430 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fPools_3808 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_fPools_1442
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PState.pools
d_pools_3810 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1430 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_3810 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1440
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PState.retiring
d_retiring_3812 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1430 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_3812 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1444
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PoolEnv.epoch
d_epoch_3816 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PoolEnv_1498 ->
  Integer
d_epoch_3816 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_epoch_1504
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PoolEnv.pp
d_pp_3818 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PoolEnv_1498 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pp_3818 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pp_1506 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.StakePoolParams.cost
d_cost_3822 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1314 ->
  Integer
d_cost_3822 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_cost_1330
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.StakePoolParams.margin
d_margin_3824 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1314 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_margin_3824 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_margin_1332
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.StakePoolParams.owners
d_owners_3826 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1314 ->
  [Integer]
d_owners_3826 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_owners_1328
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.StakePoolParams.pledge
d_pledge_3828 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1314 ->
  Integer
d_pledge_3828 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pledge_1334
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.StakePoolParams.rewardAccount
d_rewardAccount_3830 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1314 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_rewardAccount_3830 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewardAccount_1336
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.StakePoolParams.vrf
d_vrf_3832 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1314 ->
  Integer
d_vrf_3832 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_vrf_1338
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.AbstractFunctions
d_AbstractFunctions_3836 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.AbstractFunctions.getLanguageView
d_getLanguageView_3846 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3188 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.T_HSLanguage_10 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_getLanguageView_3846 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_getLanguageView_3206
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.AbstractFunctions.indexOfImp
d_indexOfImp_3848 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3188 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_indexOf_3156
d_indexOfImp_3848 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_indexOfImp_3208
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.AbstractFunctions.scriptSize
d_scriptSize_3850 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3188 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_scriptSize_3850 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_scriptSize_3210
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.AbstractFunctions.serializedSize
d_serializedSize_3852 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3188 ->
  Integer -> Integer
d_serializedSize_3852 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_serializedSize_3204
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.AbstractFunctions.txScriptFee
d_txScriptFee_3854 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3188 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txScriptFee_3854 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_txScriptFee_3202
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.AbstractFunctions.valContext
d_valContext_3856 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3188 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3120 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_ScriptPurpose_3108 ->
  Integer
d_valContext_3856 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_valContext_3212
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures.HSAbstractFunctions
d_HSAbstractFunctions_3874 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3188
d_HSAbstractFunctions_3874 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.C_constructor_3214
      (coe (\ v1 v2 -> 0 :: Integer)) (coe (\ v1 -> 0 :: Integer))
      (coe (\ v1 v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.C_constructor_3186
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
                            MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DecEq'45'DCert_2068
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
                               (coe d_HSTransactionStructure_736 (coe v0))))
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
                         (coe v3) (coe du_rewardAddressToSOP_3880 (coe v1)))
                    (coe
                       MAlonzo.Code.Data.List.Sort.Base.d_sort_248
                       (coe
                          MAlonzo.Code.Data.List.Sort.du_sortingAlgorithm_138
                          (coe du_DecTotalOrder'45'RewardAddressSOP_3894))
                       (coe
                          MAlonzo.Code.Axiom.Set.du_map_426
                          (MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe du_rewardAddressToSOP_3880)
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
                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovProposal_1514
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2876
                          (coe d_HSTransactionStructure_736 (coe v0)))
                       (coe v1))
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
                         (let v4 = d_HSTransactionStructure_736 (coe v0) in
                          coe
                            (coe
                               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                               (coe
                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                  (coe
                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
                                     (coe
                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
                                        (coe v4))))
                               (coe
                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_268
                                  (coe
                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1414
                                     (coe v4)))))
                         (coe v3) (coe v1))
                    v2))))
      (coe
         (\ v1 ->
            case coe v1 of
              MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v2
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_nsScriptSize_348
                     (coe v2)
              MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v2
                -> coe
                     MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_psScriptSize_374
                     (coe v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe (\ v1 v2 -> 0 :: Integer))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.rewardAddressToSOP
d_rewardAddressToSOP_3880 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewardAddressToSOP_3880 ~v0 v1 = du_rewardAddressToSOP_3880 v1
du_rewardAddressToSOP_3880 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewardAddressToSOP_3880 v0
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
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecTotalOrder-RewardAddressSOP
d_DecTotalOrder'45'RewardAddressSOP_3894 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098
d_DecTotalOrder'45'RewardAddressSOP_3894 ~v0
  = du_DecTotalOrder'45'RewardAddressSOP_3894
du_DecTotalOrder'45'RewardAddressSOP_3894 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098
du_DecTotalOrder'45'RewardAddressSOP_3894
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
