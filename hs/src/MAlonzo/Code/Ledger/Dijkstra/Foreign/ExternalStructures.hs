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
import qualified MAlonzo.Code.Data.Maybe.Relation.Unary.All
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
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.Qstdlib.Data.List.Relation.Unary.MOf

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
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v0))
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
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v0))
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
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v0))
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
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CryptoStructure.THash
d_THash_78 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  ()
d_THash_78 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CryptoStructure.KeyPair
d_KeyPair_80 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  ()
d_KeyPair_80 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CryptoStructure.SKey
d_SKey_82 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  ()
d_SKey_82 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CryptoStructure.Ser
d_Ser_86 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  ()
d_Ser_86 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CryptoStructure.Show-THash
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
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CryptoStructure.Sig
d_Sig_92 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  ()
d_Sig_92 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CryptoStructure.T-Hashable
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
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CryptoStructure.VKey
d_VKey_96 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  ()
d_VKey_96 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CryptoStructure.isKeyPair
d_isKeyPair_98 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  AgdaAny -> AgdaAny -> ()
d_isKeyPair_98 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CryptoStructure.isSigned
d_isSigned_100 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140 ->
  AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_100 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CryptoStructure.isSigned-correct
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
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CryptoStructure.sign
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
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-HSNativeScript
d_DecEq'45'HSNativeScript_170 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'HSNativeScript_170 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_DecEq'45'HSNativeScript_354
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HSNativeScript
d_HSNativeScript_172 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HSP1ScriptStructure
d_HSP1ScriptStructure_176 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_322
d_HSP1ScriptStructure_176 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_HSP1ScriptStructure_356
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HSP2ScriptStructure
d_HSP2ScriptStructure_178 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_360
d_HSP2ScriptStructure_178 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_HSP2ScriptStructure_390
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HSPlutusScript
d_HSPlutusScript_180 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HSScriptStructure
d_HSScriptStructure_184 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520
d_HSScriptStructure_184 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_HSScriptStructure_418
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Hashable-HSNativeScript
d_Hashable'45'HSNativeScript_186 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'HSNativeScript_186 ~v0
  = du_Hashable'45'HSNativeScript_186
du_Hashable'45'HSNativeScript_186 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
du_Hashable'45'HSNativeScript_186
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.du_Hashable'45'HSNativeScript_352
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HSNativeScript.nativeScript
d_nativeScript_192 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_336 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.T_NativeScript_322
d_nativeScript_192 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_nativeScript_344
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HSNativeScript.nsScriptHash
d_nsScriptHash_194 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_336 ->
  Integer
d_nsScriptHash_194 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_nsScriptHash_346
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HSNativeScript.nsScriptSize
d_nsScriptSize_196 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_336 ->
  Integer
d_nsScriptSize_196 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_nsScriptSize_348
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HSPlutusScript.psScriptHash
d_psScriptHash_200 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_364 ->
  Integer
d_psScriptHash_200 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_psScriptHash_372
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HSPlutusScript.psScriptLanguage
d_psScriptLanguage_202 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_364 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.T_HSLanguage_10
d_psScriptLanguage_202 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_psScriptLanguage_376
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HSPlutusScript.psScriptSize
d_psScriptSize_204 ::
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_364 ->
  Integer
d_psScriptSize_204 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_psScriptSize_374
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Base.Convert-HSLanguage
d_Convert'45'HSLanguage_208 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Convert'45'HSLanguage_208 ~v0 = du_Convert'45'HSLanguage_208
du_Convert'45'HSLanguage_208 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
du_Convert'45'HSLanguage_208
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.d_Convert'45'HSLanguage_22
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Base.DecEq-HSLanguage
d_DecEq'45'HSLanguage_210 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'HSLanguage_210 ~v0 = du_DecEq'45'HSLanguage_210
du_DecEq'45'HSLanguage_210 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'HSLanguage_210
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.d_DecEq'45'HSLanguage_24
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Base.HSLanguage
d_HSLanguage_212 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Base.HsType-HSLanguage
d_HsType'45'HSLanguage_214 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsType'45'HSLanguage_214 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Base.Show-HSLanguage
d_Show'45'HSLanguage_226 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'HSLanguage_226 ~v0 = du_Show'45'HSLanguage_226
du_Show'45'HSLanguage_226 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'HSLanguage_226
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.d_Show'45'HSLanguage_26
-- Ledger.Dijkstra.Foreign.ExternalStructures._
d___236 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
d___236 v0
  = coe
      MAlonzo.Code.Ledger.Core.Foreign.Crypto.Structure.d_HSCryptoStructure_34
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._
d___240 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
d___240 ~v0 = du___240
du___240 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
du___240
  = coe MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8
-- Ledger.Dijkstra.Foreign.ExternalStructures._
d___242 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520
d___242 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_HSScriptStructure_418
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.Dec-isSigned
d_Dec'45'isSigned_246 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_246 v0
  = let v1 = d___236 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.DecEq-ScriptHash
