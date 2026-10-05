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
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
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
import qualified MAlonzo.Code.Data.Nat.ListAction
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
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base
import qualified MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types
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
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.Qstdlib.Data.List.Relation.Unary.MOf

-- Ledger.Dijkstra.Foreign.ExternalStructures._.HSCryptoStructure
d_HSCryptoStructure_12 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
d_HSCryptoStructure_12 v0
  = coe
      MAlonzo.Code.Ledger.Core.Foreign.Crypto.Structure.d_HSCryptoStructure_36
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CryptoStructure.Dec-isSigned
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
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CryptoStructure.DecEq-Ser
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
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CryptoStructure.DecEq-Sig
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
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CryptoStructure.DecEq-THash
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
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CryptoStructure.THash
d_THash_80 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  ()
d_THash_80 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CryptoStructure.KeyPair
d_KeyPair_82 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  ()
d_KeyPair_82 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CryptoStructure.SKey
d_SKey_84 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  ()
d_SKey_84 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CryptoStructure.Ser
d_Ser_88 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  ()
d_Ser_88 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CryptoStructure.Show-THash
d_Show'45'THash_92 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_92 ~v0 v1 = du_Show'45'THash_92 v1
du_Show'45'THash_92 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'THash_92 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CryptoStructure.Sig
d_Sig_94 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  ()
d_Sig_94 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CryptoStructure.T-Hashable
d_T'45'Hashable_96 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_96 ~v0 v1 = du_T'45'Hashable_96 v1
du_T'45'Hashable_96 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
du_T'45'Hashable_96 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CryptoStructure.VKey
d_VKey_98 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  ()
d_VKey_98 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CryptoStructure.isKeyPair
d_isKeyPair_102 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  AgdaAny -> AgdaAny -> ()
d_isKeyPair_102 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CryptoStructure.isSigned
d_isSigned_104 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_104 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CryptoStructure.isSigned-correct
d_isSigned'45'correct_106 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_106 ~v0 v1 = du_isSigned'45'correct_106 v1
du_isSigned'45'correct_106 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_isSigned'45'correct_106 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_isSigned'45'correct_132
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CryptoStructure.sign
d_sign_112 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_sign_112 ~v0 v1 = du_sign_112 v1
du_sign_112 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_sign_112 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-HSNativeScript
d_DecEq'45'HSNativeScript_174 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'HSNativeScript_174 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_DecEq'45'HSNativeScript_354
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HSNativeScript
d_HSNativeScript_176 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HSP1ScriptStructure
d_HSP1ScriptStructure_180 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_326
d_HSP1ScriptStructure_180 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_HSP1ScriptStructure_356
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HSP2ScriptStructure
d_HSP2ScriptStructure_182 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364
d_HSP2ScriptStructure_182 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_HSP2ScriptStructure_390
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HSPlutusScript
d_HSPlutusScript_184 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HSScriptStructure
d_HSScriptStructure_188 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524
d_HSScriptStructure_188 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_HSScriptStructure_420
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Hashable-HSNativeScript
d_Hashable'45'HSNativeScript_190 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'HSNativeScript_190 ~v0
  = du_Hashable'45'HSNativeScript_190
du_Hashable'45'HSNativeScript_190 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
du_Hashable'45'HSNativeScript_190
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.du_Hashable'45'HSNativeScript_352
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HSNativeScript.nativeScript
d_nativeScript_196 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_336 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.T_NativeScript_326
d_nativeScript_196 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_nativeScript_344
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HSNativeScript.nsScriptHash
d_nsScriptHash_198 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_336 ->
  Integer
d_nsScriptHash_198 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_nsScriptHash_346
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HSNativeScript.nsScriptSize
d_nsScriptSize_200 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_336 ->
  Integer
d_nsScriptSize_200 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_nsScriptSize_348
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HSPlutusScript.psScriptHash
d_psScriptHash_204 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_364 ->
  Integer
d_psScriptHash_204 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_psScriptHash_372
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HSPlutusScript.psScriptLanguage
d_psScriptLanguage_206 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_364 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.T_HSLanguage_10
d_psScriptLanguage_206 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_psScriptLanguage_376
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HSPlutusScript.psScriptSize
d_psScriptSize_208 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_364 ->
  Integer
d_psScriptSize_208 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_psScriptSize_374
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Base.Convert-HSLanguage
d_Convert'45'HSLanguage_212 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Convert'45'HSLanguage_212 ~v0 = du_Convert'45'HSLanguage_212
du_Convert'45'HSLanguage_212 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
du_Convert'45'HSLanguage_212
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.d_Convert'45'HSLanguage_22
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Base.DecEq-HSLanguage
d_DecEq'45'HSLanguage_214 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'HSLanguage_214 ~v0 = du_DecEq'45'HSLanguage_214
du_DecEq'45'HSLanguage_214 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'HSLanguage_214
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.d_DecEq'45'HSLanguage_24
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Base.HSLanguage
d_HSLanguage_216 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Base.HsType-HSLanguage
d_HsType'45'HSLanguage_218 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsType'45'HSLanguage_218 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Base.Show-HSLanguage
d_Show'45'HSLanguage_230 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'HSLanguage_230 ~v0 = du_Show'45'HSLanguage_230
du_Show'45'HSLanguage_230 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'HSLanguage_230
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.d_Show'45'HSLanguage_26
-- Ledger.Dijkstra.Foreign.ExternalStructures._
d___246 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
d___246 v0
  = coe
      MAlonzo.Code.Ledger.Core.Foreign.Crypto.Structure.d_HSCryptoStructure_36
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._
d___250 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
d___250 ~v0 = du___250
du___250 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
du___250
  = coe MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8
-- Ledger.Dijkstra.Foreign.ExternalStructures._
d___252 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524
d___252 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_HSScriptStructure_420
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.Dec-isSigned
d_Dec'45'isSigned_256 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_256 v0
  = let v1 = d___246 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.DecEq-ScriptHash
d_DecEq'45'ScriptHash_258 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_258 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
      (coe d___246 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.DecEq-Ser
d_DecEq'45'Ser_260 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_260 v0
  = let v1 = d___246 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.DecEq-Sig
d_DecEq'45'Sig_262 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_262 v0
  = let v1 = d___246 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.DecEq-THash
d_DecEq'45'THash_264 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_264 v0
  = let v1 = d___246 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.DecEq-VRF
d_DecEq'45'VRF_266 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VRF_266 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'VRF_240
      (coe d___246 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.THash
d_THash_268 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_THash_268 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.KeyPair
d_KeyPair_270 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_KeyPair_270 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.SKey
d_SKey_272 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_SKey_272 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.ScriptHash
d_ScriptHash_274 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ScriptHash_274 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.Ser
d_Ser_276 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Ser_276 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.Show-ScriptHash
d_Show'45'ScriptHash_278 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_278 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_226
      (coe d___246 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.Show-THash
d_Show'45'THash_280 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_280 v0
  = let v1 = d___246 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.Sig
d_Sig_282 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Sig_282 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.T-Hashable
d_T'45'Hashable_284 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_284 v0
  = let v1 = d___246 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.VKey
d_VKey_286 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VKey_286 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.VRF
d_VRF_288 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VRF_288 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.isKeyPair
d_isKeyPair_290 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 -> ()
d_isKeyPair_290 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.isSigned
d_isSigned_292 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer -> Integer -> ()
d_isSigned_292 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.isSigned-correct
d_isSigned'45'correct_294 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isSigned'45'correct_294 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.khs
d_khs_296 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_296 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
      (coe d___246 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.pkk
d_pkk_298 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_298 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192
      (coe d___246 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.sign
d_sign_300 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer
d_sign_300 v0
  = let v1 = d___246 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovParams
d_GovParams_318 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams
d_PParams_346 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.paramsWellFormed
d_paramsWellFormed_368 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  ()
d_paramsWellFormed_368 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_376 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_376 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_DecEq'45'UpdT_1790
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovParams.ppUpd
d_ppUpd_382 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1724
d_ppUpd_382 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1776
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.Emax
d_Emax_416 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_Emax_416 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_468
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.a
d_a_418 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_a_418 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_438 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.a0
d_a0_420 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_420 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_472
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.b
d_b_422 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_b_422 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_440 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.ccMaxTermLength
d_ccMaxTermLength_424 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMaxTermLength_424 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_484
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.ccMinSize
d_ccMinSize_426 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMinSize_426 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_482
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_428 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_coinsPerUTxOByte_428 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_452
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.collateralPercentage
d_collateralPercentage_430 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_collateralPercentage_430 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_474
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.costmdlsAssoc
d_costmdlsAssoc_434 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680
d_costmdlsAssoc_434 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdlsAssoc_476
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.drepActivity
d_drepActivity_436 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_drepActivity_436 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_492
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.drepDeposit
d_drepDeposit_438 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_drepDeposit_438 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_490
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.drepThresholds
d_drepThresholds_440 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244
d_drepThresholds_440 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_480
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.govActionDeposit
d_govActionDeposit_442 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionDeposit_442 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_488
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.govActionLifetime
d_govActionLifetime_444 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionLifetime_444 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_486
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.keyDeposit
d_keyDeposit_446 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_keyDeposit_446 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_442
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.leiosCommitteeSize
d_leiosCommitteeSize_448 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosCommitteeSize_448 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosCommitteeSize_430
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.leiosDiffusionPeriod
d_leiosDiffusionPeriod_450 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosDiffusionPeriod_450 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosDiffusionPeriod_424
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.leiosHeaderPeriod
d_leiosHeaderPeriod_452 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosHeaderPeriod_452 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosHeaderPeriod_420
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.leiosMaxEBExUnits
d_leiosMaxEBExUnits_454 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leiosMaxEBExUnits_454 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBExUnits_434
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.leiosMaxEBSize
d_leiosMaxEBSize_456 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosMaxEBSize_456 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBSize_426
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.leiosMaxEBTxsSize
d_leiosMaxEBTxsSize_458 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosMaxEBTxsSize_458 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBTxsSize_428
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.leiosMaxRefScriptSizePerEB
d_leiosMaxRefScriptSizePerEB_460 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosMaxRefScriptSizePerEB_460 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxRefScriptSizePerEB_436
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.leiosQuorumStakeThreshold
d_leiosQuorumStakeThreshold_462 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_leiosQuorumStakeThreshold_462 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosQuorumStakeThreshold_432
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.leiosVotingPeriod
d_leiosVotingPeriod_464 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosVotingPeriod_464 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosVotingPeriod_422
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.maxBlockExUnits
d_maxBlockExUnits_466 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_466 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_412
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.maxBlockSize
d_maxBlockSize_468 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxBlockSize_468 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_404
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.maxCollateralInputs
d_maxCollateralInputs_470 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxCollateralInputs_470 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_416
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.maxHeaderSize
d_maxHeaderSize_472 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxHeaderSize_472 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_408
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_474 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerBlock_474 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_460
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_476 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerTx_476 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_458
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.maxTxExUnits
d_maxTxExUnits_478 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_478 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_410
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.maxTxSize
d_maxTxSize_480 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxTxSize_480 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_406
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.maxValSize
d_maxValSize_482 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxValSize_482 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_414
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_484 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_484 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_456
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.minPoolCost
d_minPoolCost_486 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minPoolCost_486 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_446
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.minUTxOValue
d_minUTxOValue_488 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minUTxOValue_488 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_466
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.monetaryExpansion
d_monetaryExpansion_490 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_490 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_448
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.nopt
d_nopt_492 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_nopt_492 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_470
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.poolDeposit
d_poolDeposit_494 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_poolDeposit_494 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_444
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.poolThresholds
d_poolThresholds_496 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288
d_poolThresholds_496 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_478
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.prices
d_prices_498 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_498 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_454
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.pv
d_pv_500 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_500 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_418
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_502 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_502 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_464
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.refScriptCostStride
d_refScriptCostStride_504 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_504 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_462
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.treasuryCut
d_treasuryCut_506 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_506 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_450
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsDiff.UpdateT
d_UpdateT_510 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1724 ->
  ()
d_UpdateT_510 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsDiff.applyUpdate
d_applyUpdate_512 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1724 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyUpdate_512 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1740
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsDiff.ppWF?
d_ppWF'63'_514 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1724 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_514 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1748
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsDiff.updateGroups
d_updateGroups_518 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1724 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_updateGroups_518 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1742
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_526 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_526 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParamsUpdate_1722
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'46'extendedlambda0_370
         (coe MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8))
      (coe d___252 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_528 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_532 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyPParamsUpdate_532 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_applyPParamsUpdate_1524
      (coe d___252 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_554 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_Emax_554 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_842
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.a
d_a_556 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_a_556 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_810 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.a0
d_a0_558 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_558 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_840
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.b
d_b_560 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_b_560 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_812 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_562 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_ccMaxTermLength_562 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_864
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_564 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_ccMinSize_564 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_862
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_566 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_coinsPerUTxOByte_566 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_824
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_568 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_collateralPercentage_568 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_846
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_570 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680
d_costmdls_570 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdls_848
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_572 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_drepActivity_572 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_860
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_574 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_drepDeposit_574 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_858
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_576 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244
d_drepThresholds_576 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_850
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_578 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_govActionDeposit_578 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_856
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_580 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_govActionLifetime_580 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_854
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_582 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_keyDeposit_582 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_814
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.leiosCommitteeSize
d_leiosCommitteeSize_584 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_leiosCommitteeSize_584 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosCommitteeSize_802
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.leiosDiffusionPeriod
d_leiosDiffusionPeriod_586 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_leiosDiffusionPeriod_586 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosDiffusionPeriod_796
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.leiosHeaderPeriod
d_leiosHeaderPeriod_588 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_leiosHeaderPeriod_588 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosHeaderPeriod_792
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.leiosMaxEBExUnits
d_leiosMaxEBExUnits_590 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leiosMaxEBExUnits_590 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBExUnits_806
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.leiosMaxEBSize
d_leiosMaxEBSize_592 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_leiosMaxEBSize_592 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBSize_798
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.leiosMaxEBTxsSize
d_leiosMaxEBTxsSize_594 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_leiosMaxEBTxsSize_594 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBTxsSize_800
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.leiosMaxRefScriptSizePerEB
d_leiosMaxRefScriptSizePerEB_596 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_leiosMaxRefScriptSizePerEB_596 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxRefScriptSizePerEB_808
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.leiosQuorumStakeThreshold
d_leiosQuorumStakeThreshold_598 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_leiosQuorumStakeThreshold_598 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosQuorumStakeThreshold_804
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.leiosVotingPeriod
d_leiosVotingPeriod_600 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_leiosVotingPeriod_600 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosVotingPeriod_794
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_602 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_602 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_788
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_604 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_maxBlockSize_604 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_776
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_606 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_maxCollateralInputs_606 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_784
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_608 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_maxHeaderSize_608 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_780
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_610 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_610 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_832
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_612 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_maxRefScriptSizePerTx_612 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_830
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_614 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_614 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_786
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_616 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_maxTxSize_616 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_778
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_618 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_maxValSize_618 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_782
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_620 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_620 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_828
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.minPoolCost
d_minPoolCost_622 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_minPoolCost_622 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_818
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_624 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_minUTxOValue_624 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_838
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_626 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_626 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_820
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_628 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_nopt_628 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_844
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_630 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_poolDeposit_630 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_816
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_632 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288
d_poolThresholds_632 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_852
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.prices
d_prices_634 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_634 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_826
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.pv
d_pv_636 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_636 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_790
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_638 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_638 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_836
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_640 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_640 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_834
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_642 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_642 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_822
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures.HsGovParams
d_HsGovParams_644 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758
d_HsGovParams_644 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_constructor_1792
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_constructor_1756
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_applyPParamsUpdate_1524
            (coe d___252 (coe v0)))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiedUpdateGroups_1454)
         (\ v1 -> coe du_ppWF_654 (coe v1)))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParamsUpdate_1722
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'46'extendedlambda0_370
            (coe MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8))
         (coe d___252 (coe v0)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ppWF
d_ppWF_654 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF_654 ~v0 v1 = du_ppWF_654 v1
du_ppWF_654 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_ppWF_654 v0
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
                             MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_776
                             (coe v0))
                          (coe
                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_778
                                (coe v0))
                             (coe
                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_780
                                   (coe v0))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_782
                                      (coe v0))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_824
                                         (coe v0))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_816
                                            (coe v0))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_846
                                               (coe v0))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_864
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_854
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_856
                                                        (coe v0))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_858
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
d_trustMe_670
  = error
      "MAlonzo Runtime Error: postulate evaluated: Ledger.Dijkstra.Foreign.ExternalStructures._._.trustMe"
-- Ledger.Dijkstra.Foreign.ExternalStructures._._.trustMe
d_trustMe_680
  = error
      "MAlonzo Runtime Error: postulate evaluated: Ledger.Dijkstra.Foreign.ExternalStructures._._.trustMe"
