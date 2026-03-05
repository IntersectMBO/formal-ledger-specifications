---
source_branch: master
source_path: src/Ledger/Conway/Foreign/HSLedger/ExternalStructures.lagda.md
---
```agda
open import Ledger.Conway.Foreign.ExternalFunctions

module Ledger.Conway.Foreign.HSLedger.ExternalStructures (externalFunctions : ExternalFunctions) where

import      Data.Rational as ℚ using (pos) -- import an instance

open import Ledger.Core.Specification.Crypto
open import Ledger.Core.Specification.Epoch
open import Ledger.Conway.Foreign.HSLedger.Core
import Data.Fin
import Data.List.Sort
open import Data.Nat.Instances using (ℕ-≤-isDecTotalOrder)
open import Relation.Binary.Bundles
open import Data.Product.Relation.Binary.Lex.NonStrict using (×-isDecTotalOrder)
open import Data.Sum.Relation.Binary.LeftOrder using (⊎-<-isDecTotalOrder)

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

      open ExternalFunctions externalFunctions
      HSP2ScriptStructure : PlutusStructure
      HSP2ScriptStructure = record
        { Implementation
        ; validPlutusScript = λ _ _ _ _ → extValidPlutusScript ≡ true
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
    ; POSIXTimeRange = ⊤
    ; epochStructure  = HSEpochStructure
    ; globalConstants = HSGlobalConstants
    ; cryptoStructure = HSCryptoStructure
    ; govParams       = HsGovParams
    ; txidBytes       = id
    ; scriptStructure = HSScriptStructure
    ; adHashingScheme = isHashableSet-ℕ
    ; Hashable-ScriptIntegrity = record { hash = λ x → 0 }
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
      { indexOfDCert          =
          λ x xs → Data.Fin.toℕ <$> findIndexᵇ (_== x) xs
      ; indexOfRewardAddress  =
          λ x xs →
            Data.Fin.toℕ <$>
            findIndexᵇ
              (_== rewardAddressToSOP x)
              (Data.List.Sort.sort
                DecTotalOrder-RewardAddressSOP
                (setToList $ mapˢ rewardAddressToSOP $ dom xs)
              )

      ; indexOfTxIn           = λ x xs → Data.Fin.toℕ <$> findIndexᵇ (_== x) (setToList xs)
      ; indexOfPolicyId       = λ _ _ → nothing
      ; indexOfVote           = λ _ _ → nothing
      ; indexOfProposal       =
          λ x xs → Data.Fin.toℕ <$> findIndexᵇ (==-GovProposal x) xs
      }
    ; runPLCScript = λ _ _ _ _ → true
    ; scriptSize = λ where
        (inj₁ x) → HSTimelock.tlScriptSize x
        (inj₂ x) → HSPlutusScript.psScriptSize x
    ; valContext = λ _ _ → zero
    ; UTCTime = ℕ
    ; epochInfoSlotToUTCTime = λ _ → just 0
    ; transVITime = λ _ → tt
    }
   where
    rewardAddressToSOP : RewardAddress → Network × (KeyHash ⊎ ScriptHash)
    rewardAddressToSOP ra@(RewardAddress.constructor n (KeyHashObj k)) =
      (n , inj₁ k)
    rewardAddressToSOP ra@(RewardAddress.constructor n (ScriptObj s)) =
      (n , inj₂ s)

    DecTotalOrder-RewardAddressSOP : DecTotalOrder _ _ _
    DecTotalOrder-RewardAddressSOP = record
      { isDecTotalOrder =
          ×-isDecTotalOrder
            ℕ-≤-isDecTotalOrder
            (⊎-<-isDecTotalOrder ℕ-≤-isDecTotalOrder ℕ-≤-isDecTotalOrder)
      }


open import Ledger.Core.Specification.Address Network KeyHash ScriptHash using () public
```