d_DecEq'45'ScriptHash_248 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_248 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
      (coe d___236 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.DecEq-Ser
d_DecEq'45'Ser_250 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_250 v0
  = let v1 = d___236 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.DecEq-Sig
d_DecEq'45'Sig_252 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_252 v0
  = let v1 = d___236 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.DecEq-THash
d_DecEq'45'THash_254 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_254 v0
  = let v1 = d___236 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206 (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.THash
d_THash_256 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_THash_256 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.KeyPair
d_KeyPair_258 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_KeyPair_258 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.SKey
d_SKey_260 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_SKey_260 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.ScriptHash
d_ScriptHash_262 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ScriptHash_262 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.Ser
d_Ser_264 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Ser_264 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.Show-ScriptHash
d_Show'45'ScriptHash_266 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_266 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_212
      (coe d___236 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.Show-THash
d_Show'45'THash_268 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_268 v0
  = let v1 = d___236 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206 (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.Sig
d_Sig_270 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Sig_270 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.T-Hashable
d_T'45'Hashable_272 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_272 v0
  = let v1 = d___236 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206 (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.VKey
d_VKey_274 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VKey_274 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.isKeyPair
d_isKeyPair_276 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 -> ()
d_isKeyPair_276 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.isSigned
d_isSigned_278 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer -> Integer -> ()
d_isSigned_278 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.isSigned-correct
d_isSigned'45'correct_280 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isSigned'45'correct_280 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.khs
d_khs_282 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_282 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
      (coe d___236 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.pkk
d_pkk_284 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_284 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178
      (coe d___236 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures.Crypto.sign
d_sign_286 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer
d_sign_286 v0
  = let v1 = d___236 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovParams
d_GovParams_304 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams
d_PParams_332 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.paramsWellFormed
d_paramsWellFormed_354 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  ()
d_paramsWellFormed_354 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_362 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1498 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_362 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_DecEq'45'UpdT_1530
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovParams.ppUpd
d_ppUpd_368 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1498 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1464
d_ppUpd_368 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1516
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.Emax
d_Emax_402 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_Emax_402 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_428
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.a
d_a_404 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_a_404 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_400 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.a0
d_a0_406 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_406 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_432
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.b
d_b_408 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_b_408 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_402 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.ccMaxTermLength
d_ccMaxTermLength_410 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMaxTermLength_410 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_444
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.ccMinSize
d_ccMinSize_412 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMinSize_412 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_442
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_414 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_coinsPerUTxOByte_414 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_412
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.collateralPercentage
d_collateralPercentage_416 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_collateralPercentage_416 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_434
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.costmdlsAssoc
d_costmdlsAssoc_420 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_676
d_costmdlsAssoc_420 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdlsAssoc_436
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.drepActivity
d_drepActivity_422 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_drepActivity_422 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_452
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.drepDeposit
d_drepDeposit_424 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_drepDeposit_424 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_450
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.drepThresholds
d_drepThresholds_426 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244
d_drepThresholds_426 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_440
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.govActionDeposit
d_govActionDeposit_428 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionDeposit_428 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_448
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.govActionLifetime
d_govActionLifetime_430 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionLifetime_430 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_446
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.keyDeposit
d_keyDeposit_432 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_keyDeposit_432 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_404
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.maxBlockExUnits
d_maxBlockExUnits_434 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_434 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_392
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.maxBlockSize
d_maxBlockSize_436 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxBlockSize_436 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_384
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.maxCollateralInputs
d_maxCollateralInputs_438 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxCollateralInputs_438 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_396
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.maxHeaderSize
d_maxHeaderSize_440 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxHeaderSize_440 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_388
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_442 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerBlock_442 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_420
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_444 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerTx_444 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_418
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.maxTxExUnits
d_maxTxExUnits_446 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_446 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_390
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.maxTxSize
d_maxTxSize_448 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxTxSize_448 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_386
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.maxValSize
d_maxValSize_450 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxValSize_450 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_394
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_452 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_452 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_416
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.minUTxOValue
d_minUTxOValue_454 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minUTxOValue_454 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_426
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.monetaryExpansion
d_monetaryExpansion_456 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_456 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_408
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.nopt
d_nopt_458 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_nopt_458 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_430
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.poolDeposit
d_poolDeposit_460 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_poolDeposit_460 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_406
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.poolThresholds
d_poolThresholds_462 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288
d_poolThresholds_462 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_438
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.prices
d_prices_464 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_464 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_414
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.pv
d_pv_466 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_466 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_398
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_468 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_468 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_424
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.refScriptCostStride
d_refScriptCostStride_470 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_470 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_422
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.treasuryCut
d_treasuryCut_472 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_472 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_410
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsDiff.UpdateT
d_UpdateT_476 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1464 ->
  ()
d_UpdateT_476 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsDiff.applyUpdate
d_applyUpdate_478 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1464 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyUpdate_478 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1480
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsDiff.ppWF?
d_ppWF'63'_480 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1464 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_480 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1488
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsDiff.updateGroups
d_updateGroups_484 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1464 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_updateGroups_484 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1482
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_492 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_492 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParamsUpdate_1462
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'46'extendedlambda0_362
         (coe MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8))
      (coe d___242 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_494 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_498 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyPParamsUpdate_498 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_applyPParamsUpdate_1304
      (coe d___242 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_520 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_Emax_520 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_742
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.a
d_a_522 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_a_522 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_712 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.a0
d_a0_524 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_524 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_740
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.b
d_b_526 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_b_526 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_714 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_528 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_ccMaxTermLength_528 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_764
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_530 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_ccMinSize_530 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_762
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_532 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_coinsPerUTxOByte_532 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_724
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_534 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_collateralPercentage_534 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_746
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_536 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_676
d_costmdls_536 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdls_748
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_538 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_drepActivity_538 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_760
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_540 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_drepDeposit_540 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_758
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_542 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244
d_drepThresholds_542 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_750
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_govActionDeposit_544 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_756
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_546 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_govActionLifetime_546 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_754
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_548 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_keyDeposit_548 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_716
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_550 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_550 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_708
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_552 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_maxBlockSize_552 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_696
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_554 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_maxCollateralInputs_554 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_704
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_556 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_maxHeaderSize_556 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_700
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_558 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_558 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_732
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_560 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_maxRefScriptSizePerTx_560 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_730
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_562 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_562 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_706
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_564 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_maxTxSize_564 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_698
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_566 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_maxValSize_566 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_702
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_568 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_568 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_728
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_570 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_minUTxOValue_570 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_738
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_572 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_572 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_720
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_574 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_nopt_574 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_744
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_576 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_poolDeposit_576 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_718
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_578 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288
d_poolThresholds_578 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_752
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.prices
d_prices_580 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_580 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_726
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.pv
d_pv_582 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_582 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_710
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_584 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_584 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_736
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_586 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_586 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_734
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_588 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_588 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_722
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures.HsGovParams
d_HsGovParams_590 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1498
d_HsGovParams_590 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_constructor_1532
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.C_constructor_1496
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_applyPParamsUpdate_1304
            (coe d___242 (coe v0)))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiedUpdateGroups_1234)
         (\ v1 -> coe du_ppWF_600 (coe v1)))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParamsUpdate_1462
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'46'extendedlambda0_362
            (coe MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8))
         (coe d___242 (coe v0)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ppWF
d_ppWF_600 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF_600 ~v0 v1 = du_ppWF_600 v1
du_ppWF_600 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_ppWF_600 v0
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
                             MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_696
                             (coe v0))
                          (coe
                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                             (coe
                                MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_698
                                (coe v0))
                             (coe
                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                (coe
                                   MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_700
                                   (coe v0))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                   (coe
                                      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_702
                                      (coe v0))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                      (coe
                                         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_724
                                         (coe v0))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                         (coe
                                            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_718
                                            (coe v0))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                            (coe
                                               MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_746
                                               (coe v0))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                               (coe
                                                  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_764
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                  (coe
                                                     MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_754
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                     (coe
                                                        MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_756
                                                        (coe v0))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_758
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
d_trustMe_616
  = error
      "MAlonzo Runtime Error: postulate evaluated: Ledger.Dijkstra.Foreign.ExternalStructures._._.trustMe"
-- Ledger.Dijkstra.Foreign.ExternalStructures._._.trustMe
d_trustMe_626
  = error
      "MAlonzo Runtime Error: postulate evaluated: Ledger.Dijkstra.Foreign.ExternalStructures._._.trustMe"
-- Ledger.Dijkstra.Foreign.ExternalStructures.HSTransactionStructure
d_HSTransactionStructure_636 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TransactionStructure_58
d_HSTransactionStructure_636 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.C_constructor_4600
      MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_isHashableSet'45'ℕ_34
      MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8
      (MAlonzo.Code.Ledger.Core.Foreign.Crypto.Structure.d_HSCryptoStructure_34
         (coe v0))
      (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'46'extendedlambda0_362
         (coe MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_HSScriptStructure_418
         (coe v0))
      (d_HsGovParams_590 (coe v0))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Coin.du_Coin'45'TokenAlgebra_132)
      (\ v1 -> v1)
      (coe
         MAlonzo.Code.Interface.TypeClasses.Hashable.C_constructor_20
         (coe (\ v1 -> 0 :: Integer)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._._+ᵉ_
d__'43''7497'__642 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer
d__'43''7497'__642 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'__100
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._._+ᵉ'_
d__'43''7497'''__644 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer
d__'43''7497'''__644 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'''__102
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._._∙_
d__'8729'__646 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer
d__'8729'__646 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._._≈_
d__'8776'__648 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> ()
d__'8776'__648 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._._≤ᵗ_
d__'8804''7511'__650 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> ()
d__'8804''7511'__650 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._._≥ᵉ_
d__'8805''7497'__652 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8805''7497'__652 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_654 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_654 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.==-GovAction
d_'61''61''45'GovAction_656 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876 ->
  Bool
d_'61''61''45'GovAction_656 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovAction_1426
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.==-GovActionData
d_'61''61''45'GovActionData_658 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_858 ->
  AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_658 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovActionData_1408
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.==-GovProposal
d_'61''61''45'GovProposal_660 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_976 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_976 ->
  Bool
d_'61''61''45'GovProposal_660 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovProposal_1460
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.==-Set
d_'61''61''45'Set_662 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_662 ~v0 = du_'61''61''45'Set_662
du_'61''61''45'Set_662 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
du_'61''61''45'Set_662 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_'61''61''45'Set_1396
      v1 v2 v3
-- Ledger.Dijkstra.Foreign.ExternalStructures._.THash
d_THash_664 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_THash_664 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.AccountBalanceIntervals
d_AccountBalanceIntervals_666 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_AccountBalanceIntervals_666 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.AccountOf
d_AccountOf_668 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasAccount_210 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194
d_AccountOf_668 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_AccountOf_218
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Acnt
d_Acnt_670 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ActiveSlotCoeff
d_ActiveSlotCoeff_674 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_674 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ActiveSlotCoeff_328
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Addr
d_Addr_676 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Addr_676 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Anchor
d_Anchor_680 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.AnchorOf
d_AnchorOf_684 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1206 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_910
d_AnchorOf_684 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_AnchorOf_1214
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.AnyLevelTx
d_AnyLevelTx_686 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_AnyLevelTx_686 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.AttrSizeOf
d_AttrSizeOf_688 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214 ->
  AgdaAny -> Integer
d_AttrSizeOf_688 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_222
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.AuxiliaryData
d_AuxiliaryData_690 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_AuxiliaryData_690 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.BalanceInterval
d_BalanceInterval_692 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.BalanceIntervalsOf
d_BalanceIntervalsOf_694 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasBalanceIntervals_4304 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_BalanceIntervalsOf_694 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_BalanceIntervalsOf_4312
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.BaseAddr
d_BaseAddr_696 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.BootstrapAddr
d_BootstrapAddr_700 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CCMaxTermLengthOf
d_CCMaxTermLengthOf_706 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasCCMaxTermLength_592 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_706 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_CCMaxTermLengthOf_600
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CollateralInputsOf
d_CollateralInputsOf_710 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCollateralInputs_3850 ->
  AgdaAny -> AgdaAny
d_CollateralInputsOf_710 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CollateralInputsOf_3860
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CostModel
d_CostModel_712 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_CostModel_712 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Credential
d_Credential_714 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CredentialOf
d_CredentialOf_716 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_716 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CurrentTreasuryOf
d_CurrentTreasuryOf_718 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4264 ->
  AgdaAny -> Maybe Integer
d_CurrentTreasuryOf_718 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CurrentTreasuryOf_4272
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DCertsOf
d_DCertsOf_720 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4084 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1290]
d_DCertsOf_720 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DCertsOf_4092
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DReps
d_DReps_724 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_DReps_724 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DRepsOf
d_DRepsOf_726 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1186 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_726 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1194
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.T
d_T_728 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_T_728 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.THash
d_THash_730 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_THash_730 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DataOf
d_DataOf_732 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4124 ->
  AgdaAny -> [Integer]
d_DataOf_732 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DataOf_4132
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Dataʰ
d_Data'688'_734 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_734 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_440
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Datum
d_Datum_736 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Datum_736 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Dec-EvalNativeScript
d_Dec'45'EvalNativeScript_738 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.T_NativeScript_322 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'EvalNativeScript_738 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
                    (coe v1) in
          coe
            (let v4
                   = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
                          (coe v1)) in
             coe
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.du_Dec'45'EvalNativeScript_392
                  (coe v2) (coe v3) (coe v4)))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Dec-InBalanceInterval
d_Dec'45'InBalanceInterval_740 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Account.T_BalanceInterval_848 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'InBalanceInterval_740 ~v0
  = du_Dec'45'InBalanceInterval_740
du_Dec'45'InBalanceInterval_740 ::
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Account.T_BalanceInterval_848 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'InBalanceInterval_740
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Account.du_Dec'45'InBalanceInterval_876
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Dec-isScript
d_Dec'45'isScript_742 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_742 ~v0 = du_Dec'45'isScript_742
du_Dec'45'isScript_742 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_742
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isScript_308
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Dec-isSigned
d_Dec'45'isSigned_744 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_744 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v2))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Dec-isVKey
d_Dec'45'isVKey_746 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_746 ~v0 = du_Dec'45'isVKey_746
du_Dec'45'isVKey_746 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_746
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_294
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Dec-validP1Script
d_Dec'45'validP1Script_748 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_336 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_748 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_342
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_546
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_750 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_364 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_750 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validPlutusScript_514
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Dec-≤ᵗ
d_Dec'45''8804''7511'_752 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_752 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEQ-Prices
d_DecEQ'45'Prices_754 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_754 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEQ'45'Prices_476
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-Anchor
d_DecEq'45'Anchor_756 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_756 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'Anchor_1390
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-BalanceInterval
d_DecEq'45'BalanceInterval_758 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BalanceInterval_758 ~v0
  = du_DecEq'45'BalanceInterval_758
du_DecEq'45'BalanceInterval_758 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BalanceInterval_758
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Account.du_DecEq'45'BalanceInterval_976
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_760 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_760 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BaseAddr_346
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
               (coe v1)))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                  (coe v1))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_762 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_762 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BootstrapAddr_348
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
               (coe v1)))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                  (coe v1))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-CostModel
d_DecEq'45'CostModel_764 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_764 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'CostModel_460
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-Credential
d_DecEq'45'Credential_766 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_766 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                  (coe v1))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_768 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_768 ~v0 = du_DecEq'45'DrepThresholds_768
du_DecEq'45'DrepThresholds_768 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_768
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'DrepThresholds_608
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-Epoch
d_DecEq'45'Epoch_770 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_770 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-ExUnits
d_DecEq'45'ExUnits_772 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_772 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_474
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-GovActionType
d_DecEq'45'GovActionType_774 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_774 ~v0 = du_DecEq'45'GovActionType_774
du_DecEq'45'GovActionType_774 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_774
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'GovActionType_1280
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-GovRole
d_DecEq'45'GovRole_776 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_776 ~v0 = du_DecEq'45'GovRole_776
du_DecEq'45'GovRole_776 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_776
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'GovRole_1282
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-GovVoter
d_DecEq'45'GovVoter_778 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_778 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'GovVoter_1288
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-Ix
d_DecEq'45'Ix_780 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_780 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'Ix_1364
      (coe d_HSTransactionStructure_636 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-LangDepView
d_DecEq'45'LangDepView_782 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_782 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'LangDepView_462
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-Language
d_DecEq'45'Language_784 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_784 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_466
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_786 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_786 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_DecEq'45'LanguageCostModels_684
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-NativeScript
d_DecEq'45'NativeScript_788 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NativeScript_788 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
                    (coe v1) in
          coe
            (let v4
                   = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
                          (coe v1)) in
             coe
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Native.du_DecEq'45'NativeScript_338
                  (coe v2) (coe v3) (coe v4)))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-NeedsHash
d_DecEq'45'NeedsHash_790 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_858 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_790 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'NeedsHash_1458
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-Netw
d_DecEq'45'Netw_792 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_792 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-P1Script
d_DecEq'45'P1Script_794 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_794 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'P1Script_346
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_546
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_796 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_796 ~v0 = du_DecEq'45'PParamGroup_796
du_DecEq'45'PParamGroup_796 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_796
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParamGroup_614
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-PParams
d_DecEq'45'PParams_798 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_798 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParams_612
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
            (coe v1))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_800 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_800 ~v0 = du_DecEq'45'PoolThresholds_800
du_DecEq'45'PoolThresholds_800 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_800
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PoolThresholds_610
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-RewardAddress
d_DecEq'45'RewardAddress_802 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RewardAddress_802 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
               (coe v1)))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                  (coe v1))))
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_804 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_804 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-Ser
d_DecEq'45'Ser_806 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_806 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v2))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-Sig
d_DecEq'45'Sig_808 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_808 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v2))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-Slot
d_DecEq'45'Slot_810 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_810 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Slot_88
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-T
d_DecEq'45'T_812 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_812 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1356
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-T
d_DecEq'45'T_814 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_814 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_440
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
               (coe v2))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-THash
d_DecEq'45'THash_816 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_816 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1356
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-THash
d_DecEq'45'THash_818 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_818 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206 (coe v2))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-THash
d_DecEq'45'THash_820 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_820 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_440
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
               (coe v2))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-TxId
d_DecEq'45'TxId_822 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_822 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DecEq'45'TxId_1366
      (coe d_HSTransactionStructure_636 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-UpdT
d_DecEq'45'UpdT_824 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_824 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_DecEq'45'UpdT_1530
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2632
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-VDeleg
d_DecEq'45'VDeleg_826 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_826 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'VDeleg_1286
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-Value
d_DecEq'45'Value_828 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_828 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-Vote
d_DecEq'45'Vote_830 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_830 ~v0 = du_DecEq'45'Vote_830
du_DecEq'45'Vote_830 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_830
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'Vote_1284
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecPo-Slot
d_DecPo'45'Slot_832 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_262
d_DecPo'45'Slot_832 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DepositOf
d_DepositOf_834 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1226 ->
  AgdaAny -> Integer
d_DepositOf_834 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DepositOf_1234
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DirectDeposits
d_DirectDeposits_836 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_DirectDeposits_836 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DirectDepositsOf
d_DirectDepositsOf_838 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDirectDeposits_4284 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DirectDepositsOf_838 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DirectDepositsOf_4292
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DrepThresholds
d_DrepThresholds_840 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Epoch
d_Epoch_846 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Epoch_846 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.EvalNativeScript
d_EvalNativeScript_848 a0 a1 a2 a3 a4 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_850 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_850 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_456
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ExUnits
d_ExUnits_852 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ExUnits_852 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.FeesOf?
d_FeesOf'63'_854 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasFees'63'_4064 ->
  AgdaAny -> Maybe Integer
d_FeesOf'63'_854 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_FeesOf'63'_4072
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovAction
d_GovAction_856 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovActionData
d_GovActionData_860 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_858 ->
  ()
d_GovActionData_860 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovActionID
d_GovActionID_862 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_GovActionID_862 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovActionOf
d_GovActionOf_864 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1088 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876
d_GovActionOf_864 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionOf_1094
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovActionState
d_GovActionState_866 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovActionType
d_GovActionType_870 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovActionTypeOf
d_GovActionTypeOf_872 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1052 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_858
d_GovActionTypeOf_872 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionTypeOf_1058
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovParams
d_GovParams_874 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovProposal
d_GovProposal_878 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovProposalsOf
d_GovProposalsOf_882 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGovProposals_4104 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_976]
d_GovProposalsOf_882 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_GovProposalsOf_4112
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovRole
d_GovRole_884 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovRoleCredential
d_GovRoleCredential_886 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_848 ->
  ()
d_GovRoleCredential_886 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovVote
d_GovVote_888 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovVoter
d_GovVoter_892 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovVoterOf
d_GovVoterOf_896 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1106 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_898
d_GovVoterOf_896 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVoterOf_1114
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovVotes
d_GovVotes_898 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovVotesOf
d_GovVotesOf_902 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1126 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_942
d_GovVotesOf_902 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVotesOf_1134
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GuardsOf
d_GuardsOf_906 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4184 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_GuardsOf_906 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_GuardsOf_4192
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasAccount
d_HasAccount_908 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasAnchor
d_HasAnchor_912 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasAnchor-GovProposal
d_HasAnchor'45'GovProposal_916 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1206
d_HasAnchor'45'GovProposal_916 ~v0
  = du_HasAnchor'45'GovProposal_916
du_HasAnchor'45'GovProposal_916 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1206
du_HasAnchor'45'GovProposal_916
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasAnchor'45'GovProposal_1260
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasAttrSize
d_HasAttrSize_918 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasAttrSize-BootstrapAddr
d_HasAttrSize'45'BootstrapAddr_922 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214
d_HasAttrSize'45'BootstrapAddr_922 ~v0
  = du_HasAttrSize'45'BootstrapAddr_922
du_HasAttrSize'45'BootstrapAddr_922 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214
du_HasAttrSize'45'BootstrapAddr_922
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasAttrSize'45'BootstrapAddr_238
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasBalanceIntervals
d_HasBalanceIntervals_924 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasBalanceIntervals-Tx
d_HasBalanceIntervals'45'Tx_928 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasBalanceIntervals_4304
d_HasBalanceIntervals'45'Tx_928 ~v0
  = du_HasBalanceIntervals'45'Tx_928
du_HasBalanceIntervals'45'Tx_928 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasBalanceIntervals_4304
du_HasBalanceIntervals'45'Tx_928 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasBalanceIntervals'45'Tx_4374
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasBalanceIntervals-TxBody
d_HasBalanceIntervals'45'TxBody_930 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasBalanceIntervals_4304
d_HasBalanceIntervals'45'TxBody_930 ~v0
  = du_HasBalanceIntervals'45'TxBody_930
du_HasBalanceIntervals'45'TxBody_930 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasBalanceIntervals_4304
du_HasBalanceIntervals'45'TxBody_930 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasBalanceIntervals'45'TxBody_4372
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCCMaxTermLength
d_HasCCMaxTermLength_932 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCast-Acnt
d_HasCast'45'Acnt_936 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_936 ~v0 = du_HasCast'45'Acnt_936
du_HasCast'45'Acnt_936 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Acnt_936
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasCast'45'Acnt_230
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_938 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_938 ~v0
  = du_HasCast'45'GovAction'45'Sigma_938
du_HasCast'45'GovAction'45'Sigma_938 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_938
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_1244
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCast-GovVote
d_HasCast'45'GovVote_940 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_940 ~v0 = du_HasCast'45'GovVote_940
du_HasCast'45'GovVote_940 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_940
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovVote_1386
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCast-HashProtected
d_HasCast'45'HashProtected_942 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_942 ~v0
  = du_HasCast'45'HashProtected_942
du_HasCast'45'HashProtected_942 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_942 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected_1250
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_944 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_944 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_944
du_HasCast'45'HashProtected'45'MaybeScriptHash_944 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_944
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1252
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCoin-TxOut
d_HasCoin'45'TxOut_946 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_946 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_HasCoin'45'TxOut_4422
      (coe d_HSTransactionStructure_636 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCollateralInputs
d_HasCollateralInputs_948 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCollateralInputs-TopLevelTx
d_HasCollateralInputs'45'TopLevelTx_952 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCollateralInputs_3850
d_HasCollateralInputs'45'TopLevelTx_952 ~v0
  = du_HasCollateralInputs'45'TopLevelTx_952
du_HasCollateralInputs'45'TopLevelTx_952 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCollateralInputs_3850
du_HasCollateralInputs'45'TopLevelTx_952
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasCollateralInputs'45'TopLevelTx_4352
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCredential
d_HasCredential_954 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCredential-RewardAddress
d_HasCredential'45'RewardAddress_958 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
d_HasCredential'45'RewardAddress_958 ~v0
  = du_HasCredential'45'RewardAddress_958
du_HasCredential'45'RewardAddress_958 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
du_HasCredential'45'RewardAddress_958
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RewardAddress_236
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCurrentTreasury
d_HasCurrentTreasury_960 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCurrentTreasury-Tx
d_HasCurrentTreasury'45'Tx_964 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4264
d_HasCurrentTreasury'45'Tx_964 ~v0
  = du_HasCurrentTreasury'45'Tx_964
du_HasCurrentTreasury'45'Tx_964 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4264
du_HasCurrentTreasury'45'Tx_964 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasCurrentTreasury'45'Tx_4446
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCurrentTreasury-TxBody
d_HasCurrentTreasury'45'TxBody_966 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4264
d_HasCurrentTreasury'45'TxBody_966 ~v0
  = du_HasCurrentTreasury'45'TxBody_966
du_HasCurrentTreasury'45'TxBody_966 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4264
du_HasCurrentTreasury'45'TxBody_966 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasCurrentTreasury'45'TxBody_4444
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDCerts
d_HasDCerts_968 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDCerts-Tx
d_HasDCerts'45'Tx_972 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4084
d_HasDCerts'45'Tx_972 ~v0 = du_HasDCerts'45'Tx_972
du_HasDCerts'45'Tx_972 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4084
du_HasDCerts'45'Tx_972 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDCerts'45'Tx_4362
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDCerts-TxBody
d_HasDCerts'45'TxBody_974 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4084
d_HasDCerts'45'TxBody_974 ~v0 = du_HasDCerts'45'TxBody_974
du_HasDCerts'45'TxBody_974 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4084
du_HasDCerts'45'TxBody_974 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDCerts'45'TxBody_4360
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDReps
d_HasDReps_976 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasData
d_HasData_980 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasData-Tx
d_HasData'45'Tx_984 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4124
d_HasData'45'Tx_984 ~v0 = du_HasData'45'Tx_984
du_HasData'45'Tx_984 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4124
du_HasData'45'Tx_984 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasData'45'Tx_4426
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasData-TxWitnesses
d_HasData'45'TxWitnesses_986 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4124
d_HasData'45'TxWitnesses_986 ~v0 = du_HasData'45'TxWitnesses_986
du_HasData'45'TxWitnesses_986 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4124
du_HasData'45'TxWitnesses_986
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasData'45'TxWitnesses_4424
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDeposit
d_HasDeposit_988 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDeposit-GovProposal
d_HasDeposit'45'GovProposal_992 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1226
d_HasDeposit'45'GovProposal_992 ~v0
  = du_HasDeposit'45'GovProposal_992
du_HasDeposit'45'GovProposal_992 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1226
du_HasDeposit'45'GovProposal_992
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasDeposit'45'GovProposal_1262
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDirectDeposits
d_HasDirectDeposits_994 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDirectDeposits-Tx
d_HasDirectDeposits'45'Tx_998 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDirectDeposits_4284
d_HasDirectDeposits'45'Tx_998 ~v0 = du_HasDirectDeposits'45'Tx_998
du_HasDirectDeposits'45'Tx_998 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDirectDeposits_4284
du_HasDirectDeposits'45'Tx_998 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDirectDeposits'45'Tx_4370
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDirectDeposits-TxBody
d_HasDirectDeposits'45'TxBody_1000 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDirectDeposits_4284
d_HasDirectDeposits'45'TxBody_1000 ~v0
  = du_HasDirectDeposits'45'TxBody_1000
du_HasDirectDeposits'45'TxBody_1000 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDirectDeposits_4284
du_HasDirectDeposits'45'TxBody_1000 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDirectDeposits'45'TxBody_4368
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDonations-Tx
d_HasDonations'45'Tx_1002 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'Tx_1002 ~v0 = du_HasDonations'45'Tx_1002
du_HasDonations'45'Tx_1002 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
du_HasDonations'45'Tx_1002 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDonations'45'Tx_4420
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDonations-TxBody
d_HasDonations'45'TxBody_1004 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'TxBody_1004 ~v0 = du_HasDonations'45'TxBody_1004
du_HasDonations'45'TxBody_1004 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
du_HasDonations'45'TxBody_1004 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasDonations'45'TxBody_4418
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasFees?
d_HasFees'63'_1006 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasFees?-Tx
d_HasFees'63''45'Tx_1010 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasFees'63'_4064
d_HasFees'63''45'Tx_1010 ~v0 = du_HasFees'63''45'Tx_1010
du_HasFees'63''45'Tx_1010 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasFees'63'_4064
du_HasFees'63''45'Tx_1010
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasFees'63''45'Tx_4412
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasFees?-TxBody
d_HasFees'63''45'TxBody_1012 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasFees'63'_4064
d_HasFees'63''45'TxBody_1012 ~v0 = du_HasFees'63''45'TxBody_1012
du_HasFees'63''45'TxBody_1012 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasFees'63'_4064
du_HasFees'63''45'TxBody_1012
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasFees'63''45'TxBody_4406
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGovAction
d_HasGovAction_1014 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_1018 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1088
d_HasGovAction'45'GovActionState_1018 ~v0
  = du_HasGovAction'45'GovActionState_1018
du_HasGovAction'45'GovActionState_1018 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1088
du_HasGovAction'45'GovActionState_1018
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1266
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_1020 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1088
d_HasGovAction'45'GovProposal_1020 ~v0
  = du_HasGovAction'45'GovProposal_1020
du_HasGovAction'45'GovProposal_1020 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1088
du_HasGovAction'45'GovProposal_1020
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1264
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGovActionType
d_HasGovActionType_1022 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_1026 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1052
d_HasGovActionType'45'GovAction_1026 ~v0
  = du_HasGovActionType'45'GovAction_1026
du_HasGovActionType'45'GovAction_1026 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1052
du_HasGovActionType'45'GovAction_1026
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_1242
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_1028 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1052
d_HasGovActionType'45'GovActionState_1028 ~v0
  = du_HasGovActionType'45'GovActionState_1028
du_HasGovActionType'45'GovActionState_1028 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1052
du_HasGovActionType'45'GovActionState_1028
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1270
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_1030 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1052
d_HasGovActionType'45'GovProposal_1030 ~v0
  = du_HasGovActionType'45'GovProposal_1030
du_HasGovActionType'45'GovProposal_1030 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1052
du_HasGovActionType'45'GovProposal_1030
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1268
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGovProposals
d_HasGovProposals_1032 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGovVoter
d_HasGovVoter_1036 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_1040 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1106
d_HasGovVoter'45'GovVote_1040 ~v0 = du_HasGovVoter'45'GovVote_1040
du_HasGovVoter'45'GovVote_1040 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1106
du_HasGovVoter'45'GovVote_1040
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1254
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGovVotes
d_HasGovVotes_1042 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGovVotes-GovActionState
d_HasGovVotes'45'GovActionState_1046 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1126
d_HasGovVotes'45'GovActionState_1046 ~v0
  = du_HasGovVotes'45'GovActionState_1046
du_HasGovVotes'45'GovActionState_1046 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1126
du_HasGovVotes'45'GovActionState_1046
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovVotes'45'GovActionState_1272
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGuards
d_HasGuards_1048 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGuards-Tx
d_HasGuards'45'Tx_1052 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4184
d_HasGuards'45'Tx_1052 ~v0 = du_HasGuards'45'Tx_1052
du_HasGuards'45'Tx_1052 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4184
du_HasGuards'45'Tx_1052 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasGuards'45'Tx_4430
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGuards-TxBody
d_HasGuards'45'TxBody_1054 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4184
d_HasGuards'45'TxBody_1054 ~v0 = du_HasGuards'45'TxBody_1054
du_HasGuards'45'TxBody_1054 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4184
du_HasGuards'45'TxBody_1054 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasGuards'45'TxBody_4428
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasIsValidFlag
d_HasIsValidFlag_1056 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasIsValidFlag-Tx
d_HasIsValidFlag'45'Tx_1060 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasIsValidFlag_4324
d_HasIsValidFlag'45'Tx_1060 ~v0 = du_HasIsValidFlag'45'Tx_1060
du_HasIsValidFlag'45'Tx_1060 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasIsValidFlag_4324
du_HasIsValidFlag'45'Tx_1060
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasIsValidFlag'45'Tx_4346
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasListOfGovProposals
d_HasListOfGovProposals_1062 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasListOfGovProposals-Tx
d_HasListOfGovProposals'45'Tx_1066 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovProposals_4144
d_HasListOfGovProposals'45'Tx_1066 ~v0
  = du_HasListOfGovProposals'45'Tx_1066
du_HasListOfGovProposals'45'Tx_1066 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovProposals_4144
du_HasListOfGovProposals'45'Tx_1066 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasListOfGovProposals'45'Tx_4398
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasListOfGovProposals-TxBody
d_HasListOfGovProposals'45'TxBody_1068 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovProposals_4144
d_HasListOfGovProposals'45'TxBody_1068 ~v0
  = du_HasListOfGovProposals'45'TxBody_1068
du_HasListOfGovProposals'45'TxBody_1068 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovProposals_4144
du_HasListOfGovProposals'45'TxBody_1068 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasListOfGovProposals'45'TxBody_4396
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasListOfGovVotes
d_HasListOfGovVotes_1070 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasListOfGovVotes-Tx
d_HasListOfGovVotes'45'Tx_1074 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovVotes_4164
d_HasListOfGovVotes'45'Tx_1074 ~v0
  = du_HasListOfGovVotes'45'Tx_1074
du_HasListOfGovVotes'45'Tx_1074 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovVotes_4164
du_HasListOfGovVotes'45'Tx_1074 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasListOfGovVotes'45'Tx_4394
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasListOfGovVotes-TxBody
d_HasListOfGovVotes'45'TxBody_1076 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovVotes_4164
d_HasListOfGovVotes'45'TxBody_1076 ~v0
  = du_HasListOfGovVotes'45'TxBody_1076
du_HasListOfGovVotes'45'TxBody_1076 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovVotes_4164
du_HasListOfGovVotes'45'TxBody_1076 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasListOfGovVotes'45'TxBody_4392
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasMaybeNetworkId
d_HasMaybeNetworkId_1078 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasMaybeNetworkId-Tx
d_HasMaybeNetworkId'45'Tx_1082 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174
d_HasMaybeNetworkId'45'Tx_1082 ~v0
  = du_HasMaybeNetworkId'45'Tx_1082
du_HasMaybeNetworkId'45'Tx_1082 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174
du_HasMaybeNetworkId'45'Tx_1082 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMaybeNetworkId'45'Tx_4402
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasMaybeNetworkId-TxBody
d_HasMaybeNetworkId'45'TxBody_1084 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174
d_HasMaybeNetworkId'45'TxBody_1084 ~v0
  = du_HasMaybeNetworkId'45'TxBody_1084
du_HasMaybeNetworkId'45'TxBody_1084 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174
du_HasMaybeNetworkId'45'TxBody_1084 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMaybeNetworkId'45'TxBody_4400
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasMintedValue
d_HasMintedValue_1086 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasMintedValue-Tx
d_HasMintedValue'45'Tx_1090 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4044
d_HasMintedValue'45'Tx_1090 ~v0 = du_HasMintedValue'45'Tx_1090
du_HasMintedValue'45'Tx_1090 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4044
du_HasMintedValue'45'Tx_1090 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMintedValue'45'Tx_4390
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasMintedValue-TxBody
d_HasMintedValue'45'TxBody_1092 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4044
d_HasMintedValue'45'TxBody_1092 ~v0
  = du_HasMintedValue'45'TxBody_1092
du_HasMintedValue'45'TxBody_1092 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4044
du_HasMintedValue'45'TxBody_1092 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasMintedValue'45'TxBody_4388
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasNetworkId
d_HasNetworkId_1094 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_1098 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'BaseAddr_1098 ~v0
  = du_HasNetworkId'45'BaseAddr_1098
du_HasNetworkId'45'BaseAddr_1098 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'BaseAddr_1098
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BaseAddr_230
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_1100 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'BootstrapAddr_1100 ~v0
  = du_HasNetworkId'45'BootstrapAddr_1100
du_HasNetworkId'45'BootstrapAddr_1100 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'BootstrapAddr_1100
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BootstrapAddr_232
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasNetworkId-RewardAddress
d_HasNetworkId'45'RewardAddress_1102 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'RewardAddress_1102 ~v0
  = du_HasNetworkId'45'RewardAddress_1102
du_HasNetworkId'45'RewardAddress_1102 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'RewardAddress_1102
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RewardAddress_234
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasPParams
d_HasPParams_1104 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasPolicy
d_HasPolicy_1108 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_1112 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1166
d_HasPolicy'45'GovProposal_1112 ~v0
  = du_HasPolicy'45'GovProposal_1112
du_HasPolicy'45'GovProposal_1112 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1166
du_HasPolicy'45'GovProposal_1112
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1258
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRedeemers
d_HasRedeemers_1114 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRedeemers-Tx
d_HasRedeemers'45'Tx_1118 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_3828
d_HasRedeemers'45'Tx_1118 ~v0 = du_HasRedeemers'45'Tx_1118
du_HasRedeemers'45'Tx_1118 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_3828
du_HasRedeemers'45'Tx_1118 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasRedeemers'45'Tx_4350
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRedeemers-TxWitnesses
d_HasRedeemers'45'TxWitnesses_1120 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_3828
d_HasRedeemers'45'TxWitnesses_1120 ~v0
  = du_HasRedeemers'45'TxWitnesses_1120
du_HasRedeemers'45'TxWitnesses_1120 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_3828
du_HasRedeemers'45'TxWitnesses_1120
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasRedeemers'45'TxWitnesses_4348
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasReferenceInputs
d_HasReferenceInputs_1122 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasReferenceInputs-Tx
d_HasReferenceInputs'45'Tx_1126 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4024
d_HasReferenceInputs'45'Tx_1126 ~v0
  = du_HasReferenceInputs'45'Tx_1126
du_HasReferenceInputs'45'Tx_1126 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4024
du_HasReferenceInputs'45'Tx_1126 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasReferenceInputs'45'Tx_4386
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasReferenceInputs-TxBody
d_HasReferenceInputs'45'TxBody_1128 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4024
d_HasReferenceInputs'45'TxBody_1128 ~v0
  = du_HasReferenceInputs'45'TxBody_1128
du_HasReferenceInputs'45'TxBody_1128 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4024
du_HasReferenceInputs'45'TxBody_1128 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasReferenceInputs'45'TxBody_4384
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRequiredSingerHashes
d_HasRequiredSingerHashes_1130 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRequiredSingerHashes-Tx
d_HasRequiredSingerHashes'45'Tx_1134 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRequiredSingerHashes_4244
d_HasRequiredSingerHashes'45'Tx_1134 ~v0
  = du_HasRequiredSingerHashes'45'Tx_1134
du_HasRequiredSingerHashes'45'Tx_1134 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRequiredSingerHashes_4244
du_HasRequiredSingerHashes'45'Tx_1134 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasRequiredSingerHashes'45'Tx_4442
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRequiredSingerHashes-TxBody
d_HasRequiredSingerHashes'45'TxBody_1136 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRequiredSingerHashes_4244
d_HasRequiredSingerHashes'45'TxBody_1136 ~v0
  = du_HasRequiredSingerHashes'45'TxBody_1136
du_HasRequiredSingerHashes'45'TxBody_1136 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRequiredSingerHashes_4244
du_HasRequiredSingerHashes'45'TxBody_1136 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasRequiredSingerHashes'45'TxBody_4440
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasReserves-Acnt
d_HasReserves'45'Acnt_1138 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
d_HasReserves'45'Acnt_1138 ~v0 = du_HasReserves'45'Acnt_1138
du_HasReserves'45'Acnt_1138 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
du_HasReserves'45'Acnt_1138
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasReserves'45'Acnt_228
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRewardAddress
d_HasRewardAddress_1140 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRewardAddress-GovActionState
d_HasRewardAddress'45'GovActionState_1144 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
d_HasRewardAddress'45'GovActionState_1144 ~v0
  = du_HasRewardAddress'45'GovActionState_1144
du_HasRewardAddress'45'GovActionState_1144 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
du_HasRewardAddress'45'GovActionState_1144
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasRewardAddress'45'GovActionState_1274
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRewardAddress-GovProposal
d_HasRewardAddress'45'GovProposal_1146 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
d_HasRewardAddress'45'GovProposal_1146 ~v0
  = du_HasRewardAddress'45'GovProposal_1146
du_HasRewardAddress'45'GovProposal_1146 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
du_HasRewardAddress'45'GovProposal_1146
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasRewardAddress'45'GovProposal_1276
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasScripts
d_HasScripts_1148 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasScripts-Tx
d_HasScripts'45'Tx_1152 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasScripts_4204
d_HasScripts'45'Tx_1152 ~v0 = du_HasScripts'45'Tx_1152
du_HasScripts'45'Tx_1152 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasScripts_4204
du_HasScripts'45'Tx_1152 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasScripts'45'Tx_4434
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasScripts-TxWitnesses
d_HasScripts'45'TxWitnesses_1154 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasScripts_4204
d_HasScripts'45'TxWitnesses_1154 ~v0
  = du_HasScripts'45'TxWitnesses_1154
du_HasScripts'45'TxWitnesses_1154 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasScripts_4204
du_HasScripts'45'TxWitnesses_1154
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasScripts'45'TxWitnesses_4432
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasSize
d_HasSize_1156 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasSize-Tx
d_HasSize'45'Tx_1160 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_3964
d_HasSize'45'Tx_1160 ~v0 = du_HasSize'45'Tx_1160
du_HasSize'45'Tx_1160 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_3964
du_HasSize'45'Tx_1160 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSize'45'Tx_4342
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasSpendInputs
d_HasSpendInputs_1162 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasSpendInputs-Tx
d_HasSpendInputs'45'Tx_1166 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4004
d_HasSpendInputs'45'Tx_1166 ~v0 = du_HasSpendInputs'45'Tx_1166
du_HasSpendInputs'45'Tx_1166 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4004
du_HasSpendInputs'45'Tx_1166 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'Tx_4382
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasSpendInputs-TxBody
d_HasSpendInputs'45'TxBody_1168 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4004
d_HasSpendInputs'45'TxBody_1168 ~v0
  = du_HasSpendInputs'45'TxBody_1168
du_HasSpendInputs'45'TxBody_1168 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4004
du_HasSpendInputs'45'TxBody_1168 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSpendInputs'45'TxBody_4380
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasSubTransactions
d_HasSubTransactions_1170 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasSubTransactions-TopLevelTx
d_HasSubTransactions'45'TopLevelTx_1174 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_3898
d_HasSubTransactions'45'TopLevelTx_1174 ~v0
  = du_HasSubTransactions'45'TopLevelTx_1174
du_HasSubTransactions'45'TopLevelTx_1174 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_3898
du_HasSubTransactions'45'TopLevelTx_1174
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasSubTransactions'45'TopLevelTx_4356
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTopLevelGuards
d_HasTopLevelGuards_1176 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTopLevelGuards-SubLevelTx
d_HasTopLevelGuards'45'SubLevelTx_1180 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTopLevelGuards_3922
d_HasTopLevelGuards'45'SubLevelTx_1180 ~v0
  = du_HasTopLevelGuards'45'SubLevelTx_1180
du_HasTopLevelGuards'45'SubLevelTx_1180 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTopLevelGuards_3922
du_HasTopLevelGuards'45'SubLevelTx_1180
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTopLevelGuards'45'SubLevelTx_4358
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTreasury-Acnt
d_HasTreasury'45'Acnt_1182 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'Acnt_1182 ~v0 = du_HasTreasury'45'Acnt_1182
du_HasTreasury'45'Acnt_1182 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
du_HasTreasury'45'Acnt_1182
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_HasTreasury'45'Acnt_226
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTxBody
d_HasTxBody_1184 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTxBody-Tx
d_HasTxBody'45'Tx_1188 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxBody_3786
d_HasTxBody'45'Tx_1188 ~v0 = du_HasTxBody'45'Tx_1188
du_HasTxBody'45'Tx_1188 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxBody_3786
du_HasTxBody'45'Tx_1188 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxBody'45'Tx_4340
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTxFees
d_HasTxFees_1190 a0 a1 a2 a3 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTxFees-TopLevelTx
d_HasTxFees'45'TopLevelTx_1194 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxFees_3874
d_HasTxFees'45'TopLevelTx_1194 ~v0
  = du_HasTxFees'45'TopLevelTx_1194
du_HasTxFees'45'TopLevelTx_1194 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxFees_3874
du_HasTxFees'45'TopLevelTx_1194
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxFees'45'TopLevelTx_4354
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTxId
d_HasTxId_1196 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTxId-Tx
d_HasTxId'45'Tx_1200 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_3944
d_HasTxId'45'Tx_1200 ~v0 = du_HasTxId'45'Tx_1200
du_HasTxId'45'Tx_1200 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_3944
du_HasTxId'45'Tx_1200 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxId'45'Tx_4416
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTxId-TxBody
d_HasTxId'45'TxBody_1202 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_3944
d_HasTxId'45'TxBody_1202 ~v0 = du_HasTxId'45'TxBody_1202
du_HasTxId'45'TxBody_1202 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_3944
du_HasTxId'45'TxBody_1202 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxId'45'TxBody_4414
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTxOuts
d_HasTxOuts_1204 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTxOuts-Tx
d_HasTxOuts'45'Tx_1208 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4224
d_HasTxOuts'45'Tx_1208 ~v0 = du_HasTxOuts'45'Tx_1208
du_HasTxOuts'45'Tx_1208 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4224
du_HasTxOuts'45'Tx_1208 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'Tx_4438
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTxOuts-TxBody
d_HasTxOuts'45'TxBody_1210 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4224
d_HasTxOuts'45'TxBody_1210 ~v0 = du_HasTxOuts'45'TxBody_1210
du_HasTxOuts'45'TxBody_1210 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4224
du_HasTxOuts'45'TxBody_1210 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxOuts'45'TxBody_4436
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTxWitnesses
d_HasTxWitnesses_1212 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTxWitnesses-Tx
d_HasTxWitnesses'45'Tx_1216 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxWitnesses_3808
d_HasTxWitnesses'45'Tx_1216 ~v0 = du_HasTxWitnesses'45'Tx_1216
du_HasTxWitnesses'45'Tx_1216 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxWitnesses_3808
du_HasTxWitnesses'45'Tx_1216 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasTxWitnesses'45'Tx_4344
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasUTxO
d_HasUTxO_1218 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasValidInterval
d_HasValidInterval_1222 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasValidInterval-Tx
d_HasValidInterval'45'Tx_1226 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_3984
d_HasValidInterval'45'Tx_1226 ~v0 = du_HasValidInterval'45'Tx_1226
du_HasValidInterval'45'Tx_1226 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_3984
du_HasValidInterval'45'Tx_1226 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasValidInterval'45'Tx_4378
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasValidInterval-TxBody
d_HasValidInterval'45'TxBody_1228 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_3984
d_HasValidInterval'45'TxBody_1228 ~v0
  = du_HasValidInterval'45'TxBody_1228
du_HasValidInterval'45'TxBody_1228 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_3984
du_HasValidInterval'45'TxBody_1228 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasValidInterval'45'TxBody_4376
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasVote
d_HasVote_1230 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasVote-GovVote
d_HasVote'45'GovVote_1234 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1146
d_HasVote'45'GovVote_1234 ~v0 = du_HasVote'45'GovVote_1234
du_HasVote'45'GovVote_1234 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1146
du_HasVote'45'GovVote_1234
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasVote'45'GovVote_1256
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasVoteDelegs
d_HasVoteDelegs_1236 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasWithdrawals
d_HasWithdrawals_1240 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasWithdrawals-Tx
d_HasWithdrawals'45'Tx_1244 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
d_HasWithdrawals'45'Tx_1244 ~v0 = du_HasWithdrawals'45'Tx_1244
du_HasWithdrawals'45'Tx_1244 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
du_HasWithdrawals'45'Tx_1244 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasWithdrawals'45'Tx_4366
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasWithdrawals-TxBody
d_HasWithdrawals'45'TxBody_1246 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
d_HasWithdrawals'45'TxBody_1246 ~v0
  = du_HasWithdrawals'45'TxBody_1246
du_HasWithdrawals'45'TxBody_1246 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
du_HasWithdrawals'45'TxBody_1246 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_HasWithdrawals'45'TxBody_4364
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HashProtected
d_HashProtected_1248 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () -> ()
d_HashProtected_1248 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Hashable-P1Script
d_Hashable'45'P1Script_1250 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_1250 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_344
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_546
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1252 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_1252 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_458
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Hashable-Script
d_Hashable'45'Script_1254 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_1254 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_648
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Hashable-ScriptIntegrity
d_Hashable'45'ScriptIntegrity_1256 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'ScriptIntegrity_1256 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_Hashable'45'ScriptIntegrity_2638
      (coe d_HSTransactionStructure_636 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.InBalanceInterval
d_InBalanceInterval_1258 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsBootstrapAddr
d_IsBootstrapAddr_1262 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsBootstrapAddr?
d_IsBootstrapAddr'63'_1264 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsBootstrapAddr'63'_1264 ~v0 = du_IsBootstrapAddr'63'_1264
du_IsBootstrapAddr'63'_1264 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsBootstrapAddr'63'_1264
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsBootstrapAddr'63'_322
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsKeyHashObj
d_IsKeyHashObj_1268 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsKeyHashObj?
d_IsKeyHashObj'63'_1270 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsKeyHashObj'63'_1270 ~v0 = du_IsKeyHashObj'63'_1270
du_IsKeyHashObj'63'_1270 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsKeyHashObj'63'_1270
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsKeyHashObj'63'_56
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_1272 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1276 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1280 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsValidFlagOf
d_IsValidFlagOf_1284 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasIsValidFlag_4324 ->
  AgdaAny -> Bool
d_IsValidFlagOf_1284 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_IsValidFlagOf_4332
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Ix
d_Ix_1286 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Ix_1286 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.THash
d_THash_1288 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_THash_1288 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.KeyPair
d_KeyPair_1292 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_KeyPair_1292 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.LangDepView
d_LangDepView_1294 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_LangDepView_1294 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Language
d_Language_1296 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Language_1296 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.LanguageCostModels
d_LanguageCostModels_1298 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ListOfGovProposalsOf
d_ListOfGovProposalsOf_1302 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovProposals_4144 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_976]
d_ListOfGovProposalsOf_1302 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ListOfGovProposalsOf_4152
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ListOfGovVotesOf
d_ListOfGovVotesOf_1304 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovVotes_4164 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_922]
d_ListOfGovVotesOf_1304 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ListOfGovVotesOf_4172
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.MaxLovelaceSupplyᶜ
d_MaxLovelaceSupply'7580'_1306 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_MaxLovelaceSupply'7580'_1306 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_336
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.MaybeNetworkIdOf
d_MaybeNetworkIdOf_1308 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174 ->
  AgdaAny -> Maybe Integer
d_MaybeNetworkIdOf_1308 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_182
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.MemoryEstimate
d_MemoryEstimate_1310 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_MemoryEstimate_1310 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.MintedValueOf
d_MintedValueOf_1312 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4044 ->
  AgdaAny -> Integer
d_MintedValueOf_1312 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_MintedValueOf_4052
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.NativeScript
d_NativeScript_1314 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.NeedsHash
d_NeedsHash_1316 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_858 ->
  ()
d_NeedsHash_1316 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Network
d_Network_1318 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Network_1318 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.NetworkId
d_NetworkId_1322 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_NetworkId_1322 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.NetworkIdOf
d_NetworkIdOf_1324 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154 ->
  AgdaAny -> Integer
d_NetworkIdOf_1324 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_162
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.NoOverlappingSpendInputs
d_NoOverlappingSpendInputs_1330 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3628 ->
  ()
d_NoOverlappingSpendInputs_1330 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_1332 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_1332 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'ActiveSlotCoeff_342
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1334 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_1334 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_326
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Number-Epoch
d_Number'45'Epoch_1336 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_1336 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Number'45'Epoch_286
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.P1Script
d_P1Script_1338 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_P1Script_1338 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.P1ScriptStructure
d_P1ScriptStructure_1340 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusScript
d_PlutusScript_1344 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_PlutusScript_1344 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamGroup
d_PParamGroup_1346 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams
d_PParams_1348 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsDiff
d_PParamsDiff_1352 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsOf
d_PParamsOf_1356 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_572 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_PParamsOf_1356 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_580
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.UpdateT
d_UpdateT_1358 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_UpdateT_1358 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusLanguage
d_PlutusLanguage_1360 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure
d_PlutusStructure_1362 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusV1
d_PlutusV1_1366 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.T_HSLanguage_10
d_PlutusV1_1366 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_482
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
               (coe v2))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusV2
d_PlutusV2_1368 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.T_HSLanguage_10
d_PlutusV2_1368 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_484
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
               (coe v2))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusV3
d_PlutusV3_1370 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.T_HSLanguage_10
d_PlutusV3_1370 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_486
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
               (coe v2))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusV4
d_PlutusV4_1372 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.T_HSLanguage_10
d_PlutusV4_1372 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_488
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
               (coe v2))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Policy
d_Policy_1374 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Policy_1374 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PolicyOf
d_PolicyOf_1376 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1166 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_1376 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_PolicyOf_1174
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PoolThresholds
d_PoolThresholds_1378 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Positive-ActiveSlotCoeff
d_Positive'45'ActiveSlotCoeff_1382 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_Positive'45'ActiveSlotCoeff_1382 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Positive'45'ActiveSlotCoeff_330
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Prices
d_Prices_1384 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Prices_1384 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ProposedPPUpdates
d_ProposedPPUpdates_1386 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ProposedPPUpdates_1386 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Quorum
d_Quorum_1388 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_Quorum_1388 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Quorum_338
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_1390 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_RandomnessStabilisationWindow_1390 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_94
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.RandomnessStabilisationWindowᶜ
d_RandomnessStabilisationWindow'7580'_1392 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_RandomnessStabilisationWindow'7580'_1392 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow'7580'_332
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Redeemer
d_Redeemer_1394 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Redeemer_1394 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.RedeemerPtr
d_RedeemerPtr_1396 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_RedeemerPtr_1396 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.RedeemersOf
d_RedeemersOf_1398 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_3828 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RedeemersOf_1398 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_RedeemersOf_3836
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ReferenceInputsOf
d_ReferenceInputsOf_1400 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4024 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_ReferenceInputsOf_1400 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ReferenceInputsOf_4032
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.RequiredSignerHashesOf
d_RequiredSignerHashesOf_1416 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRequiredSingerHashes_4244 ->
  AgdaAny -> [Integer]
d_RequiredSignerHashesOf_1416 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_RequiredSignerHashesOf_4252
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.RewardAddress
d_RewardAddress_1418 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.RewardAddressOf
d_RewardAddressOf_1422 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_1422 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.SKey
d_SKey_1426 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_SKey_1426 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Script
d_Script_1430 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Script_1430 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptAddr
d_ScriptAddr_1432 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ScriptAddr_1432 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptBaseAddr
d_ScriptBaseAddr_1434 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ScriptBaseAddr_1434 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1436 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ScriptBootstrapAddr_1436 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptHash
d_ScriptHash_1438 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ScriptHash_1438 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure
d_ScriptStructure_1442 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptsOf
d_ScriptsOf_1446 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasScripts_4204 ->
  AgdaAny -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_ScriptsOf_1446 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ScriptsOf_4212
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Ser
d_Ser_1450 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Ser_1450 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-CostModel
d_Show'45'CostModel_1452 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1452 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'CostModel_464
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-Credential
d_Show'45'Credential_1454 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_1454 ~v0 = du_Show'45'Credential_1454
du_Show'45'Credential_1454 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_1454 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential_362
      v1 v2
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_1456 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_1456 ~v0
  = du_Show'45'Credential'215'Coin_1456
du_Show'45'Credential'215'Coin_1456 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_1456 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential'215'Coin_366
      v1 v2
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-DrepThresholds
d_Show'45'DrepThresholds_1458 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_1458 ~v0 = du_Show'45'DrepThresholds_1458
du_Show'45'DrepThresholds_1458 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_1458
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_Show'45'DrepThresholds_616
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-Epoch
d_Show'45'Epoch_1460 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_1460 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Epoch_82
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-ExUnits
d_Show'45'ExUnits_1462 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1462 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_478
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-GovRole
d_Show'45'GovRole_1464 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_1464 ~v0 = du_Show'45'GovRole_1464
du_Show'45'GovRole_1464 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'GovRole_1464
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_Show'45'GovRole_1278
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-Language
d_Show'45'Language_1466 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_1466 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Language_468
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-LanguageCostModels
d_Show'45'LanguageCostModels_1468 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_1468 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Show'45'LanguageCostModels_690
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-Network
d_Show'45'Network_1470 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_1470 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Network_322
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-PParams
d_Show'45'PParams_1472 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_1472 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_Show'45'PParams_620
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
            (coe v1))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-PoolThresholds
d_Show'45'PoolThresholds_1474 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_1474 ~v0 = du_Show'45'PoolThresholds_1474
du_Show'45'PoolThresholds_1474 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_1474
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_Show'45'PoolThresholds_618
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-Prices
d_Show'45'Prices_1476 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1476 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Prices_480
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-RewardAddress
d_Show'45'RewardAddress_1478 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RewardAddress_1478 ~v0 = du_Show'45'RewardAddress_1478
du_Show'45'RewardAddress_1478 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RewardAddress_1478
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'RewardAddress_364
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-ScriptHash
d_Show'45'ScriptHash_1480 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_1480 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_212
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-THash
d_Show'45'THash_1482 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1482 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1356
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-THash
d_Show'45'THash_1484 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1484 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206 (coe v2))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-THash
d_Show'45'THash_1486 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1486 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_440
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
               (coe v2))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Show-VDeleg
d_Show'45'VDeleg_1488 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_1488 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_Show'45'VDeleg_1388
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Sig
d_Sig_1490 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Sig_1490 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.SizeOf
d_SizeOf_1492 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_3964 ->
  AgdaAny -> Integer
d_SizeOf_1492 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SizeOf_3972
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Slot
d_Slot_1494 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Slot_1494 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1496 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_SlotsPerEpoch'7580'_1496 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_324
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Slotʳ
d_Slot'691'_1498 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_Slot'691'_1498 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_76
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.SpendInputsOf
d_SpendInputsOf_1500 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4004 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_SpendInputsOf_1500 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4012
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.StabilityWindow
d_StabilityWindow_1502 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_StabilityWindow_1502 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow_96
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.StabilityWindowᶜ
d_StabilityWindow'7580'_1504 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_StabilityWindow'7580'_1504 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow'7580'_334
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.SubLevelTx
d_SubLevelTx_1506 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_SubLevelTx_1506 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.SubTransactionsOf
d_SubTransactionsOf_1508 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_3898 ->
  AgdaAny -> AgdaAny
d_SubTransactionsOf_1508 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SubTransactionsOf_3908
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.T-Hashable
d_T'45'Hashable_1510 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1510 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_adHashingScheme_1356
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.T-Hashable
d_T'45'Hashable_1512 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1512 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206 (coe v2))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.T-Hashable
d_T'45'Hashable_1514 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1514 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_440
                 (coe
                    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
               (coe v2))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.T-isHashable
d_T'45'isHashable_1516 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_1516 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_440
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra
d_TokenAlgebra_1520 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TopLevelGuardsOf
d_TopLevelGuardsOf_1524 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTopLevelGuards_3922 ->
  AgdaAny -> AgdaAny
d_TopLevelGuardsOf_1524 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TopLevelGuardsOf_3932
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TopLevelTx
d_TopLevelTx_1526 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_TopLevelTx_1526 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Tx
d_Tx_1532 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody
d_TxBody_1536 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBodyOf
d_TxBodyOf_1540 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxBody_3786 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3632
d_TxBodyOf_1540 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxBodyOf_3796
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxFeesOf
d_TxFeesOf_1542 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxFees_3874 ->
  AgdaAny -> AgdaAny
d_TxFeesOf_1542 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxFeesOf_3884
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxId
d_TxId_1544 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_TxId_1544 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxIdOf
d_TxIdOf_1546 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_3944 ->
  AgdaAny -> Integer
d_TxIdOf_1546 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxIdOf_3952
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxIn
d_TxIn_1548 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_TxIn_1548 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxOut
d_TxOut_1550 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_TxOut_1550 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxOutsOf
d_TxOutsOf_1552 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4224 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_TxOutsOf_1552 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4232
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxWitnesses
d_TxWitnesses_1554 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxWitnessesOf
d_TxWitnessesOf_1558 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxWitnesses_3808 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3634
d_TxWitnessesOf_1558 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxWitnessesOf_3816
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.UTxO
d_UTxO_1560 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_UTxO_1560 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.UTxOOf
d_UTxOOf_1562 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3610 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_1562 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3618
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Update
d_Update_1564 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Update_1564 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.VDeleg
d_VDeleg_1576 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.VKey
d_VKey_1578 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VKey_1578 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.VKeyAddr
d_VKeyAddr_1580 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VKeyAddr_1580 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.VKeyBaseAddr
d_VKeyBaseAddr_1582 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VKeyBaseAddr_1582 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1584 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VKeyBootstrapAddr_1584 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ValidIntervalOf
d_ValidIntervalOf_1588 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_3984 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ValidIntervalOf_1588 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ValidIntervalOf_3992
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Value
d_Value_1590 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Value_1590 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1592 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_1592 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.VoteDelegs
d_VoteDelegs_1594 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VoteDelegs_1594 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.VoteDelegsOf
d_VoteDelegsOf_1596 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1070 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1596 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1078
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.VoteOf
d_VoteOf_1598 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1146 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_890
d_VoteOf_1598 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteOf_1154
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Withdrawals
d_Withdrawals_1600 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Withdrawals_1600 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.WithdrawalsOf
d_WithdrawalsOf_1602 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_1602 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_202
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.activeDRepsOf
d_activeDRepsOf_1604 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1186 ->
  AgdaAny -> Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_1604 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (\ v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_activeDRepsOf_1566
           (coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
              (coe v1))
           v3 v4 v5)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.activeInEpoch
d_activeInEpoch_1606 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_1606 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.adHashingScheme
d_adHashingScheme_1608 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_adHashingScheme_1608 ~v0 = du_adHashingScheme_1608
du_adHashingScheme_1608 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
du_adHashingScheme_1608
  = coe
      MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_isHashableSet'45'ℕ_34
-- Ledger.Dijkstra.Foreign.ExternalStructures._.addEpoch
d_addEpoch_1610 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_1610 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_280
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.addSlot
d_addSlot_1612 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_1612 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_278
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.addValue
d_addValue_1614 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_1614 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.allDCerts
d_allDCerts_1616 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3628 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1290]
d_allDCerts_1616 ~v0 = du_allDCerts_1616
du_allDCerts_1616 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3628 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1290]
du_allDCerts_1616
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allDCerts_4596
-- Ledger.Dijkstra.Foreign.ExternalStructures._.allDirectDeposits
d_allDirectDeposits_1618 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3628 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_allDirectDeposits_1618 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_allDirectDeposits_4580
      (coe d_HSTransactionStructure_636 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.allMintedCoin
d_allMintedCoin_1620 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3628 ->
  Integer
d_allMintedCoin_1620 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_allMintedCoin_4564
      (coe d_HSTransactionStructure_636 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.allReferenceInputs
d_allReferenceInputs_1622 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3628 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_allReferenceInputs_1622 ~v0 = du_allReferenceInputs_1622
du_allReferenceInputs_1622 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3628 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_allReferenceInputs_1622
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allReferenceInputs_4474
-- Ledger.Dijkstra.Foreign.ExternalStructures._.allReferenceScripts
d_allReferenceScripts_1624 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3628 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allReferenceScripts_1624 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_allReferenceScripts_4510
      (coe d_HSTransactionStructure_636 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.allSpendInputs
d_allSpendInputs_1626 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3628 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_allSpendInputs_1626 ~v0 = du_allSpendInputs_1626
du_allSpendInputs_1626 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3628 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_allSpendInputs_1626
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allSpendInputs_4462
-- Ledger.Dijkstra.Foreign.ExternalStructures._.allSpendInputsList
d_allSpendInputsList_1628 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3628 ->
  [[MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]]
d_allSpendInputsList_1628 ~v0 = du_allSpendInputsList_1628
du_allSpendInputsList_1628 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3628 ->
  [[MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]]
du_allSpendInputsList_1628
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allSpendInputsList_4470
-- Ledger.Dijkstra.Foreign.ExternalStructures._.allWithdrawals
d_allWithdrawals_1630 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3628 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_allWithdrawals_1630 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_allWithdrawals_4588
      (coe d_HSTransactionStructure_636 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.allWitnessScripts
d_allWitnessScripts_1632 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3628 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_allWitnessScripts_1632 ~v0 = du_allWitnessScripts_1632
du_allWitnessScripts_1632 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3628 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_allWitnessScripts_1632
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_allWitnessScripts_4522
-- Ledger.Dijkstra.Foreign.ExternalStructures._.applyUpdate
d_applyUpdate_1634 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyUpdate_1634 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1480
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1516
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2632
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.coin
d_coin_1638 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_coin_1638 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.coin-inject-lemma
d_coin'45'inject'45'lemma_1640 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_1640 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1642 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_1642 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.coin∘inject≗id
d_coin'8728'inject'8791'id_1644 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_1644 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.cryptoStructure
d_cryptoStructure_1646 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
d_cryptoStructure_1646 v0
  = coe
      MAlonzo.Code.Ledger.Core.Foreign.Crypto.Structure.d_HSCryptoStructure_34
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.dataOfTx
d_dataOfTx_1648 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3628 ->
  [Integer]
d_dataOfTx_1648 ~v0 = du_dataOfTx_1648
du_dataOfTx_1648 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3628 ->
  [Integer]
du_dataOfTx_1648 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_dataOfTx_4546
      v1
-- Ledger.Dijkstra.Foreign.ExternalStructures._.e<sucᵉ
d_e'60'suc'7497'_1650 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_e'60'suc'7497'_1650 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_e'60'suc'7497'_120
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.epoch
d_epoch_1652 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_epoch_1652 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.epochStructure
d_epochStructure_1654 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_epochStructure_1654 ~v0 = du_epochStructure_1654
du_epochStructure_1654 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
du_epochStructure_1654
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'46'extendedlambda0_362
      (coe MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.firstSlot
d_firstSlot_1670 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_firstSlot_1670 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.fromPlutusLanguage
d_fromPlutusLanguage_1672 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_1672 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_fromPlutusLanguage_454
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.gaData
d_gaData_1674 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876 ->
  AgdaAny
d_gaData_1674 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaData_884
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.gaType
d_gaType_1676 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_858
d_gaType_1676 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_882
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.getAllScripts
d_getAllScripts_1678 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3628 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_getAllScripts_1678 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_getAllScripts_4536
      (coe d_HSTransactionStructure_636 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.getScriptHash
d_getScriptHash_1680 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_78 ->
  Integer
d_getScriptHash_1680 ~v0 = du_getScriptHash_1680
du_getScriptHash_1680 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_78 ->
  Integer
du_getScriptHash_1680
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_getScriptHash_340
-- Ledger.Dijkstra.Foreign.ExternalStructures._.getTxData
d_getTxData_1682 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3628 ->
  [Integer]
d_getTxData_1682 ~v0 = du_getTxData_1682
du_getTxData_1682 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3628 ->
  [Integer]
du_getTxData_1682 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_getTxData_4556
      v1
-- Ledger.Dijkstra.Foreign.ExternalStructures._.getTxScripts
d_getTxScripts_1684 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3628 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_getTxScripts_1684 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_getTxScripts_4530
      (coe d_HSTransactionStructure_636 (coe v0)) v2 v3
-- Ledger.Dijkstra.Foreign.ExternalStructures._.globalConstants
d_globalConstants_1686 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
d_globalConstants_1686 ~v0 = du_globalConstants_1686
du_globalConstants_1686 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
du_globalConstants_1686
  = coe MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8
-- Ledger.Dijkstra.Foreign.ExternalStructures._.govParams
d_govParams_1688 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1498
d_govParams_1688 v0 = coe d_HsGovParams_590 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.govStructure
d_govStructure_1690 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Base.T_GovStructure_10
d_govStructure_1690 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
      (coe d_HSTransactionStructure_636 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.govVoterCredential
d_govVoterCredential_1692 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_898 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_1692 ~v0 = du_govVoterCredential_1692
du_govVoterCredential_1692 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_898 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_govVoterCredential_1692
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_govVoterCredential_1036
-- Ledger.Dijkstra.Foreign.ExternalStructures._.hashRespectsUnion
d_hashRespectsUnion_1694 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_1694 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_hashRespectsUnion_566
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.inject
d_inject_1696 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_inject_1696 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isBootstrapAddr
d_isBootstrapAddr_1698 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100
d_isBootstrapAddr_1698 ~v0 = du_isBootstrapAddr_1698
du_isBootstrapAddr_1698 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100
du_isBootstrapAddr_1698
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isBootstrapAddr_290
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isGovVoterDRep
d_isGovVoterDRep_1700 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_898 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_1700 ~v0 = du_isGovVoterDRep_1700
du_isGovVoterDRep_1700 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_898 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_isGovVoterDRep_1700
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_isGovVoterDRep_1032
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isKeyHash
d_isKeyHash_1702 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_isKeyHash_1702 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isKeyHashObj
d_isKeyHashObj_1704 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
d_isKeyHashObj_1704 ~v0 = du_isKeyHashObj_1704
du_isKeyHashObj_1704 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
du_isKeyHashObj_1704
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1706 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
d_isKeyHashObj'7495'_1706 ~v0 = du_isKeyHashObj'7495'_1706
du_isKeyHashObj'7495'_1706 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
du_isKeyHashObj'7495'_1706
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj'7495'_62
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isKeyPair
d_isKeyPair_1708 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 -> ()
d_isKeyPair_1708 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isNativeScript
d_isNativeScript_1710 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_1710 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isP1Script
d_isP1Script_1712 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_1712 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isP1Script?
d_isP1Script'63'_1714 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_1714 ~v0 = du_isP1Script'63'_1714
du_isP1Script'63'_1714 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_1714
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP1Script'63'_654
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isP2Script
d_isP2Script_1716 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_1716 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isP2Script?
d_isP2Script'63'_1718 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_1718 ~v0 = du_isP2Script'63'_1718
du_isP2Script'63'_1718 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_1718
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP2Script'63'_668
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isScript
d_isScript_1720 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isScriptAddr
d_isScriptAddr_1722 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1722 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isScriptObj
d_isScriptObj_1724 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
d_isScriptObj_1724 ~v0 = du_isScriptObj_1724
du_isScriptObj_1724 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
du_isScriptObj_1724
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isScriptRewardAddress
d_isScriptRewardAddress_1726 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  ()
d_isScriptRewardAddress_1726 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isSigned
d_isSigned_1728 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer -> Integer -> ()
d_isSigned_1728 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isSigned-correct
d_isSigned'45'correct_1730 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isSigned'45'correct_1730 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isVKey
d_isVKey_1732 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isVKeyAddr
d_isVKeyAddr_1734 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1734 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.khs
d_khs_1736 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_1736 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.language
d_language_1738 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_364 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.T_HSLanguage_10
d_language_1738 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_516
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.languageCostModels
d_languageCostModels_1740 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_676 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_1740 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_680
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.lookupScriptHash
d_lookupScriptHash_1742 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  Integer ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3628 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_1742 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_lookupScriptHash_4572
      (coe d_HSTransactionStructure_636 (coe v0)) v2 v3 v4
-- Ledger.Dijkstra.Foreign.ExternalStructures._.monoid
d_monoid_1748 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_1748 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_monoid_1066
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.netId
d_netId_1750 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_netId_1750 ~v0 = du_netId_1750
du_netId_1750 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
du_netId_1750
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_266
-- Ledger.Dijkstra.Foreign.ExternalStructures._.p1s
d_p1s_1752 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_322
d_p1s_1752 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_546
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.paramsWF-elim
d_paramsWF'45'elim_1754 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_1754 ~v0 = du_paramsWF'45'elim_1754
du_paramsWF'45'elim_1754 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_1754 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_paramsWF'45'elim_548
      v2
-- Ledger.Dijkstra.Foreign.ExternalStructures._.paramsWellFormed
d_paramsWellFormed_1756 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  ()
d_paramsWellFormed_1756 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.payCred
d_payCred_1758 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_payCred_1758 ~v0 = du_payCred_1758
du_payCred_1758 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_payCred_1758
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_262
-- Ledger.Dijkstra.Foreign.ExternalStructures._.pkk
d_pkk_1760 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_1760 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.policies
d_policies_1762 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> [Integer]
d_policies_1762 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.positivePParams
d_positivePParams_1764 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  [Integer]
d_positivePParams_1764 ~v0 = du_positivePParams_1764
du_positivePParams_1764 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  [Integer]
du_positivePParams_1764
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_positivePParams_458
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ppUpd
d_ppUpd_1766 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1464
d_ppUpd_1766 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1516
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2632
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ppWF?
d_ppWF'63'_1768 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1768 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1488
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1516
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2632
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ppdWellFormed
d_ppdWellFormed_1770 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  ()
d_ppdWellFormed_1770 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.preoEpoch
d_preoEpoch_1772 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_1772 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_110
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.proposedCC
d_proposedCC_1774 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_1774 ~v0 = du_proposedCC_1774
du_proposedCC_1774 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_proposedCC_1774
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_proposedCC_1044
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ps
d_ps_1776 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_360
d_ps_1776 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.rawMonoid
d_rawMonoid_1778 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_1778 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
            (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v2))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.referenceData
d_referenceData_1780 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3628 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [Integer]
d_referenceData_1780 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_referenceData_4552
      (coe d_HSTransactionStructure_636 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.referenceScripts
d_referenceScripts_1782 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3628 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_referenceScripts_1782 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_referenceScripts_4504
      (coe d_HSTransactionStructure_636 (coe v0)) v2 v3
-- Ledger.Dijkstra.Foreign.ExternalStructures._.referencedTxOuts
d_referencedTxOuts_1784 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3628 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_referencedTxOuts_1784 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_referencedTxOuts_4492
      (coe d_HSTransactionStructure_636 (coe v0)) v2 v3
-- Ledger.Dijkstra.Foreign.ExternalStructures._.scriptStructure
d_scriptStructure_1786 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520
d_scriptStructure_1786 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.d_HSScriptStructure_418
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.scriptsOfTx
d_scriptsOfTx_1788 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3628 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scriptsOfTx_1788 ~v0 = du_scriptsOfTx_1788
du_scriptsOfTx_1788 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3628 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_scriptsOfTx_1788 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_scriptsOfTx_4500
      v1
-- Ledger.Dijkstra.Foreign.ExternalStructures._.scriptsOfUTxO
d_scriptsOfUTxO_1790 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scriptsOfUTxO_1790 ~v0 = du_scriptsOfUTxO_1790
du_scriptsOfUTxO_1790 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_scriptsOfUTxO_1790
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_scriptsOfUTxO_4498
-- Ledger.Dijkstra.Foreign.ExternalStructures._.sign
d_sign_1792 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer
d_sign_1792 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v2))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.size
d_size_1794 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_size_1794 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.spendData
d_spendData_1796 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3628 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [Integer]
d_spendData_1796 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_spendData_4550
      (coe d_HSTransactionStructure_636 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.spendScripts
d_spendScripts_1798 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3628 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_spendScripts_1798 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_spendScripts_4502
      (coe d_HSTransactionStructure_636 (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.spendTxOuts
d_spendTxOuts_1800 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3628 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_spendTxOuts_1800 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_spendTxOuts_4486
      (coe d_HSTransactionStructure_636 (coe v0)) v2 v3
-- Ledger.Dijkstra.Foreign.ExternalStructures._.stakeCred
d_stakeCred_1802 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stakeCred_1802 ~v0 = du_stakeCred_1802
du_stakeCred_1802 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_stakeCred_1802
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_stakeCred_264
-- Ledger.Dijkstra.Foreign.ExternalStructures._.sucᵉ
d_suc'7497'_1804 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_suc'7497'_1804 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_suc'7497'_98
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.sumᵛ
d_sum'7515'_1806 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] -> Integer
d_sum'7515'_1806 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.toP1Script
d_toP1Script_1808 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_336
d_toP1Script_1808 ~v0 = du_toP1Script_1808
du_toP1Script_1808 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_336
du_toP1Script_1808
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP1Script_662
-- Ledger.Dijkstra.Foreign.ExternalStructures._.toP2Script
d_toP2Script_1810 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_364
d_toP2Script_1810 ~v0 = du_toP2Script_1810
du_toP2Script_1810 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_364
du_toP2Script_1810
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_674
-- Ledger.Dijkstra.Foreign.ExternalStructures._.tokenAlgebra
d_tokenAlgebra_1812 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14
d_tokenAlgebra_1812 ~v0 = du_tokenAlgebra_1812
du_tokenAlgebra_1812 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14
du_tokenAlgebra_1812
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Coin.du_Coin'45'TokenAlgebra_132
-- Ledger.Dijkstra.Foreign.ExternalStructures._.txOutDataOfUTxO
d_txOutDataOfUTxO_1814 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [Integer]
d_txOutDataOfUTxO_1814 ~v0 = du_txOutDataOfUTxO_1814
du_txOutDataOfUTxO_1814 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [Integer]
du_txOutDataOfUTxO_1814
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutDataOfUTxO_4548
-- Ledger.Dijkstra.Foreign.ExternalStructures._.txOutToDatum
d_txOutToDatum_1816 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe Integer
d_txOutToDatum_1816 ~v0 = du_txOutToDatum_1816
du_txOutToDatum_1816 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe Integer
du_txOutToDatum_1816
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToDatum_4452
-- Ledger.Dijkstra.Foreign.ExternalStructures._.txOutToScript
d_txOutToScript_1818 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_txOutToScript_1818 ~v0 = du_txOutToScript_1818
du_txOutToScript_1818 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_txOutToScript_1818
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToScript_4448
-- Ledger.Dijkstra.Foreign.ExternalStructures._.txOutToValue
d_txOutToValue_1820 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txOutToValue_1820 ~v0 = du_txOutToValue_1820
du_txOutToValue_1820 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_txOutToValue_1820
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_txOutToValue_4456
-- Ledger.Dijkstra.Foreign.ExternalStructures._.txidBytes
d_txidBytes_1822 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_txidBytes_1822 ~v0 v1 = du_txidBytes_1822 v1
du_txidBytes_1822 :: Integer -> Integer
du_txidBytes_1822 v0 = coe v0
-- Ledger.Dijkstra.Foreign.ExternalStructures._.updateGroups
d_updateGroups_1824 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_updateGroups_1824 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1482
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1516
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govParams_2632
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.validP1Script
d_validP1Script_1834 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_336 ->
  ()
d_validP1Script_1834 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.validPlutusScript
d_validPlutusScript_1836 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSPlutusScript_364 ->
  ()
d_validPlutusScript_1836 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.valuesOfUTxO
d_valuesOfUTxO_1838 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [Integer]
d_valuesOfUTxO_1838 ~v0 = du_valuesOfUTxO_1838
du_valuesOfUTxO_1838 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [Integer]
du_valuesOfUTxO_1838
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_valuesOfUTxO_4460
-- Ledger.Dijkstra.Foreign.ExternalStructures._.witnessData
d_witnessData_1840 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3628 ->
  [Integer]
d_witnessData_1840 ~v0 = du_witnessData_1840
du_witnessData_1840 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3628 ->
  [Integer]
du_witnessData_1840 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_witnessData_4554
-- Ledger.Dijkstra.Foreign.ExternalStructures._.witnessScripts
d_witnessScripts_1842 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3628 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_witnessScripts_1842 ~v0 = du_witnessScripts_1842
du_witnessScripts_1842 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3628 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_witnessScripts_1842 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_witnessScripts_4520
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ε
d_ε_1844 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_ε_1844 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Class.Monoid.Core.d_ε_20
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
               (coe
                  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_tokenAlgebra_2634
                  (coe v1)))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1846 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1846 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ℕEpochStructure
d_ℕEpochStructure_1848 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_ℕEpochStructure_1848 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕEpochStructure_356
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_globalConstants_1358
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ℕtoEpoch
d_ℕtoEpoch_1850 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_ℕtoEpoch_1850 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕtoEpoch_274
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.≤-predᵉ
d_'8804''45'pred'7497'_1852 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'pred'7497'_1852 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'8804''45'pred'7497'_126
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.≥ᵉ-Dec
d_'8805''7497''45'Dec_1854 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_1854 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8805''7497''45'Dec_472
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
            (coe
               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
               (coe v1))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Acnt.reserves
d_reserves_1870 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  Integer
d_reserves_1870 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_reserves_202
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Acnt.treasury
d_treasury_1872 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194 ->
  Integer
d_treasury_1872 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasury_200
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Anchor.hash
d_hash_1876 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_910 ->
  Integer
d_hash_1876 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_hash_918
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Anchor.url
d_url_1878 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_910 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_1878 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_url_916
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.BaseAddr.net
d_net_1890 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  Integer
d_net_1890 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_92 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.BaseAddr.pay
d_pay_1892 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1892 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_94 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.BaseAddr.stake
d_stake_1894 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1894 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_96 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.BootstrapAddr.attrsSize
d_attrsSize_1898 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  Integer
d_attrsSize_1898 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_112
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.BootstrapAddr.net
d_net_1900 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  Integer
d_net_1900 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_108 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.BootstrapAddr.pay
d_pay_1902 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1902 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_110 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DrepThresholds.P1
d_P1_1912 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_1912 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P1_266
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DrepThresholds.P2a
d_P2a_1914 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_1914 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P2a_268
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DrepThresholds.P2b
d_P2b_1916 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_1916 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P2b_270
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DrepThresholds.P3
d_P3_1918 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_1918 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P3_272
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DrepThresholds.P4
d_P4_1920 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_1920 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P4_274
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DrepThresholds.P5a
d_P5a_1922 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_1922 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5a_276
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DrepThresholds.P5b
d_P5b_1924 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_1924 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5b_278
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DrepThresholds.P5c
d_P5c_1926 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_1926 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5c_280
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DrepThresholds.P5d
d_P5d_1928 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_1928 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P5d_282
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DrepThresholds.P6
d_P6_1930 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_1930 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_P6_284
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovAction.gaData
d_gaData_1950 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876 ->
  AgdaAny
d_gaData_1950 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaData_884
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovAction.gaType
d_gaType_1952 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_858
d_gaType_1952 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_882
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovActionState.action
d_action_1956 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876
d_action_1956 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_1024
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovActionState.deposit
d_deposit_1958 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  Integer
d_deposit_1958 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_1028
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovActionState.expiresIn
d_expiresIn_1960 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  Integer
d_expiresIn_1960 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_expiresIn_1022
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovActionState.prevAction
d_prevAction_1962 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  AgdaAny
d_prevAction_1962 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_1026
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovActionState.returnAddr
d_returnAddr_1964 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_1964 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_1020
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovActionState.votes
d_votes_1966 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_942
d_votes_1966 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_votes_1018
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1986 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1498 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1986 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_DecEq'45'UpdT_1530
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovParams.UpdateT
d_UpdateT_1988 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1498 ->
  ()
d_UpdateT_1988 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovParams.applyUpdate
d_applyUpdate_1990 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1498 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyUpdate_1990 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1480
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1516
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovParams.ppUpd
d_ppUpd_1992 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1498 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1464
d_ppUpd_1992 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1516
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovParams.ppWF?
d_ppWF'63'_1994 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1498 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1994 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1488
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1516
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovParams.ppdWellFormed
d_ppdWellFormed_1996 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1498 ->
  AgdaAny -> ()
d_ppdWellFormed_1996 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovParams.updateGroups
d_updateGroups_1998 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_GovParams_1498 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_updateGroups_1998 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1482
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppUpd_1516
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovProposal.action
d_action_2002 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_976 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876
d_action_2002 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_action_990
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovProposal.anchor
d_anchor_2004 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_976 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_910
d_anchor_2004 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_1000
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovProposal.deposit
d_deposit_2006 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_976 ->
  Integer
d_deposit_2006 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_deposit_996
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovProposal.policy
d_policy_2008 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_976 ->
  Maybe Integer
d_policy_2008 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_policy_994
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovProposal.prevAction
d_prevAction_2010 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_976 ->
  AgdaAny
d_prevAction_2010 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_prevAction_992
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovProposal.returnAddr
d_returnAddr_2012 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_976 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_2012 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_returnAddr_998
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovVote.anchor
d_anchor_2024 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_922 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_910
d_anchor_2024 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_anchor_938
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovVote.gid
d_gid_2026 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_922 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_2026 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gid_932
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovVote.vote
d_vote_2028 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_922 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_890
d_vote_2028 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_vote_936
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovVote.voter
d_voter_2030 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_922 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_898
d_voter_2030 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_voter_934
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovVoter.gvCredential
d_gvCredential_2034 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_898 ->
  AgdaAny
d_gvCredential_2034 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvCredential_906
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovVoter.gvRole
d_gvRole_2036 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_898 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_848
d_gvRole_2036 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvRole_904
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovVotes.gvCC
d_gvCC_2040 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvCC_2040 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvCC_950
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovVotes.gvDRep
d_gvDRep_2042 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvDRep_2042 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvDRep_952
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovVotes.gvSPO
d_gvSPO_2044 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvSPO_2044 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gvSPO_954
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.==-GovAction
d_'61''61''45'GovAction_2048 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876 ->
  Bool
d_'61''61''45'GovAction_2048 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovAction_1426
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.==-GovActionData
d_'61''61''45'GovActionData_2050 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_858 ->
  AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_2050 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovActionData_1408
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.==-GovProposal
d_'61''61''45'GovProposal_2052 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_976 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_976 ->
  Bool
d_'61''61''45'GovProposal_2052 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovProposal_1460
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.==-Set
d_'61''61''45'Set_2054 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_2054 ~v0 = du_'61''61''45'Set_2054
du_'61''61''45'Set_2054 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
du_'61''61''45'Set_2054 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_'61''61''45'Set_1396
      v1 v2 v3
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.Anchor
d_Anchor_2056 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.AnchorOf
d_AnchorOf_2060 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1206 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_910
d_AnchorOf_2060 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_AnchorOf_1214
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.DReps
d_DReps_2068 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_DReps_2068 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.DRepsOf
d_DRepsOf_2070 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1186 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_2070 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1194
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.DecEq-Anchor
d_DecEq'45'Anchor_2072 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_2072 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'Anchor_1390
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.DecEq-GovActionType
d_DecEq'45'GovActionType_2074 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_2074 ~v0 = du_DecEq'45'GovActionType_2074
du_DecEq'45'GovActionType_2074 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_2074
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'GovActionType_1280
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.DecEq-GovRole
d_DecEq'45'GovRole_2076 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_2076 ~v0 = du_DecEq'45'GovRole_2076
du_DecEq'45'GovRole_2076 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_2076
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'GovRole_1282
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.DecEq-GovVoter
d_DecEq'45'GovVoter_2078 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_2078 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'GovVoter_1288
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.DecEq-NeedsHash
d_DecEq'45'NeedsHash_2080 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_858 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_2080 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'NeedsHash_1458
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.DecEq-VDeleg
d_DecEq'45'VDeleg_2082 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_2082 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DecEq'45'VDeleg_1286
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.DecEq-Vote
d_DecEq'45'Vote_2084 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_2084 ~v0 = du_DecEq'45'Vote_2084
du_DecEq'45'Vote_2084 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_2084
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_DecEq'45'Vote_1284
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.DepositOf
d_DepositOf_2086 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1226 ->
  AgdaAny -> Integer
d_DepositOf_2086 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DepositOf_1234
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.GovAction
d_GovAction_2088 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.GovActionData
d_GovActionData_2092 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_858 ->
  ()
d_GovActionData_2092 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.GovActionID
d_GovActionID_2094 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_GovActionID_2094 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.GovActionOf
d_GovActionOf_2096 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1088 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876
d_GovActionOf_2096 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionOf_1094
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.GovActionState
d_GovActionState_2098 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.GovActionType
d_GovActionType_2102 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.GovActionTypeOf
d_GovActionTypeOf_2104 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1052 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_858
d_GovActionTypeOf_2104 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionTypeOf_1058
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.GovProposal
d_GovProposal_2106 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.GovRole
d_GovRole_2110 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.GovRoleCredential
d_GovRoleCredential_2112 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovRole_848 ->
  ()
d_GovRoleCredential_2112 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.GovVote
d_GovVote_2114 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.GovVoter
d_GovVoter_2118 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.GovVoterOf
d_GovVoterOf_2122 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1106 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_898
d_GovVoterOf_2122 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVoterOf_1114
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.GovVotes
d_GovVotes_2124 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.GovVotesOf
d_GovVotesOf_2128 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1126 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_942
d_GovVotesOf_2128 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVotesOf_1134
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasAnchor
d_HasAnchor_2130 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasAnchor-GovProposal
d_HasAnchor'45'GovProposal_2134 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1206
d_HasAnchor'45'GovProposal_2134 ~v0
  = du_HasAnchor'45'GovProposal_2134
du_HasAnchor'45'GovProposal_2134 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1206
du_HasAnchor'45'GovProposal_2134
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasAnchor'45'GovProposal_1260
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_2136 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_2136 ~v0
  = du_HasCast'45'GovAction'45'Sigma_2136
du_HasCast'45'GovAction'45'Sigma_2136 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_2136
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_1244
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasCast-GovVote
d_HasCast'45'GovVote_2138 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_2138 ~v0 = du_HasCast'45'GovVote_2138
du_HasCast'45'GovVote_2138 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_2138
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'GovVote_1386
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasCast-HashProtected
d_HasCast'45'HashProtected_2140 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_2140 ~v0
  = du_HasCast'45'HashProtected_2140
du_HasCast'45'HashProtected_2140 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_2140 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected_1250
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_2142 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_2142 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_2142
du_HasCast'45'HashProtected'45'MaybeScriptHash_2142 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_2142
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1252
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasDReps
d_HasDReps_2144 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasDeposit
d_HasDeposit_2148 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasDeposit-GovProposal
d_HasDeposit'45'GovProposal_2152 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1226
d_HasDeposit'45'GovProposal_2152 ~v0
  = du_HasDeposit'45'GovProposal_2152
du_HasDeposit'45'GovProposal_2152 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1226
du_HasDeposit'45'GovProposal_2152
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasDeposit'45'GovProposal_1262
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasGovAction
d_HasGovAction_2154 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_2158 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1088
d_HasGovAction'45'GovActionState_2158 ~v0
  = du_HasGovAction'45'GovActionState_2158
du_HasGovAction'45'GovActionState_2158 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1088
du_HasGovAction'45'GovActionState_2158
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1266
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_2160 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1088
d_HasGovAction'45'GovProposal_2160 ~v0
  = du_HasGovAction'45'GovProposal_2160
du_HasGovAction'45'GovProposal_2160 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1088
du_HasGovAction'45'GovProposal_2160
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1264
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasGovActionType
d_HasGovActionType_2162 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_2166 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1052
d_HasGovActionType'45'GovAction_2166 ~v0
  = du_HasGovActionType'45'GovAction_2166
du_HasGovActionType'45'GovAction_2166 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1052
du_HasGovActionType'45'GovAction_2166
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_1242
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_2168 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1052
d_HasGovActionType'45'GovActionState_2168 ~v0
  = du_HasGovActionType'45'GovActionState_2168
du_HasGovActionType'45'GovActionState_2168 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1052
du_HasGovActionType'45'GovActionState_2168
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1270
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_2170 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1052
d_HasGovActionType'45'GovProposal_2170 ~v0
  = du_HasGovActionType'45'GovProposal_2170
du_HasGovActionType'45'GovProposal_2170 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1052
du_HasGovActionType'45'GovProposal_2170
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1268
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasGovVoter
d_HasGovVoter_2172 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_2176 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1106
d_HasGovVoter'45'GovVote_2176 ~v0 = du_HasGovVoter'45'GovVote_2176
du_HasGovVoter'45'GovVote_2176 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1106
du_HasGovVoter'45'GovVote_2176
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1254
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasGovVotes
d_HasGovVotes_2178 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasGovVotes-GovActionState
d_HasGovVotes'45'GovActionState_2182 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1126
d_HasGovVotes'45'GovActionState_2182 ~v0
  = du_HasGovVotes'45'GovActionState_2182
du_HasGovVotes'45'GovActionState_2182 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1126
du_HasGovVotes'45'GovActionState_2182
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasGovVotes'45'GovActionState_1272
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasPolicy
d_HasPolicy_2184 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_2188 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1166
d_HasPolicy'45'GovProposal_2188 ~v0
  = du_HasPolicy'45'GovProposal_2188
du_HasPolicy'45'GovProposal_2188 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1166
du_HasPolicy'45'GovProposal_2188
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1258
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasRewardAddress-GovActionState
d_HasRewardAddress'45'GovActionState_2190 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
d_HasRewardAddress'45'GovActionState_2190 ~v0
  = du_HasRewardAddress'45'GovActionState_2190
du_HasRewardAddress'45'GovActionState_2190 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
du_HasRewardAddress'45'GovActionState_2190
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasRewardAddress'45'GovActionState_1274
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasRewardAddress-GovProposal
d_HasRewardAddress'45'GovProposal_2192 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
d_HasRewardAddress'45'GovProposal_2192 ~v0
  = du_HasRewardAddress'45'GovProposal_2192
du_HasRewardAddress'45'GovProposal_2192 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134
du_HasRewardAddress'45'GovProposal_2192
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasRewardAddress'45'GovProposal_1276
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasVote
d_HasVote_2194 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasVote-GovVote
d_HasVote'45'GovVote_2198 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1146
d_HasVote'45'GovVote_2198 ~v0 = du_HasVote'45'GovVote_2198
du_HasVote'45'GovVote_2198 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1146
du_HasVote'45'GovVote_2198
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_HasVote'45'GovVote_1256
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasVoteDelegs
d_HasVoteDelegs_2200 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HashProtected
d_HashProtected_2204 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () -> ()
d_HashProtected_2204 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.NeedsHash
d_NeedsHash_2208 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_858 ->
  ()
d_NeedsHash_2208 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.Policy
d_Policy_2214 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Policy_2214 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.PolicyOf
d_PolicyOf_2216 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1166 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_2216 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_PolicyOf_1174
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.Show-GovRole
d_Show'45'GovRole_2220 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_2220 ~v0 = du_Show'45'GovRole_2220
du_Show'45'GovRole_2220 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'GovRole_2220
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_Show'45'GovRole_1278
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.Show-VDeleg
d_Show'45'VDeleg_2222 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_2222 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_Show'45'VDeleg_1388
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.VDeleg
d_VDeleg_2230 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.Vote
d_Vote_2232 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.VoteDelegs
d_VoteDelegs_2234 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VoteDelegs_2234 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.VoteDelegsOf
d_VoteDelegsOf_2236 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1070 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_2236 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1078
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.VoteOf
d_VoteOf_2238 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1146 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_890
d_VoteOf_2238 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteOf_1154
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.activeDRepsOf
d_activeDRepsOf_2242 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1186 ->
  AgdaAny -> Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_2242 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (\ v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_activeDRepsOf_1566
           (coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
              (coe v1))
           v3 v4 v5)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.activeInEpoch
d_activeInEpoch_2244 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_2244 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.gaData
d_gaData_2246 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876 ->
  AgdaAny
d_gaData_2246 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaData_884
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.gaType
d_gaType_2248 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_858
d_gaType_2248 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_gaType_882
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.govVoterCredential
d_govVoterCredential_2250 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_898 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_2250 ~v0 = du_govVoterCredential_2250
du_govVoterCredential_2250 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_898 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_govVoterCredential_2250
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_govVoterCredential_1036
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.isGovVoterDRep
d_isGovVoterDRep_2252 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_898 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_2252 ~v0 = du_isGovVoterDRep_2252
du_isGovVoterDRep_2252 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_898 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_isGovVoterDRep_2252
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_isGovVoterDRep_1032
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.proposedCC
d_proposedCC_2256 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_2256 ~v0 = du_proposedCC_2256
du_proposedCC_2256 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_proposedCC_2256
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.du_proposedCC_1044
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasAnchor.AnchorOf
d_AnchorOf_2272 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasAnchor_1206 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Anchor_910
d_AnchorOf_2272 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_AnchorOf_1214
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasDReps.DRepsOf
d_DRepsOf_2276 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1186 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_2276 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DRepsOf_1194
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasDeposit.DepositOf
d_DepositOf_2280 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDeposit_1226 ->
  AgdaAny -> Integer
d_DepositOf_2280 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_DepositOf_1234
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasGovAction.GovActionOf
d_GovActionOf_2284 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovAction_1088 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovAction_876
d_GovActionOf_2284 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionOf_1094
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasGovActionType.GovActionTypeOf
d_GovActionTypeOf_2288 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovActionType_1052 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovActionType_858
d_GovActionTypeOf_2288 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovActionTypeOf_1058
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasGovVoter.GovVoterOf
d_GovVoterOf_2292 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVoter_1106 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVoter_898
d_GovVoterOf_2292 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVoterOf_1114
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasGovVotes.GovVotesOf
d_GovVotesOf_2296 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasGovVotes_1126 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVotes_942
d_GovVotesOf_2296 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_GovVotesOf_1134
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasPolicy.PolicyOf
d_PolicyOf_2300 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasPolicy_1166 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_2300 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_PolicyOf_1174
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasVote.VoteOf
d_VoteOf_2304 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVote_1146 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_Vote_890
d_VoteOf_2304 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteOf_1154
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GovernanceActions.HasVoteDelegs.VoteDelegsOf
d_VoteDelegsOf_2308 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1070 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_2308 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_VoteDelegsOf_1078
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasAccount.AccountOf
d_AccountOf_2328 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasAccount_210 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_Acnt_194
d_AccountOf_2328 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_AccountOf_218
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasAttrSize.AttrSizeOf
d_AttrSizeOf_2332 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214 ->
  AgdaAny -> Integer
d_AttrSizeOf_2332 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_222
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasBalanceIntervals.BalanceIntervalsOf
d_BalanceIntervalsOf_2336 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasBalanceIntervals_4304 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_BalanceIntervalsOf_2336 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_BalanceIntervalsOf_4312
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCCMaxTermLength.CCMaxTermLengthOf
d_CCMaxTermLengthOf_2340 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasCCMaxTermLength_592 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_2340 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_CCMaxTermLengthOf_600
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCollateralInputs.CollateralInputsOf
d_CollateralInputsOf_2344 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCollateralInputs_3850 ->
  AgdaAny -> AgdaAny
d_CollateralInputsOf_2344 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CollateralInputsOf_3860
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCredential.CredentialOf
d_CredentialOf_2348 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_2348 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCurrentTreasury.CurrentTreasuryOf
d_CurrentTreasuryOf_2352 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasCurrentTreasury_4264 ->
  AgdaAny -> Maybe Integer
d_CurrentTreasuryOf_2352 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_CurrentTreasuryOf_4272
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDCerts.DCertsOf
d_DCertsOf_2356 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDCerts_4084 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1290]
d_DCertsOf_2356 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DCertsOf_4092
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasData.DataOf
d_DataOf_2360 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasData_4124 ->
  AgdaAny -> [Integer]
d_DataOf_2360 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DataOf_4132
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDirectDeposits.DirectDepositsOf
d_DirectDepositsOf_2364 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasDirectDeposits_4284 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DirectDepositsOf_2364 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_DirectDepositsOf_4292
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasFees?.FeesOf?
d_FeesOf'63'_2368 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasFees'63'_4064 ->
  AgdaAny -> Maybe Integer
d_FeesOf'63'_2368 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_FeesOf'63'_4072
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGovProposals.GovProposalsOf
d_GovProposalsOf_2372 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGovProposals_4104 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_976]
d_GovProposalsOf_2372 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_GovProposalsOf_4112
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGuards.GuardsOf
d_GuardsOf_2376 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasGuards_4184 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_GuardsOf_2376 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_GuardsOf_4192
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasIsValidFlag.IsValidFlagOf
d_IsValidFlagOf_2380 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasIsValidFlag_4324 ->
  AgdaAny -> Bool
d_IsValidFlagOf_2380 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_IsValidFlagOf_4332
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasListOfGovProposals.ListOfGovProposalsOf
d_ListOfGovProposalsOf_2384 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovProposals_4144 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_976]
d_ListOfGovProposalsOf_2384 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ListOfGovProposalsOf_4152
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasListOfGovVotes.ListOfGovVotesOf
d_ListOfGovVotesOf_2388 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasListOfGovVotes_4164 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_922]
d_ListOfGovVotesOf_2388 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ListOfGovVotesOf_4172
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasMaybeNetworkId.MaybeNetworkIdOf
d_MaybeNetworkIdOf_2392 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174 ->
  AgdaAny -> Maybe Integer
d_MaybeNetworkIdOf_2392 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_182
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasMintedValue.MintedValueOf
d_MintedValueOf_2396 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasMintedValue_4044 ->
  AgdaAny -> Integer
d_MintedValueOf_2396 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_MintedValueOf_4052
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasNetworkId.NetworkIdOf
d_NetworkIdOf_2400 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154 ->
  AgdaAny -> Integer
d_NetworkIdOf_2400 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_162
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasPParams.PParamsOf
d_PParamsOf_2404 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_572 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_PParamsOf_2404 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_PParamsOf_580
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRedeemers.RedeemersOf
d_RedeemersOf_2408 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRedeemers_3828 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RedeemersOf_2408 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_RedeemersOf_3836
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasReferenceInputs.ReferenceInputsOf
d_ReferenceInputsOf_2412 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasReferenceInputs_4024 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_ReferenceInputsOf_2412 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ReferenceInputsOf_4032
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRequiredSingerHashes.RequiredSignerHashesOf
d_RequiredSignerHashesOf_2416 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasRequiredSingerHashes_4244 ->
  AgdaAny -> [Integer]
d_RequiredSignerHashesOf_2416 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_RequiredSignerHashesOf_4252
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRewardAddress.RewardAddressOf
d_RewardAddressOf_2420 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_2420 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasScripts.ScriptsOf
d_ScriptsOf_2424 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasScripts_4204 ->
  AgdaAny -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_ScriptsOf_2424 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ScriptsOf_4212
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasSize.SizeOf
d_SizeOf_2428 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSize_3964 ->
  AgdaAny -> Integer
d_SizeOf_2428 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SizeOf_3972
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasSpendInputs.SpendInputsOf
d_SpendInputsOf_2432 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSpendInputs_4004 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_SpendInputsOf_2432 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SpendInputsOf_4012
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasSubTransactions.SubTransactionsOf
d_SubTransactionsOf_2436 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasSubTransactions_3898 ->
  AgdaAny -> AgdaAny
d_SubTransactionsOf_2436 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_SubTransactionsOf_3908
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTopLevelGuards.TopLevelGuardsOf
d_TopLevelGuardsOf_2440 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTopLevelGuards_3922 ->
  AgdaAny -> AgdaAny
d_TopLevelGuardsOf_2440 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TopLevelGuardsOf_3932
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTxBody.TxBodyOf
d_TxBodyOf_2444 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxBody_3786 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3632
d_TxBodyOf_2444 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxBodyOf_3796
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTxFees.TxFeesOf
d_TxFeesOf_2448 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxFees_3874 ->
  AgdaAny -> AgdaAny
d_TxFeesOf_2448 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxFeesOf_3884
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTxId.TxIdOf
d_TxIdOf_2452 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxId_3944 ->
  AgdaAny -> Integer
d_TxIdOf_2452 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxIdOf_3952
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTxOuts.TxOutsOf
d_TxOutsOf_2456 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxOuts_4224 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_TxOutsOf_2456 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxOutsOf_4232
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasTxWitnesses.TxWitnessesOf
d_TxWitnessesOf_2460 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasTxWitnesses_3808 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3634
d_TxWitnessesOf_2460 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_TxWitnessesOf_3816
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasUTxO.UTxOOf
d_UTxOOf_2464 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasUTxO_3610 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_2464 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_UTxOOf_3618
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasValidInterval.ValidIntervalOf
d_ValidIntervalOf_2468 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_HasValidInterval_3984 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ValidIntervalOf_2468 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_ValidIntervalOf_3992
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasWithdrawals.WithdrawalsOf
d_WithdrawalsOf_2472 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_2472 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_202
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidHomomorphism.homo
d_homo_2492 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2492 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2494 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2494 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2496 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2496 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2498 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2498 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidHomomorphism.cong
d_cong_2500 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2500 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidIsomorphism.homo
d_homo_2504 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2504 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidIsomorphism.injective
d_injective_2506 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_2506 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2508 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2508 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2510 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_2510 ~v0 = du_isMagmaIsomorphism_2510
du_isMagmaIsomorphism_2510 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_2510 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2512 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2512 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_2512 v2
du_isMagmaMonomorphism_2512 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2512 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2514 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2514 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2516 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_2516 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2518 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2518 v0
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
d_isRelIsomorphism_2520 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_2520 ~v0 ~v1 v2 = du_isRelIsomorphism_2520 v2
du_isRelIsomorphism_2520 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_2520 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2522 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2522 ~v0 ~v1 v2 = du_isRelMonomorphism_2522 v2
du_isRelMonomorphism_2522 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2522 v0
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
d_surjective_2524 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2524 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2526 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2526 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidIsomorphism.cong
d_cong_2528 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2528 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidMonomorphism.homo
d_homo_2532 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2532 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidMonomorphism.injective
d_injective_2534 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_2534 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2536 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2536 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2538 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2538 ~v0 = du_isMagmaMonomorphism_2538
du_isMagmaMonomorphism_2538 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2538 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2540 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2540 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2542 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2542 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2544 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2544 ~v0 ~v1 v2 = du_isRelMonomorphism_2544 v2
du_isRelMonomorphism_2544 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2544 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2546 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2546 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.IsMonoidMonomorphism.cong
d_cong_2548 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2548 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.LanguageCostModels.languageCostModels
d_languageCostModels_2552 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_676 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_2552 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_680
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_2572 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_322 ->
  [Integer] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2572 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_342
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_2574 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_322 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2574 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'P1Script_346
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_2576 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_322 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_2576 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_344
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.P1ScriptStructure.P1Script
d_P1Script_2578 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_322 ->
  ()
d_P1Script_2578 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.P1ScriptStructure.validP1Script
d_validP1Script_2580 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_322 ->
  [Integer] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_2580 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.Emax
d_Emax_2596 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_Emax_2596 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_428
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.a
d_a_2598 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_a_2598 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_400 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.a0
d_a0_2600 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2600 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_432
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.b
d_b_2602 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_b_2602 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_402 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.ccMaxTermLength
d_ccMaxTermLength_2604 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMaxTermLength_2604 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_444
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.ccMinSize
d_ccMinSize_2606 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_ccMinSize_2606 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_442
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_2608 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_coinsPerUTxOByte_2608 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_412
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.collateralPercentage
d_collateralPercentage_2610 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_collateralPercentage_2610 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_434
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.costmdls
d_costmdls_2612 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_costmdls_2612 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_costmdls_454
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.costmdlsAssoc
d_costmdlsAssoc_2614 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_676
d_costmdlsAssoc_2614 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdlsAssoc_436
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.drepActivity
d_drepActivity_2616 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_drepActivity_2616 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_452
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.drepDeposit
d_drepDeposit_2618 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_drepDeposit_2618 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_450
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.drepThresholds
d_drepThresholds_2620 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244
d_drepThresholds_2620 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_440
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.govActionDeposit
d_govActionDeposit_2622 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionDeposit_2622 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_448
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.govActionLifetime
d_govActionLifetime_2624 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_govActionLifetime_2624 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_446
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.keyDeposit
d_keyDeposit_2626 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_keyDeposit_2626 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_404
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.maxBlockExUnits
d_maxBlockExUnits_2628 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_2628 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_392
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.maxBlockSize
d_maxBlockSize_2630 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxBlockSize_2630 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_384
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.maxCollateralInputs
d_maxCollateralInputs_2632 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxCollateralInputs_2632 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_396
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.maxHeaderSize
d_maxHeaderSize_2634 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxHeaderSize_2634 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_388
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2636 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerBlock_2636 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_420
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2638 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxRefScriptSizePerTx_2638 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_418
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.maxTxExUnits
d_maxTxExUnits_2640 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_2640 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_390
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.maxTxSize
d_maxTxSize_2642 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxTxSize_2642 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_386
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.maxValSize
d_maxValSize_2644 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_maxValSize_2644 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_394
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2646 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2646 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_416
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.minUTxOValue
d_minUTxOValue_2648 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_minUTxOValue_2648 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_426
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.monetaryExpansion
d_monetaryExpansion_2650 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2650 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_408
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.nopt
d_nopt_2652 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_nopt_2652 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_430
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.poolDeposit
d_poolDeposit_2654 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  Integer
d_poolDeposit_2654 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_406
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.poolThresholds
d_poolThresholds_2656 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288
d_poolThresholds_2656 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_438
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.prices
d_prices_2658 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_2658 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_414
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.pv
d_pv_2660 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2660 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_398
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_2662 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2662 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_424
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.refScriptCostStride
d_refScriptCostStride_2664 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2664 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_422
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParams.treasuryCut
d_treasuryCut_2666 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2666 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_410
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsDiff.UpdateT
d_UpdateT_2670 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1464 ->
  ()
d_UpdateT_2670 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsDiff.applyUpdate
d_applyUpdate_2672 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1464 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyUpdate_2672 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_applyUpdate_1480
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsDiff.ppWF?
d_ppWF'63'_2674 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1464 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2674 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ppWF'63'_1488
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_2676 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1464 ->
  AgdaAny -> ()
d_ppdWellFormed_2676 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsDiff.updateGroups
d_updateGroups_2678 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsDiff_1464 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_updateGroups_2678 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_updateGroups_1482
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate._?↗_
d__'63''8599'__2682 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__2682 ~v0 = du__'63''8599'__2682
du__'63''8599'__2682 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__2682 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du__'63''8599'__1250
      v1 v2
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate._∪ˡᶜᵐ_
d__'8746''737''7580''7504'__2684 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_676 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_676 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_676
d__'8746''737''7580''7504'__2684 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.C_mkLanguageCostModels_682
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                 (coe
                    MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1516
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe
                       MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_466
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                          (coe
                             MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
                             (coe v1))))
                    (coe
                       MAlonzo.Code.Data.List.Base.du__'43''43'__32
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_680
                          (coe v2))
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_680
                          (coe v3)))))))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_2686 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_2686 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_DecEq'45'PParamsUpdate_1462
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_epochStructure_1362
            (coe v1))
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_2688 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_2692 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_applyPParamsUpdate_2692 v0
  = let v1 = d_HSTransactionStructure_636 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_applyPParamsUpdate_1304
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptStructure_2150
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_2694 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
d_modifiedUpdateGroups_2694 ~v0 = du_modifiedUpdateGroups_2694
du_modifiedUpdateGroups_2694 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamGroup_232]
du_modifiedUpdateGroups_2694
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiedUpdateGroups_1234
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_2696 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Bool
d_modifiesEconomicGroup_2696 ~v0 = du_modifiesEconomicGroup_2696
du_modifiesEconomicGroup_2696 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Bool
du_modifiesEconomicGroup_2696
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesEconomicGroup_930
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_2698 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Bool
d_modifiesGovernanceGroup_2698 ~v0
  = du_modifiesGovernanceGroup_2698
du_modifiesGovernanceGroup_2698 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Bool
du_modifiesGovernanceGroup_2698
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesGovernanceGroup_1082
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_2700 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Bool
d_modifiesNetworkGroup_2700 ~v0 = du_modifiesNetworkGroup_2700
du_modifiesNetworkGroup_2700 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Bool
du_modifiesNetworkGroup_2700
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesNetworkGroup_854
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_2702 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Bool
d_modifiesSecurityGroup_2702 ~v0 = du_modifiesSecurityGroup_2702
du_modifiesSecurityGroup_2702 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Bool
du_modifiesSecurityGroup_2702
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesSecurityGroup_1158
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_2704 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Bool
d_modifiesTechnicalGroup_2704 ~v0 = du_modifiesTechnicalGroup_2704
du_modifiesTechnicalGroup_2704 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Bool
du_modifiesTechnicalGroup_2704
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_modifiesTechnicalGroup_1006
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_2706 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  ()
d_paramsUpdateWellFormed_2706 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_2708 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_2708 v0
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
                     MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_696
                     (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_698
                        (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_700
                           (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_702
                              (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_724
                                 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_718
                                    (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_746
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_764
                                          (coe v0))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_754
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_756
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_758
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
         (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
         (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.≡-update
d_'8801''45'update_2710 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'update_2710 ~v0 = du_'8801''45'update_2710
du_'8801''45'update_2710 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8801''45'update_2710 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.du_'8801''45'update_1264
      v1
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_2714 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_Emax_2714 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Emax_742
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.a
d_a_2716 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_a_2716 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a_712 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.a0
d_a0_2718 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2718 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_a0_740
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.b
d_b_2720 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_b_2720 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_b_714 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_2722 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_ccMaxTermLength_2722 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMaxTermLength_764
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_2724 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_ccMinSize_2724 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_ccMinSize_762
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_2726 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_coinsPerUTxOByte_2726 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_coinsPerUTxOByte_724
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_2728 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_collateralPercentage_2728 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_collateralPercentage_746
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_2730 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_676
d_costmdls_2730 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_costmdls_748
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_2732 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_drepActivity_2732 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepActivity_760
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_2734 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_drepDeposit_2734 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepDeposit_758
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_2736 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_DrepThresholds_244
d_drepThresholds_2736 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_drepThresholds_750
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_2738 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_govActionDeposit_2738 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionDeposit_756
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_2740 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_govActionLifetime_2740 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_govActionLifetime_754
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_2742 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_keyDeposit_2742 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_keyDeposit_716
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_2744 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_2744 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockExUnits_708
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_2746 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_maxBlockSize_2746 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxBlockSize_696
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_2748 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_maxCollateralInputs_2748 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxCollateralInputs_704
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_2750 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_maxHeaderSize_2750 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxHeaderSize_700
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2752 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_2752 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerBlock_732
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2754 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_maxRefScriptSizePerTx_2754 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxRefScriptSizePerTx_730
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_2756 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_2756 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxExUnits_706
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_2758 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_maxTxSize_2758 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxTxSize_698
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_2760 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_maxValSize_2760 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_maxValSize_702
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2762 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2762 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minFeeRefScriptCoinsPerByte_728
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_2764 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_minUTxOValue_2764 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_minUTxOValue_738
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_2766 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2766 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_monetaryExpansion_720
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_2768 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_nopt_2768 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_nopt_744
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_2770 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe Integer
d_poolDeposit_2770 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolDeposit_718
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_2772 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288
d_poolThresholds_2772 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_poolThresholds_752
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.prices
d_prices_2774 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_2774 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_prices_726
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.pv
d_pv_2776 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2776 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_pv_710
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_2778 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2778 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostMultiplier_736
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_2780 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2780 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_refScriptCostStride_734
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_2782 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParamsUpdate_624 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2782 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_treasuryCut_722
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure._≥ᵉ_
d__'8805''7497'__2796 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_360 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2796 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.CostModel
d_CostModel_2798 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_360 ->
  ()
d_CostModel_2798 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.T
d_T_2800 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_360 ->
  ()
d_T_2800 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.THash
d_THash_2802 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_360 ->
  ()
d_THash_2802 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.Dataʰ
d_Data'688'_2804 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_360 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_2804 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_440
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.Datum
d_Datum_2806 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_360 ->
  ()
d_Datum_2806 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2808 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_360 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2808 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validPlutusScript_514
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_2810 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2810 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEQ'45'Prices_476
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_2812 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2812 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'CostModel_460
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2814 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2814 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_474
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2816 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2816 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'LangDepView_462
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_2818 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2818 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_466
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.DecEq-T
d_DecEq'45'T_2820 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2820 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_440
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_2822 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2822 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_440
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2824 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_360 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2824 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_456
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.ExUnits
d_ExUnits_2826 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_360 ->
  ()
d_ExUnits_2826 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2828 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_360 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_2828 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_458
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.LangDepView
d_LangDepView_2830 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_360 ->
  ()
d_LangDepView_2830 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.Language
d_Language_2832 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_360 ->
  ()
d_Language_2832 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.PlutusScript
d_PlutusScript_2834 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_360 ->
  ()
d_PlutusScript_2834 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.PlutusV1
d_PlutusV1_2836 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_360 ->
  AgdaAny
d_PlutusV1_2836 ~v0 = du_PlutusV1_2836
du_PlutusV1_2836 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_360 ->
  AgdaAny
du_PlutusV1_2836
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_482
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.PlutusV2
d_PlutusV2_2838 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_360 ->
  AgdaAny
d_PlutusV2_2838 ~v0 = du_PlutusV2_2838
du_PlutusV2_2838 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_360 ->
  AgdaAny
du_PlutusV2_2838
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_484
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.PlutusV3
d_PlutusV3_2840 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_360 ->
  AgdaAny
d_PlutusV3_2840 ~v0 = du_PlutusV3_2840
du_PlutusV3_2840 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_360 ->
  AgdaAny
du_PlutusV3_2840
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_486
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.PlutusV4
d_PlutusV4_2842 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_360 ->
  AgdaAny
d_PlutusV4_2842 ~v0 = du_PlutusV4_2842
du_PlutusV4_2842 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_360 ->
  AgdaAny
du_PlutusV4_2842
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_488
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.Prices
d_Prices_2844 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_360 ->
  ()
d_Prices_2844 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.Redeemer
d_Redeemer_2846 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_360 ->
  ()
d_Redeemer_2846 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_2848 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_360 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2848 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'CostModel_464
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_2850 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_360 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2850 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_478
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.Show-Language
d_Show'45'Language_2852 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_360 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_2852 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Language_468
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.Show-Prices
d_Show'45'Prices_2854 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_360 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2854 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Prices_480
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.Show-THash
d_Show'45'THash_2856 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_360 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2856 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_440
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.T-Hashable
d_T'45'Hashable_2858 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_360 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_2858 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_440
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.T-isHashable
d_T'45'isHashable_2860 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_360 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_2860 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_440
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.fromPlutusLanguage
d_fromPlutusLanguage_2862 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_360 ->
  MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_2862 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_fromPlutusLanguage_454
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.language
d_language_2864 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_360 ->
  AgdaAny -> AgdaAny
d_language_2864 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_516
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.validPlutusScript
d_validPlutusScript_2866 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_360 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2866 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PlutusStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_2868 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_360 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_2868 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8805''7497''45'Dec_472
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PoolThresholds.Q1
d_Q1_2872 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_2872 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q1_300
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PoolThresholds.Q2a
d_Q2a_2874 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_2874 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q2a_302
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PoolThresholds.Q2b
d_Q2b_2876 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_2876 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q2b_304
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PoolThresholds.Q4
d_Q4_2878 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_2878 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q4_306
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PoolThresholds.Q5
d_Q5_2880 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PoolThresholds_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_2880 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.d_Q5_308
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.RewardAddress.net
d_net_2884 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  Integer
d_net_2884 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.RewardAddress.stake
d_stake_2886 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_2886 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure._≥ᵉ_
d__'8805''7497'__2890 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2890 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.CostModel
d_CostModel_2892 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  ()
d_CostModel_2892 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.T
d_T_2894 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  ()
d_T_2894 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.THash
d_THash_2896 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  ()
d_THash_2896 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.Dataʰ
d_Data'688'_2898 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_2898 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_440
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.Datum
d_Datum_2900 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  ()
d_Datum_2900 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_2902 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  [Integer] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2902 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validP1Script_342
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_546
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2904 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2904 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Dec'45'validPlutusScript_514
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_2906 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2906 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEQ'45'Prices_476
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_2908 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2908 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'CostModel_460
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2910 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2910 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'ExUnits_474
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2912 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2912 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'LangDepView_462
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_2914 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2914 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'Language_466
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_2916 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_2916 ~v0
  = du_DecEq'45'LanguageCostModels_2916
du_DecEq'45'LanguageCostModels_2916 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'LanguageCostModels_2916
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_DecEq'45'LanguageCostModels_684
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_2918 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2918 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_DecEq'45'P1Script_346
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_546
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.DecEq-T
d_DecEq'45'T_2920 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2920 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_440
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_2922 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2922 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_440
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2924 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2924 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_456
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.ExUnits
d_ExUnits_2926 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  ()
d_ExUnits_2926 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_2928 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_2928 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'P1Script_344
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_546
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2930 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_2930 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Hashable'45'PlutusScript_458
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_2932 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_2932 ~v0 = du_Hashable'45'Script_2932
du_Hashable'45'Script_2932 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
du_Hashable'45'Script_2932
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Hashable'45'Script_648
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.LangDepView
d_LangDepView_2934 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  ()
d_LangDepView_2934 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.Language
d_Language_2936 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  ()
d_Language_2936 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.LanguageCostModels
d_LanguageCostModels_2938 a0 a1 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.P1Script
d_P1Script_2942 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  ()
d_P1Script_2942 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.PlutusScript
d_PlutusScript_2944 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  ()
d_PlutusScript_2944 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.PlutusV1
d_PlutusV1_2946 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  AgdaAny
d_PlutusV1_2946 ~v0 v1 = du_PlutusV1_2946 v1
du_PlutusV1_2946 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  AgdaAny
du_PlutusV1_2946 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV1_482
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.PlutusV2
d_PlutusV2_2948 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  AgdaAny
d_PlutusV2_2948 ~v0 v1 = du_PlutusV2_2948 v1
du_PlutusV2_2948 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  AgdaAny
du_PlutusV2_2948 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV2_484
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.PlutusV3
d_PlutusV3_2950 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  AgdaAny
d_PlutusV3_2950 ~v0 v1 = du_PlutusV3_2950 v1
du_PlutusV3_2950 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  AgdaAny
du_PlutusV3_2950 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV3_486
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.PlutusV4
d_PlutusV4_2952 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  AgdaAny
d_PlutusV4_2952 ~v0 v1 = du_PlutusV4_2952 v1
du_PlutusV4_2952 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  AgdaAny
du_PlutusV4_2952 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_PlutusV4_488
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.Prices
d_Prices_2954 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  ()
d_Prices_2954 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.Redeemer
d_Redeemer_2956 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  ()
d_Redeemer_2956 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.Script
d_Script_2958 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  ()
d_Script_2958 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.Show-CostModel
d_Show'45'CostModel_2960 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2960 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'CostModel_464
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_2962 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2962 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'ExUnits_478
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.Show-Language
d_Show'45'Language_2964 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_2964 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Language_468
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.Show-LanguageCostModels
d_Show'45'LanguageCostModels_2966 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_2966 ~v0
  = du_Show'45'LanguageCostModels_2966
du_Show'45'LanguageCostModels_2966 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'LanguageCostModels_2966
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_Show'45'LanguageCostModels_690
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.Show-Prices
d_Show'45'Prices_2968 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2968 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Show'45'Prices_480
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.Show-THash
d_Show'45'THash_2970 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2970 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_440
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.T-Hashable
d_T'45'Hashable_2972 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_2972 v0
  = let v1
          = MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_440
              (coe
                 MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.T-isHashable
d_T'45'isHashable_2974 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_2974 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_Data'688'_440
         (coe
            MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
            (coe v0)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.fromPlutusLanguage
d_fromPlutusLanguage_2976 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  MAlonzo.Code.Function.Bundles.T_Injection_842
d_fromPlutusLanguage_2976 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_fromPlutusLanguage_454
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_2978 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_2978 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_hashRespectsUnion_566
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.isNativeScript
d_isNativeScript_2980 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_2980 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.isP1Script
d_isP1Script_2982 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_2982 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.isP1Script?
d_isP1Script'63'_2984 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_2984 ~v0 = du_isP1Script'63'_2984
du_isP1Script'63'_2984 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_2984 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP1Script'63'_654
      v1
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.isP2Script
d_isP2Script_2986 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_2986 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.isP2Script?
d_isP2Script'63'_2988 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_2988 ~v0 = du_isP2Script'63'_2988
du_isP2Script'63'_2988 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_2988 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_isP2Script'63'_668
      v1
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.language
d_language_2990 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  AgdaAny -> AgdaAny
d_language_2990 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_language_516
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.languageCostModels
d_languageCostModels_2992 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_676 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_2992 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_680
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.p1s
d_p1s_2996 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_P1ScriptStructure_322
d_p1s_2996 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_p1s_546
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.ps
d_ps_2998 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_PlutusStructure_360
d_ps_2998 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.toP1Script
d_toP1Script_3000 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_3000 ~v0 = du_toP1Script_3000
du_toP1Script_3000 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_3000 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP1Script_662
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.toP2Script
d_toP2Script_3002 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_3002 ~v0 = du_toP2Script_3002
du_toP2Script_3002 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_3002 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.du_toP2Script_674
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.validP1Script
d_validP1Script_3004 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  [Integer] ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_3004 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.validPlutusScript
d_validPlutusScript_3006 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_3006 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_3008 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_ScriptStructure_520 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_3008 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_'8805''7497''45'Dec_472
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_ps_568
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.ScriptStructure.LanguageCostModels.languageCostModels
d_languageCostModels_3012 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.T_LanguageCostModels_676 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_3012 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Script.Base.d_languageCostModels_680
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra._∙_
d__'8729'__3016 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__3016 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra._≈_
d__'8776'__3018 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__3018 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__3020 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__3020 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_3022 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_3022 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_3024 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_3024 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_3026 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_3030 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_3034 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.Value
d_Value_3038 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  ()
d_Value_3038 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_3040 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_3040 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.addValue
d_addValue_3042 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_3042 ~v0 = du_addValue_3042
du_addValue_3042 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
du_addValue_3042
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.coin
d_coin_3044 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_coin_3044 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_3046 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_3046 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_3048 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_3048 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_3050 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_3050 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.inject
d_inject_3052 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> AgdaAny
d_inject_3052 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.monoid
d_monoid_3054 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_3054 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1066
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.policies
d_policies_3056 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> [Integer]
d_policies_3056 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.rawMonoid
d_rawMonoid_3058 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_3058 v0
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
d_size_3060 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_size_3060 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.sumᵛ
d_sum'7515'_3062 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_3062 ~v0 = du_sum'7515'_3062
du_sum'7515'_3062 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
du_sum'7515'_3062
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.ε
d_ε_3064 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny
d_ε_3064 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_3068 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_3068 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_3070 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_3070 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_3072 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_3072 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_3074 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_3074 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_3076 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_3076 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_3080 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_3080 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_3082 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_3082 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_3084 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_3084 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_3086 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_3086 ~v0 = du_isMagmaIsomorphism_3086
du_isMagmaIsomorphism_3086 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_3086 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_3088 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_3088 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_3088 v2
du_isMagmaMonomorphism_3088 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_3088 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_3090 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_3090 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_3092 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_3092 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_3094 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_3094 v0
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
d_isRelIsomorphism_3096 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_3096 ~v0 ~v1 v2 = du_isRelIsomorphism_3096 v2
du_isRelIsomorphism_3096 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_3096 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_3098 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_3098 ~v0 ~v1 v2 = du_isRelMonomorphism_3098 v2
du_isRelMonomorphism_3098 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_3098 v0
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
d_surjective_3100 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_3100 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_3102 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_3102 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_3104 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_3104 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_3108 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_3108 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_3110 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_3110 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_3112 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_3112 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_3114 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_3114 ~v0 = du_isMagmaMonomorphism_3114
du_isMagmaMonomorphism_3114 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_3114 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_3116 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_3116 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_3118 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_3118 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_3120 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_3120 ~v0 ~v1 v2 = du_isRelMonomorphism_3120 v2
du_isRelMonomorphism_3120 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_3120 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_3122 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_3122 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_3124 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_3124 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Tx.isValid
d_isValid_3128 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3628 ->
  AgdaAny
d_isValid_3128 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_isValid_3654
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Tx.txAuxData
d_txAuxData_3130 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3628 ->
  Maybe Integer
d_txAuxData_3130 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txAuxData_3656
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Tx.txBody
d_txBody_3132 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3628 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3632
d_txBody_3132 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBody_3648
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Tx.txSize
d_txSize_3134 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3628 ->
  Integer
d_txSize_3134 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSize_3652
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Tx.txWitnesses
d_txWitnesses_3136 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_Tx_3628 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3634
d_txWitnesses_3136 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWitnesses_3650
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.collateralInputs
d_collateralInputs_3140 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3632 ->
  AgdaAny
d_collateralInputs_3140 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_collateralInputs_3710
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.currentTreasury
d_currentTreasury_3142 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3632 ->
  Maybe Integer
d_currentTreasury_3142 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_currentTreasury_3734
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.mint
d_mint_3144 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3632 ->
  Integer
d_mint_3144 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_mint_3736
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.referenceInputs
d_referenceInputs_3146 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3632 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_referenceInputs_3146 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_referenceInputs_3708
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.requiredSignerHashes
d_requiredSignerHashes_3148 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3632 ->
  [Integer]
d_requiredSignerHashes_3148 ~v0 = du_requiredSignerHashes_3148
du_requiredSignerHashes_3148 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxLevel_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3632 ->
  [Integer]
du_requiredSignerHashes_3148 v0 v1
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_requiredSignerHashes_3750
      v1
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.scriptIntegrityHash
d_scriptIntegrityHash_3150 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3632 ->
  Maybe Integer
d_scriptIntegrityHash_3150 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scriptIntegrityHash_3738
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.txADhash
d_txADhash_3152 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3632 ->
  Maybe Integer
d_txADhash_3152 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txADhash_3724
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.txBalanceIntervals
d_txBalanceIntervals_3154 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3632 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txBalanceIntervals_3154 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txBalanceIntervals_3748
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.txCerts
d_txCerts_3156 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3632 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1290]
d_txCerts_3156 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txCerts_3716
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.txDirectDeposits
d_txDirectDeposits_3158 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3632 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txDirectDeposits_3158 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDirectDeposits_3746
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.txDonation
d_txDonation_3160 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3632 ->
  Integer
d_txDonation_3160 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txDonation_3726
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.txFee
d_txFee_3162 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3632 ->
  AgdaAny
d_txFee_3162 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txFee_3718
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.txGovProposals
d_txGovProposals_3164 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3632 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovProposal_976]
d_txGovProposals_3164 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovProposals_3730
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.txGovVotes
d_txGovVotes_3166 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3632 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_922]
d_txGovVotes_3166 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGovVotes_3728
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.txGuards
d_txGuards_3168 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3632 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_txGuards_3168 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txGuards_3742
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.txId
d_txId_3170 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3632 ->
  Integer
d_txId_3170 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txId_3714
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.txIns
d_txIns_3172 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3632 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_3172 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txIns_3706
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.txNetworkId
d_txNetworkId_3174 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3632 ->
  Maybe Integer
d_txNetworkId_3174 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txNetworkId_3732
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.txOuts
d_txOuts_3176 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3632 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_3176 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txOuts_3712
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.txRequiredTopLevelGuards
d_txRequiredTopLevelGuards_3178 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3632 ->
  AgdaAny
d_txRequiredTopLevelGuards_3178 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRequiredTopLevelGuards_3744
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.txSubTransactions
d_txSubTransactions_3180 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3632 ->
  AgdaAny
d_txSubTransactions_3180 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txSubTransactions_3740
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.txVldt
d_txVldt_3182 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3632 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_3182 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txVldt_3722
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxBody.txWithdrawals
d_txWithdrawals_3184 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxBody_3632 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_3184 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txWithdrawals_3720
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxWitnesses.scripts
d_scripts_3188 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3634 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_3188 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_scripts_3764
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxWitnesses.scriptsP1
d_scriptsP1_3190 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3634 ->
  [MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_336]
d_scriptsP1_3190 ~v0 = du_scriptsP1_3190
du_scriptsP1_3190 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3634 ->
  [MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Structure.T_HSNativeScript_336]
du_scriptsP1_3190
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.du_scriptsP1_3770
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxWitnesses.txData
d_txData_3192 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3634 ->
  [Integer]
d_txData_3192 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txData_3766
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxWitnesses.txRedeemers
d_txRedeemers_3194 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3634 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txRedeemers_3194 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_txRedeemers_3768
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.TxWitnesses.vKeySigs
d_vKeySigs_3196 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.T_TxWitnesses_3634 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vKeySigs_3196 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_vKeySigs_3762
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__3208 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertEnv_1322 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1406 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1290] ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1406 ->
  ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__3208 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__3210 a0 a1 a2 a3 a4 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__3212 a0 a1 a2 a3 a4 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__3214 a0 a1 a2 a3 a4
  = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__3216 a0 a1 a2 a3 a4 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CCHotKeys
d_CCHotKeys_3218 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_CCHotKeys_3218 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CCHotKeysOf
d_CCHotKeysOf_3220 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1462 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_3220 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CCHotKeysOf_1470
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CertEnv
d_CertEnv_3228 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CertState
d_CertState_3232 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CertStateOf
d_CertStateOf_3236 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1642 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1406
d_CertStateOf_3236 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1650
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DCert
d_DCert_3238 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DState
d_DState_3244 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DStateOf
d_DStateOf_3248 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDState_1582 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1350
d_DStateOf_3248 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1590
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-DCert
d_DecEq'45'DCert_3250 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DCert_3250 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DecEq'45'DCert_1844
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
         (coe d_HSTransactionStructure_636 (coe v0)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DecEq-StakePoolParams
d_DecEq'45'StakePoolParams_3252 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'StakePoolParams_3252 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DecEq'45'StakePoolParams_1842
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
         (coe d_HSTransactionStructure_636 (coe v0)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DelegEnv
d_DelegEnv_3254 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DepositsOf
d_DepositsOf_3258 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDeposits_1442 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_3258 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DepositsOf_1450
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.EpochOf
d_EpochOf_3260 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasEpoch_1662 ->
  AgdaAny -> Integer
d_EpochOf_3260 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_EpochOf_1670
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GState
d_GState_3268 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GStateOf
d_GStateOf_3272 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasGState_1622 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1390
d_GStateOf_3272 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_GStateOf_1630
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCCHotKeys
d_HasCCHotKeys_3274 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCCHotKeys-CertState
d_HasCCHotKeys'45'CertState_3278 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1462
d_HasCCHotKeys'45'CertState_3278 ~v0
  = du_HasCCHotKeys'45'CertState_3278
du_HasCCHotKeys'45'CertState_3278 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1462
du_HasCCHotKeys'45'CertState_3278
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCCHotKeys'45'CertState_1736
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCCHotKeys-GState
d_HasCCHotKeys'45'GState_3280 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1462
d_HasCCHotKeys'45'GState_3280 ~v0 = du_HasCCHotKeys'45'GState_3280
du_HasCCHotKeys'45'GState_3280 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1462
du_HasCCHotKeys'45'GState_3280
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCCHotKeys'45'GState_1722
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCast-CertEnv
d_HasCast'45'CertEnv_3282 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_3282 ~v0 = du_HasCast'45'CertEnv_3282
du_HasCast'45'CertEnv_3282 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_3282
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'CertEnv_1744
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCast-CertState
d_HasCast'45'CertState_3284 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertState_3284 ~v0 = du_HasCast'45'CertState_3284
du_HasCast'45'CertState_3284 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertState_3284
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'CertState_1752
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCast-DState
d_HasCast'45'DState_3286 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DState_3286 ~v0 = du_HasCast'45'DState_3286
du_HasCast'45'DState_3286 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'DState_3286
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'DState_1746
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCast-DelegEnv
d_HasCast'45'DelegEnv_3288 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DelegEnv_3288 ~v0 = du_HasCast'45'DelegEnv_3288
du_HasCast'45'DelegEnv_3288 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'DelegEnv_3288
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'DelegEnv_1754
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCast-GState
d_HasCast'45'GState_3290 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GState_3290 ~v0 = du_HasCast'45'GState_3290
du_HasCast'45'GState_3290 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GState_3290
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'GState_1750
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCast-PState
d_HasCast'45'PState_3292 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PState_3292 ~v0 = du_HasCast'45'PState_3292
du_HasCast'45'PState_3292 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'PState_3292
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasCast'45'PState_1748
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCertState
d_HasCertState_3294 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCoin-CertState
d_HasCoin'45'CertState_3298 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'CertState_3298 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_HasCoin'45'CertState_1840
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
         (coe d_HSTransactionStructure_636 (coe v0)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDReps-CertState
d_HasDReps'45'CertState_3300 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1186
d_HasDReps'45'CertState_3300 ~v0 = du_HasDReps'45'CertState_3300
du_HasDReps'45'CertState_3300 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1186
du_HasDReps'45'CertState_3300
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDReps'45'CertState_1734
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDReps-GState
d_HasDReps'45'GState_3302 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1186
d_HasDReps'45'GState_3302 ~v0 = du_HasDReps'45'GState_3302
du_HasDReps'45'GState_3302 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasDReps_1186
du_HasDReps'45'GState_3302
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDReps'45'GState_1720
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDState
d_HasDState_3304 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDState-CertState
d_HasDState'45'CertState_3308 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDState_1582
d_HasDState'45'CertState_3308 ~v0 = du_HasDState'45'CertState_3308
du_HasDState'45'CertState_3308 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDState_1582
du_HasDState'45'CertState_3308
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDState'45'CertState_1726
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDeposits
d_HasDeposits_3310 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDeposits-DState
d_HasDeposits'45'DState_3314 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDeposits_1442
d_HasDeposits'45'DState_3314 ~v0 = du_HasDeposits'45'DState_3314
du_HasDeposits'45'DState_3314 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDeposits_1442
du_HasDeposits'45'DState_3314
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDeposits'45'DState_1712
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDeposits-GState
d_HasDeposits'45'GState_3316 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDeposits_1442
d_HasDeposits'45'GState_3316 ~v0 = du_HasDeposits'45'GState_3316
du_HasDeposits'45'GState_3316 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDeposits_1442
du_HasDeposits'45'GState_3316
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDeposits'45'GState_1724
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDeposits-PState
d_HasDeposits'45'PState_3318 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDeposits_1442
d_HasDeposits'45'PState_3318 ~v0 = du_HasDeposits'45'PState_3318
du_HasDeposits'45'PState_3318 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDeposits_1442
du_HasDeposits'45'PState_3318
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasDeposits'45'PState_1716
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasEpoch
d_HasEpoch_3320 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasEpoch-CertEnv
d_HasEpoch'45'CertEnv_3324 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasEpoch_1662
d_HasEpoch'45'CertEnv_3324 ~v0 = du_HasEpoch'45'CertEnv_3324
du_HasEpoch'45'CertEnv_3324 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasEpoch_1662
du_HasEpoch'45'CertEnv_3324
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasEpoch'45'CertEnv_1700
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGState
d_HasGState_3326 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGState-CertState
d_HasGState'45'CertState_3330 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasGState_1622
d_HasGState'45'CertState_3330 ~v0 = du_HasGState'45'CertState_3330
du_HasGState'45'CertState_3330 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasGState_1622
du_HasGState'45'CertState_3330
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasGState'45'CertState_1730
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasPParams-CertEnv
d_HasPParams'45'CertEnv_3332 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_572
d_HasPParams'45'CertEnv_3332 ~v0 = du_HasPParams'45'CertEnv_3332
du_HasPParams'45'CertEnv_3332 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_HasPParams_572
du_HasPParams'45'CertEnv_3332
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPParams'45'CertEnv_1698
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasPState
d_HasPState_3334 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasPState-CertState
d_HasPState'45'CertState_3338 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1602
d_HasPState'45'CertState_3338 ~v0 = du_HasPState'45'CertState_3338
du_HasPState'45'CertState_3338 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1602
du_HasPState'45'CertState_3338
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPState'45'CertState_1728
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasPools
d_HasPools_3340 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasPools-CertState
d_HasPools'45'CertState_3344 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1482
d_HasPools'45'CertState_3344 ~v0 = du_HasPools'45'CertState_3344
du_HasPools'45'CertState_3344 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1482
du_HasPools'45'CertState_3344
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPools'45'CertState_1738
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasPools-PState
d_HasPools'45'PState_3346 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1482
d_HasPools'45'PState_3346 ~v0 = du_HasPools'45'PState_3346
du_HasPools'45'PState_3346 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1482
du_HasPools'45'PState_3346
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasPools'45'PState_1714
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRetiring
d_HasRetiring_3348 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRetiring-PState
d_HasRetiring'45'PState_3352 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRetiring_1502
d_HasRetiring'45'PState_3352 ~v0 = du_HasRetiring'45'PState_3352
du_HasRetiring'45'PState_3352 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRetiring_1502
du_HasRetiring'45'PState_3352
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasRetiring'45'PState_1718
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRewards
d_HasRewards_3354 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRewards-CertState
d_HasRewards'45'CertState_3358 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1522
d_HasRewards'45'CertState_3358 ~v0
  = du_HasRewards'45'CertState_3358
du_HasRewards'45'CertState_3358 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1522
du_HasRewards'45'CertState_3358
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasRewards'45'CertState_1732
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRewards-DState
d_HasRewards'45'DState_3360 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1522
d_HasRewards'45'DState_3360 ~v0 = du_HasRewards'45'DState_3360
du_HasRewards'45'DState_3360 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1522
du_HasRewards'45'DState_3360
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasRewards'45'DState_1710
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasStake
d_HasStake_3362 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasStakeDelegs
d_HasStakeDelegs_3366 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasStakeDelegs-CertState
d_HasStakeDelegs'45'CertState_3370 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStakeDelegs_1562
d_HasStakeDelegs'45'CertState_3370 ~v0
  = du_HasStakeDelegs'45'CertState_3370
du_HasStakeDelegs'45'CertState_3370 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStakeDelegs_1562
du_HasStakeDelegs'45'CertState_3370
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasStakeDelegs'45'CertState_1742
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasStakeDelegs-DState
d_HasStakeDelegs'45'DState_3372 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStakeDelegs_1562
d_HasStakeDelegs'45'DState_3372 ~v0
  = du_HasStakeDelegs'45'DState_3372
du_HasStakeDelegs'45'DState_3372 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStakeDelegs_1562
du_HasStakeDelegs'45'DState_3372
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasStakeDelegs'45'DState_1708
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasVoteDelegs-CertState
d_HasVoteDelegs'45'CertState_3374 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1070
d_HasVoteDelegs'45'CertState_3374 ~v0
  = du_HasVoteDelegs'45'CertState_3374
du_HasVoteDelegs'45'CertState_3374 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1070
du_HasVoteDelegs'45'CertState_3374
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasVoteDelegs'45'CertState_1740
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasVoteDelegs-DState
d_HasVoteDelegs'45'DState_3376 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1070
d_HasVoteDelegs'45'DState_3376 ~v0
  = du_HasVoteDelegs'45'DState_3376
du_HasVoteDelegs'45'DState_3376 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_HasVoteDelegs_1070
du_HasVoteDelegs'45'DState_3376
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasVoteDelegs'45'DState_1706
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasVotes
d_HasVotes_3378 a0 a1 a2 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasVotes-CertEnv
d_HasVotes'45'CertEnv_3382 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasVotes_1682
d_HasVotes'45'CertEnv_3382 ~v0 = du_HasVotes'45'CertEnv_3382
du_HasVotes'45'CertEnv_3382 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasVotes_1682
du_HasVotes'45'CertEnv_3382
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasVotes'45'CertEnv_1702
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasWithdrawals-CertEnv
d_HasWithdrawals'45'CertEnv_3384 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
d_HasWithdrawals'45'CertEnv_3384 ~v0
  = du_HasWithdrawals'45'CertEnv_3384
du_HasWithdrawals'45'CertEnv_3384 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
du_HasWithdrawals'45'CertEnv_3384
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_HasWithdrawals'45'CertEnv_1704
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PState
d_PState_3392 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PStateOf
d_PStateOf_3396 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1602 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1370
d_PStateOf_3396 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PStateOf_1610
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PoolEnv
d_PoolEnv_3398 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_PoolEnv_3398 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Pools
d_Pools_3400 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Pools_3400 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PoolsOf
d_PoolsOf_3402 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1482 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_3402 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PoolsOf_1490
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Retiring
d_Retiring_3404 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Retiring_3404 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.RetiringOf
d_RetiringOf_3406 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRetiring_1502 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_3406 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RetiringOf_1510
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Rewards
d_Rewards_3408 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Rewards_3408 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.RewardsOf
d_RewardsOf_3410 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1522 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_3410 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RewardsOf_1530
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.Stake
d_Stake_3412 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Stake_3412 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.StakeDelegs
d_StakeDelegs_3414 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_StakeDelegs_3414 = erased
-- Ledger.Dijkstra.Foreign.ExternalStructures._.StakeDelegsOf
d_StakeDelegsOf_3416 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStakeDelegs_1562 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_3416 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_StakeDelegsOf_1570
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.StakeOf
d_StakeOf_3418 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStake_1542 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_3418 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_StakeOf_1550
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.StakePoolParams
d_StakePoolParams_3420 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.VotesOf
d_VotesOf_3424 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasVotes_1682 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_922]
d_VotesOf_3424 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_VotesOf_1690
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.cwitness
d_cwitness_3428 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1290 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_cwitness_3428 ~v0 = du_cwitness_3428
du_cwitness_3428 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DCert_1290 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_cwitness_3428
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.du_cwitness_1306
-- Ledger.Dijkstra.Foreign.ExternalStructures._.isPoolRegistered
d_isPoolRegistered_3436 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Maybe
    MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1252
d_isPoolRegistered_3436 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_isPoolRegistered_1852
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
         (coe d_HSTransactionStructure_636 (coe v0)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.rewardsBalance
d_rewardsBalance_3444 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1350 ->
  Integer
d_rewardsBalance_3444 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewardsBalance_1834
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
         (coe d_HSTransactionStructure_636 (coe v0)))
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CertEnv.coldCreds
d_coldCreds_3484 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertEnv_1322 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_coldCreds_3484 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_coldCreds_1344
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CertEnv.directDeposits
d_directDeposits_3486 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertEnv_1322 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_directDeposits_3486 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_directDeposits_1346
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CertEnv.epoch
d_epoch_3488 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertEnv_1322 ->
  Integer
d_epoch_3488 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_epoch_1336
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CertEnv.pp
d_pp_3490 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertEnv_1322 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pp_3490 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pp_1338 (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CertEnv.votes
d_votes_3492 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertEnv_1322 ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_922]
d_votes_3492 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_votes_1340
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CertEnv.wdrls
d_wdrls_3494 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertEnv_1322 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_3494 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_wdrls_1342
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CertState.dState
d_dState_3498 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1406 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1350
d_dState_3498 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dState_1414
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CertState.gState
d_gState_3500 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1406 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1390
d_gState_3500 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_gState_1418
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.CertState.pState
d_pState_3502 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1406 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1370
d_pState_3502 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pState_1416
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DState.deposits
d_deposits_3522 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1350 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_3522 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1366
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DState.rewards
d_rewards_3524 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1350 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_3524 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewards_1364
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DState.stakeDelegs
d_stakeDelegs_3526 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1350 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_3526 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_stakeDelegs_1362
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DState.voteDelegs
d_voteDelegs_3528 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1350 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_3528 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_voteDelegs_1360
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DelegEnv.delegatees
d_delegatees_3532 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DelegEnv_1422 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_delegatees_3532 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_delegatees_1434
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DelegEnv.pools
d_pools_3534 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DelegEnv_1422 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_3534 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1432
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.DelegEnv.pparams
d_pparams_3536 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DelegEnv_1422 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312
d_pparams_3536 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pparams_1430
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GState.ccHotKeys
d_ccHotKeys_3540 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1390 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_3540 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_ccHotKeys_1400
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GState.deposits
d_deposits_3542 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1390 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_3542 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1402
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.GState.dreps
d_dreps_3544 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1390 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_3544 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_dreps_1398
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCCHotKeys.CCHotKeysOf
d_CCHotKeysOf_3548 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCCHotKeys_1462 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_3548 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CCHotKeysOf_1470
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasCertState.CertStateOf
d_CertStateOf_3552 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasCertState_1642 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_CertState_1406
d_CertStateOf_3552 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_CertStateOf_1650
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDState.DStateOf
d_DStateOf_3556 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDState_1582 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_DState_1350
d_DStateOf_3556 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DStateOf_1590
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasDeposits.DepositsOf
d_DepositsOf_3560 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasDeposits_1442 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_3560 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DepositsOf_1450
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasEpoch.EpochOf
d_EpochOf_3564 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasEpoch_1662 ->
  AgdaAny -> Integer
d_EpochOf_3564 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_EpochOf_1670
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasGState.GStateOf
d_GStateOf_3568 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasGState_1622 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_GState_1390
d_GStateOf_3568 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_GStateOf_1630
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasPState.PStateOf
d_PStateOf_3572 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPState_1602 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1370
d_PStateOf_3572 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PStateOf_1610
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasPools.PoolsOf
d_PoolsOf_3576 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasPools_1482 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_3576 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_PoolsOf_1490
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRetiring.RetiringOf
d_RetiringOf_3580 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRetiring_1502 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_3580 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RetiringOf_1510
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasRewards.RewardsOf
d_RewardsOf_3584 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasRewards_1522 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_3584 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_RewardsOf_1530
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasStake.StakeOf
d_StakeOf_3588 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStake_1542 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_3588 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_StakeOf_1550
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasStakeDelegs.StakeDelegsOf
d_StakeDelegsOf_3592 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasStakeDelegs_1562 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_3592 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_StakeDelegsOf_1570
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.HasVotes.VotesOf
d_VotesOf_3596 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_HasVotes_1682 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.T_GovVote_922]
d_VotesOf_3596 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_VotesOf_1690
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PState.deposits
d_deposits_3600 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1370 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_3600 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_deposits_1386
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PState.fPools
d_fPools_3602 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1370 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fPools_3602 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_fPools_1382
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PState.pools
d_pools_3604 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1370 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_3604 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pools_1380
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.PState.retiring
d_retiring_3606 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_PState_1370 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_3606 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_retiring_1384
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.StakePoolParams.cost
d_cost_3610 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1252 ->
  Integer
d_cost_3610 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_cost_1266
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.StakePoolParams.margin
d_margin_3612 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1252 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_margin_3612 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_margin_1268
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.StakePoolParams.owners
d_owners_3614 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1252 ->
  [Integer]
d_owners_3614 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_owners_1264
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.StakePoolParams.pledge
d_pledge_3616 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1252 ->
  Integer
d_pledge_3616 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_pledge_1270
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.StakePoolParams.rewardAccount
d_rewardAccount_3618 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.T_StakePoolParams_1252 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_rewardAccount_3618 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_rewardAccount_1272
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.AbstractFunctions
d_AbstractFunctions_3622 a0 = ()
-- Ledger.Dijkstra.Foreign.ExternalStructures._.AbstractFunctions.getLanguageView
d_getLanguageView_3632 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3074 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Dijkstra.Foreign.Script.Base.T_HSLanguage_10 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_getLanguageView_3632 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_getLanguageView_3092
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.AbstractFunctions.indexOfImp
d_indexOfImp_3634 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3074 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_indexOf_3042
d_indexOfImp_3634 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_indexOfImp_3094
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.AbstractFunctions.scriptSize
d_scriptSize_3636 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3074 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_scriptSize_3636 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_scriptSize_3096
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.AbstractFunctions.serializedSize
d_serializedSize_3638 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3074 ->
  Integer -> Integer
d_serializedSize_3638 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_serializedSize_3090
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.AbstractFunctions.txScriptFee
d_txScriptFee_3640 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3074 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txScriptFee_3640 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_txScriptFee_3088
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures._.AbstractFunctions.valContext
d_valContext_3642 ::
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3074 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_TxInfo_3006 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Script.ScriptPurpose.T_ScriptPurpose_2994 ->
  Integer
d_valContext_3642 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.d_valContext_3098
      (coe v0)
-- Ledger.Dijkstra.Foreign.ExternalStructures.HSAbstractFunctions
d_HSAbstractFunctions_3660 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.T_AbstractFunctions_3074
d_HSAbstractFunctions_3660 v0
  = coe
      MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.C_constructor_3100
      (coe (\ v1 v2 -> 0 :: Integer)) (coe (\ v1 -> 0 :: Integer))
      (coe (\ v1 v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      (coe
         MAlonzo.Code.Ledger.Dijkstra.Specification.Abstract.C_constructor_3072
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
                            MAlonzo.Code.Ledger.Dijkstra.Specification.Certs.d_DecEq'45'DCert_1844
                            (coe
                               MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
                               (coe d_HSTransactionStructure_636 (coe v0))))
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
                         (coe v3) (coe du_rewardAddressToSOP_3666 (coe v1)))
                    (coe
                       MAlonzo.Code.Data.List.Sort.Base.d_sort_248
                       (coe
                          MAlonzo.Code.Data.List.Sort.du_sortingAlgorithm_138
                          (coe du_DecTotalOrder'45'RewardAddressSOP_3680))
                       (coe
                          MAlonzo.Code.Axiom.Set.du_map_426
                          (MAlonzo.Code.Axiom.Set.d_th_1516
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe du_rewardAddressToSOP_3666)
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
                    (MAlonzo.Code.Ledger.Dijkstra.Specification.Gov.Actions.d_'61''61''45'GovProposal_1460
                       (coe
                          MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_govStructure_2768
                          (coe d_HSTransactionStructure_636 (coe v0)))
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
                         (let v4 = d_HSTransactionStructure_636 (coe v0) in
                          coe
                            (coe
                               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
                               (coe
                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                  (coe
                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                     (coe
                                        MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
                                        (coe v4))))
                               (coe
                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                  (coe
                                     MAlonzo.Code.Ledger.Dijkstra.Specification.Transaction.d_cryptoStructure_1360
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
d_rewardAddressToSOP_3666 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewardAddressToSOP_3666 ~v0 v1 = du_rewardAddressToSOP_3666 v1
du_rewardAddressToSOP_3666 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewardAddressToSOP_3666 v0
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
d_DecTotalOrder'45'RewardAddressSOP_3680 ::
  MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098
d_DecTotalOrder'45'RewardAddressSOP_3680 ~v0
  = du_DecTotalOrder'45'RewardAddressSOP_3680
du_DecTotalOrder'45'RewardAddressSOP_3680 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098
du_DecTotalOrder'45'RewardAddressSOP_3680
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
