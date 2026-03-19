---
source_branch: master
source_path: src/Ledger/Conway/Foreign/HSLedger/ExternalStructures.lagda.md
---
```agda
open import Ledger.Core.Foreign.ExternalFunctions

module Ledger.Conway.Foreign.HSLedger.ExternalStructures (externalFunctions : ExternalFunctions) where

open import Data.Nat.Instances using (ℕ-≤-isDecTotalOrder)
open import Relation.Binary.Bundles
open import Data.Product.Relation.Binary.Lex.NonStrict using (×-isDecTotalOrder)
open import Data.Sum.Relation.Binary.LeftOrder using (⊎-<-isDecTotalOrder)
open import Tactic.Derive.Show
import Data.Fin
import Data.List.Sort

open import Ledger.Prelude

open import Ledger.Core.Foreign.Epoch
open import Ledger.Core.Foreign.Address
open import Ledger.Conway.Specification.Transaction public
open import Ledger.Core.Foreign.Crypto externalFunctions
open import Ledger.Conway.Foreign.HSLedger.Script externalFunctions public

instance
  _ = HSCryptoStructure
  _ = HSEpochStructure
  _ = HSGlobalConstants
  _ = HSScriptStructure

module Crypto = CryptoStructure it
open import Ledger.Conway.Specification.PParams it it it hiding (Acnt; DrepThresholds; PoolThresholds)

HsGovParams : GovParams
HsGovParams = record
  { ppUpd = let open PParamsDiff in λ where
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

open import Ledger.Conway.Specification.TokenAlgebra.Coin Crypto.ScriptHash
   using (Coin-TokenAlgebra)

instance
  HSTransactionStructure : TransactionStructure
  HSTransactionStructure = record
    { TxId            = ℕ
    ; Ix              = ℕ
    ; AuxiliaryData   = ℕ
    ; POSIXTimeRange  = ⊤
    ; epochStructure  = it
    ; globalConstants = it
    ; cryptoStructure = it
    ; govParams       = HsGovParams
    ; txidBytes       = id
    ; scriptStructure = it
    ; adHashingScheme = isHashableSet-ℕ
    ; Hashable-ScriptIntegrity = record { hash = λ x → 0 }
    ; tokenAlgebra    = Coin-TokenAlgebra
    }

open TransactionStructure HSTransactionStructure public
open import Ledger.Conway.Specification.Certs govStructure public

open import Ledger.Conway.Specification.Abstract it

instance
  HSAbstractFunctions : AbstractFunctions
  HSAbstractFunctions = record
    { txscriptfee = λ tt y → 0
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
```
