---
source_branch: master
source_path: src/Ledger/Conway/Foreign/Chain.lagda.md
---
```agda
module Ledger.Conway.Foreign.Chain where

open import Data.String using () renaming (_++_ to _+ˢ_)
open import Foreign.Convertible
open import Foreign.Convertible.Deriving
open import Foreign.HaskellTypes
open import Foreign.HaskellTypes.Deriving

open import Ledger.Prelude
open import Ledger.Prelude.Foreign.HSTypes
open import Ledger.Prelude.Foreign.Util

open import Ledger.Core.Foreign.Crypto
open import Ledger.Conway.Foreign.HSStructures
open import Ledger.Conway.Foreign.NewEpoch
open import Ledger.Conway.Foreign.Transaction
open import Ledger.Conway.Specification.Chain it it using (BHBody; BHeader; Block)
import Ledger.Conway.Specification.Chain it it as ChainSpec using (ChainState)
open import Ledger.Conway.Specification.Chain.Properties.Computational it it
open import Ledger.Conway.Conformance.Epoch it it
open import Ledger.Conway.Conformance.Equivalence.Convert

open Computational

record ChainState : Type where
  field
    newEpochState  : NewEpochState


record HSBlock : Type where
  field
    bheader     : BHeader
    ts          : List Tx
    bBodySize   : ℕ
    bBodyHash   : KeyHash

instance
  HsTy-ChainState = autoHsType ChainState
  Conv-ChainState = autoConvert ChainState

  HsTy-BHBody = autoHsType BHBody
  HsTy-BHeader = autoHsType BHeader
  HsTy-HSBlock = autoHsType HSBlock
  Conv-BHBody = autoConvert BHBody
  Conv-BHeader = autoConvert BHeader
  Conv-HSBlock = autoConvert HSBlock

  ChainStateFromConf : ChainState ⭆ ChainSpec.ChainState
  ChainStateFromConf .convⁱ _ chainSt =
    record {newEpochState = conv $ ChainState.newEpochState chainSt}

  ChainStateToConf : ChainSpec.ChainState ⭆ ChainState
  ChainStateToConf .convⁱ deposits chainSt =
    record {newEpochState = conv $ ChainSpec.ChainState.newEpochState chainSt}


open HSBlock

convBlock : HSBlock → Block
convBlock b
  with bBodySize b ≟ BHBody.hBbsize (BHeader.bhbody (bheader b))
... | no _ = error $ "bBodySize check failed: " +ˢ
               show (bBodySize b) +ˢ " ≠ " +ˢ
               show (BHBody.hBbsize (BHeader.bhbody (bheader b)))
... | yes p
  with bBodyHash b ≟ BHBody.bhash (BHeader.bhbody (bheader b))
... | no _ = error $ "BBodyHash check failed: " +ˢ
               show (bBodyHash b) +ˢ " ≠ " +ˢ
               show (BHBody.bhash (BHeader.bhbody (bheader b)))
... | yes q = record
  { bheader = bheader b
  ; ts = ts b
  ; bBodySize = bBodySize b
  ; ≡-bBodySize = p
  ; ≡-bBodyHash = q
  }

chain-step₀ : ⊤ → ChainState → HSBlock → ComputationResult String ChainState
chain-step₀ t record{newEpochState = nes} hsb =
  let b = convBlock hsb
   in conv <$> compute Computational-CHAIN t (ChainSpec.ChainState.constructor (conv nes)) b

chain-step : HsType (⊤ → ChainState → HSBlock → ComputationResult String ChainState)
chain-step = to chain-step₀

{-# COMPILE GHC chain-step as chainStep #-}
```
