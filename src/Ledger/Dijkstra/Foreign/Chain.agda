module Ledger.Dijkstra.Foreign.Chain where

import Data.String as S
open import Class.Convertible
open import Tactic.Derive.Convertible
open import Class.HasHsType
open import Tactic.Derive.HsType

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
open import Ledger.Dijkstra.Specification.Crypto using (LeiosCryptoStructure)
open import Ledger.Dijkstra.Specification.Leios DummyGovStructure using (EBCert)
open import Ledger.Dijkstra.Specification.Leios.Types cryptoStructure leiosCryptoStructure
  using (EndorserBlock)
open import Ledger.Dijkstra.Specification.Chain it DummyAbstractFunctions
open import Ledger.Dijkstra.Specification.Chain.Properties.Computational it DummyAbstractFunctions

open Computational
open LeiosCryptoStructure HSLeiosCryptoStructure using (RBHeaderHash)

instance
  HsTy-BHBody = autoHsType BHBody ⊣ withConstructor "MkBHBody"
                                    • fieldPrefix "bhb"
  Conv-BHBody = autoConvert BHBody

  HsTy-BHeader = autoHsType BHeader ⊣ withConstructor "MkBHeader"
                                      • fieldPrefix "bh"
  Conv-BHeader = autoConvert BHeader

  HsTy-EBCert = autoHsType EBCert ⊣ withConstructor "MkEBCert"
                                    • fieldPrefix "ebc"
  Conv-EBCert = autoConvert EBCert

  HsTy-EndorserBlock = autoHsType EndorserBlock ⊣ withConstructor "MkEndorserBlock"
  Conv-EndorserBlock = autoConvert EndorserBlock

  HsTy-CertifiedEB = autoHsType CertifiedEB ⊣ withConstructor "MkCertifiedEB"
                                              • fieldPrefix "ceb"
  Conv-CertifiedEB = autoConvert CertifiedEB

record HSBlock : Type where
  field
    bheader      : BHeader
    bHeaderHash  : RBHeaderHash
    ts           : List TopLevelTx
    ebCert       : Maybe CertifiedEB
    bBodySize    : ℕ
    bBodyHash    : KeyHash

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
    ; bHeaderHash = bHeaderHash b
    ; ts = ts b
    ; ebCert = ebCert b
    ; bBodySize = bBodySize b
    ; ≡-bBodySize = p
    ; ≡-bBodyHash = q
    }

  HsTy-HSBlock = autoHsType HSBlock ⊣ withName "Block"
                                   • withConstructor "MkBlock"
                                   • fieldPrefix "b"
  Conv-HSBlock = autoConvert HSBlock

  HsTy-Block = mkHsType Block (HsType HSBlock)
  Conv-Block = Conv-Block-HSBlock ⨾ Conv-HSBlock

  HsTy-LastAppliedBlock = autoHsType LastAppliedBlock ⊣ withConstructor "MkLastAppliedBlock"
                                                      • fieldPrefix "lab"
  Conv-LastAppliedBlock = autoConvert LastAppliedBlock

  HsTy-ChainState = autoHsType ChainState ⊣ withConstructor "MkChainState"
                                            • fieldPrefix "cs"
  Conv-ChainState = autoConvert ChainState

chain-step : HsType (⊤ → ChainState → Block → ComputationResult String ChainState)
chain-step = to (compute Computational-CHAIN)

{-# COMPILE GHC chain-step as chainStep #-}
