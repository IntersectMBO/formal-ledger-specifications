module Ledger.Dijkstra.Foreign.Receiving where

open import Ledger.Prelude
open import Ledger.Prelude.Foreign.HSTypes
open import Class.Convertible
open import Class.Convertible.Foreign
open import Class.HasHsType
open import Class.HasHsType.Foreign
open import Ledger.Core.Foreign.Address
open import Ledger.Dijkstra.Foreign.HSStructures
open import Ledger.Dijkstra.Foreign.PParams
open import Ledger.Dijkstra.Foreign.Transaction
open import Ledger.Dijkstra.Specification.Script.ScriptPurpose it
open import Ledger.Dijkstra.Specification.Script.Validation it DummyAbstractFunctions

receiving-script-hashes : HsType (TopLevelTx → ℙ ScriptHash)
receiving-script-hashes = to receivingScriptHashes
{-# COMPILE GHC receiving-script-hashes as receivingScriptHashes #-}

receiving-key-hashes : HsType (TopLevelTx → ℙ KeyHash)
receiving-key-hashes = to receivingKeyHashes
{-# COMPILE GHC receiving-key-hashes as receivingKeyHashes #-}

receiving-pointer : HsType (TopLevelTx → ScriptHash → Maybe RedeemerPtr)
receiving-pointer = to (λ tx sh → rdptr tx ⟦ Receive , sh ⟧ˢᵖ)
{-# COMPILE GHC receiving-pointer as receivingPointer #-}

sub-receiving-script-hashes : HsType (SubLevelTx → ℙ ScriptHash)
sub-receiving-script-hashes = to receivingScriptHashes
{-# COMPILE GHC sub-receiving-script-hashes as subReceivingScriptHashes #-}

sub-receiving-key-hashes : HsType (SubLevelTx → ℙ KeyHash)
sub-receiving-key-hashes = to receivingKeyHashes
{-# COMPILE GHC sub-receiving-key-hashes as subReceivingKeyHashes #-}

sub-receiving-pointer : HsType (SubLevelTx → ScriptHash → Maybe RedeemerPtr)
sub-receiving-pointer = to (λ tx sh → rdptr tx ⟦ Receive , sh ⟧ˢᵖ)
{-# COMPILE GHC sub-receiving-pointer as subReceivingPointer #-}

collecting-script-count : HsType (PParams → TopLevelTx → UTxO → ℙ Script → ℕ)
collecting-script-count = to (λ pp tx utxo scripts → length (collectP2ScriptsWithContext pp tx utxo scripts))
{-# COMPILE GHC collecting-script-count as collectingScriptCount #-}

sub-collecting-script-count : HsType (PParams → SubLevelTx → UTxO → ℙ Script → ℕ)
sub-collecting-script-count = to (λ pp tx utxo scripts → length (collectP2ScriptsWithContext pp tx utxo scripts))
{-# COMPILE GHC sub-collecting-script-count as subCollectingScriptCount #-}
