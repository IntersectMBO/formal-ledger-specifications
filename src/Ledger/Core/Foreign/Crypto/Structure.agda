open import Ledger.Core.Foreign.ExternalFunctions

module Ledger.Core.Foreign.Crypto.Structure
  (externalFunctions : ExternalFunctions) where

open import Tactic.Derive.HsType
open import Tactic.Derive.Convertible
open import Tactic.Derive.Show

open import Ledger.Prelude
open import Ledger.Prelude.Foreign.HSTypes
open import Ledger.Prelude.Foreign.Util

open import Ledger.Core.Specification.Crypto
open import Ledger.Core.Foreign.Crypto.Base

open ExternalFunctions externalFunctions

HSPKKScheme : PKKScheme
HSPKKScheme = record
  { SKey = ℕ
  ; VKey = HSVKey
  ; Sig = ℕ
  ; Ser = ℕ
  ; isKeyPair = λ sk vk → sk ≡ HSVKey.hvkVKey vk
  ; isSigned = λ a b m → extIsSigned (HSVKey.hvkVKey a) b m ≡ true
  ; sign = λ _ _ → 0
  ; isSigned-correct = error "isSigned-correct evaluated"
  } 

HSCryptoStructure : CryptoStructure
HSCryptoStructure = record {
    pkk = HSPKKScheme
  ; ScriptHash = ℕ
  }

open CryptoStructure HSCryptoStructure

unquoteDecl = do
  hsTypeAlias ScriptHash
