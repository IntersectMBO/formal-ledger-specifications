---
source_branch: master
source_path: src/Ledger/Dijkstra/Foreign/Chain.lagda.md
---
```agda
module Ledger.Dijkstra.Foreign.Chain where

import Data.String as S
open import Foreign.Convertible
open import Foreign.Convertible.Deriving
open import Foreign.HaskellTypes
open import Foreign.HaskellTypes.Deriving

open import Ledger.Prelude
open import Ledger.Prelude.Foreign.Util
open import Ledger.Prelude.Foreign.HSTypes

open import Ledger.Core.Foreign.Address
open import Ledger.Core.Foreign.Crypto.Base
open import Ledger.Dijkstra.Foreign.HSStructures
open import Ledger.Dijkstra.Foreign.PParams
open import Ledger.Dijkstra.Foreign.Cert
open import Ledger.Dijkstra.Foreign.Enact
open import Ledger.Dijkstra.Foreign.Gov
open import Ledger.Dijkstra.Foreign.Ratify
open import Ledger.Dijkstra.Foreign.Rewards
open import Ledger.Dijkstra.Foreign.Utxo
open import Ledger.Dijkstra.Foreign.Ledger
open import Ledger.Dijkstra.Foreign.NewEpoch
open import Ledger.Dijkstra.Foreign.Transaction
open import Ledger.Dijkstra.Specification.Chain it DummyAbstractFunctions
open import Ledger.Dijkstra.Specification.Chain.Properties.Computational it DummyAbstractFunctions

open Computational

instance
  HsTy-BHBody = autoHsType BHBody ⊣ withConstructor "MkBHBody"
                                    • fieldPrefix "bhb"
  Conv-BHBody = autoConvert BHBody

  HsTy-BHeader = autoHsType BHeader ⊣ withConstructor "MkBHeader"
                                      • fieldPrefix "bh"
  Conv-BHeader = autoConvert BHeader

record HSBlock : Type where
  field
    bheader   : BHeader
    ts        : List TopLevelTx
    bBodySize : ℕ
    bBodyHash : KeyHash

open HSBlock

instance
  Conv-Block-HSBlock : Convertible Block HSBlock
  Conv-Block-HSBlock .to b = record { Block b }
  Conv-Block-HSBlock .from b
     with bBodySize b ≟ BHBody.hBbsize (BHeader.bhbody (bheader b))
  ... | no _ = error $ "bBodySize check failed: " S.++
                  show (bBodySize b) S.++ " ≠ " S.++
                  show (BHBody.hBbsize (BHeader.bhbody (bheader b)))
  ... | yes p
     with bBodyHash b ≟ BHBody.bhash (BHeader.bhbody (bheader b))
  ... | no _ = error $ "BBodyHash check failed: " S.++
                 show (bBodyHash b) S.++ " ≠ " S.++
                 show (BHBody.bhash (BHeader.bhbody (bheader b)))
  ... | yes q = record
    { bheader = bheader b
    ; ts = ts b
    ; bBodySize = bBodySize b
    ; ≡-bBodySize = p
    ; ≡-bBodyHash = q
    }

  HsTy-HSBlock = autoHsType HSBlock ⊣ withName "Block"
                                   • withConstructor "MkBlock"
                                   • fieldPrefix "b"
  Conv-HSBlock = autoConvert HSBlock

  HsTy-Block = MkHsType Block (HsType HSBlock)
  Conv-Block = Conv-Block-HSBlock ⨾ Conv-HSBlock

  HsTy-ChainState = autoHsType ChainState ⊣ withConstructor "MkChainState"
                                            • fieldPrefix "cs"
  Conv-ChainState = autoConvert ChainState

chain-step : HsType (⊤ → ChainState → Block → ComputationResult String ChainState)
chain-step = to (compute Computational-CHAIN)

{-# COMPILE GHC chain-step as chainStep #-}
```
