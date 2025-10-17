open import Ledger.Conway.Foreign.ExternalFunctions

module Ledger.Conway.Foreign.HSLedger.ExternalStructures (externalFunctions : ExternalFunctions) where

import      Data.Rational as ℚ using (pos) -- import an instance

open import Ledger.Core.Specification.Crypto
open import Ledger.Core.Specification.Epoch
open import Ledger.Conway.Foreign.HSLedger.Core

HSGlobalConstants = GlobalConstants ∋ record {Implementation}
instance
  HSEpochStructure = EpochStructure  ∋ ℕEpochStructure HSGlobalConstants

  HSCryptoStructure : CryptoStructure
  HSCryptoStructure = record
    { Implementation
    ; pkk = HSPKKScheme
    }
    where
    open ExternalFunctions externalFunctions
    HSPKKScheme : PKKScheme
    HSPKKScheme = record
      { Implementation
      ; isSigned         = λ a b m → extIsSigned (HSVKey.hvkVKey a) b m ≡ true
      ; sign             = λ _ _ → zero
        -- we can't prove correctness since the function is provided by the Haskell implementation
      ; isSigned-correct = error "isSigned-correct evaluated"
      ; Dec-isSigned     = ⁇ (_ ≟ _)
      }

-- No P2 scripts for now

open import Ledger.Conway.Specification.Script it it
open import Ledger.Conway.Specification.Script.Timelock it it public
open import Ledger.Conway.Conformance.Script it it public

instance
  HSScriptStructure : ScriptStructure
  HSScriptStructure = record
    { p1s = P1ScriptStructure-HTL
    ; hashRespectsUnion = hashRespectsUnion
    ; ps = HSP2ScriptStructure
    }
    where
      hashRespectsUnion : ∀ {A B ℍ}
        → Hashable A ℍ → Hashable B ℍ
        → Hashable (A ⊎ B) ℍ
      hashRespectsUnion a _ .hash (inj₁ x) = hash ⦃ a ⦄ x
      hashRespectsUnion _ b .hash (inj₂ y) = hash ⦃ b ⦄ y

      HSP2ScriptStructure : PlutusStructure
      HSP2ScriptStructure = record
        { Implementation
        ; validPlutusScript = λ _ _ _ _ → ⊤
        ; PlutusScript = HSPlutusScript
        }

open import Ledger.Conway.Specification.PParams it it it hiding (Acnt; DrepThresholds; PoolThresholds)

HsGovParams : GovParams
HsGovParams = record
  { Implementation
  ; ppUpd = let open PParamsDiff in λ where
      .UpdateT      → PParamsUpdate
      .updateGroups → modifiedUpdateGroups
      .applyUpdate  → applyPParamsUpdate
      .ppWF? {u}    → ppWF u
  }
  where
    open PParamsUpdate
    -- FIXME Replace `trustMe` with an actual proof
    ppWF : (u : PParamsUpdate) →
      ((pp : PParams) →
      paramsWellFormed pp →
      paramsWellFormed (applyPParamsUpdate pp u))
      ⁇
    ppWF u with paramsUpdateWellFormed? u
    ... | yes _ = ⁇ (yes trustMe)
      where
        postulate
          trustMe :
            ((pp : PParams) →
            paramsWellFormed pp →
            paramsWellFormed (applyPParamsUpdate pp u))
    ... | no _  = ⁇ (no trustMe)
      where
        postulate
          trustMe :
            ¬((pp : PParams) →
            paramsWellFormed pp →
            paramsWellFormed (applyPParamsUpdate pp u))

instance
  HSTransactionStructure : TransactionStructure
  HSTransactionStructure = record
    { Implementation
    ; epochStructure  = HSEpochStructure
    ; globalConstants = HSGlobalConstants
    ; cryptoStructure = HSCryptoStructure
    ; govParams       = HsGovParams
    ; txidBytes       = id
    ; scriptStructure = HSScriptStructure
    ; adHashingScheme = isHashableSet-ℕ
    }

open TransactionStructure HSTransactionStructure public
open import Ledger.Conway.Specification.Certs govStructure public

open import Ledger.Conway.Specification.Abstract it

instance
  HSAbstractFunctions : AbstractFunctions
  HSAbstractFunctions = record
    { Implementation
    ; txscriptfee = λ tt y → 0
    ; serSize     = λ v → 0
    ; indexOfImp  = record
      { indexOfDCert    = λ _ _ → nothing
      ; indexOfRwdAddr  = λ _ _ → nothing
      ; indexOfTxIn     = λ _ _ → nothing
      ; indexOfPolicyId = λ _ _ → nothing
      ; indexOfVote     = λ _ _ → nothing
      ; indexOfProposal = λ _ _ → nothing
      }
    ; runPLCScript = λ _ _ _ _ → false
    ; scriptSize = λ where 
        (inj₁ x) → HSTimelock.tlScriptSize x
        (inj₂ x) → HSPlutusScript.psScriptSize x
    ; valContext = λ _ _ → zero
    }

open import Ledger.Core.Specification.Address Network KeyHash ScriptHash using () public