-- Ledger.Dijkstra.Foreign.ExternalStructures.HSLeiosCryptoStructure
d_HSLeiosCryptoStructure_690 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.T_LeiosCryptoStructure_10
d_HSLeiosCryptoStructure_690 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.C_constructor_192
      MAlonzo.Code.Data.Nat.Instances.d_ℕ'45''8804''45'isDecTotalOrder_8
      (\ v1 ->
         coe
           MAlonzo.Code.Data.Nat.ListAction.d_sum_6
           (coe
              MAlonzo.Code.Class.Functor.Core.du_fmap_22
              MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_92 () erased
              () erased
              (\ v2 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)) v1))
      (\ v1 -> v1) MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
           (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
           (coe
              MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_extIsValidPoP_18
              v0 v1 v2)
           (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_6
           (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
           (coe
              MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_extIsSigned_16
              v0 (coe MAlonzo.Code.Data.Nat.ListAction.d_sum_6 v1) v2 v3)
           (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
-- Ledger.Dijkstra.Foreign.ExternalStructures.HSTransactionStructure
d_HSTransactionStructure_748 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58
d_HSTransactionStructure_748 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_4820
      MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_isHashableSet'45'ℕ_34
      MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8
      (MAlonzo.Code.Ledger.Core.Foreign.Crypto.Structure.d_HSCryptoStructure_36
         (coe v0))
      (d_HSLeiosCryptoStructure_690 (coe v0))
      (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'46'extendedlambda0_370
         (coe MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_HSScriptStructure_420
         (coe v0))
      (d_HsGovParams_644 (coe v0))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Coin.du_Coin'45'TokenAlgebra_132)
      (\ v1 -> v1)
      (coe
         MAlonzo.Code.Interface.TypeClasses.Hashable.C_constructor_20
         (coe (\ v1 -> 0 :: Integer)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._._+ᵉ_
d__'43''7497'__754 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer
d__'43''7497'__754 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'__100
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1414
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._._+ᵉ'_
d__'43''7497'''__756 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer
d__'43''7497'''__756 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'''__102
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1414
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._._∙_
d__'8729'__758 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer
d__'8729'__758 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2734
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._._≈_
d__'8776'__760 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> ()
d__'8776'__760 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._._≤ᵗ_
d__'8804''7511'__762 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> ()
d__'8804''7511'__762 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._._≥ᵉ_
d__'8805''7497'__764 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8805''7497'__764 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_766 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_766 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.==-GovAction
d_'61''61''45'GovAction_768 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_968 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_968 ->
  Bool
d_'61''61''45'GovAction_768 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovAction_1518
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2868
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.==-GovActionData
d_'61''61''45'GovActionData_770 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_950 ->
  AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_770 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovActionData_1500
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2868
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.==-GovProposal
d_'61''61''45'GovProposal_772 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1068 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1068 ->
  Bool
d_'61''61''45'GovProposal_772 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovProposal_1552
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2868
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.==-Set
d_'61''61''45'Set_774 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_774 ~v0 = du_'61''61''45'Set_774
du_'61''61''45'Set_774 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
du_'61''61''45'Set_774 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_'61''61''45'Set_1488
      v1 v2 v3
-- Ledger.Dijkstra.Foreign.ExternalStructures._.THash
d_THash_776 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_THash_776 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.AccountBalanceIntervals
d_AccountBalanceIntervals_778 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_AccountBalanceIntervals_778 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.AccountOf
d_AccountOf_780 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasAccount_210 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194
d_AccountOf_780 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_AccountOf_218
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Acnt
d_Acnt_782 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ActiveSlotCoeff
d_ActiveSlotCoeff_786 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_786 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ActiveSlotCoeff_332
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1408
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Addr
d_Addr_788 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Addr_788 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Anchor
d_Anchor_792 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.AnchorOf
d_AnchorOf_796 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1298 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1002
d_AnchorOf_796 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_AnchorOf_1306
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.AnyLevelTx
d_AnyLevelTx_798 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_AnyLevelTx_798 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.AttrSizeOf
d_AttrSizeOf_800 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214 ->
  AgdaAny -> Integer
d_AttrSizeOf_800 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_222
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.AuxiliaryData
d_AuxiliaryData_802 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_AuxiliaryData_802 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.BalanceInterval
d_BalanceInterval_804 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.BalanceIntervalsOf
d_BalanceIntervalsOf_806 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasBalanceIntervals_4514 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_BalanceIntervalsOf_806 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_BalanceIntervalsOf_4522
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.BaseAddr
d_BaseAddr_808 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.BootstrapAddr
d_BootstrapAddr_812 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CCMaxTermLengthOf
d_CCMaxTermLengthOf_818 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasCCMaxTermLength_652 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_818 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_CCMaxTermLengthOf_660
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CollateralInputsOf
d_CollateralInputsOf_822 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCollateralInputs_4064 ->
  AgdaAny -> AgdaAny
d_CollateralInputsOf_822 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CollateralInputsOf_4074
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
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4474 ->
  AgdaAny -> Maybe Integer
d_CurrentTreasuryOf_830 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CurrentTreasuryOf_4482
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DCertsOf
d_DCertsOf_832 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4294 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1462]
d_DCertsOf_832 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DCertsOf_4302
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DReps
d_DReps_836 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_DReps_836 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DRepsOf
d_DRepsOf_838 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1278 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_838 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1286
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
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4334 ->
  AgdaAny -> [Integer]
d_DataOf_844 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DataOf_4342
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Dataʰ
d_Data'688'_846 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_846 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Datum
d_Datum_848 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Datum_848 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Dec-EvalNativeScript
d_Dec'45'EvalNativeScript_850 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.T_NativeScript_326 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'EvalNativeScript_850 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1414
                    (coe v1) in
          coe
            (let v4
                   = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_324
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1408
                          (coe v1)) in
             coe
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.du_Dec'45'EvalNativeScript_396
                  (coe v2) (coe v3) (coe v4)))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Dec-InBalanceInterval
d_Dec'45'InBalanceInterval_852 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Account.T_BalanceInterval_940 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'InBalanceInterval_852 ~v0
  = du_Dec'45'InBalanceInterval_852
du_Dec'45'InBalanceInterval_852 ::
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Account.T_BalanceInterval_940 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'InBalanceInterval_852
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Account.du_Dec'45'InBalanceInterval_974
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Dec-isScript
d_Dec'45'isScript_854 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_854 ~v0 = du_Dec'45'isScript_854
du_Dec'45'isScript_854 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_854
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isScript_308
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Dec-isSigned
d_Dec'45'isSigned_856 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_856 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v2))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Dec-isVKey
d_Dec'45'isVKey_858 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_858 ~v0 = du_Dec'45'isVKey_858
du_Dec'45'isVKey_858 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_858
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_294
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Dec-validP1Script
d_Dec'45'validP1Script_860 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_336 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_860 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_346
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_862 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_364 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_862 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validPlutusScript_518
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Dec-≤ᵗ
d_Dec'45''8804''7511'_864 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_864 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2734
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEQ-Prices
d_DecEQ'45'Prices_866 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_866 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEQ'45'Prices_480
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-Anchor
d_DecEq'45'Anchor_868 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_868 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'Anchor_1482
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2868
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-BalanceInterval
d_DecEq'45'BalanceInterval_870 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BalanceInterval_870 ~v0
  = du_DecEq'45'BalanceInterval_870
du_DecEq'45'BalanceInterval_870 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BalanceInterval_870
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Account.du_DecEq'45'BalanceInterval_1098
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_872 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_872 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BaseAddr_346
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_324
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1408
               (coe v1)))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                  (coe v1))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_874 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_874 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BootstrapAddr_348
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_324
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1408
               (coe v1)))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                  (coe v1))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-CostModel
d_DecEq'45'CostModel_876 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_876 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'CostModel_464
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-Credential
d_DecEq'45'Credential_878 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_878 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                  (coe v1))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_880 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_880 ~v0 = du_DecEq'45'DrepThresholds_880
du_DecEq'45'DrepThresholds_880 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_880
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'DrepThresholds_668
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-Epoch
d_DecEq'45'Epoch_882 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_882 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1414
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-ExUnits
d_DecEq'45'ExUnits_884 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_884 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_478
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-GovActionType
d_DecEq'45'GovActionType_886 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_886 ~v0 = du_DecEq'45'GovActionType_886
du_DecEq'45'GovActionType_886 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_886
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'GovActionType_1372
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-GovRole
d_DecEq'45'GovRole_888 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_888 ~v0 = du_DecEq'45'GovRole_888
du_DecEq'45'GovRole_888 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_888
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'GovRole_1374
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-GovVoter
d_DecEq'45'GovVoter_890 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_890 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'GovVoter_1380
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2868
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-Ix
d_DecEq'45'Ix_892 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_892 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1416
      (coe d_HSTransactionStructure_748 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-LangDepView
d_DecEq'45'LangDepView_894 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_894 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'LangDepView_466
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-Language
d_DecEq'45'Language_896 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_896 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_470
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_898 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_898 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_DecEq'45'LanguageCostModels_688
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-NativeScript
d_DecEq'45'NativeScript_900 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NativeScript_900 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1414
                    (coe v1) in
          coe
            (let v4
                   = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_324
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1408
                          (coe v1)) in
             coe
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.du_DecEq'45'NativeScript_342
                  (coe v2) (coe v3) (coe v4)))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-NeedsHash
d_DecEq'45'NeedsHash_902 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_950 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_902 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'NeedsHash_1550
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2868
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-Netw
d_DecEq'45'Netw_904 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_904 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_324
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1408
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-P1Script
d_DecEq'45'P1Script_906 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_906 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'P1Script_350
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_908 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_908 ~v0 = du_DecEq'45'PParamGroup_908
du_DecEq'45'PParamGroup_908 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_908
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParamGroup_674
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-PParams
d_DecEq'45'PParams_910 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_910 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParams_672
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1414
            (coe v1))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_912 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_912 ~v0 = du_DecEq'45'PoolThresholds_912
du_DecEq'45'PoolThresholds_912 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_912
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PoolThresholds_670
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-RewardAddress
d_DecEq'45'RewardAddress_914 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RewardAddress_914 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_324
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1408
               (coe v1)))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                  (coe v1))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_916 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_916 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-Ser
d_DecEq'45'Ser_918 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_918 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v2))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-Sig
d_DecEq'45'Sig_920 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_920 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v2))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-Slot
d_DecEq'45'Slot_922 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_922 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Slot_88
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1414
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-T
d_DecEq'45'T_924 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_924 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1406
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-T
d_DecEq'45'T_926 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_926 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
               (coe v2))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-THash
d_DecEq'45'THash_928 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_928 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1406
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-THash
d_DecEq'45'THash_930 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_930 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v2))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-THash
d_DecEq'45'THash_932 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_932 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
               (coe v2))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-TxId
d_DecEq'45'TxId_934 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_934 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1418
      (coe d_HSTransactionStructure_748 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-UpdT
d_DecEq'45'UpdT_936 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_936 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_DecEq'45'UpdT_1790
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2732
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-VDeleg
d_DecEq'45'VDeleg_938 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_938 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'VDeleg_1378
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2868
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-VRF
d_DecEq'45'VRF_940 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VRF_940 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'VRF_240
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-Value
d_DecEq'45'Value_942 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_942 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2734
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-Vote
d_DecEq'45'Vote_944 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_944 ~v0 = du_DecEq'45'Vote_944
du_DecEq'45'Vote_944 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_944
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'Vote_1376
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecPo-Slot
d_DecPo'45'Slot_946 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_262
d_DecPo'45'Slot_946 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1414
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DepositOf
d_DepositOf_948 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1318 ->
  AgdaAny -> Integer
d_DepositOf_948 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DepositOf_1326
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DirectDeposits
d_DirectDeposits_950 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_DirectDeposits_950 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DirectDepositsOf
d_DirectDepositsOf_952 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDirectDeposits_4494 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DirectDepositsOf_952 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DirectDepositsOf_4502
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DrepThresholds
d_DrepThresholds_954 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Epoch
d_Epoch_960 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Epoch_960 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.EvalNativeScript
d_EvalNativeScript_962 a0 a1 a2 a3 a4 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_964 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_964 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_460
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ExUnits
d_ExUnits_966 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ExUnits_966 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.FeesOf?
d_FeesOf'63'_970 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasFees'63'_4274 ->
  AgdaAny -> Maybe Integer
d_FeesOf'63'_970 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_FeesOf'63'_4282
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovAction
d_GovAction_972 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovActionData
d_GovActionData_976 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_950 ->
  ()
d_GovActionData_976 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovActionID
d_GovActionID_978 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_GovActionID_978 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovActionOf
d_GovActionOf_980 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1180 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_968
d_GovActionOf_980 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionOf_1186
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovActionState
d_GovActionState_982 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovActionType
d_GovActionType_986 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovActionTypeOf
d_GovActionTypeOf_988 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1144 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_950
d_GovActionTypeOf_988 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionTypeOf_1150
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovParams
d_GovParams_990 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovProposal
d_GovProposal_994 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovProposalsOf
d_GovProposalsOf_998 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGovProposals_4314 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1068]
d_GovProposalsOf_998 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_GovProposalsOf_4322
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovRole
d_GovRole_1000 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovRoleCredential
d_GovRoleCredential_1002 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_940 ->
  ()
d_GovRoleCredential_1002 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovVote
d_GovVote_1004 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovVoter
d_GovVoter_1008 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovVoterOf
d_GovVoterOf_1012 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1198 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_990
d_GovVoterOf_1012 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVoterOf_1206
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovVotes
d_GovVotes_1014 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovVotesOf
d_GovVotesOf_1018 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1218 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1034
d_GovVotesOf_1018 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVotesOf_1226
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GuardsOf
d_GuardsOf_1022 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4394 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_GuardsOf_1022 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_GuardsOf_4402
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasAccount
d_HasAccount_1024 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasAnchor
d_HasAnchor_1028 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasAnchor-GovProposal
d_HasAnchor'45'GovProposal_1032 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1298
d_HasAnchor'45'GovProposal_1032 ~v0
  = du_HasAnchor'45'GovProposal_1032
du_HasAnchor'45'GovProposal_1032 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1298
du_HasAnchor'45'GovProposal_1032
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasAnchor'45'GovProposal_1352
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasAttrSize
d_HasAttrSize_1034 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasAttrSize-BootstrapAddr
d_HasAttrSize'45'BootstrapAddr_1038 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214
d_HasAttrSize'45'BootstrapAddr_1038 ~v0
  = du_HasAttrSize'45'BootstrapAddr_1038
du_HasAttrSize'45'BootstrapAddr_1038 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214
du_HasAttrSize'45'BootstrapAddr_1038
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasAttrSize'45'BootstrapAddr_238
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasBalanceIntervals
d_HasBalanceIntervals_1040 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasBalanceIntervals-Tx
d_HasBalanceIntervals'45'Tx_1044 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasBalanceIntervals_4514
d_HasBalanceIntervals'45'Tx_1044 ~v0
  = du_HasBalanceIntervals'45'Tx_1044
du_HasBalanceIntervals'45'Tx_1044 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasBalanceIntervals_4514
du_HasBalanceIntervals'45'Tx_1044 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasBalanceIntervals'45'Tx_4606
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasBalanceIntervals-TxBody
d_HasBalanceIntervals'45'TxBody_1046 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasBalanceIntervals_4514
d_HasBalanceIntervals'45'TxBody_1046 ~v0
  = du_HasBalanceIntervals'45'TxBody_1046
du_HasBalanceIntervals'45'TxBody_1046 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasBalanceIntervals_4514
du_HasBalanceIntervals'45'TxBody_1046 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasBalanceIntervals'45'TxBody_4604
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCCMaxTermLength
d_HasCCMaxTermLength_1048 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCast-Acnt
d_HasCast'45'Acnt_1052 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_1052 ~v0 = du_HasCast'45'Acnt_1052
du_HasCast'45'Acnt_1052 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Acnt_1052
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasCast'45'Acnt_230
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_1054 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_1054 ~v0
  = du_HasCast'45'GovAction'45'Sigma_1054
du_HasCast'45'GovAction'45'Sigma_1054 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_1054
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_1336
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCast-GovVote
d_HasCast'45'GovVote_1056 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_1056 ~v0 = du_HasCast'45'GovVote_1056
du_HasCast'45'GovVote_1056 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_1056
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovVote_1478
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCast-HashProtected
d_HasCast'45'HashProtected_1058 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_1058 ~v0
  = du_HasCast'45'HashProtected_1058
du_HasCast'45'HashProtected_1058 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_1058 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected_1342
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_1060 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_1060 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_1060
du_HasCast'45'HashProtected'45'MaybeScriptHash_1060 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_1060
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1344
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCoin-TxOut
d_HasCoin'45'TxOut_1062 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_1062 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_HasCoin'45'TxOut_4658
      (coe d_HSTransactionStructure_748 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCollateralInputs
d_HasCollateralInputs_1064 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCollateralInputs-TopLevelTx
d_HasCollateralInputs'45'TopLevelTx_1068 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCollateralInputs_4064
d_HasCollateralInputs'45'TopLevelTx_1068 ~v0
  = du_HasCollateralInputs'45'TopLevelTx_1068
du_HasCollateralInputs'45'TopLevelTx_1068 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCollateralInputs_4064
du_HasCollateralInputs'45'TopLevelTx_1068
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasCollateralInputs'45'TopLevelTx_4582
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCredential
d_HasCredential_1070 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCredential-RewardAddress
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
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCurrentTreasury
d_HasCurrentTreasury_1076 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCurrentTreasury-Tx
d_HasCurrentTreasury'45'Tx_1080 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4474
d_HasCurrentTreasury'45'Tx_1080 ~v0
  = du_HasCurrentTreasury'45'Tx_1080
du_HasCurrentTreasury'45'Tx_1080 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4474
du_HasCurrentTreasury'45'Tx_1080 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasCurrentTreasury'45'Tx_4682
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCurrentTreasury-TxBody
d_HasCurrentTreasury'45'TxBody_1082 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4474
d_HasCurrentTreasury'45'TxBody_1082 ~v0
  = du_HasCurrentTreasury'45'TxBody_1082
du_HasCurrentTreasury'45'TxBody_1082 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4474
du_HasCurrentTreasury'45'TxBody_1082 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasCurrentTreasury'45'TxBody_4680
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDCerts
d_HasDCerts_1084 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDCerts-Tx
d_HasDCerts'45'Tx_1088 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4294
d_HasDCerts'45'Tx_1088 ~v0 = du_HasDCerts'45'Tx_1088
du_HasDCerts'45'Tx_1088 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4294
du_HasDCerts'45'Tx_1088 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDCerts'45'Tx_4594
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDCerts-TxBody
d_HasDCerts'45'TxBody_1090 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4294
d_HasDCerts'45'TxBody_1090 ~v0 = du_HasDCerts'45'TxBody_1090
du_HasDCerts'45'TxBody_1090 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4294
du_HasDCerts'45'TxBody_1090 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDCerts'45'TxBody_4592
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDReps
d_HasDReps_1092 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasData
d_HasData_1096 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasData-Tx
d_HasData'45'Tx_1100 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4334
d_HasData'45'Tx_1100 ~v0 = du_HasData'45'Tx_1100
du_HasData'45'Tx_1100 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4334
du_HasData'45'Tx_1100 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasData'45'Tx_4662
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasData-TxWitnesses
d_HasData'45'TxWitnesses_1102 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4334
d_HasData'45'TxWitnesses_1102 ~v0 = du_HasData'45'TxWitnesses_1102
du_HasData'45'TxWitnesses_1102 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4334
du_HasData'45'TxWitnesses_1102
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasData'45'TxWitnesses_4660
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDeposit
d_HasDeposit_1104 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDeposit-GovProposal
d_HasDeposit'45'GovProposal_1108 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1318
d_HasDeposit'45'GovProposal_1108 ~v0
  = du_HasDeposit'45'GovProposal_1108
du_HasDeposit'45'GovProposal_1108 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1318
du_HasDeposit'45'GovProposal_1108
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasDeposit'45'GovProposal_1354
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDirectDeposits
d_HasDirectDeposits_1110 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDirectDeposits-Tx
d_HasDirectDeposits'45'Tx_1114 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDirectDeposits_4494
d_HasDirectDeposits'45'Tx_1114 ~v0
  = du_HasDirectDeposits'45'Tx_1114
du_HasDirectDeposits'45'Tx_1114 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDirectDeposits_4494
du_HasDirectDeposits'45'Tx_1114 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDirectDeposits'45'Tx_4602
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDirectDeposits-TxBody
d_HasDirectDeposits'45'TxBody_1116 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDirectDeposits_4494
d_HasDirectDeposits'45'TxBody_1116 ~v0
  = du_HasDirectDeposits'45'TxBody_1116
du_HasDirectDeposits'45'TxBody_1116 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDirectDeposits_4494
du_HasDirectDeposits'45'TxBody_1116 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDirectDeposits'45'TxBody_4600
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDonations-Tx
d_HasDonations'45'Tx_1118 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_22
d_HasDonations'45'Tx_1118 ~v0 = du_HasDonations'45'Tx_1118
du_HasDonations'45'Tx_1118 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_22
du_HasDonations'45'Tx_1118 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDonations'45'Tx_4656
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDonations-TxBody
d_HasDonations'45'TxBody_1120 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_22
d_HasDonations'45'TxBody_1120 ~v0 = du_HasDonations'45'TxBody_1120
du_HasDonations'45'TxBody_1120 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_22
du_HasDonations'45'TxBody_1120 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDonations'45'TxBody_4654
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasFees?
d_HasFees'63'_1122 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasFees?-Tx
d_HasFees'63''45'Tx_1126 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasFees'63'_4274
d_HasFees'63''45'Tx_1126 ~v0 = du_HasFees'63''45'Tx_1126
du_HasFees'63''45'Tx_1126 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasFees'63'_4274
du_HasFees'63''45'Tx_1126
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasFees'63''45'Tx_4648
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasFees?-TxBody
d_HasFees'63''45'TxBody_1128 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasFees'63'_4274
d_HasFees'63''45'TxBody_1128 ~v0 = du_HasFees'63''45'TxBody_1128
du_HasFees'63''45'TxBody_1128 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasFees'63'_4274
du_HasFees'63''45'TxBody_1128
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasFees'63''45'TxBody_4642
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGovAction
d_HasGovAction_1130 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_1134 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1180
d_HasGovAction'45'GovActionState_1134 ~v0
  = du_HasGovAction'45'GovActionState_1134
du_HasGovAction'45'GovActionState_1134 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1180
du_HasGovAction'45'GovActionState_1134
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1358
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_1136 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1180
d_HasGovAction'45'GovProposal_1136 ~v0
  = du_HasGovAction'45'GovProposal_1136
du_HasGovAction'45'GovProposal_1136 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1180
du_HasGovAction'45'GovProposal_1136
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1356
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGovActionType
d_HasGovActionType_1138 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_1142 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1144
d_HasGovActionType'45'GovAction_1142 ~v0
  = du_HasGovActionType'45'GovAction_1142
du_HasGovActionType'45'GovAction_1142 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1144
du_HasGovActionType'45'GovAction_1142
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_1334
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_1144 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1144
d_HasGovActionType'45'GovActionState_1144 ~v0
  = du_HasGovActionType'45'GovActionState_1144
du_HasGovActionType'45'GovActionState_1144 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1144
du_HasGovActionType'45'GovActionState_1144
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1362
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_1146 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1144
d_HasGovActionType'45'GovProposal_1146 ~v0
  = du_HasGovActionType'45'GovProposal_1146
du_HasGovActionType'45'GovProposal_1146 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1144
du_HasGovActionType'45'GovProposal_1146
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1360
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGovProposals
d_HasGovProposals_1148 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGovVoter
d_HasGovVoter_1152 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_1156 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1198
d_HasGovVoter'45'GovVote_1156 ~v0 = du_HasGovVoter'45'GovVote_1156
du_HasGovVoter'45'GovVote_1156 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1198
du_HasGovVoter'45'GovVote_1156
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1346
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGovVotes
d_HasGovVotes_1158 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGovVotes-GovActionState
d_HasGovVotes'45'GovActionState_1162 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1218
d_HasGovVotes'45'GovActionState_1162 ~v0
  = du_HasGovVotes'45'GovActionState_1162
du_HasGovVotes'45'GovActionState_1162 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1218
du_HasGovVotes'45'GovActionState_1162
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovVotes'45'GovActionState_1364
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGuards
d_HasGuards_1164 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGuards-Tx
d_HasGuards'45'Tx_1168 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4394
d_HasGuards'45'Tx_1168 ~v0 = du_HasGuards'45'Tx_1168
du_HasGuards'45'Tx_1168 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4394
du_HasGuards'45'Tx_1168 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasGuards'45'Tx_4666
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGuards-TxBody
d_HasGuards'45'TxBody_1170 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4394
d_HasGuards'45'TxBody_1170 ~v0 = du_HasGuards'45'TxBody_1170
du_HasGuards'45'TxBody_1170 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4394
du_HasGuards'45'TxBody_1170 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasGuards'45'TxBody_4664
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasIsValidFlag
d_HasIsValidFlag_1172 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasIsValidFlag-Tx
d_HasIsValidFlag'45'Tx_1176 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasIsValidFlag_4554
d_HasIsValidFlag'45'Tx_1176 ~v0 = du_HasIsValidFlag'45'Tx_1176
du_HasIsValidFlag'45'Tx_1176 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasIsValidFlag_4554
du_HasIsValidFlag'45'Tx_1176
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasIsValidFlag'45'Tx_4576
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasListOfGovProposals
d_HasListOfGovProposals_1178 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasListOfGovProposals-Tx
d_HasListOfGovProposals'45'Tx_1182 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovProposals_4354
d_HasListOfGovProposals'45'Tx_1182 ~v0
  = du_HasListOfGovProposals'45'Tx_1182
du_HasListOfGovProposals'45'Tx_1182 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovProposals_4354
du_HasListOfGovProposals'45'Tx_1182 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasListOfGovProposals'45'Tx_4634
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasListOfGovProposals-TxBody
d_HasListOfGovProposals'45'TxBody_1184 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovProposals_4354
d_HasListOfGovProposals'45'TxBody_1184 ~v0
  = du_HasListOfGovProposals'45'TxBody_1184
du_HasListOfGovProposals'45'TxBody_1184 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovProposals_4354
du_HasListOfGovProposals'45'TxBody_1184 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasListOfGovProposals'45'TxBody_4632
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasListOfGovVotes
d_HasListOfGovVotes_1186 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasListOfGovVotes-Tx
d_HasListOfGovVotes'45'Tx_1190 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovVotes_4374
d_HasListOfGovVotes'45'Tx_1190 ~v0
  = du_HasListOfGovVotes'45'Tx_1190
du_HasListOfGovVotes'45'Tx_1190 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovVotes_4374
du_HasListOfGovVotes'45'Tx_1190 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasListOfGovVotes'45'Tx_4630
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasListOfGovVotes-TxBody
d_HasListOfGovVotes'45'TxBody_1192 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovVotes_4374
d_HasListOfGovVotes'45'TxBody_1192 ~v0
  = du_HasListOfGovVotes'45'TxBody_1192
du_HasListOfGovVotes'45'TxBody_1192 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovVotes_4374
du_HasListOfGovVotes'45'TxBody_1192 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasListOfGovVotes'45'TxBody_4628
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasMaybeNetworkId
d_HasMaybeNetworkId_1194 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasMaybeNetworkId-Tx
d_HasMaybeNetworkId'45'Tx_1198 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174
d_HasMaybeNetworkId'45'Tx_1198 ~v0
  = du_HasMaybeNetworkId'45'Tx_1198
du_HasMaybeNetworkId'45'Tx_1198 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174
du_HasMaybeNetworkId'45'Tx_1198 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMaybeNetworkId'45'Tx_4638
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasMaybeNetworkId-TxBody
d_HasMaybeNetworkId'45'TxBody_1200 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174
d_HasMaybeNetworkId'45'TxBody_1200 ~v0
  = du_HasMaybeNetworkId'45'TxBody_1200
du_HasMaybeNetworkId'45'TxBody_1200 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174
du_HasMaybeNetworkId'45'TxBody_1200 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMaybeNetworkId'45'TxBody_4636
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasMintedValue
d_HasMintedValue_1202 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasMintedValue-Tx
d_HasMintedValue'45'Tx_1206 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4254
d_HasMintedValue'45'Tx_1206 ~v0 = du_HasMintedValue'45'Tx_1206
du_HasMintedValue'45'Tx_1206 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4254
du_HasMintedValue'45'Tx_1206 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMintedValue'45'Tx_4626
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasMintedValue-TxBody
d_HasMintedValue'45'TxBody_1208 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4254
d_HasMintedValue'45'TxBody_1208 ~v0
  = du_HasMintedValue'45'TxBody_1208
du_HasMintedValue'45'TxBody_1208 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4254
du_HasMintedValue'45'TxBody_1208 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMintedValue'45'TxBody_4624
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasNetworkId
d_HasNetworkId_1210 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_1214 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'BaseAddr_1214 ~v0
  = du_HasNetworkId'45'BaseAddr_1214
du_HasNetworkId'45'BaseAddr_1214 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'BaseAddr_1214
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BaseAddr_230
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_1216 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'BootstrapAddr_1216 ~v0
  = du_HasNetworkId'45'BootstrapAddr_1216
du_HasNetworkId'45'BootstrapAddr_1216 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'BootstrapAddr_1216
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BootstrapAddr_232
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasNetworkId-RewardAddress
d_HasNetworkId'45'RewardAddress_1218 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'RewardAddress_1218 ~v0
  = du_HasNetworkId'45'RewardAddress_1218
du_HasNetworkId'45'RewardAddress_1218 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'RewardAddress_1218
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RewardAddress_234
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasPParams
d_HasPParams_1220 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasPolicy
d_HasPolicy_1224 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_1228 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1258
d_HasPolicy'45'GovProposal_1228 ~v0
  = du_HasPolicy'45'GovProposal_1228
du_HasPolicy'45'GovProposal_1228 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1258
du_HasPolicy'45'GovProposal_1228
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1350
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRedeemers
d_HasRedeemers_1230 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRedeemers-Tx
d_HasRedeemers'45'Tx_1234 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_4042
d_HasRedeemers'45'Tx_1234 ~v0 = du_HasRedeemers'45'Tx_1234
du_HasRedeemers'45'Tx_1234 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_4042
du_HasRedeemers'45'Tx_1234 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasRedeemers'45'Tx_4580
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRedeemers-TxWitnesses
d_HasRedeemers'45'TxWitnesses_1236 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_4042
d_HasRedeemers'45'TxWitnesses_1236 ~v0
  = du_HasRedeemers'45'TxWitnesses_1236
du_HasRedeemers'45'TxWitnesses_1236 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_4042
du_HasRedeemers'45'TxWitnesses_1236
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasRedeemers'45'TxWitnesses_4578
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasReferenceInputs
d_HasReferenceInputs_1238 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasReferenceInputs-Tx
d_HasReferenceInputs'45'Tx_1242 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4234
d_HasReferenceInputs'45'Tx_1242 ~v0
  = du_HasReferenceInputs'45'Tx_1242
du_HasReferenceInputs'45'Tx_1242 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4234
du_HasReferenceInputs'45'Tx_1242 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasReferenceInputs'45'Tx_4622
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasReferenceInputs-TxBody
d_HasReferenceInputs'45'TxBody_1244 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4234
d_HasReferenceInputs'45'TxBody_1244 ~v0
  = du_HasReferenceInputs'45'TxBody_1244
du_HasReferenceInputs'45'TxBody_1244 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4234
du_HasReferenceInputs'45'TxBody_1244 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasReferenceInputs'45'TxBody_4620
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRequiredSingerHashes
d_HasRequiredSingerHashes_1246 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRequiredSingerHashes-Tx
d_HasRequiredSingerHashes'45'Tx_1250 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRequiredSingerHashes_4454
d_HasRequiredSingerHashes'45'Tx_1250 ~v0
  = du_HasRequiredSingerHashes'45'Tx_1250
du_HasRequiredSingerHashes'45'Tx_1250 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRequiredSingerHashes_4454
du_HasRequiredSingerHashes'45'Tx_1250 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasRequiredSingerHashes'45'Tx_4678
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRequiredSingerHashes-TxBody
d_HasRequiredSingerHashes'45'TxBody_1252 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRequiredSingerHashes_4454
d_HasRequiredSingerHashes'45'TxBody_1252 ~v0
  = du_HasRequiredSingerHashes'45'TxBody_1252
du_HasRequiredSingerHashes'45'TxBody_1252 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRequiredSingerHashes_4454
du_HasRequiredSingerHashes'45'TxBody_1252 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasRequiredSingerHashes'45'TxBody_4676
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasReserves-Acnt
d_HasReserves'45'Acnt_1254 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_62
d_HasReserves'45'Acnt_1254 ~v0 = du_HasReserves'45'Acnt_1254
du_HasReserves'45'Acnt_1254 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_62
du_HasReserves'45'Acnt_1254
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasReserves'45'Acnt_228
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRewardAddress
d_HasRewardAddress_1256 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRewardAddress-GovActionState
d_HasRewardAddress'45'GovActionState_1260 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
d_HasRewardAddress'45'GovActionState_1260 ~v0
  = du_HasRewardAddress'45'GovActionState_1260
du_HasRewardAddress'45'GovActionState_1260 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
du_HasRewardAddress'45'GovActionState_1260
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasRewardAddress'45'GovActionState_1366
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRewardAddress-GovProposal
d_HasRewardAddress'45'GovProposal_1262 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
d_HasRewardAddress'45'GovProposal_1262 ~v0
  = du_HasRewardAddress'45'GovProposal_1262
du_HasRewardAddress'45'GovProposal_1262 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
du_HasRewardAddress'45'GovProposal_1262
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasRewardAddress'45'GovProposal_1368
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasScripts
d_HasScripts_1264 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasScripts-Tx
d_HasScripts'45'Tx_1268 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasScripts_4414
d_HasScripts'45'Tx_1268 ~v0 = du_HasScripts'45'Tx_1268
du_HasScripts'45'Tx_1268 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasScripts_4414
du_HasScripts'45'Tx_1268 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasScripts'45'Tx_4670
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasScripts-TxWitnesses
d_HasScripts'45'TxWitnesses_1270 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasScripts_4414
d_HasScripts'45'TxWitnesses_1270 ~v0
  = du_HasScripts'45'TxWitnesses_1270
du_HasScripts'45'TxWitnesses_1270 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasScripts_4414
du_HasScripts'45'TxWitnesses_1270
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasScripts'45'TxWitnesses_4668
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasSize
d_HasSize_1272 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasSize-Tx
d_HasSize'45'Tx_1276 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_4154
d_HasSize'45'Tx_1276 ~v0 = du_HasSize'45'Tx_1276
du_HasSize'45'Tx_1276 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_4154
du_HasSize'45'Tx_1276 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSize'45'Tx_4572
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasSpendInputs
d_HasSpendInputs_1278 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasSpendInputs-Tx
d_HasSpendInputs'45'Tx_1282 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4214
d_HasSpendInputs'45'Tx_1282 ~v0 = du_HasSpendInputs'45'Tx_1282
du_HasSpendInputs'45'Tx_1282 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4214
du_HasSpendInputs'45'Tx_1282 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4618
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasSpendInputs-TxBody
d_HasSpendInputs'45'TxBody_1284 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4214
d_HasSpendInputs'45'TxBody_1284 ~v0
  = du_HasSpendInputs'45'TxBody_1284
du_HasSpendInputs'45'TxBody_1284 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4214
du_HasSpendInputs'45'TxBody_1284 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'TxBody_4616
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasStartingBalanceIntervals
d_HasStartingBalanceIntervals_1286 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasStartingBalanceIntervals-Tx
d_HasStartingBalanceIntervals'45'Tx_1290 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasStartingBalanceIntervals_4534
d_HasStartingBalanceIntervals'45'Tx_1290 ~v0
  = du_HasStartingBalanceIntervals'45'Tx_1290
du_HasStartingBalanceIntervals'45'Tx_1290 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasStartingBalanceIntervals_4534
du_HasStartingBalanceIntervals'45'Tx_1290
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasStartingBalanceIntervals'45'Tx_4610
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasStartingBalanceIntervals-TxBody
d_HasStartingBalanceIntervals'45'TxBody_1292 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasStartingBalanceIntervals_4534
d_HasStartingBalanceIntervals'45'TxBody_1292 ~v0
  = du_HasStartingBalanceIntervals'45'TxBody_1292
du_HasStartingBalanceIntervals'45'TxBody_1292 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasStartingBalanceIntervals_4534
du_HasStartingBalanceIntervals'45'TxBody_1292
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasStartingBalanceIntervals'45'TxBody_4608
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasSubTransactions
d_HasSubTransactions_1294 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasSubTransactions-TopLevelTx
d_HasSubTransactions'45'TopLevelTx_1298 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_4112
d_HasSubTransactions'45'TopLevelTx_1298 ~v0
  = du_HasSubTransactions'45'TopLevelTx_1298
du_HasSubTransactions'45'TopLevelTx_1298 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_4112
du_HasSubTransactions'45'TopLevelTx_1298
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSubTransactions'45'TopLevelTx_4586
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTopLevelGuards
d_HasTopLevelGuards_1300 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTopLevelGuards-Tx
d_HasTopLevelGuards'45'Tx_1304 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTopLevelGuards_4174
d_HasTopLevelGuards'45'Tx_1304 ~v0
  = du_HasTopLevelGuards'45'Tx_1304
du_HasTopLevelGuards'45'Tx_1304 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTopLevelGuards_4174
du_HasTopLevelGuards'45'Tx_1304 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTopLevelGuards'45'Tx_4590
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTopLevelGuards-TxBody
d_HasTopLevelGuards'45'TxBody_1306 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTopLevelGuards_4174
d_HasTopLevelGuards'45'TxBody_1306 ~v0
  = du_HasTopLevelGuards'45'TxBody_1306
du_HasTopLevelGuards'45'TxBody_1306 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTopLevelGuards_4174
du_HasTopLevelGuards'45'TxBody_1306 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTopLevelGuards'45'TxBody_4588
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTreasury-Acnt
d_HasTreasury'45'Acnt_1308 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_82
d_HasTreasury'45'Acnt_1308 ~v0 = du_HasTreasury'45'Acnt_1308
du_HasTreasury'45'Acnt_1308 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_82
du_HasTreasury'45'Acnt_1308
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasTreasury'45'Acnt_226
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTxBody
d_HasTxBody_1310 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTxBody-Tx
d_HasTxBody'45'Tx_1314 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxBody_4000
d_HasTxBody'45'Tx_1314 ~v0 = du_HasTxBody'45'Tx_1314
du_HasTxBody'45'Tx_1314 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxBody_4000
du_HasTxBody'45'Tx_1314 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxBody'45'Tx_4570
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTxFees
d_HasTxFees_1316 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTxFees-TopLevelTx
d_HasTxFees'45'TopLevelTx_1320 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxFees_4088
d_HasTxFees'45'TopLevelTx_1320 ~v0
  = du_HasTxFees'45'TopLevelTx_1320
du_HasTxFees'45'TopLevelTx_1320 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxFees_4088
du_HasTxFees'45'TopLevelTx_1320
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxFees'45'TopLevelTx_4584
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTxId
d_HasTxId_1322 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTxId-Tx
d_HasTxId'45'Tx_1326 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4134
d_HasTxId'45'Tx_1326 ~v0 = du_HasTxId'45'Tx_1326
du_HasTxId'45'Tx_1326 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4134
du_HasTxId'45'Tx_1326 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxId'45'Tx_4652
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTxId-TxBody
d_HasTxId'45'TxBody_1328 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4134
d_HasTxId'45'TxBody_1328 ~v0 = du_HasTxId'45'TxBody_1328
du_HasTxId'45'TxBody_1328 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4134
du_HasTxId'45'TxBody_1328 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxId'45'TxBody_4650
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTxOuts
d_HasTxOuts_1330 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTxOuts-Tx
d_HasTxOuts'45'Tx_1334 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4434
d_HasTxOuts'45'Tx_1334 ~v0 = du_HasTxOuts'45'Tx_1334
du_HasTxOuts'45'Tx_1334 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4434
du_HasTxOuts'45'Tx_1334 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4674
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTxOuts-TxBody
d_HasTxOuts'45'TxBody_1336 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4434
d_HasTxOuts'45'TxBody_1336 ~v0 = du_HasTxOuts'45'TxBody_1336
du_HasTxOuts'45'TxBody_1336 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4434
du_HasTxOuts'45'TxBody_1336 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'TxBody_4672
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTxWitnesses
d_HasTxWitnesses_1338 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTxWitnesses-Tx
d_HasTxWitnesses'45'Tx_1342 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxWitnesses_4022
d_HasTxWitnesses'45'Tx_1342 ~v0 = du_HasTxWitnesses'45'Tx_1342
du_HasTxWitnesses'45'Tx_1342 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxWitnesses_4022
du_HasTxWitnesses'45'Tx_1342 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxWitnesses'45'Tx_4574
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasUTxO
d_HasUTxO_1344 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasValidInterval
d_HasValidInterval_1348 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasValidInterval-Tx
d_HasValidInterval'45'Tx_1352 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_4194
d_HasValidInterval'45'Tx_1352 ~v0 = du_HasValidInterval'45'Tx_1352
du_HasValidInterval'45'Tx_1352 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_4194
du_HasValidInterval'45'Tx_1352 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasValidInterval'45'Tx_4614
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasValidInterval-TxBody
d_HasValidInterval'45'TxBody_1354 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_4194
d_HasValidInterval'45'TxBody_1354 ~v0
  = du_HasValidInterval'45'TxBody_1354
du_HasValidInterval'45'TxBody_1354 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_4194
du_HasValidInterval'45'TxBody_1354 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasValidInterval'45'TxBody_4612
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasVote
d_HasVote_1356 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasVote-GovVote
d_HasVote'45'GovVote_1360 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1238
d_HasVote'45'GovVote_1360 ~v0 = du_HasVote'45'GovVote_1360
du_HasVote'45'GovVote_1360 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1238
du_HasVote'45'GovVote_1360
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasVote'45'GovVote_1348
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasVoteDelegs
d_HasVoteDelegs_1362 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasWithdrawals
d_HasWithdrawals_1366 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasWithdrawals-Tx
d_HasWithdrawals'45'Tx_1370 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
d_HasWithdrawals'45'Tx_1370 ~v0 = du_HasWithdrawals'45'Tx_1370
du_HasWithdrawals'45'Tx_1370 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
du_HasWithdrawals'45'Tx_1370 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasWithdrawals'45'Tx_4598
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasWithdrawals-TxBody
d_HasWithdrawals'45'TxBody_1372 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
d_HasWithdrawals'45'TxBody_1372 ~v0
  = du_HasWithdrawals'45'TxBody_1372
du_HasWithdrawals'45'TxBody_1372 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
du_HasWithdrawals'45'TxBody_1372 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasWithdrawals'45'TxBody_4596
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HashProtected
d_HashProtected_1374 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () -> ()
d_HashProtected_1374 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Hashable-P1Script
d_Hashable'45'P1Script_1376 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_1376 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_348
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1378 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_1378 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_462
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Hashable-Script
d_Hashable'45'Script_1380 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_1380 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Hashable-ScriptIntegrity
d_Hashable'45'ScriptIntegrity_1382 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'ScriptIntegrity_1382 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_Hashable'45'ScriptIntegrity_2738
      (coe d_HSTransactionStructure_748 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.InBalanceInterval
d_InBalanceInterval_1384 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsBootstrapAddr
d_IsBootstrapAddr_1388 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsBootstrapAddr?
d_IsBootstrapAddr'63'_1390 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsBootstrapAddr'63'_1390 ~v0 = du_IsBootstrapAddr'63'_1390
du_IsBootstrapAddr'63'_1390 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsBootstrapAddr'63'_1390
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsBootstrapAddr'63'_322
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsKeyHashObj
d_IsKeyHashObj_1394 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsKeyHashObj?
d_IsKeyHashObj'63'_1396 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsKeyHashObj'63'_1396 ~v0 = du_IsKeyHashObj'63'_1396
du_IsKeyHashObj'63'_1396 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsKeyHashObj'63'_1396
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsKeyHashObj'63'_56
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_1398 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1402 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1406 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsValidFlagOf
d_IsValidFlagOf_1410 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasIsValidFlag_4554 ->
  AgdaAny -> Bool
d_IsValidFlagOf_1410 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_IsValidFlagOf_4562
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Ix
d_Ix_1412 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Ix_1412 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.THash
d_THash_1414 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_THash_1414 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.KeyPair
d_KeyPair_1418 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_KeyPair_1418 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.LangDepView
d_LangDepView_1420 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_LangDepView_1420 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Language
d_Language_1422 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Language_1422 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.LanguageCostModels
d_LanguageCostModels_1424 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ListOfGovProposalsOf
d_ListOfGovProposalsOf_1428 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovProposals_4354 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1068]
d_ListOfGovProposalsOf_1428 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ListOfGovProposalsOf_4362
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ListOfGovVotesOf
d_ListOfGovVotesOf_1430 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovVotes_4374 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1014]
d_ListOfGovVotesOf_1430 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ListOfGovVotesOf_4382
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.MaxKESEvoᶜ
d_MaxKESEvo'7580'_1432 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_MaxKESEvo'7580'_1432 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxKESEvo'7580'_346
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1408
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.MaxLovelaceSupplyᶜ
d_MaxLovelaceSupply'7580'_1434 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_MaxLovelaceSupply'7580'_1434 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_340
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1408
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.MaybeNetworkIdOf
d_MaybeNetworkIdOf_1436 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174 ->
  AgdaAny -> Maybe Integer
d_MaybeNetworkIdOf_1436 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_182
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.MemoryEstimate
d_MemoryEstimate_1438 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_MemoryEstimate_1438 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.MintedValueOf
d_MintedValueOf_1440 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4254 ->
  AgdaAny -> Integer
d_MintedValueOf_1440 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_MintedValueOf_4262
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.NativeScript
d_NativeScript_1442 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.NeedsHash
d_NeedsHash_1444 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_950 ->
  ()
d_NeedsHash_1444 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Network
d_Network_1446 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Network_1446 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.NetworkId
d_NetworkId_1450 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_NetworkId_1450 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_344
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1408
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.NetworkIdOf
d_NetworkIdOf_1452 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154 ->
  AgdaAny -> Integer
d_NetworkIdOf_1452 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_162
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.NoOverlappingSpendInputs
d_NoOverlappingSpendInputs_1458 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  ()
d_NoOverlappingSpendInputs_1458 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_1460 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_1460 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'ActiveSlotCoeff_350
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1408
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1462 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_1462 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_330
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1408
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Number-Epoch
d_Number'45'Epoch_1464 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_1464 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Number'45'Epoch_286
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1414
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.P1Script
d_P1Script_1466 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_P1Script_1466 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.P1ScriptStructure
d_P1ScriptStructure_1468 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusScript
d_PlutusScript_1472 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_PlutusScript_1472 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamGroup
d_PParamGroup_1474 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams
d_PParams_1476 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsDiff
d_PParamsDiff_1480 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsOf
d_PParamsOf_1484 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_632 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_PParamsOf_1484 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_640
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.UpdateT
d_UpdateT_1486 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_UpdateT_1486 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusLanguage
d_PlutusLanguage_1488 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure
d_PlutusStructure_1490 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusV1
d_PlutusV1_1494 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.T_HSLanguage_10
d_PlutusV1_1494 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_486
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
               (coe v2))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusV2
d_PlutusV2_1496 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.T_HSLanguage_10
d_PlutusV2_1496 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_488
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
               (coe v2))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusV3
d_PlutusV3_1498 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.T_HSLanguage_10
d_PlutusV3_1498 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_490
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
               (coe v2))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusV4
d_PlutusV4_1500 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.T_HSLanguage_10
d_PlutusV4_1500 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_492
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
               (coe v2))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Policy
d_Policy_1502 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Policy_1502 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PolicyOf
d_PolicyOf_1504 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1258 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_1504 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_PolicyOf_1266
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PoolThresholds
d_PoolThresholds_1506 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Positive-ActiveSlotCoeff
d_Positive'45'ActiveSlotCoeff_1510 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_Positive'45'ActiveSlotCoeff_1510 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Positive'45'ActiveSlotCoeff_334
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1408
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Prices
d_Prices_1512 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Prices_1512 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ProposedPPUpdates
d_ProposedPPUpdates_1514 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ProposedPPUpdates_1514 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Quorum
d_Quorum_1516 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_Quorum_1516 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Quorum_342
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1408
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_1518 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_RandomnessStabilisationWindow_1518 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_94
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1414
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.RandomnessStabilisationWindowᶜ
d_RandomnessStabilisationWindow'7580'_1520 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_RandomnessStabilisationWindow'7580'_1520 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow'7580'_336
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1408
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Redeemer
d_Redeemer_1522 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Redeemer_1522 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.RedeemerPtr
d_RedeemerPtr_1524 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_RedeemerPtr_1524 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.RedeemersOf
d_RedeemersOf_1526 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_4042 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RedeemersOf_1526 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_RedeemersOf_4050
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ReferenceInputsOf
d_ReferenceInputsOf_1528 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4234 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_ReferenceInputsOf_1528 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ReferenceInputsOf_4242
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.RequiredSignerHashesOf
d_RequiredSignerHashesOf_1544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRequiredSingerHashes_4454 ->
  AgdaAny -> [Integer]
d_RequiredSignerHashesOf_1544 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_RequiredSignerHashesOf_4462
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.RewardAddress
d_RewardAddress_1546 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.RewardAddressOf
d_RewardAddressOf_1550 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_1550 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.SKey
d_SKey_1554 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_SKey_1554 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Script
d_Script_1558 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Script_1558 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptAddr
d_ScriptAddr_1560 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ScriptAddr_1560 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptBaseAddr
d_ScriptBaseAddr_1562 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ScriptBaseAddr_1562 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1564 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ScriptBootstrapAddr_1564 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptHash
d_ScriptHash_1566 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ScriptHash_1566 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure
d_ScriptStructure_1570 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptsOf
d_ScriptsOf_1574 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasScripts_4414 ->
  AgdaAny -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_ScriptsOf_1574 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ScriptsOf_4422
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Ser
d_Ser_1578 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Ser_1578 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-CostModel
d_Show'45'CostModel_1580 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1580 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'CostModel_468
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-Credential
d_Show'45'Credential_1582 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_1582 ~v0 = du_Show'45'Credential_1582
du_Show'45'Credential_1582 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_1582 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential_362
      v1 v2
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_1584 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_1584 ~v0
  = du_Show'45'Credential'215'Coin_1584
du_Show'45'Credential'215'Coin_1584 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_1584 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential'215'Coin_366
      v1 v2
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-DrepThresholds
d_Show'45'DrepThresholds_1586 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_1586 ~v0 = du_Show'45'DrepThresholds_1586
du_Show'45'DrepThresholds_1586 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_1586
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_Show'45'DrepThresholds_676
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-Epoch
d_Show'45'Epoch_1588 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_1588 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Epoch_82
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1414
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-ExUnits
d_Show'45'ExUnits_1590 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1590 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_482
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-GovRole
d_Show'45'GovRole_1592 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_1592 ~v0 = du_Show'45'GovRole_1592
du_Show'45'GovRole_1592 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'GovRole_1592
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_Show'45'GovRole_1370
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-Language
d_Show'45'Language_1594 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_1594 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Language_472
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-LanguageCostModels
d_Show'45'LanguageCostModels_1596 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_1596 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Show'45'LanguageCostModels_694
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-Network
d_Show'45'Network_1598 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_1598 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Network_326
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1408
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-PParams
d_Show'45'PParams_1600 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_1600 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_Show'45'PParams_680
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1414
            (coe v1))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-PoolThresholds
d_Show'45'PoolThresholds_1602 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_1602 ~v0 = du_Show'45'PoolThresholds_1602
du_Show'45'PoolThresholds_1602 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_1602
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_Show'45'PoolThresholds_678
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-Prices
d_Show'45'Prices_1604 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1604 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Prices_484
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-RewardAddress
d_Show'45'RewardAddress_1606 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RewardAddress_1606 ~v0 = du_Show'45'RewardAddress_1606
du_Show'45'RewardAddress_1606 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RewardAddress_1606
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'RewardAddress_364
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-ScriptHash
d_Show'45'ScriptHash_1608 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_1608 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_226
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-THash
d_Show'45'THash_1610 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1610 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1406
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-THash
d_Show'45'THash_1612 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1612 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v2))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-THash
d_Show'45'THash_1614 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1614 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
               (coe v2))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-VDeleg
d_Show'45'VDeleg_1616 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_1616 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_Show'45'VDeleg_1480
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2868
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Sig
d_Sig_1618 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Sig_1618 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.SizeOf
d_SizeOf_1620 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_4154 ->
  AgdaAny -> Integer
d_SizeOf_1620 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SizeOf_4162
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Slot
d_Slot_1622 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Slot_1622 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1624 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_SlotsPerEpoch'7580'_1624 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_328
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1408
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.SlotsPerKESPeriodᶜ
d_SlotsPerKESPeriod'7580'_1626 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_SlotsPerKESPeriod'7580'_1626 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerKESPeriod'7580'_348
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1408
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Slotʳ
d_Slot'691'_1628 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_Slot'691'_1628 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_76
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1414
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.SpendInputsOf
d_SpendInputsOf_1630 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4214 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_SpendInputsOf_1630 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4222
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.StabilityWindow
d_StabilityWindow_1632 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_StabilityWindow_1632 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow_96
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1414
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.StabilityWindowᶜ
d_StabilityWindow'7580'_1634 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_StabilityWindow'7580'_1634 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow'7580'_338
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1408
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.StartingBalanceIntervalsOf
d_StartingBalanceIntervalsOf_1636 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasStartingBalanceIntervals_4534 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StartingBalanceIntervalsOf_1636 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_StartingBalanceIntervalsOf_4542
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.SubLevelTx
d_SubLevelTx_1638 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_SubLevelTx_1638 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.SubTransactionsOf
d_SubTransactionsOf_1640 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_4112 ->
  AgdaAny -> AgdaAny
d_SubTransactionsOf_1640 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SubTransactionsOf_4122
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.T-Hashable
d_T'45'Hashable_1642 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1642 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1406
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.T-Hashable
d_T'45'Hashable_1644 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1644 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v2))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.T-Hashable
d_T'45'Hashable_1646 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1646 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
               (coe v2))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.T-isHashable
d_T'45'isHashable_1648 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_1648 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra
d_TokenAlgebra_1652 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TopLevelGuardsOf
d_TopLevelGuardsOf_1656 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTopLevelGuards_4174 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_TopLevelGuardsOf_1656 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TopLevelGuardsOf_4182
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TopLevelTx
d_TopLevelTx_1658 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_TopLevelTx_1658 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Tx
d_Tx_1664 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody
d_TxBody_1668 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBodyOf
d_TxBodyOf_1672 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxBody_4000 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3842
d_TxBodyOf_1672 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxBodyOf_4010
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxFeesOf
d_TxFeesOf_1674 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxFees_4088 ->
  AgdaAny -> AgdaAny
d_TxFeesOf_1674 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxFeesOf_4098
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxId
d_TxId_1676 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_TxId_1676 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxIdOf
d_TxIdOf_1678 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4134 ->
  AgdaAny -> Integer
d_TxIdOf_1678 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxIdOf_4142
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxIn
d_TxIn_1680 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_TxIn_1680 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxOut
d_TxOut_1682 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_TxOut_1682 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxOutsOf
d_TxOutsOf_1684 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4434 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_TxOutsOf_1684 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4442
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxWitnesses
d_TxWitnesses_1686 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxWitnessesOf
d_TxWitnessesOf_1690 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxWitnesses_4022 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3844
d_TxWitnessesOf_1690 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxWitnessesOf_4030
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.UTxO
d_UTxO_1692 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_UTxO_1692 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.UTxOOf
d_UTxOOf_1694 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3820 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_1694 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3828
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Update
d_Update_1696 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Update_1696 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.VDeleg
d_VDeleg_1708 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.VKey
d_VKey_1710 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VKey_1710 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.VKeyAddr
d_VKeyAddr_1712 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VKeyAddr_1712 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.VKeyBaseAddr
d_VKeyBaseAddr_1714 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VKeyBaseAddr_1714 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1716 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VKeyBootstrapAddr_1716 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.VRF
d_VRF_1720 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VRF_1720 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ValidIntervalOf
d_ValidIntervalOf_1722 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_4194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ValidIntervalOf_1722 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ValidIntervalOf_4202
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Value
d_Value_1724 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Value_1724 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1726 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_1726 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2734
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.VoteDelegs
d_VoteDelegs_1728 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VoteDelegs_1728 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.VoteDelegsOf
d_VoteDelegsOf_1730 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1162 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1730 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1170
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.VoteOf
d_VoteOf_1732 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1238 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_982
d_VoteOf_1732 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteOf_1246
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Withdrawals
d_Withdrawals_1734 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Withdrawals_1734 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.WithdrawalsOf
d_WithdrawalsOf_1736 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_1736 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_202
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.activeDRepsOf
d_activeDRepsOf_1738 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1278 ->
  AgdaAny -> Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_1738 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (\ v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_activeDRepsOf_1658
           (coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2868
              (coe v1))
           v3 v4 v5)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.activeInEpoch
d_activeInEpoch_1740 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_1740 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.adHashingScheme
d_adHashingScheme_1742 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_adHashingScheme_1742 ~v0 = du_adHashingScheme_1742
du_adHashingScheme_1742 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
du_adHashingScheme_1742
  = coe
      MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_isHashableSet'45'ℕ_34
-- Ledger.Dijkstra.Foreign.ExternalStructures._.addEpoch
d_addEpoch_1744 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_1744 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_280
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1414
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.addSlot
d_addSlot_1746 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_1746 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_278
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1414
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.addValue
d_addValue_1748 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_1748 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2734
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.allDCerts
d_allDCerts_1750 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1462]
d_allDCerts_1750 ~v0 = du_allDCerts_1750
du_allDCerts_1750 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1462]
du_allDCerts_1750
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allDCerts_4816
-- Ledger.Dijkstra.Foreign.ExternalStructures._.allMintedCoin
d_allMintedCoin_1752 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  Integer
d_allMintedCoin_1752 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_allMintedCoin_4800
      (coe d_HSTransactionStructure_748 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.allReferenceInputs
d_allReferenceInputs_1754 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_allReferenceInputs_1754 ~v0 = du_allReferenceInputs_1754
du_allReferenceInputs_1754 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_allReferenceInputs_1754
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allReferenceInputs_4710
-- Ledger.Dijkstra.Foreign.ExternalStructures._.allReferenceScripts
d_allReferenceScripts_1756 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allReferenceScripts_1756 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_allReferenceScripts_4746
      (coe d_HSTransactionStructure_748 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.allSpendInputs
d_allSpendInputs_1758 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_allSpendInputs_1758 ~v0 = du_allSpendInputs_1758
du_allSpendInputs_1758 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_allSpendInputs_1758
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allSpendInputs_4698
-- Ledger.Dijkstra.Foreign.ExternalStructures._.allSpendInputsList
d_allSpendInputsList_1760 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  [[MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]]
d_allSpendInputsList_1760 ~v0 = du_allSpendInputsList_1760
du_allSpendInputsList_1760 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  [[MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]]
du_allSpendInputsList_1760
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allSpendInputsList_4706
-- Ledger.Dijkstra.Foreign.ExternalStructures._.allWitnessScripts
d_allWitnessScripts_1762 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allWitnessScripts_1762 ~v0 = du_allWitnessScripts_1762
du_allWitnessScripts_1762 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_allWitnessScripts_1762
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allWitnessScripts_4758
-- Ledger.Dijkstra.Foreign.ExternalStructures._.applyUpdate
d_applyUpdate_1764 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyUpdate_1764 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1740
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1776
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2732
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.coin
d_coin_1768 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_coin_1768 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2734
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.coin-inject-lemma
d_coin'45'inject'45'lemma_1770 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_1770 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1772 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_1772 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2734
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.coin∘inject≗id
d_coin'8728'inject'8791'id_1774 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_1774 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.cryptoStructure
d_cryptoStructure_1776 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
d_cryptoStructure_1776 v0
  = coe
      MAlonzo.Code.Ledger.Core.Foreign.Crypto.Structure.d_HSCryptoStructure_36
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.dataOfTx
d_dataOfTx_1778 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  [Integer]
d_dataOfTx_1778 ~v0 = du_dataOfTx_1778
du_dataOfTx_1778 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  [Integer]
du_dataOfTx_1778 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_dataOfTx_4782
      v1
-- Ledger.Dijkstra.Foreign.ExternalStructures._.e<sucᵉ
d_e'60'suc'7497'_1780 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_e'60'suc'7497'_1780 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_e'60'suc'7497'_120
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1414
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.epoch
d_epoch_1782 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_epoch_1782 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1414
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.epochStructure
d_epochStructure_1784 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_epochStructure_1784 ~v0 = du_epochStructure_1784
du_epochStructure_1784 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
du_epochStructure_1784
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'46'extendedlambda0_370
      (coe MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.firstSlot
d_firstSlot_1802 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_firstSlot_1802 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1414
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.fromPlutusLanguage
d_fromPlutusLanguage_1804 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_1804 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_fromPlutusLanguage_458
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.gaData
d_gaData_1806 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_968 ->
  AgdaAny
d_gaData_1806 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaData_976
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.gaType
d_gaType_1808 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_968 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_950
d_gaType_1808 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_974
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.getAllScripts
d_getAllScripts_1810 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_getAllScripts_1810 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_getAllScripts_4772
      (coe d_HSTransactionStructure_748 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.getScriptHash
d_getScriptHash_1812 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_78 ->
  Integer
d_getScriptHash_1812 ~v0 = du_getScriptHash_1812
du_getScriptHash_1812 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_78 ->
  Integer
du_getScriptHash_1812
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_getScriptHash_340
-- Ledger.Dijkstra.Foreign.ExternalStructures._.getTxData
d_getTxData_1814 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  [Integer]
d_getTxData_1814 ~v0 = du_getTxData_1814
du_getTxData_1814 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  [Integer]
du_getTxData_1814 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_getTxData_4792
      v1
-- Ledger.Dijkstra.Foreign.ExternalStructures._.getTxScripts
d_getTxScripts_1816 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_getTxScripts_1816 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_getTxScripts_4766
      (coe d_HSTransactionStructure_748 (coe v0)) v2 v3
-- Ledger.Dijkstra.Foreign.ExternalStructures._.globalConstants
d_globalConstants_1818 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
d_globalConstants_1818 ~v0 = du_globalConstants_1818
du_globalConstants_1818 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
du_globalConstants_1818
  = coe MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8
-- Ledger.Dijkstra.Foreign.ExternalStructures._.govParams
d_govParams_1820 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758
d_govParams_1820 v0 = coe d_HsGovParams_644 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.govStructure
d_govStructure_1822 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10
d_govStructure_1822 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2868
      (coe d_HSTransactionStructure_748 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.govVoterCredential
d_govVoterCredential_1824 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_990 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_1824 ~v0 = du_govVoterCredential_1824
du_govVoterCredential_1824 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_990 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_govVoterCredential_1824
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_govVoterCredential_1128
-- Ledger.Dijkstra.Foreign.ExternalStructures._.hashRespectsUnion
d_hashRespectsUnion_1826 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_1826 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_hashRespectsUnion_570
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.inject
d_inject_1828 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_inject_1828 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2734
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isBootstrapAddr
d_isBootstrapAddr_1830 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100
d_isBootstrapAddr_1830 ~v0 = du_isBootstrapAddr_1830
du_isBootstrapAddr_1830 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100
du_isBootstrapAddr_1830
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isBootstrapAddr_290
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isGovVoterDRep
d_isGovVoterDRep_1832 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_990 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_1832 ~v0 = du_isGovVoterDRep_1832
du_isGovVoterDRep_1832 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_990 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_isGovVoterDRep_1832
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_isGovVoterDRep_1124
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isKeyHash
d_isKeyHash_1834 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_isKeyHash_1834 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isKeyHashObj
d_isKeyHashObj_1836 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
d_isKeyHashObj_1836 ~v0 = du_isKeyHashObj_1836
du_isKeyHashObj_1836 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
du_isKeyHashObj_1836
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1838 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
d_isKeyHashObj'7495'_1838 ~v0 = du_isKeyHashObj'7495'_1838
du_isKeyHashObj'7495'_1838 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
du_isKeyHashObj'7495'_1838
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj'7495'_62
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isKeyPair
d_isKeyPair_1840 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 -> ()
d_isKeyPair_1840 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isNativeScript
d_isNativeScript_1842 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_1842 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isP1Script
d_isP1Script_1844 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_1844 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isP1Script?
d_isP1Script'63'_1846 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_1846 ~v0 = du_isP1Script'63'_1846
du_isP1Script'63'_1846 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_1846
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP1Script'63'_658
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isP2Script
d_isP2Script_1848 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_1848 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isP2Script?
d_isP2Script'63'_1850 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_1850 ~v0 = du_isP2Script'63'_1850
du_isP2Script'63'_1850 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_1850
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP2Script'63'_672
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isScript
d_isScript_1852 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isScriptAddr
d_isScriptAddr_1854 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1854 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isScriptObj
d_isScriptObj_1856 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
d_isScriptObj_1856 ~v0 = du_isScriptObj_1856
du_isScriptObj_1856 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
du_isScriptObj_1856
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isScriptRewardAddress
d_isScriptRewardAddress_1858 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  ()
d_isScriptRewardAddress_1858 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isSigned
d_isSigned_1860 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer -> Integer -> ()
d_isSigned_1860 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isSigned-correct
d_isSigned'45'correct_1862 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isSigned'45'correct_1862 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isVKey
d_isVKey_1864 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isVKeyAddr
d_isVKeyAddr_1866 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1866 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.khs
d_khs_1868 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_1868 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.language
d_language_1870 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_364 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.T_HSLanguage_10
d_language_1870 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_520
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.languageCostModels
d_languageCostModels_1872 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_1872 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_684
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.leiosCryptoStructure
d_leiosCryptoStructure_1874 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Crypto.T_LeiosCryptoStructure_10
d_leiosCryptoStructure_1874 v0
  = coe d_HSLeiosCryptoStructure_690 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.lookupScriptHash
d_lookupScriptHash_1876 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_1876 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_lookupScriptHash_4808
      (coe d_HSTransactionStructure_748 (coe v0)) v2 v3 v4
-- Ledger.Dijkstra.Foreign.ExternalStructures._.monoid
d_monoid_1882 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_1882 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_monoid_1066
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2734
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.netId
d_netId_1884 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_netId_1884 ~v0 = du_netId_1884
du_netId_1884 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
du_netId_1884
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_266
-- Ledger.Dijkstra.Foreign.ExternalStructures._.p1s
d_p1s_1886 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_326
d_p1s_1886 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.paramsWF-elim
d_paramsWF'45'elim_1888 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_1888 ~v0 = du_paramsWF'45'elim_1888
du_paramsWF'45'elim_1888 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_1888 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_paramsWF'45'elim_608
      v2
-- Ledger.Dijkstra.Foreign.ExternalStructures._.paramsWellFormed
d_paramsWellFormed_1890 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  ()
d_paramsWellFormed_1890 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.payCred
d_payCred_1892 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_payCred_1892 ~v0 = du_payCred_1892
du_payCred_1892 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_payCred_1892
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_262
-- Ledger.Dijkstra.Foreign.ExternalStructures._.pkk
d_pkk_1894 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_1894 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.policies
d_policies_1896 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> [Integer]
d_policies_1896 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2734
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.positivePParams
d_positivePParams_1898 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  [Integer]
d_positivePParams_1898 ~v0 = du_positivePParams_1898
du_positivePParams_1898 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  [Integer]
du_positivePParams_1898
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_positivePParams_498
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ppUpd
d_ppUpd_1900 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1724
d_ppUpd_1900 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1776
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2732
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ppWF?
d_ppWF'63'_1902 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1902 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1748
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1776
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2732
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ppdWellFormed
d_ppdWellFormed_1904 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  ()
d_ppdWellFormed_1904 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.preoEpoch
d_preoEpoch_1906 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_1906 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_110
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1414
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.proposedCC
d_proposedCC_1908 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_968 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_1908 ~v0 = du_proposedCC_1908
du_proposedCC_1908 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_968 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_proposedCC_1908
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_proposedCC_1136
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ps
d_ps_1910 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364
d_ps_1910 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.rawMonoid
d_rawMonoid_1912 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_1912 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2734
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
            (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v2))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.referenceData
d_referenceData_1914 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [Integer]
d_referenceData_1914 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_referenceData_4788
      (coe d_HSTransactionStructure_748 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.referenceScripts
d_referenceScripts_1916 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_referenceScripts_1916 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_referenceScripts_4740
      (coe d_HSTransactionStructure_748 (coe v0)) v2 v3
-- Ledger.Dijkstra.Foreign.ExternalStructures._.referencedTxOuts
d_referencedTxOuts_1918 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_referencedTxOuts_1918 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_referencedTxOuts_4728
      (coe d_HSTransactionStructure_748 (coe v0)) v2 v3
-- Ledger.Dijkstra.Foreign.ExternalStructures._.scriptStructure
d_scriptStructure_1920 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524
d_scriptStructure_1920 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_HSScriptStructure_420
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.scriptsOfTx
d_scriptsOfTx_1922 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scriptsOfTx_1922 ~v0 = du_scriptsOfTx_1922
du_scriptsOfTx_1922 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_scriptsOfTx_1922 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_scriptsOfTx_4736
      v1
-- Ledger.Dijkstra.Foreign.ExternalStructures._.scriptsOfUTxO
d_scriptsOfUTxO_1924 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scriptsOfUTxO_1924 ~v0 = du_scriptsOfUTxO_1924
du_scriptsOfUTxO_1924 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_scriptsOfUTxO_1924
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_scriptsOfUTxO_4734
-- Ledger.Dijkstra.Foreign.ExternalStructures._.sign
d_sign_1926 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer
d_sign_1926 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v2))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.size
d_size_1928 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_size_1928 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2734
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.spendData
d_spendData_1930 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [Integer]
d_spendData_1930 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_spendData_4786
      (coe d_HSTransactionStructure_748 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.spendScripts
d_spendScripts_1932 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_spendScripts_1932 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_spendScripts_4738
      (coe d_HSTransactionStructure_748 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.spendTxOuts
d_spendTxOuts_1934 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_spendTxOuts_1934 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_spendTxOuts_4722
      (coe d_HSTransactionStructure_748 (coe v0)) v2 v3
-- Ledger.Dijkstra.Foreign.ExternalStructures._.stakeCred
d_stakeCred_1936 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stakeCred_1936 ~v0 = du_stakeCred_1936
du_stakeCred_1936 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_stakeCred_1936
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_stakeCred_264
-- Ledger.Dijkstra.Foreign.ExternalStructures._.sucᵉ
d_suc'7497'_1938 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_suc'7497'_1938 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_suc'7497'_98
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1414
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.sumᵛ
d_sum'7515'_1940 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] -> Integer
d_sum'7515'_1940 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2734
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.toP1Script
d_toP1Script_1942 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_336
d_toP1Script_1942 ~v0 = du_toP1Script_1942
du_toP1Script_1942 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_336
du_toP1Script_1942
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP1Script_666
-- Ledger.Dijkstra.Foreign.ExternalStructures._.toP2Script
d_toP2Script_1944 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_364
d_toP2Script_1944 ~v0 = du_toP2Script_1944
du_toP2Script_1944 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_364
du_toP2Script_1944
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_678
-- Ledger.Dijkstra.Foreign.ExternalStructures._.tokenAlgebra
d_tokenAlgebra_1946 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14
d_tokenAlgebra_1946 ~v0 = du_tokenAlgebra_1946
du_tokenAlgebra_1946 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14
du_tokenAlgebra_1946
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Coin.du_Coin'45'TokenAlgebra_132
-- Ledger.Dijkstra.Foreign.ExternalStructures._.txOutDataOfUTxO
d_txOutDataOfUTxO_1948 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [Integer]
d_txOutDataOfUTxO_1948 ~v0 = du_txOutDataOfUTxO_1948
du_txOutDataOfUTxO_1948 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [Integer]
du_txOutDataOfUTxO_1948
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutDataOfUTxO_4784
-- Ledger.Dijkstra.Foreign.ExternalStructures._.txOutToDatum
d_txOutToDatum_1950 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe Integer
d_txOutToDatum_1950 ~v0 = du_txOutToDatum_1950
du_txOutToDatum_1950 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe Integer
du_txOutToDatum_1950
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToDatum_4688
-- Ledger.Dijkstra.Foreign.ExternalStructures._.txOutToScript
d_txOutToScript_1952 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_txOutToScript_1952 ~v0 = du_txOutToScript_1952
du_txOutToScript_1952 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_txOutToScript_1952
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToScript_4684
-- Ledger.Dijkstra.Foreign.ExternalStructures._.txOutToValue
d_txOutToValue_1954 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txOutToValue_1954 ~v0 = du_txOutToValue_1954
du_txOutToValue_1954 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_txOutToValue_1954
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToValue_4692
-- Ledger.Dijkstra.Foreign.ExternalStructures._.txidBytes
d_txidBytes_1956 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_txidBytes_1956 ~v0 v1 = du_txidBytes_1956 v1
du_txidBytes_1956 :: Integer -> Integer
du_txidBytes_1956 v0 = coe v0
-- Ledger.Dijkstra.Foreign.ExternalStructures._.updateGroups
d_updateGroups_1958 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_updateGroups_1958 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1742
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1776
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2732
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.validP1Script
d_validP1Script_1968 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_336 ->
  ()
d_validP1Script_1968 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.validPlutusScript
d_validPlutusScript_1970 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_364 ->
  ()
d_validPlutusScript_1970 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.valuesOfUTxO
d_valuesOfUTxO_1972 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [Integer]
d_valuesOfUTxO_1972 ~v0 = du_valuesOfUTxO_1972
du_valuesOfUTxO_1972 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [Integer]
du_valuesOfUTxO_1972
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_valuesOfUTxO_4696
-- Ledger.Dijkstra.Foreign.ExternalStructures._.witnessData
d_witnessData_1974 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  [Integer]
d_witnessData_1974 ~v0 = du_witnessData_1974
du_witnessData_1974 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  [Integer]
du_witnessData_1974 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_witnessData_4790
-- Ledger.Dijkstra.Foreign.ExternalStructures._.witnessScripts
d_witnessScripts_1976 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_witnessScripts_1976 ~v0 = du_witnessScripts_1976
du_witnessScripts_1976 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_witnessScripts_1976 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_witnessScripts_4756
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ε
d_ε_1978 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_ε_1978 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Class.Monoid.Core.d_ε_20
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2734
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1980 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1980 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ℕEpochStructure
d_ℕEpochStructure_1982 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_ℕEpochStructure_1982 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕEpochStructure_364
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1408
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ℕtoEpoch
d_ℕtoEpoch_1984 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_ℕtoEpoch_1984 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕtoEpoch_274
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1414
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.≤-predᵉ
d_'8804''45'pred'7497'_1986 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'pred'7497'_1986 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'8804''45'pred'7497'_126
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1414
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.≥ᵉ-Dec
d_'8805''7497''45'Dec_1988 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_1988 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8805''7497''45'Dec_476
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Acnt.reserves
d_reserves_2004 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  Integer
d_reserves_2004 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_reserves_202
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Acnt.treasury
d_treasury_2006 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  Integer
d_treasury_2006 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_200
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Anchor.hash
d_hash_2010 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1002 ->
  Integer
d_hash_2010 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_hash_1010
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Anchor.url
d_url_2012 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1002 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_2012 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_url_1008
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.BaseAddr.net
d_net_2026 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  Integer
d_net_2026 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_92 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.BaseAddr.pay
d_pay_2028 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_2028 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_94 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.BaseAddr.stake
d_stake_2030 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_2030 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_96 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.BootstrapAddr.attrsSize
d_attrsSize_2034 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  Integer
d_attrsSize_2034 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_112
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.BootstrapAddr.net
d_net_2036 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  Integer
d_net_2036 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_108 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.BootstrapAddr.pay
d_pay_2038 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_2038 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_110 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DrepThresholds.P1
d_P1_2048 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_2048 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P1_266
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DrepThresholds.P2a
d_P2a_2050 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_2050 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P2a_268
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DrepThresholds.P2b
d_P2b_2052 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_2052 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P2b_270
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DrepThresholds.P3
d_P3_2054 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_2054 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P3_272
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DrepThresholds.P4
d_P4_2056 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_2056 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P4_274
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DrepThresholds.P5a
d_P5a_2058 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_2058 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5a_276
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DrepThresholds.P5b
d_P5b_2060 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_2060 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5b_278
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DrepThresholds.P5c
d_P5c_2062 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_2062 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5c_280
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DrepThresholds.P5d
d_P5d_2064 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_2064 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5d_282
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DrepThresholds.P6
d_P6_2066 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_2066 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P6_284
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovAction.gaData
d_gaData_2086 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_968 ->
  AgdaAny
d_gaData_2086 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaData_976
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovAction.gaType
d_gaType_2088 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_968 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_950
d_gaType_2088 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_974
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovActionState.action
d_action_2092 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1096 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_968
d_action_2092 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1116
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovActionState.deposit
d_deposit_2094 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1096 ->
  Integer
d_deposit_2094 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1120
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovActionState.expiresIn
d_expiresIn_2096 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1096 ->
  Integer
d_expiresIn_2096 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_expiresIn_1114
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovActionState.prevAction
d_prevAction_2098 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1096 ->
  AgdaAny
d_prevAction_2098 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1118
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovActionState.returnAddr
d_returnAddr_2100 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1096 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_2100 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1112
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovActionState.votes
d_votes_2102 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1096 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1034
d_votes_2102 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_votes_1110
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_2122 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_2122 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_DecEq'45'UpdT_1790
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovParams.UpdateT
d_UpdateT_2124 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758 ->
  ()
d_UpdateT_2124 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovParams.applyUpdate
d_applyUpdate_2126 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyUpdate_2126 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1740
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1776
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovParams.ppUpd
d_ppUpd_2128 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1724
d_ppUpd_2128 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1776
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovParams.ppWF?
d_ppWF'63'_2130 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2130 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1748
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1776
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovParams.ppdWellFormed
d_ppdWellFormed_2132 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758 ->
  AgdaAny -> ()
d_ppdWellFormed_2132 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovParams.updateGroups
d_updateGroups_2134 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1758 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_updateGroups_2134 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1742
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1776
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovProposal.action
d_action_2138 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1068 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_968
d_action_2138 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1082
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovProposal.anchor
d_anchor_2140 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1068 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1002
d_anchor_2140 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_1092
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovProposal.deposit
d_deposit_2142 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1068 ->
  Integer
d_deposit_2142 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1088
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovProposal.policy
d_policy_2144 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1068 ->
  Maybe Integer
d_policy_2144 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_policy_1086
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovProposal.prevAction
d_prevAction_2146 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1068 ->
  AgdaAny
d_prevAction_2146 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1084
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovProposal.returnAddr
d_returnAddr_2148 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1068 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_2148 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1090
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovVote.anchor
d_anchor_2160 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1014 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1002
d_anchor_2160 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_1030
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovVote.gid
d_gid_2162 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1014 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_2162 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gid_1024
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovVote.vote
d_vote_2164 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1014 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_982
d_vote_2164 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_vote_1028
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovVote.voter
d_voter_2166 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1014 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_990
d_voter_2166 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_voter_1026
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovVoter.gvCredential
d_gvCredential_2170 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_990 ->
  AgdaAny
d_gvCredential_2170 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvCredential_998
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovVoter.gvRole
d_gvRole_2172 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_990 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_940
d_gvRole_2172 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvRole_996
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovVotes.gvCC
d_gvCC_2176 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1034 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvCC_2176 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvCC_1042
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovVotes.gvDRep
d_gvDRep_2178 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1034 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvDRep_2178 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvDRep_1044
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovVotes.gvSPO
d_gvSPO_2180 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1034 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvSPO_2180 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvSPO_1046
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.==-GovAction
d_'61''61''45'GovAction_2184 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_968 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_968 ->
  Bool
d_'61''61''45'GovAction_2184 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovAction_1518
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2868
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.==-GovActionData
d_'61''61''45'GovActionData_2186 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_950 ->
  AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_2186 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovActionData_1500
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2868
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.==-GovProposal
d_'61''61''45'GovProposal_2188 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1068 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1068 ->
  Bool
d_'61''61''45'GovProposal_2188 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovProposal_1552
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2868
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.==-Set
d_'61''61''45'Set_2190 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_2190 ~v0 = du_'61''61''45'Set_2190
du_'61''61''45'Set_2190 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
du_'61''61''45'Set_2190 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_'61''61''45'Set_1488
      v1 v2 v3
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.Anchor
d_Anchor_2192 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.AnchorOf
d_AnchorOf_2196 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1298 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1002
d_AnchorOf_2196 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_AnchorOf_1306
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.DReps
d_DReps_2204 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_DReps_2204 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.DRepsOf
d_DRepsOf_2206 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1278 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_2206 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1286
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.DecEq-Anchor
d_DecEq'45'Anchor_2208 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_2208 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'Anchor_1482
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2868
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.DecEq-GovActionType
d_DecEq'45'GovActionType_2210 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_2210 ~v0 = du_DecEq'45'GovActionType_2210
du_DecEq'45'GovActionType_2210 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_2210
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'GovActionType_1372
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.DecEq-GovRole
d_DecEq'45'GovRole_2212 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_2212 ~v0 = du_DecEq'45'GovRole_2212
du_DecEq'45'GovRole_2212 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_2212
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'GovRole_1374
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.DecEq-GovVoter
d_DecEq'45'GovVoter_2214 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_2214 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'GovVoter_1380
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2868
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.DecEq-NeedsHash
d_DecEq'45'NeedsHash_2216 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_950 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_2216 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'NeedsHash_1550
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2868
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.DecEq-VDeleg
d_DecEq'45'VDeleg_2218 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_2218 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'VDeleg_1378
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2868
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.DecEq-Vote
d_DecEq'45'Vote_2220 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_2220 ~v0 = du_DecEq'45'Vote_2220
du_DecEq'45'Vote_2220 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_2220
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'Vote_1376
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.DepositOf
d_DepositOf_2222 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1318 ->
  AgdaAny -> Integer
d_DepositOf_2222 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DepositOf_1326
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.GovAction
d_GovAction_2224 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.GovActionData
d_GovActionData_2228 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_950 ->
  ()
d_GovActionData_2228 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.GovActionID
d_GovActionID_2230 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_GovActionID_2230 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.GovActionOf
d_GovActionOf_2232 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1180 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_968
d_GovActionOf_2232 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionOf_1186
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.GovActionState
d_GovActionState_2234 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.GovActionType
d_GovActionType_2238 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.GovActionTypeOf
d_GovActionTypeOf_2240 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1144 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_950
d_GovActionTypeOf_2240 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionTypeOf_1150
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.GovProposal
d_GovProposal_2242 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.GovRole
d_GovRole_2246 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.GovRoleCredential
d_GovRoleCredential_2248 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_940 ->
  ()
d_GovRoleCredential_2248 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.GovVote
d_GovVote_2250 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.GovVoter
d_GovVoter_2254 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.GovVoterOf
d_GovVoterOf_2258 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1198 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_990
d_GovVoterOf_2258 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVoterOf_1206
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.GovVotes
d_GovVotes_2260 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.GovVotesOf
d_GovVotesOf_2264 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1218 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1034
d_GovVotesOf_2264 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVotesOf_1226
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasAnchor
d_HasAnchor_2266 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasAnchor-GovProposal
d_HasAnchor'45'GovProposal_2270 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1298
d_HasAnchor'45'GovProposal_2270 ~v0
  = du_HasAnchor'45'GovProposal_2270
du_HasAnchor'45'GovProposal_2270 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1298
du_HasAnchor'45'GovProposal_2270
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasAnchor'45'GovProposal_1352
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_2272 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_2272 ~v0
  = du_HasCast'45'GovAction'45'Sigma_2272
du_HasCast'45'GovAction'45'Sigma_2272 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_2272
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_1336
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasCast-GovVote
d_HasCast'45'GovVote_2274 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_2274 ~v0 = du_HasCast'45'GovVote_2274
du_HasCast'45'GovVote_2274 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_2274
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovVote_1478
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasCast-HashProtected
d_HasCast'45'HashProtected_2276 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_2276 ~v0
  = du_HasCast'45'HashProtected_2276
du_HasCast'45'HashProtected_2276 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_2276 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected_1342
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_2278 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_2278 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_2278
du_HasCast'45'HashProtected'45'MaybeScriptHash_2278 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_2278
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1344
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasDReps
d_HasDReps_2280 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasDeposit
d_HasDeposit_2284 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasDeposit-GovProposal
d_HasDeposit'45'GovProposal_2288 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1318
d_HasDeposit'45'GovProposal_2288 ~v0
  = du_HasDeposit'45'GovProposal_2288
du_HasDeposit'45'GovProposal_2288 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1318
du_HasDeposit'45'GovProposal_2288
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasDeposit'45'GovProposal_1354
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasGovAction
d_HasGovAction_2290 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_2294 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1180
d_HasGovAction'45'GovActionState_2294 ~v0
  = du_HasGovAction'45'GovActionState_2294
du_HasGovAction'45'GovActionState_2294 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1180
du_HasGovAction'45'GovActionState_2294
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1358
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_2296 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1180
d_HasGovAction'45'GovProposal_2296 ~v0
  = du_HasGovAction'45'GovProposal_2296
du_HasGovAction'45'GovProposal_2296 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1180
du_HasGovAction'45'GovProposal_2296
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1356
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasGovActionType
d_HasGovActionType_2298 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_2302 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1144
d_HasGovActionType'45'GovAction_2302 ~v0
  = du_HasGovActionType'45'GovAction_2302
du_HasGovActionType'45'GovAction_2302 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1144
du_HasGovActionType'45'GovAction_2302
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_1334
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_2304 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1144
d_HasGovActionType'45'GovActionState_2304 ~v0
  = du_HasGovActionType'45'GovActionState_2304
du_HasGovActionType'45'GovActionState_2304 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1144
du_HasGovActionType'45'GovActionState_2304
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1362
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_2306 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1144
d_HasGovActionType'45'GovProposal_2306 ~v0
  = du_HasGovActionType'45'GovProposal_2306
du_HasGovActionType'45'GovProposal_2306 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1144
du_HasGovActionType'45'GovProposal_2306
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1360
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasGovVoter
d_HasGovVoter_2308 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_2312 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1198
d_HasGovVoter'45'GovVote_2312 ~v0 = du_HasGovVoter'45'GovVote_2312
du_HasGovVoter'45'GovVote_2312 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1198
du_HasGovVoter'45'GovVote_2312
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1346
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasGovVotes
d_HasGovVotes_2314 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasGovVotes-GovActionState
d_HasGovVotes'45'GovActionState_2318 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1218
d_HasGovVotes'45'GovActionState_2318 ~v0
  = du_HasGovVotes'45'GovActionState_2318
du_HasGovVotes'45'GovActionState_2318 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1218
du_HasGovVotes'45'GovActionState_2318
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovVotes'45'GovActionState_1364
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasPolicy
d_HasPolicy_2320 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_2324 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1258
d_HasPolicy'45'GovProposal_2324 ~v0
  = du_HasPolicy'45'GovProposal_2324
du_HasPolicy'45'GovProposal_2324 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1258
du_HasPolicy'45'GovProposal_2324
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1350
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasRewardAddress-GovActionState
d_HasRewardAddress'45'GovActionState_2326 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
d_HasRewardAddress'45'GovActionState_2326 ~v0
  = du_HasRewardAddress'45'GovActionState_2326
du_HasRewardAddress'45'GovActionState_2326 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
du_HasRewardAddress'45'GovActionState_2326
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasRewardAddress'45'GovActionState_1366
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasRewardAddress-GovProposal
d_HasRewardAddress'45'GovProposal_2328 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
d_HasRewardAddress'45'GovProposal_2328 ~v0
  = du_HasRewardAddress'45'GovProposal_2328
du_HasRewardAddress'45'GovProposal_2328 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
du_HasRewardAddress'45'GovProposal_2328
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasRewardAddress'45'GovProposal_1368
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasVote
d_HasVote_2330 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasVote-GovVote
d_HasVote'45'GovVote_2334 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1238
d_HasVote'45'GovVote_2334 ~v0 = du_HasVote'45'GovVote_2334
du_HasVote'45'GovVote_2334 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1238
du_HasVote'45'GovVote_2334
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasVote'45'GovVote_1348
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasVoteDelegs
d_HasVoteDelegs_2336 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HashProtected
d_HashProtected_2340 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () -> ()
d_HashProtected_2340 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.NeedsHash
d_NeedsHash_2344 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_950 ->
  ()
d_NeedsHash_2344 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.Policy
d_Policy_2350 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Policy_2350 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.PolicyOf
d_PolicyOf_2352 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1258 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_2352 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_PolicyOf_1266
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.Show-GovRole
d_Show'45'GovRole_2356 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_2356 ~v0 = du_Show'45'GovRole_2356
du_Show'45'GovRole_2356 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'GovRole_2356
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_Show'45'GovRole_1370
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.Show-VDeleg
d_Show'45'VDeleg_2358 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_2358 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_Show'45'VDeleg_1480
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2868
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.VDeleg
d_VDeleg_2366 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.Vote
d_Vote_2368 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.VoteDelegs
d_VoteDelegs_2370 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VoteDelegs_2370 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.VoteDelegsOf
d_VoteDelegsOf_2372 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1162 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_2372 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1170
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.VoteOf
d_VoteOf_2374 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1238 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_982
d_VoteOf_2374 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteOf_1246
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.activeDRepsOf
d_activeDRepsOf_2378 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1278 ->
  AgdaAny -> Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_2378 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (\ v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_activeDRepsOf_1658
           (coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2868
              (coe v1))
           v3 v4 v5)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.activeInEpoch
d_activeInEpoch_2380 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_2380 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.gaData
d_gaData_2382 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_968 ->
  AgdaAny
d_gaData_2382 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaData_976
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.gaType
d_gaType_2384 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_968 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_950
d_gaType_2384 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_974
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.govVoterCredential
d_govVoterCredential_2386 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_990 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_2386 ~v0 = du_govVoterCredential_2386
du_govVoterCredential_2386 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_990 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_govVoterCredential_2386
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_govVoterCredential_1128
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.isGovVoterDRep
d_isGovVoterDRep_2388 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_990 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_2388 ~v0 = du_isGovVoterDRep_2388
du_isGovVoterDRep_2388 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_990 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_isGovVoterDRep_2388
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_isGovVoterDRep_1124
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.proposedCC
d_proposedCC_2392 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_968 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_2392 ~v0 = du_proposedCC_2392
du_proposedCC_2392 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_968 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_proposedCC_2392
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_proposedCC_1136
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasAnchor.AnchorOf
d_AnchorOf_2408 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1298 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_1002
d_AnchorOf_2408 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_AnchorOf_1306
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasDReps.DRepsOf
d_DRepsOf_2412 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1278 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_2412 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1286
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasDeposit.DepositOf
d_DepositOf_2416 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1318 ->
  AgdaAny -> Integer
d_DepositOf_2416 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DepositOf_1326
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasGovAction.GovActionOf
d_GovActionOf_2420 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1180 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_968
d_GovActionOf_2420 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionOf_1186
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasGovActionType.GovActionTypeOf
d_GovActionTypeOf_2424 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1144 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_950
d_GovActionTypeOf_2424 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionTypeOf_1150
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasGovVoter.GovVoterOf
d_GovVoterOf_2428 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1198 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_990
d_GovVoterOf_2428 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVoterOf_1206
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasGovVotes.GovVotesOf
d_GovVotesOf_2432 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1218 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_1034
d_GovVotesOf_2432 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVotesOf_1226
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasPolicy.PolicyOf
d_PolicyOf_2436 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1258 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_2436 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_PolicyOf_1266
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasVote.VoteOf
d_VoteOf_2440 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1238 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_982
d_VoteOf_2440 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteOf_1246
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasVoteDelegs.VoteDelegsOf
d_VoteDelegsOf_2444 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1162 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_2444 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1170
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasAccount.AccountOf
d_AccountOf_2464 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasAccount_210 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194
d_AccountOf_2464 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_AccountOf_218
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasAttrSize.AttrSizeOf
d_AttrSizeOf_2468 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214 ->
  AgdaAny -> Integer
d_AttrSizeOf_2468 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_222
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasBalanceIntervals.BalanceIntervalsOf
d_BalanceIntervalsOf_2472 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasBalanceIntervals_4514 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_BalanceIntervalsOf_2472 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_BalanceIntervalsOf_4522
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCCMaxTermLength.CCMaxTermLengthOf
d_CCMaxTermLengthOf_2476 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasCCMaxTermLength_652 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_2476 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_CCMaxTermLengthOf_660
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCollateralInputs.CollateralInputsOf
d_CollateralInputsOf_2480 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCollateralInputs_4064 ->
  AgdaAny -> AgdaAny
d_CollateralInputsOf_2480 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CollateralInputsOf_4074
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCredential.CredentialOf
d_CredentialOf_2484 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_2484 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCurrentTreasury.CurrentTreasuryOf
d_CurrentTreasuryOf_2488 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4474 ->
  AgdaAny -> Maybe Integer
d_CurrentTreasuryOf_2488 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CurrentTreasuryOf_4482
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDCerts.DCertsOf
d_DCertsOf_2492 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4294 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1462]
d_DCertsOf_2492 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DCertsOf_4302
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasData.DataOf
d_DataOf_2496 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4334 ->
  AgdaAny -> [Integer]
d_DataOf_2496 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DataOf_4342
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDirectDeposits.DirectDepositsOf
d_DirectDepositsOf_2500 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDirectDeposits_4494 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DirectDepositsOf_2500 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DirectDepositsOf_4502
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasFees?.FeesOf?
d_FeesOf'63'_2504 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasFees'63'_4274 ->
  AgdaAny -> Maybe Integer
d_FeesOf'63'_2504 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_FeesOf'63'_4282
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGovProposals.GovProposalsOf
d_GovProposalsOf_2508 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGovProposals_4314 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1068]
d_GovProposalsOf_2508 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_GovProposalsOf_4322
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGuards.GuardsOf
d_GuardsOf_2512 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4394 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_GuardsOf_2512 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_GuardsOf_4402
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasIsValidFlag.IsValidFlagOf
d_IsValidFlagOf_2516 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasIsValidFlag_4554 ->
  AgdaAny -> Bool
d_IsValidFlagOf_2516 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_IsValidFlagOf_4562
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasListOfGovProposals.ListOfGovProposalsOf
d_ListOfGovProposalsOf_2520 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovProposals_4354 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1068]
d_ListOfGovProposalsOf_2520 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ListOfGovProposalsOf_4362
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasListOfGovVotes.ListOfGovVotesOf
d_ListOfGovVotesOf_2524 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovVotes_4374 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1014]
d_ListOfGovVotesOf_2524 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ListOfGovVotesOf_4382
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasMaybeNetworkId.MaybeNetworkIdOf
d_MaybeNetworkIdOf_2528 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174 ->
  AgdaAny -> Maybe Integer
d_MaybeNetworkIdOf_2528 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_182
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasMintedValue.MintedValueOf
d_MintedValueOf_2532 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4254 ->
  AgdaAny -> Integer
d_MintedValueOf_2532 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_MintedValueOf_4262
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasNetworkId.NetworkIdOf
d_NetworkIdOf_2536 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154 ->
  AgdaAny -> Integer
d_NetworkIdOf_2536 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_162
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasPParams.PParamsOf
d_PParamsOf_2540 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_632 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_PParamsOf_2540 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_640
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRedeemers.RedeemersOf
d_RedeemersOf_2544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_4042 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RedeemersOf_2544 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_RedeemersOf_4050
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasReferenceInputs.ReferenceInputsOf
d_ReferenceInputsOf_2548 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4234 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_ReferenceInputsOf_2548 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ReferenceInputsOf_4242
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRequiredSingerHashes.RequiredSignerHashesOf
d_RequiredSignerHashesOf_2552 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRequiredSingerHashes_4454 ->
  AgdaAny -> [Integer]
d_RequiredSignerHashesOf_2552 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_RequiredSignerHashesOf_4462
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRewardAddress.RewardAddressOf
d_RewardAddressOf_2556 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_2556 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasScripts.ScriptsOf
d_ScriptsOf_2560 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasScripts_4414 ->
  AgdaAny -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_ScriptsOf_2560 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ScriptsOf_4422
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasSize.SizeOf
d_SizeOf_2564 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_4154 ->
  AgdaAny -> Integer
d_SizeOf_2564 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SizeOf_4162
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasSpendInputs.SpendInputsOf
d_SpendInputsOf_2568 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4214 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_SpendInputsOf_2568 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4222
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasStartingBalanceIntervals.StartingBalanceIntervalsOf
d_StartingBalanceIntervalsOf_2572 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasStartingBalanceIntervals_4534 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StartingBalanceIntervalsOf_2572 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_StartingBalanceIntervalsOf_4542
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasSubTransactions.SubTransactionsOf
d_SubTransactionsOf_2576 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_4112 ->
  AgdaAny -> AgdaAny
d_SubTransactionsOf_2576 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SubTransactionsOf_4122
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTopLevelGuards.TopLevelGuardsOf
d_TopLevelGuardsOf_2580 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTopLevelGuards_4174 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_TopLevelGuardsOf_2580 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TopLevelGuardsOf_4182
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTxBody.TxBodyOf
d_TxBodyOf_2584 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxBody_4000 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3842
d_TxBodyOf_2584 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxBodyOf_4010
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTxFees.TxFeesOf
d_TxFeesOf_2588 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxFees_4088 ->
  AgdaAny -> AgdaAny
d_TxFeesOf_2588 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxFeesOf_4098
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTxId.TxIdOf
d_TxIdOf_2592 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_4134 ->
  AgdaAny -> Integer
d_TxIdOf_2592 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxIdOf_4142
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTxOuts.TxOutsOf
d_TxOutsOf_2596 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4434 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_TxOutsOf_2596 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4442
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTxWitnesses.TxWitnessesOf
d_TxWitnessesOf_2600 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxWitnesses_4022 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3844
d_TxWitnessesOf_2600 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxWitnessesOf_4030
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasUTxO.UTxOOf
d_UTxOOf_2604 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3820 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_2604 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3828
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasValidInterval.ValidIntervalOf
d_ValidIntervalOf_2608 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_4194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ValidIntervalOf_2608 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ValidIntervalOf_4202
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasWithdrawals.WithdrawalsOf
d_WithdrawalsOf_2612 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_2612 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_202
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidHomomorphism.homo
d_homo_2634 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2634 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2636 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2636 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2638 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2638 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2640 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2640 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidHomomorphism.cong
d_cong_2642 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2642 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidIsomorphism.homo
d_homo_2646 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2646 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidIsomorphism.injective
d_injective_2648 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_2648 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2650 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2650 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2652 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_2652 ~v0 = du_isMagmaIsomorphism_2652
du_isMagmaIsomorphism_2652 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_2652 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2654 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2654 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_2654 v2
du_isMagmaMonomorphism_2654 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2654 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2656 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2656 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2658 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_2658 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2660 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2660 v0
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
d_isRelIsomorphism_2662 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_2662 ~v0 ~v1 v2 = du_isRelIsomorphism_2662 v2
du_isRelIsomorphism_2662 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_2662 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2664 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2664 ~v0 ~v1 v2 = du_isRelMonomorphism_2664 v2
du_isRelMonomorphism_2664 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2664 v0
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
d_surjective_2666 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2666 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2668 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2668 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidIsomorphism.cong
d_cong_2670 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2670 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidMonomorphism.homo
d_homo_2674 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2674 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidMonomorphism.injective
d_injective_2676 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_2676 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2678 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2678 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2680 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2680 ~v0 = du_isMagmaMonomorphism_2680
du_isMagmaMonomorphism_2680 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2680 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2682 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2682 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2684 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2684 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2686 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2686 ~v0 ~v1 v2 = du_isRelMonomorphism_2686 v2
du_isRelMonomorphism_2686 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2686 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2688 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2688 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidMonomorphism.cong
d_cong_2690 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2690 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.LanguageCostModels.languageCostModels
d_languageCostModels_2694 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_2694 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_684
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_2714 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_326 ->
  [Integer] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2714 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_346
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_2716 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_326 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2716 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'P1Script_350
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_2718 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_326 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_2718 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_348
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.P1ScriptStructure.P1Script
d_P1Script_2720 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_326 ->
  ()
d_P1Script_2720 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.P1ScriptStructure.validP1Script
d_validP1Script_2722 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_326 ->
  [Integer] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_2722 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.Emax
d_Emax_2738 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_Emax_2738 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_468
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.a
d_a_2740 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_a_2740 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_438 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.a0
d_a0_2742 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2742 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_472
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.b
d_b_2744 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_b_2744 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_440 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.ccMaxTermLength
d_ccMaxTermLength_2746 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMaxTermLength_2746 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_484
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.ccMinSize
d_ccMinSize_2748 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMinSize_2748 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_482
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_2750 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_coinsPerUTxOByte_2750 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_452
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.collateralPercentage
d_collateralPercentage_2752 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_collateralPercentage_2752 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_474
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.costmdls
d_costmdls_2754 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_costmdls_2754 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_costmdls_494
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.costmdlsAssoc
d_costmdlsAssoc_2756 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680
d_costmdlsAssoc_2756 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdlsAssoc_476
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.drepActivity
d_drepActivity_2758 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_drepActivity_2758 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_492
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.drepDeposit
d_drepDeposit_2760 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_drepDeposit_2760 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_490
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.drepThresholds
d_drepThresholds_2762 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244
d_drepThresholds_2762 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_480
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.govActionDeposit
d_govActionDeposit_2764 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionDeposit_2764 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_488
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.govActionLifetime
d_govActionLifetime_2766 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionLifetime_2766 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_486
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.keyDeposit
d_keyDeposit_2768 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_keyDeposit_2768 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_442
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.leiosCommitteeSize
d_leiosCommitteeSize_2770 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosCommitteeSize_2770 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosCommitteeSize_430
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.leiosDiffusionPeriod
d_leiosDiffusionPeriod_2772 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosDiffusionPeriod_2772 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosDiffusionPeriod_424
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.leiosHeaderPeriod
d_leiosHeaderPeriod_2774 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosHeaderPeriod_2774 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosHeaderPeriod_420
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.leiosMaxEBExUnits
d_leiosMaxEBExUnits_2776 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leiosMaxEBExUnits_2776 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBExUnits_434
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.leiosMaxEBSize
d_leiosMaxEBSize_2778 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosMaxEBSize_2778 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBSize_426
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.leiosMaxEBTxsSize
d_leiosMaxEBTxsSize_2780 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosMaxEBTxsSize_2780 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBTxsSize_428
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.leiosMaxRefScriptSizePerEB
d_leiosMaxRefScriptSizePerEB_2782 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosMaxRefScriptSizePerEB_2782 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxRefScriptSizePerEB_436
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.leiosQuorumStakeThreshold
d_leiosQuorumStakeThreshold_2784 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_leiosQuorumStakeThreshold_2784 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosQuorumStakeThreshold_432
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.leiosVotingPeriod
d_leiosVotingPeriod_2786 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_leiosVotingPeriod_2786 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosVotingPeriod_422
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.maxBlockExUnits
d_maxBlockExUnits_2788 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_2788 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_412
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.maxBlockSize
d_maxBlockSize_2790 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxBlockSize_2790 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_404
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.maxCollateralInputs
d_maxCollateralInputs_2792 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxCollateralInputs_2792 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_416
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.maxHeaderSize
d_maxHeaderSize_2794 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxHeaderSize_2794 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_408
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2796 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerBlock_2796 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_460
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2798 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerTx_2798 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_458
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.maxTxExUnits
d_maxTxExUnits_2800 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_2800 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_410
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.maxTxSize
d_maxTxSize_2802 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxTxSize_2802 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_406
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.maxValSize
d_maxValSize_2804 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxValSize_2804 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_414
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2806 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2806 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_456
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.minPoolCost
d_minPoolCost_2808 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minPoolCost_2808 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_446
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.minUTxOValue
d_minUTxOValue_2810 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minUTxOValue_2810 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_466
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.monetaryExpansion
d_monetaryExpansion_2812 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2812 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_448
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.nopt
d_nopt_2814 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_nopt_2814 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_470
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.poolDeposit
d_poolDeposit_2816 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_poolDeposit_2816 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_444
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.poolThresholds
d_poolThresholds_2818 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288
d_poolThresholds_2818 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_478
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.prices
d_prices_2820 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_2820 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_454
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.pv
d_pv_2822 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2822 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_418
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_2824 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2824 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_464
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.refScriptCostStride
d_refScriptCostStride_2826 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2826 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_462
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.treasuryCut
d_treasuryCut_2828 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2828 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_450
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsDiff.UpdateT
d_UpdateT_2832 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1724 ->
  ()
d_UpdateT_2832 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsDiff.applyUpdate
d_applyUpdate_2834 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1724 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyUpdate_2834 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1740
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsDiff.ppWF?
d_ppWF'63'_2836 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1724 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2836 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1748
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_2838 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1724 ->
  AgdaAny -> ()
d_ppdWellFormed_2838 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsDiff.updateGroups
d_updateGroups_2840 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1724 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_updateGroups_2840 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1742
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate._?↗_
d__'63''8599'__2844 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__2844 ~v0 = du__'63''8599'__2844
du__'63''8599'__2844 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__2844 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du__'63''8599'__1470
      v1 v2
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate._∪ˡᶜᵐ_
d__'8746''737''7580''7504'__2846 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680
d__'8746''737''7580''7504'__2846 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.C_mkLanguageCostModels_686
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                 (coe
                    MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1516
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_470
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
                             (coe v1))))
                    (coe
                       MAlonzo.Code.Data.List.Base.du__'43''43'__32
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_684
                          (coe v2))
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_684
                          (coe v3)))))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_2848 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_2848 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParamsUpdate_1722
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1414
            (coe v1))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_2850 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_2854 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyPParamsUpdate_2854 v0
  = let v1 = d_HSTransactionStructure_748 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_applyPParamsUpdate_1524
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2210
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_2856 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_modifiedUpdateGroups_2856 ~v0 = du_modifiedUpdateGroups_2856
du_modifiedUpdateGroups_2856 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
du_modifiedUpdateGroups_2856
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiedUpdateGroups_1454
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_2858 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
d_modifiesEconomicGroup_2858 ~v0 = du_modifiesEconomicGroup_2858
du_modifiesEconomicGroup_2858 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
du_modifiesEconomicGroup_2858
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesEconomicGroup_1070
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_2860 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
d_modifiesGovernanceGroup_2860 ~v0
  = du_modifiesGovernanceGroup_2860
du_modifiesGovernanceGroup_2860 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
du_modifiesGovernanceGroup_2860
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesGovernanceGroup_1262
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_2862 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
d_modifiesNetworkGroup_2862 ~v0 = du_modifiesNetworkGroup_2862
du_modifiesNetworkGroup_2862 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
du_modifiesNetworkGroup_2862
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesNetworkGroup_974
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_2864 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
d_modifiesSecurityGroup_2864 ~v0 = du_modifiesSecurityGroup_2864
du_modifiesSecurityGroup_2864 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
du_modifiesSecurityGroup_2864
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesSecurityGroup_1358
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_2866 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
d_modifiesTechnicalGroup_2866 ~v0 = du_modifiesTechnicalGroup_2866
du_modifiesTechnicalGroup_2866 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Bool
du_modifiesTechnicalGroup_2866
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesTechnicalGroup_1166
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_2868 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  ()
d_paramsUpdateWellFormed_2868 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_2870 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_2870 v0
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
                     MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_776
                     (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_778
                        (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_780
                           (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_782
                              (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_824
                                 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_816
                                    (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_846
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_864
                                          (coe v0))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_854
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_856
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_858
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
         (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
         (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.≡-update
d_'8801''45'update_2872 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'update_2872 ~v0 = du_'8801''45'update_2872
du_'8801''45'update_2872 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8801''45'update_2872 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_'8801''45'update_1484
      v1
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_2876 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_Emax_2876 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_842
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.a
d_a_2878 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_a_2878 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_810 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.a0
d_a0_2880 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2880 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_840
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.b
d_b_2882 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_b_2882 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_812 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_2884 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_ccMaxTermLength_2884 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_864
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_2886 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_ccMinSize_2886 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_862
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_2888 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_coinsPerUTxOByte_2888 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_824
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_2890 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_collateralPercentage_2890 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_846
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_2892 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680
d_costmdls_2892 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdls_848
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_2894 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_drepActivity_2894 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_860
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_2896 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_drepDeposit_2896 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_858
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_2898 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244
d_drepThresholds_2898 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_850
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_2900 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_govActionDeposit_2900 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_856
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_2902 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_govActionLifetime_2902 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_854
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_2904 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_keyDeposit_2904 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_814
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.leiosCommitteeSize
d_leiosCommitteeSize_2906 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_leiosCommitteeSize_2906 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosCommitteeSize_802
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.leiosDiffusionPeriod
d_leiosDiffusionPeriod_2908 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_leiosDiffusionPeriod_2908 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosDiffusionPeriod_796
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.leiosHeaderPeriod
d_leiosHeaderPeriod_2910 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_leiosHeaderPeriod_2910 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosHeaderPeriod_792
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.leiosMaxEBExUnits
d_leiosMaxEBExUnits_2912 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leiosMaxEBExUnits_2912 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBExUnits_806
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.leiosMaxEBSize
d_leiosMaxEBSize_2914 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_leiosMaxEBSize_2914 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBSize_798
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.leiosMaxEBTxsSize
d_leiosMaxEBTxsSize_2916 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_leiosMaxEBTxsSize_2916 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxEBTxsSize_800
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.leiosMaxRefScriptSizePerEB
d_leiosMaxRefScriptSizePerEB_2918 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_leiosMaxRefScriptSizePerEB_2918 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosMaxRefScriptSizePerEB_808
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.leiosQuorumStakeThreshold
d_leiosQuorumStakeThreshold_2920 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_leiosQuorumStakeThreshold_2920 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosQuorumStakeThreshold_804
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.leiosVotingPeriod
d_leiosVotingPeriod_2922 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_leiosVotingPeriod_2922 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_leiosVotingPeriod_794
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_2924 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_2924 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_788
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_2926 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_maxBlockSize_2926 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_776
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_2928 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_maxCollateralInputs_2928 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_784
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_2930 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_maxHeaderSize_2930 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_780
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2932 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_2932 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_832
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2934 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_maxRefScriptSizePerTx_2934 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_830
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_2936 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_2936 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_786
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_2938 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_maxTxSize_2938 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_778
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_2940 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_maxValSize_2940 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_782
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2942 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2942 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_828
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.minPoolCost
d_minPoolCost_2944 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_minPoolCost_2944 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minPoolCost_818
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_2946 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_minUTxOValue_2946 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_838
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_2948 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2948 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_820
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_2950 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_nopt_2950 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_844
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_2952 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe Integer
d_poolDeposit_2952 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_816
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_2954 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288
d_poolThresholds_2954 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_852
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.prices
d_prices_2956 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_2956 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_826
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.pv
d_pv_2958 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2958 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_790
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_2960 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2960 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_836
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_2962 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2962 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_834
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_2964 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_684 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2964 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_822
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure._≥ᵉ_
d__'8805''7497'__2978 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2978 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.CostModel
d_CostModel_2980 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_CostModel_2980 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.T
d_T_2982 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_T_2982 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.THash
d_THash_2984 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_THash_2984 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.Dataʰ
d_Data'688'_2986 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_2986 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.Datum
d_Datum_2988 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_Datum_2988 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2990 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2990 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validPlutusScript_518
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_2992 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2992 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEQ'45'Prices_480
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_2994 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2994 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'CostModel_464
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2996 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2996 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_478
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2998 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2998 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'LangDepView_466
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_3000 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_3000 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_470
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.DecEq-T
d_DecEq'45'T_3002 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_3002 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_3004 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_3004 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_3006 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_3006 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_460
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.ExUnits
d_ExUnits_3008 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_ExUnits_3008 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_3010 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_3010 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_462
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.LangDepView
d_LangDepView_3012 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_LangDepView_3012 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.Language
d_Language_3014 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_Language_3014 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.PlutusScript
d_PlutusScript_3016 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_PlutusScript_3016 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.PlutusV1
d_PlutusV1_3018 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny
d_PlutusV1_3018 ~v0 = du_PlutusV1_3018
du_PlutusV1_3018 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny
du_PlutusV1_3018
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_486
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.PlutusV2
d_PlutusV2_3020 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny
d_PlutusV2_3020 ~v0 = du_PlutusV2_3020
du_PlutusV2_3020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny
du_PlutusV2_3020
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_488
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.PlutusV3
d_PlutusV3_3022 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny
d_PlutusV3_3022 ~v0 = du_PlutusV3_3022
du_PlutusV3_3022 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny
du_PlutusV3_3022
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_490
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.PlutusV4
d_PlutusV4_3024 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny
d_PlutusV4_3024 ~v0 = du_PlutusV4_3024
du_PlutusV4_3024 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny
du_PlutusV4_3024
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_492
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.Prices
d_Prices_3026 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_Prices_3026 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.Redeemer
d_Redeemer_3028 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  ()
d_Redeemer_3028 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_3030 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_3030 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'CostModel_468
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_3032 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_3032 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_482
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.Show-Language
d_Show'45'Language_3034 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_3034 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Language_472
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.Show-Prices
d_Show'45'Prices_3036 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_3036 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Prices_484
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.Show-THash
d_Show'45'THash_3038 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_3038 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.T-Hashable
d_T'45'Hashable_3040 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_3040 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.T-isHashable
d_T'45'isHashable_3042 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_3042 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.fromPlutusLanguage
d_fromPlutusLanguage_3044 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_3044 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_fromPlutusLanguage_458
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.language
d_language_3046 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny -> AgdaAny
d_language_3046 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_520
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.validPlutusScript
d_validPlutusScript_3048 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_3048 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_3050 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_3050 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8805''7497''45'Dec_476
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PoolThresholds.Q1
d_Q1_3054 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_3054 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q1_300
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PoolThresholds.Q2a
d_Q2a_3056 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_3056 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q2a_302
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PoolThresholds.Q2b
d_Q2b_3058 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_3058 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q2b_304
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PoolThresholds.Q4
d_Q4_3060 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_3060 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q4_306
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PoolThresholds.Q5
d_Q5_3062 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_3062 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q5_308
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.RewardAddress.net
d_net_3066 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  Integer
d_net_3066 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.RewardAddress.stake
d_stake_3068 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_3068 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure._≥ᵉ_
d__'8805''7497'__3072 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__3072 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.CostModel
d_CostModel_3074 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_CostModel_3074 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.T
d_T_3076 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_T_3076 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.THash
d_THash_3078 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_THash_3078 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.Dataʰ
d_Data'688'_3080 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_3080 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.Datum
d_Datum_3082 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_Datum_3082 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_3084 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  [Integer] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_3084 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_346
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_3086 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_3086 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validPlutusScript_518
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_3088 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_3088 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEQ'45'Prices_480
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_3090 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_3090 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'CostModel_464
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_3092 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_3092 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_478
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_3094 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_3094 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'LangDepView_466
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_3096 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_3096 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_470
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_3098 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_3098 ~v0
  = du_DecEq'45'LanguageCostModels_3098
du_DecEq'45'LanguageCostModels_3098 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'LanguageCostModels_3098
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_DecEq'45'LanguageCostModels_688
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_3100 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_3100 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'P1Script_350
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.DecEq-T
d_DecEq'45'T_3102 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_3102 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_3104 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_3104 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_3106 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_3106 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_460
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.ExUnits
d_ExUnits_3108 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_ExUnits_3108 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_3110 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_3110 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_348
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_3112 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_3112 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_462
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_3114 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_3114 ~v0 = du_Hashable'45'Script_3114
du_Hashable'45'Script_3114 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
du_Hashable'45'Script_3114
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_652
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.LangDepView
d_LangDepView_3116 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_LangDepView_3116 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.Language
d_Language_3118 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_Language_3118 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.LanguageCostModels
d_LanguageCostModels_3120 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.P1Script
d_P1Script_3124 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_P1Script_3124 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.PlutusScript
d_PlutusScript_3126 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_PlutusScript_3126 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.PlutusV1
d_PlutusV1_3128 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny
d_PlutusV1_3128 ~v0 v1 = du_PlutusV1_3128 v1
du_PlutusV1_3128 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny
du_PlutusV1_3128 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_486
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.PlutusV2
d_PlutusV2_3130 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny
d_PlutusV2_3130 ~v0 v1 = du_PlutusV2_3130 v1
du_PlutusV2_3130 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny
du_PlutusV2_3130 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_488
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.PlutusV3
d_PlutusV3_3132 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny
d_PlutusV3_3132 ~v0 v1 = du_PlutusV3_3132 v1
du_PlutusV3_3132 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny
du_PlutusV3_3132 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_490
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.PlutusV4
d_PlutusV4_3134 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny
d_PlutusV4_3134 ~v0 v1 = du_PlutusV4_3134 v1
du_PlutusV4_3134 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny
du_PlutusV4_3134 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_492
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.Prices
d_Prices_3136 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_Prices_3136 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.Redeemer
d_Redeemer_3138 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_Redeemer_3138 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.Script
d_Script_3140 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  ()
d_Script_3140 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.Show-CostModel
d_Show'45'CostModel_3142 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_3142 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'CostModel_468
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_3144 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_3144 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_482
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.Show-Language
d_Show'45'Language_3146 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_3146 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Language_472
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.Show-LanguageCostModels
d_Show'45'LanguageCostModels_3148 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_3148 ~v0
  = du_Show'45'LanguageCostModels_3148
du_Show'45'LanguageCostModels_3148 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'LanguageCostModels_3148
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Show'45'LanguageCostModels_694
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.Show-Prices
d_Show'45'Prices_3150 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_3150 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Prices_484
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.Show-THash
d_Show'45'THash_3152 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_3152 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.T-Hashable
d_T'45'Hashable_3154 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_3154 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.T-isHashable
d_T'45'isHashable_3156 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_3156 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_444
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
            (coe v0)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.fromPlutusLanguage
d_fromPlutusLanguage_3158 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_3158 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_fromPlutusLanguage_458
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_3160 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_3160 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_hashRespectsUnion_570
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.isNativeScript
d_isNativeScript_3162 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_3162 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.isP1Script
d_isP1Script_3164 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_3164 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.isP1Script?
d_isP1Script'63'_3166 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_3166 ~v0 = du_isP1Script'63'_3166
du_isP1Script'63'_3166 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_3166 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP1Script'63'_658
      v1
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.isP2Script
d_isP2Script_3168 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_3168 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.isP2Script?
d_isP2Script'63'_3170 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_3170 ~v0 = du_isP2Script'63'_3170
du_isP2Script'63'_3170 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_3170 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP2Script'63'_672
      v1
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.language
d_language_3172 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny -> AgdaAny
d_language_3172 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_520
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.languageCostModels
d_languageCostModels_3174 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_3174 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_684
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.p1s
d_p1s_3178 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_326
d_p1s_3178 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_550
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.ps
d_ps_3180 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_364
d_ps_3180 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.toP1Script
d_toP1Script_3182 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_3182 ~v0 = du_toP1Script_3182
du_toP1Script_3182 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_3182 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP1Script_666
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.toP2Script
d_toP2Script_3184 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_3184 ~v0 = du_toP2Script_3184
du_toP2Script_3184 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_3184 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_678
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.validP1Script
d_validP1Script_3186 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  [Integer] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_3186 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.validPlutusScript
d_validPlutusScript_3188 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_3188 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_3190 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_524 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_3190 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8805''7497''45'Dec_476
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_572
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.LanguageCostModels.languageCostModels
d_languageCostModels_3194 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_680 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_3194 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_684
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra._∙_
d__'8729'__3198 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__3198 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra._≈_
d__'8776'__3200 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__3200 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__3202 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__3202 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_3204 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_3204 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_3206 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_3206 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_3208 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_3212 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_3216 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.Value
d_Value_3220 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  ()
d_Value_3220 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_3222 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_3222 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.addValue
d_addValue_3224 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_3224 ~v0 = du_addValue_3224
du_addValue_3224 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
du_addValue_3224
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.coin
d_coin_3226 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_coin_3226 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_3228 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_3228 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_3230 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_3230 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_3232 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_3232 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.inject
d_inject_3234 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> AgdaAny
d_inject_3234 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.monoid
d_monoid_3236 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_3236 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1066
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.policies
d_policies_3238 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> [Integer]
d_policies_3238 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.rawMonoid
d_rawMonoid_3240 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_3240 v0
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
d_size_3242 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_size_3242 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.sumᵛ
d_sum'7515'_3244 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_3244 ~v0 = du_sum'7515'_3244
du_sum'7515'_3244 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
du_sum'7515'_3244
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.ε
d_ε_3246 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny
d_ε_3246 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_3250 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_3250 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_3252 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_3252 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_3254 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_3254 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_3256 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_3256 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_3258 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_3258 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_3262 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_3262 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_3264 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_3264 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_3266 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_3266 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_3268 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_3268 ~v0 = du_isMagmaIsomorphism_3268
du_isMagmaIsomorphism_3268 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_3268 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_3270 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_3270 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_3270 v2
du_isMagmaMonomorphism_3270 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_3270 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_3272 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_3272 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_3274 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_3274 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_3276 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_3276 v0
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
d_isRelIsomorphism_3278 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_3278 ~v0 ~v1 v2 = du_isRelIsomorphism_3278 v2
du_isRelIsomorphism_3278 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_3278 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_3280 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_3280 ~v0 ~v1 v2 = du_isRelMonomorphism_3280 v2
du_isRelMonomorphism_3280 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_3280 v0
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
d_surjective_3282 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_3282 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_3284 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_3284 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_3286 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_3286 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_3290 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_3290 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_3292 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_3292 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_3294 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_3294 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_3296 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_3296 ~v0 = du_isMagmaMonomorphism_3296
du_isMagmaMonomorphism_3296 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_3296 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_3298 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_3298 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_3300 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_3300 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_3302 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_3302 ~v0 ~v1 v2 = du_isRelMonomorphism_3302 v2
du_isRelMonomorphism_3302 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_3302 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_3304 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_3304 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_3306 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_3306 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Tx.isValid
d_isValid_3310 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  AgdaAny
d_isValid_3310 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_isValid_3864
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Tx.txAuxData
d_txAuxData_3312 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  Maybe Integer
d_txAuxData_3312 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txAuxData_3866
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Tx.txBody
d_txBody_3314 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3842
d_txBody_3314 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3858
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Tx.txSize
d_txSize_3316 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  Integer
d_txSize_3316 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSize_3862
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Tx.txWitnesses
d_txWitnesses_3318 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3844
d_txWitnesses_3318 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3860
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.collateralInputs
d_collateralInputs_3322 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3842 ->
  AgdaAny
d_collateralInputs_3322 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3922
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.currentTreasury
d_currentTreasury_3324 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3842 ->
  Maybe Integer
d_currentTreasury_3324 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_currentTreasury_3946
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.mint
d_mint_3326 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3842 ->
  Integer
d_mint_3326 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_mint_3948
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.referenceInputs
d_referenceInputs_3328 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3842 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_referenceInputs_3328 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_referenceInputs_3920
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.requiredSignerHashes
d_requiredSignerHashes_3330 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3842 ->
  [Integer]
d_requiredSignerHashes_3330 ~v0 = du_requiredSignerHashes_3330
du_requiredSignerHashes_3330 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3842 ->
  [Integer]
du_requiredSignerHashes_3330 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_requiredSignerHashes_3964
      v1
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.scriptIntegrityHash
d_scriptIntegrityHash_3332 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3842 ->
  Maybe Integer
d_scriptIntegrityHash_3332 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptIntegrityHash_3950
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.txADhash
d_txADhash_3334 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3842 ->
  Maybe Integer
d_txADhash_3334 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txADhash_3936
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.txBalanceIntervals
d_txBalanceIntervals_3336 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3842 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txBalanceIntervals_3336 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBalanceIntervals_3960
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.txCerts
d_txCerts_3338 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3842 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1462]
d_txCerts_3338 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txCerts_3928
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.txDirectDeposits
d_txDirectDeposits_3340 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3842 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txDirectDeposits_3340 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDirectDeposits_3958
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.txDonation
d_txDonation_3342 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3842 ->
  Integer
d_txDonation_3342 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDonation_3938
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.txFee
d_txFee_3344 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3842 ->
  AgdaAny
d_txFee_3344 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txFee_3930
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.txGovProposals
d_txGovProposals_3346 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3842 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_1068]
d_txGovProposals_3346 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovProposals_3942
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.txGovVotes
d_txGovVotes_3348 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3842 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1014]
d_txGovVotes_3348 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovVotes_3940
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.txGuards
d_txGuards_3350 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3842 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_txGuards_3350 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGuards_3954
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.txId
d_txId_3352 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3842 ->
  Integer
d_txId_3352 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txId_3926
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.txIns
d_txIns_3354 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3842 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_3354 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3918
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.txNetworkId
d_txNetworkId_3356 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3842 ->
  Maybe Integer
d_txNetworkId_3356 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txNetworkId_3944
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.txOuts
d_txOuts_3358 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3842 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_3358 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txOuts_3924
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.txRequiredTopLevelGuards
d_txRequiredTopLevelGuards_3360 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3842 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txRequiredTopLevelGuards_3360 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRequiredTopLevelGuards_3956
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.txStartingBalanceIntervals
d_txStartingBalanceIntervals_3362 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3842 ->
  AgdaAny
d_txStartingBalanceIntervals_3362 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txStartingBalanceIntervals_3962
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.txSubTransactions
d_txSubTransactions_3364 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3842 ->
  AgdaAny
d_txSubTransactions_3364 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3952
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.txVldt
d_txVldt_3366 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3842 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_3366 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3934
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.txWithdrawals
d_txWithdrawals_3368 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3842 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_3368 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWithdrawals_3932
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxWitnesses.scripts
d_scripts_3372 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3844 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_3372 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scripts_3978
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxWitnesses.scriptsP1
d_scriptsP1_3374 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3844 ->
  [MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_336]
d_scriptsP1_3374 ~v0 = du_scriptsP1_3374
du_scriptsP1_3374 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3844 ->
  [MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_336]
du_scriptsP1_3374
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_scriptsP1_3984
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxWitnesses.txData
d_txData_3376 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3844 ->
  [Integer]
d_txData_3376 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txData_3980
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxWitnesses.txRedeemers
d_txRedeemers_3378 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3844 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txRedeemers_3378 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_3982
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxWitnesses.vKeySigs
d_vKeySigs_3380 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3844 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vKeySigs_3380 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_vKeySigs_3976
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__3392 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertEnv_1506 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1578 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1462] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1578 ->
  ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__3392 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__3394 a0 a1 a2 a3 a4 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__3396 a0 a1 a2 a3 a4 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__3398 a0 a1 a2 a3 a4
  = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__3400 a0 a1 a2 a3 a4 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CCHotKeys
d_CCHotKeys_3402 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_CCHotKeys_3402 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CCHotKeysOf
d_CCHotKeysOf_3404 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1686 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_3404 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CCHotKeysOf_1694
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CertEnv
d_CertEnv_3412 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CertState
d_CertState_3416 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CertStateOf
d_CertStateOf_3420 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1906 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1578
d_CertStateOf_3420 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1914
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ColdCredentialsOf
d_ColdCredentialsOf_3422 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasColdCredentials_1706 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_ColdCredentialsOf_3422 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_ColdCredentialsOf_1714
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DCert
d_DCert_3424 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DState
d_DState_3430 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DStateOf
d_DStateOf_3434 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDState_1846 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1522
d_DStateOf_3434 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1854
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-DCert
d_DecEq'45'DCert_3436 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DCert_3436 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DecEq'45'DCert_2196
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2868
         (coe d_HSTransactionStructure_748 (coe v0)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-StakePoolParams
d_DecEq'45'StakePoolParams_3438 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'StakePoolParams_3438 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DecEq'45'StakePoolParams_2192
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2868
         (coe d_HSTransactionStructure_748 (coe v0)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-StakePoolState
d_DecEq'45'StakePoolState_3440 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'StakePoolState_3440 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DecEq'45'StakePoolState_2194
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2868
         (coe d_HSTransactionStructure_748 (coe v0)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DelegEnv
d_DelegEnv_3442 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DepositsOf
d_DepositsOf_3446 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDeposits_1666 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_3446 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DepositsOf_1674
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.EpochOf
d_EpochOf_3448 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasEpoch_1926 ->
  AgdaAny -> Integer
d_EpochOf_3448 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_EpochOf_1934
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.FPools
d_FPools_3450 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_FPools_3450 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.FuturePoolsOf
d_FuturePoolsOf_3452 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasFuturePools_1746 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_FuturePoolsOf_3452 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_FuturePoolsOf_1754
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GState
d_GState_3460 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GStateOf
d_GStateOf_3464 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasGState_1886 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1562
d_GStateOf_3464 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_GStateOf_1894
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovCertEnv
d_GovCertEnv_3466 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCCHotKeys
d_HasCCHotKeys_3470 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCCHotKeys-CertState
d_HasCCHotKeys'45'CertState_3474 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1686
d_HasCCHotKeys'45'CertState_3474 ~v0
  = du_HasCCHotKeys'45'CertState_3474
du_HasCCHotKeys'45'CertState_3474 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1686
du_HasCCHotKeys'45'CertState_3474
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCCHotKeys'45'CertState_2002
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCCHotKeys-GState
d_HasCCHotKeys'45'GState_3476 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1686
d_HasCCHotKeys'45'GState_3476 ~v0 = du_HasCCHotKeys'45'GState_3476
du_HasCCHotKeys'45'GState_3476 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1686
du_HasCCHotKeys'45'GState_3476
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCCHotKeys'45'GState_1988
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCast-CertEnv
d_HasCast'45'CertEnv_3478 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_3478 ~v0 = du_HasCast'45'CertEnv_3478
du_HasCast'45'CertEnv_3478 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_3478
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'CertEnv_2016
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCast-CertState
d_HasCast'45'CertState_3480 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertState_3480 ~v0 = du_HasCast'45'CertState_3480
du_HasCast'45'CertState_3480 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertState_3480
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'CertState_2024
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCast-DState
d_HasCast'45'DState_3482 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DState_3482 ~v0 = du_HasCast'45'DState_3482
du_HasCast'45'DState_3482 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'DState_3482
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'DState_2018
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCast-DelegEnv
d_HasCast'45'DelegEnv_3484 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DelegEnv_3484 ~v0 = du_HasCast'45'DelegEnv_3484
du_HasCast'45'DelegEnv_3484 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'DelegEnv_3484
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'DelegEnv_2026
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCast-GState
d_HasCast'45'GState_3486 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GState_3486 ~v0 = du_HasCast'45'GState_3486
du_HasCast'45'GState_3486 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GState_3486
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'GState_2022
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCast-GovCertEnv
d_HasCast'45'GovCertEnv_3488 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovCertEnv_3488 ~v0 = du_HasCast'45'GovCertEnv_3488
du_HasCast'45'GovCertEnv_3488 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovCertEnv_3488
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'GovCertEnv_2030
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCast-PState
d_HasCast'45'PState_3490 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PState_3490 ~v0 = du_HasCast'45'PState_3490
du_HasCast'45'PState_3490 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'PState_3490
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'PState_2020
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCast-PoolEnv
d_HasCast'45'PoolEnv_3492 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PoolEnv_3492 ~v0 = du_HasCast'45'PoolEnv_3492
du_HasCast'45'PoolEnv_3492 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'PoolEnv_3492
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'PoolEnv_2028
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCast-StakePoolState
d_HasCast'45'StakePoolState_3494 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'StakePoolState_3494 ~v0
  = du_HasCast'45'StakePoolState_3494
du_HasCast'45'StakePoolState_3494 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'StakePoolState_3494
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'StakePoolState_2014
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCertState
d_HasCertState_3496 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCoin-CertState
d_HasCoin'45'CertState_3500 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'CertState_3500 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_HasCoin'45'CertState_2188
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2868
         (coe d_HSTransactionStructure_748 (coe v0)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasColdCredentials
d_HasColdCredentials_3502 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasColdCredentials-CertEnv
d_HasColdCredentials'45'CertEnv_3506 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasColdCredentials_1706
d_HasColdCredentials'45'CertEnv_3506 ~v0
  = du_HasColdCredentials'45'CertEnv_3506
du_HasColdCredentials'45'CertEnv_3506 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasColdCredentials_1706
du_HasColdCredentials'45'CertEnv_3506
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasColdCredentials'45'CertEnv_1968
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasColdCredentials-GovCertEnv
d_HasColdCredentials'45'GovCertEnv_3508 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasColdCredentials_1706
d_HasColdCredentials'45'GovCertEnv_3508 ~v0
  = du_HasColdCredentials'45'GovCertEnv_3508
du_HasColdCredentials'45'GovCertEnv_3508 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasColdCredentials_1706
du_HasColdCredentials'45'GovCertEnv_3508
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasColdCredentials'45'GovCertEnv_1966
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDReps-CertState
d_HasDReps'45'CertState_3510 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1278
d_HasDReps'45'CertState_3510 ~v0 = du_HasDReps'45'CertState_3510
du_HasDReps'45'CertState_3510 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1278
du_HasDReps'45'CertState_3510
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDReps'45'CertState_2000
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDReps-GState
d_HasDReps'45'GState_3512 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1278
d_HasDReps'45'GState_3512 ~v0 = du_HasDReps'45'GState_3512
du_HasDReps'45'GState_3512 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1278
du_HasDReps'45'GState_3512
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDReps'45'GState_1986
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDState
d_HasDState_3514 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDState-CertState
d_HasDState'45'CertState_3518 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDState_1846
d_HasDState'45'CertState_3518 ~v0 = du_HasDState'45'CertState_3518
du_HasDState'45'CertState_3518 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDState_1846
du_HasDState'45'CertState_3518
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDState'45'CertState_1992
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDeposits
d_HasDeposits_3520 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDeposits-DState
d_HasDeposits'45'DState_3524 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDeposits_1666
d_HasDeposits'45'DState_3524 ~v0 = du_HasDeposits'45'DState_3524
du_HasDeposits'45'DState_3524 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDeposits_1666
du_HasDeposits'45'DState_3524
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDeposits'45'DState_1976
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDeposits-GState
d_HasDeposits'45'GState_3526 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDeposits_1666
d_HasDeposits'45'GState_3526 ~v0 = du_HasDeposits'45'GState_3526
du_HasDeposits'45'GState_3526 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDeposits_1666
du_HasDeposits'45'GState_3526
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDeposits'45'GState_1990
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDeposits-PState
d_HasDeposits'45'PState_3528 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDeposits_1666
d_HasDeposits'45'PState_3528 ~v0 = du_HasDeposits'45'PState_3528
du_HasDeposits'45'PState_3528 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDeposits_1666
du_HasDeposits'45'PState_3528
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDeposits'45'PState_1982
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasEpoch
d_HasEpoch_3530 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasEpoch-CertEnv
d_HasEpoch'45'CertEnv_3534 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasEpoch_1926
d_HasEpoch'45'CertEnv_3534 ~v0 = du_HasEpoch'45'CertEnv_3534
du_HasEpoch'45'CertEnv_3534 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasEpoch_1926
du_HasEpoch'45'CertEnv_3534
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasEpoch'45'CertEnv_2012
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasEpoch-GovCertEnv
d_HasEpoch'45'GovCertEnv_3536 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasEpoch_1926
d_HasEpoch'45'GovCertEnv_3536 ~v0 = du_HasEpoch'45'GovCertEnv_3536
du_HasEpoch'45'GovCertEnv_3536 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasEpoch_1926
du_HasEpoch'45'GovCertEnv_3536
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasEpoch'45'GovCertEnv_2010
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasFuturePools
d_HasFuturePools_3538 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasFuturePools-PState
d_HasFuturePools'45'PState_3542 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasFuturePools_1746
d_HasFuturePools'45'PState_3542 ~v0
  = du_HasFuturePools'45'PState_3542
du_HasFuturePools'45'PState_3542 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasFuturePools_1746
du_HasFuturePools'45'PState_3542
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasFuturePools'45'PState_1980
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGState
d_HasGState_3544 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGState-CertState
d_HasGState'45'CertState_3548 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasGState_1886
d_HasGState'45'CertState_3548 ~v0 = du_HasGState'45'CertState_3548
du_HasGState'45'CertState_3548 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasGState_1886
du_HasGState'45'CertState_3548
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasGState'45'CertState_1996
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasPParams-CertEnv
d_HasPParams'45'CertEnv_3550 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_632
d_HasPParams'45'CertEnv_3550 ~v0 = du_HasPParams'45'CertEnv_3550
du_HasPParams'45'CertEnv_3550 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_632
du_HasPParams'45'CertEnv_3550
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPParams'45'CertEnv_1962
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasPParams-GovCertEnv
d_HasPParams'45'GovCertEnv_3552 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_632
d_HasPParams'45'GovCertEnv_3552 ~v0
  = du_HasPParams'45'GovCertEnv_3552
du_HasPParams'45'GovCertEnv_3552 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_632
du_HasPParams'45'GovCertEnv_3552
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPParams'45'GovCertEnv_1964
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasPState
d_HasPState_3554 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasPState-CertState
d_HasPState'45'CertState_3558 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1866
d_HasPState'45'CertState_3558 ~v0 = du_HasPState'45'CertState_3558
du_HasPState'45'CertState_3558 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1866
du_HasPState'45'CertState_3558
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPState'45'CertState_1994
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasPools
d_HasPools_3560 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasPools-CertState
d_HasPools'45'CertState_3564 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1726
d_HasPools'45'CertState_3564 ~v0 = du_HasPools'45'CertState_3564
du_HasPools'45'CertState_3564 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1726
du_HasPools'45'CertState_3564
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPools'45'CertState_2004
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasPools-PState
d_HasPools'45'PState_3566 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1726
d_HasPools'45'PState_3566 ~v0 = du_HasPools'45'PState_3566
du_HasPools'45'PState_3566 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1726
du_HasPools'45'PState_3566
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPools'45'PState_1978
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRetiring
d_HasRetiring_3568 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRetiring-PState
d_HasRetiring'45'PState_3572 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRetiring_1766
d_HasRetiring'45'PState_3572 ~v0 = du_HasRetiring'45'PState_3572
du_HasRetiring'45'PState_3572 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRetiring_1766
du_HasRetiring'45'PState_3572
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasRetiring'45'PState_1984
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRewards
d_HasRewards_3574 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRewards-CertState
d_HasRewards'45'CertState_3578 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1786
d_HasRewards'45'CertState_3578 ~v0
  = du_HasRewards'45'CertState_3578
du_HasRewards'45'CertState_3578 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1786
du_HasRewards'45'CertState_3578
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasRewards'45'CertState_1998
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRewards-DState
d_HasRewards'45'DState_3580 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1786
d_HasRewards'45'DState_3580 ~v0 = du_HasRewards'45'DState_3580
du_HasRewards'45'DState_3580 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1786
du_HasRewards'45'DState_3580
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasRewards'45'DState_1974
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasStake
d_HasStake_3582 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasStakeDelegs
d_HasStakeDelegs_3586 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasStakeDelegs-CertState
d_HasStakeDelegs'45'CertState_3590 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStakeDelegs_1826
d_HasStakeDelegs'45'CertState_3590 ~v0
  = du_HasStakeDelegs'45'CertState_3590
du_HasStakeDelegs'45'CertState_3590 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStakeDelegs_1826
du_HasStakeDelegs'45'CertState_3590
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasStakeDelegs'45'CertState_2008
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasStakeDelegs-DState
d_HasStakeDelegs'45'DState_3592 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStakeDelegs_1826
d_HasStakeDelegs'45'DState_3592 ~v0
  = du_HasStakeDelegs'45'DState_3592
du_HasStakeDelegs'45'DState_3592 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStakeDelegs_1826
du_HasStakeDelegs'45'DState_3592
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasStakeDelegs'45'DState_1972
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasVoteDelegs-CertState
d_HasVoteDelegs'45'CertState_3594 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1162
d_HasVoteDelegs'45'CertState_3594 ~v0
  = du_HasVoteDelegs'45'CertState_3594
du_HasVoteDelegs'45'CertState_3594 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1162
du_HasVoteDelegs'45'CertState_3594
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasVoteDelegs'45'CertState_2006
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasVoteDelegs-DState
d_HasVoteDelegs'45'DState_3596 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1162
d_HasVoteDelegs'45'DState_3596 ~v0
  = du_HasVoteDelegs'45'DState_3596
du_HasVoteDelegs'45'DState_3596 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1162
du_HasVoteDelegs'45'DState_3596
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasVoteDelegs'45'DState_1970
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasVotes
d_HasVotes_3598 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsBLSUnique
d_IsBLSUnique_3602 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Maybe Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_IsBLSUnique_3602 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsBLSUnique?
d_IsBLSUnique'63'_3604 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Maybe Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsBLSUnique'63'_3604 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_IsBLSUnique'63'_2240
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2868
         (coe d_HSTransactionStructure_748 (coe v0)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsConwayCert
d_IsConwayCert_3606 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1462 -> ()
d_IsConwayCert_3606 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsConwayCert?
d_IsConwayCert'63'_3608 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1462 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsConwayCert'63'_3608 ~v0 = du_IsConwayCert'63'_3608
du_IsConwayCert'63'_3608 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1462 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsConwayCert'63'_3608
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_IsConwayCert'63'_1638
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsPoolRegistered
d_IsPoolRegistered_3610 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> ()
d_IsPoolRegistered_3610 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsVRFUnique
d_IsVRFUnique_3612 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_IsVRFUnique_3612 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsValidBLSPoP
d_IsValidBLSPoP_3614 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_IsValidBLSPoP_3614 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsValidBLSPoP?
d_IsValidBLSPoP'63'_3616 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsValidBLSPoP'63'_3616 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_IsValidBLSPoP'63'_2246
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2868
         (coe d_HSTransactionStructure_748 (coe v0)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PState
d_PState_3624 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PStateOf
d_PStateOf_3628 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1866 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1542
d_PStateOf_3628 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PStateOf_1874
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PoolDepositsRegistered
d_PoolDepositsRegistered_3630 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1578 ->
  ()
d_PoolDepositsRegistered_3630 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PoolEnv
d_PoolEnv_3632 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Pools
d_Pools_3636 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Pools_3636 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PoolsOf
d_PoolsOf_3638 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1726 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_3638 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PoolsOf_1734
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Retiring
d_Retiring_3640 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Retiring_3640 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.RetiringOf
d_RetiringOf_3642 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRetiring_1766 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_3642 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RetiringOf_1774
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Rewards
d_Rewards_3644 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Rewards_3644 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.RewardsOf
d_RewardsOf_3646 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1786 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_3646 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RewardsOf_1794
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Stake
d_Stake_3648 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Stake_3648 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.StakeDelegs
d_StakeDelegs_3650 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_StakeDelegs_3650 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.StakeDelegsOf
d_StakeDelegsOf_3652 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStakeDelegs_1826 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_3652 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_StakeDelegsOf_1834
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.StakeOf
d_StakeOf_3654 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStake_1806 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_3654 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_StakeOf_1814
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.StakePoolParams
d_StakePoolParams_3656 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.StakePoolState
d_StakePoolState_3660 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.VotesOf
d_VotesOf_3664 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasVotes_1946 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1014]
d_VotesOf_3664 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_VotesOf_1954
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.coinFromDeposits
d_coinFromDeposits_3668 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1578 ->
  Integer
d_coinFromDeposits_3668 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_coinFromDeposits_2180
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2868
         (coe d_HSTransactionStructure_748 (coe v0)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.coinFromRewards
d_coinFromRewards_3670 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1578 ->
  Integer
d_coinFromRewards_3670 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_coinFromRewards_2178
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2868
         (coe d_HSTransactionStructure_748 (coe v0)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.cwitness
d_cwitness_3672 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1462 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_cwitness_3672 ~v0 = du_cwitness_3672
du_cwitness_3672 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1462 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_cwitness_3672
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_cwitness_1478
-- Ledger.Dijkstra.Foreign.ExternalStructures._.mkStakePoolState
d_mkStakePoolState_3680 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1352 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolState_1384
d_mkStakePoolState_3680 ~v0 = du_mkStakePoolState_3680
du_mkStakePoolState_3680 ::
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1352 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolState_1384
du_mkStakePoolState_3680
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_mkStakePoolState_1416
-- Ledger.Dijkstra.Foreign.ExternalStructures._.newCertDeposits
d_newCertDeposits_3682 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  [Integer] ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1462] ->
  Integer
d_newCertDeposits_3682 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_newCertDeposits_2130
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2868
         (coe d_HSTransactionStructure_748 (coe v0)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.poolOwners
d_poolOwners_3684 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1462 ->
  [Integer]
d_poolOwners_3684 ~v0 = du_poolOwners_3684
du_poolOwners_3684 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1462 ->
  [Integer]
du_poolOwners_3684
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_poolOwners_1494
-- Ledger.Dijkstra.Foreign.ExternalStructures._.refundCertDeposits
d_refundCertDeposits_3686 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1462] ->
  Integer
d_refundCertDeposits_3686 ~v0 = du_refundCertDeposits_3686
du_refundCertDeposits_3686 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1462] ->
  Integer
du_refundCertDeposits_3686 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_refundCertDeposits_2160
-- Ledger.Dijkstra.Foreign.ExternalStructures._.rewardsBalance
d_rewardsBalance_3694 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1522 ->
  Integer
d_rewardsBalance_3694 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewardsBalance_2118
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2868
         (coe d_HSTransactionStructure_748 (coe v0)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CertEnv.coldCredentials
d_coldCredentials_3734 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertEnv_1506 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_coldCredentials_3734 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_coldCredentials_1518
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CertEnv.epoch
d_epoch_3736 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertEnv_1506 ->
  Integer
d_epoch_3736 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_epoch_1514
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CertEnv.pp
d_pp_3738 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertEnv_1506 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pp_3738 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pp_1516 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CertState.dState
d_dState_3742 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1578 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1522
d_dState_3742 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1586
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CertState.gState
d_gState_3744 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1578 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1562
d_gState_3744 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1590
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CertState.pState
d_pState_3746 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1578 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1542
d_pState_3746 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1588
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DState.deposits
d_deposits_3766 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1522 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_3766 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1538
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DState.rewards
d_rewards_3768 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1522 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_3768 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1536
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DState.stakeDelegs
d_stakeDelegs_3770 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1522 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_3770 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_stakeDelegs_1534
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DState.voteDelegs
d_voteDelegs_3772 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1522 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_3772 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_voteDelegs_1532
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DelegEnv.delegatees
d_delegatees_3776 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DelegEnv_1594 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_delegatees_3776 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_delegatees_1606
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DelegEnv.pools
d_pools_3778 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DelegEnv_1594 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_3778 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1604
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DelegEnv.pparams
d_pparams_3780 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DelegEnv_1594 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pparams_3780 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pparams_1602
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GState.ccHotKeys
d_ccHotKeys_3784 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1562 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_3784 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_ccHotKeys_1572
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GState.deposits
d_deposits_3786 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1562 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_3786 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1574
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GState.dreps
d_dreps_3788 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1562 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_3788 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dreps_1570
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovCertEnv.coldCredentials
d_coldCredentials_3792 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GovCertEnv_1622 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_coldCredentials_3792 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_coldCredentials_1634
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovCertEnv.epoch
d_epoch_3794 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GovCertEnv_1622 ->
  Integer
d_epoch_3794 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_epoch_1630
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovCertEnv.pp
d_pp_3796 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GovCertEnv_1622 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pp_3796 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pp_1632 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCCHotKeys.CCHotKeysOf
d_CCHotKeysOf_3800 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1686 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_3800 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CCHotKeysOf_1694
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCertState.CertStateOf
d_CertStateOf_3804 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1906 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1578
d_CertStateOf_3804 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1914
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasColdCredentials.ColdCredentialsOf
d_ColdCredentialsOf_3808 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasColdCredentials_1706 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_ColdCredentialsOf_3808 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_ColdCredentialsOf_1714
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDState.DStateOf
d_DStateOf_3812 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDState_1846 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1522
d_DStateOf_3812 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1854
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDeposits.DepositsOf
d_DepositsOf_3816 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDeposits_1666 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_3816 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DepositsOf_1674
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasEpoch.EpochOf
d_EpochOf_3820 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasEpoch_1926 ->
  AgdaAny -> Integer
d_EpochOf_3820 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_EpochOf_1934
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasFuturePools.FuturePoolsOf
d_FuturePoolsOf_3824 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasFuturePools_1746 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_FuturePoolsOf_3824 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_FuturePoolsOf_1754
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGState.GStateOf
d_GStateOf_3828 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasGState_1886 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1562
d_GStateOf_3828 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_GStateOf_1894
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasPState.PStateOf
d_PStateOf_3832 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1866 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1542
d_PStateOf_3832 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PStateOf_1874
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasPools.PoolsOf
d_PoolsOf_3836 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1726 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_3836 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PoolsOf_1734
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRetiring.RetiringOf
d_RetiringOf_3840 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRetiring_1766 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_3840 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RetiringOf_1774
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRewards.RewardsOf
d_RewardsOf_3844 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1786 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_3844 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RewardsOf_1794
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasStake.StakeOf
d_StakeOf_3848 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStake_1806 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_3848 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_StakeOf_1814
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasStakeDelegs.StakeDelegsOf
d_StakeDelegsOf_3852 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStakeDelegs_1826 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_3852 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_StakeDelegsOf_1834
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasVotes.VotesOf
d_VotesOf_3856 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasVotes_1946 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_1014]
d_VotesOf_3856 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_VotesOf_1954
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PState.deposits
d_deposits_3860 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1542 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_3860 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1558
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PState.fPools
d_fPools_3862 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1542 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fPools_3862 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_fPools_1554
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PState.pools
d_pools_3864 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1542 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_3864 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1552
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PState.retiring
d_retiring_3866 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1542 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_3866 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1556
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PoolEnv.epoch
d_epoch_3870 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PoolEnv_1610 ->
  Integer
d_epoch_3870 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_epoch_1616
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PoolEnv.pp
d_pp_3872 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PoolEnv_1610 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pp_3872 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pp_1618 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.StakePoolParams.bls
d_bls_3876 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1352 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bls_3876 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_bls_1380
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.StakePoolParams.cost
d_cost_3878 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1352 ->
  Integer
d_cost_3878 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_cost_1370
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.StakePoolParams.margin
d_margin_3880 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1352 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_margin_3880 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_margin_1372
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.StakePoolParams.owners
d_owners_3882 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1352 ->
  [Integer]
d_owners_3882 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_owners_1368
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.StakePoolParams.pledge
d_pledge_3884 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1352 ->
  Integer
d_pledge_3884 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pledge_1374
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.StakePoolParams.rewardAccount
d_rewardAccount_3886 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1352 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_rewardAccount_3886 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewardAccount_1376
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.StakePoolParams.vrf
d_vrf_3888 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1352 ->
  Integer
d_vrf_3888 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_vrf_1378
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.StakePoolState.bls
d_bls_3892 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolState_1384 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_bls_3892 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_bls_1412
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.StakePoolState.cost
d_cost_3894 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolState_1384 ->
  Integer
d_cost_3894 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_cost_1402
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.StakePoolState.margin
d_margin_3896 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolState_1384 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_margin_3896 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_margin_1404
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.StakePoolState.owners
d_owners_3898 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolState_1384 ->
  [Integer]
d_owners_3898 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_owners_1400
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.StakePoolState.pledge
d_pledge_3900 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolState_1384 ->
  Integer
d_pledge_3900 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pledge_1406
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.StakePoolState.rewardAccount
d_rewardAccount_3902 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolState_1384 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_rewardAccount_3902 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewardAccount_1408
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.StakePoolState.vrf
d_vrf_3904 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolState_1384 ->
  Integer
d_vrf_3904 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_vrf_1410
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.AbstractFunctions
d_AbstractFunctions_3908 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.AbstractFunctions.ebSize
d_ebSize_3918 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Leios.Types.T_EndorserBlock_22 ->
  Integer
d_ebSize_3918 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_ebSize_3294
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.AbstractFunctions.getLanguageView
d_getLanguageView_3920 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.T_HSLanguage_10 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_getLanguageView_3920 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_getLanguageView_3284
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.AbstractFunctions.indexOfImp
d_indexOfImp_3922 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_indexOf_3230
d_indexOfImp_3922 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_indexOfImp_3286
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.AbstractFunctions.scriptSize
d_scriptSize_3924 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_scriptSize_3924 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_scriptSize_3288
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.AbstractFunctions.serializedSize
d_serializedSize_3926 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  Integer -> Integer
d_serializedSize_3926 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_serializedSize_3282
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.AbstractFunctions.txRefHash
d_txRefHash_3928 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3838 ->
  Integer
d_txRefHash_3928 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_txRefHash_3292
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.AbstractFunctions.txScriptFee
d_txScriptFee_3930 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txScriptFee_3930 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_txScriptFee_3280
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.AbstractFunctions.valContext
d_valContext_3932 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3180 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_ScriptPurpose_3168 ->
  Integer
d_valContext_3932 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_valContext_3290
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures.HSAbstractFunctions
d_HSAbstractFunctions_3950 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3262
d_HSAbstractFunctions_3950 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.C_constructor_3296
      (coe (\ v1 v2 -> 0 :: Integer)) (coe (\ v1 -> 0 :: Integer))
      (coe (\ v1 v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.C_constructor_3260
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
                            MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DecEq'45'DCert_2196
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2868
                               (coe d_HSTransactionStructure_748 (coe v0))))
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
                         (coe v3) (coe du_rewardAddressToSOP_3956 (coe v1)))
                    (coe
                       MAlonzo.Code.Data.List.Sort.Base.d_sort_248
                       (coe
                          MAlonzo.Code.Data.List.Sort.du_sortingAlgorithm_138
                          (coe du_DecTotalOrder'45'RewardAddressSOP_3970))
                       (coe
                          MAlonzo.Code.Axiom.Set.du_map_426
                          (MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe du_rewardAddressToSOP_3956)
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
                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovProposal_1552
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2868
                          (coe d_HSTransactionStructure_748 (coe v0)))
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
                         (let v4 = d_HSTransactionStructure_748 (coe v0) in
                          coe
                            (coe
                               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                               (coe
                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                  (coe
                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                                     (coe
                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
                                        (coe v4))))
                               (coe
                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
                                  (coe
                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1410
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
      (coe (\ v1 v2 -> 0 :: Integer)) (coe (\ v1 -> 0 :: Integer))
      (coe (\ v1 -> 0 :: Integer))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.rewardAddressToSOP
d_rewardAddressToSOP_3956 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewardAddressToSOP_3956 ~v0 v1 = du_rewardAddressToSOP_3956 v1
du_rewardAddressToSOP_3956 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewardAddressToSOP_3956 v0
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
d_DecTotalOrder'45'RewardAddressSOP_3970 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098
d_DecTotalOrder'45'RewardAddressSOP_3970 ~v0
  = du_DecTotalOrder'45'RewardAddressSOP_3970
du_DecTotalOrder'45'RewardAddressSOP_3970 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098
du_DecTotalOrder'45'RewardAddressSOP_3970
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
