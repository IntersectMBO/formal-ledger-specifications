{-# OPTIONS --overlapping-instances #-}
module Foreign.HSLedger where

open import Ledger.Prelude

open import Data.Nat using (_≤_; _≤ᵇ_)
import Data.Maybe as M

open import Foreign.Convertible
open import Foreign.Haskell.Coerce
import Foreign.LedgerTypes as F

open import Ledger.PParams ℕ
open import Ledger.Crypto

-- Dummy hash functions
isHashableSelf : ∀ A → isHashableSet A
isHashableSelf A = mkIsHashableSet A A id

isHashableSet-⊤ : isHashableSet ⊤
isHashableSet-⊤ = isHashableSelf ⊤

isHashableSet-ℕ : isHashableSet ℕ
isHashableSet-ℕ = isHashableSelf ℕ

-- Dummy private key crypto scheme
open PKKScheme
HSPKKScheme : PKKScheme
HSPKKScheme .SKey             = ℕ
HSPKKScheme .VKey             = ℕ
HSPKKScheme .Sig              = ℕ
HSPKKScheme .Ser              = ℕ
HSPKKScheme .isKeyPair        = _≡_
HSPKKScheme .isSigned         = λ a b m → a + b ≡ m
HSPKKScheme .isSigned?        = λ a b m → a + b ≟ m
HSPKKScheme .sign             = _+_
HSPKKScheme .isSigned-correct = λ where (sk , sk , refl) _ _ h → h
HSPKKScheme .decEq-VKey       = DecEq-ℕ
HSPKKScheme .decEq-Sig        = DecEq-ℕ
HSPKKScheme .decEq-Ser        = DecEq-ℕ

open Crypto
HSCrypto : Crypto
HSCrypto .pkk              = HSPKKScheme
HSCrypto .khs              = isHashableSet-ℕ
HSCrypto .ScriptHash       = ℕ
HSCrypto .decEq-KeyHash    = DecEq-ℕ
HSCrypto .decEq-ScriptHash = DecEq-ℕ

open import Ledger.Script

-- No scripts for now
open P1ScriptStructure
HSP1ScriptStructure : P1ScriptStructure ℕ ℕ ℕ _≤_ _≤ᵇ_
HSP1ScriptStructure .P1Script          = ⊥
HSP1ScriptStructure .validP1Script     = λ _ _ ()
HSP1ScriptStructure .validP1Script?    = λ _ _ ()
HSP1ScriptStructure .Hashable-P1Script = record { hash = λ () }
HSP1ScriptStructure .DecEq-P1Script    = DecEq-⊥

open PlutusStructure
HSP2ScriptStructure : PlutusStructure ℕ ℕ ℕ _≤_ _≤ᵇ_
HSP2ScriptStructure .Dataʰ                 = record { T = ⊥ ; T-isHashable = isHashableSelf ⊥ }
HSP2ScriptStructure .PlutusScript          = ⊥
HSP2ScriptStructure .ExUnits               = ⊥
HSP2ScriptStructure .CostModel             = ⊥
HSP2ScriptStructure .Hashable-PlutusScript = record { hash = λ () }
HSP2ScriptStructure .DecEq-PlutusScript    = DecEq-⊥
HSP2ScriptStructure .validPlutusScript     = λ ()
HSP2ScriptStructure .validPlutusScript?    = λ ()

HSScriptStructure : ScriptStructure ℕ ℕ ℕ _≤_ _≤ᵇ_
HSScriptStructure = record { p1s = HSP1ScriptStructure ; ps = HSP2ScriptStructure }

open import Ledger.Transaction

module _ where
  open TransactionStructure

  HSTransactionStructure : TransactionStructure
  HSTransactionStructure .Ix              = ℕ
  HSTransactionStructure .TxId            = ℕ
  HSTransactionStructure .Epoch           = ℕ
  HSTransactionStructure .AuxiliaryData   = ⊤
  HSTransactionStructure .Network         = ⊤
  HSTransactionStructure .crypto          = HSCrypto
  HSTransactionStructure .adHashingScheme = isHashableSet-⊤
  HSTransactionStructure .ppUpd           = record { UpdateT = ⊤ ; applyUpdate = λ p _ → p }
  HSTransactionStructure .txidBytes       = id
  HSTransactionStructure .networkId       = tt
  HSTransactionStructure .DecEq-TxId      = DecEq-ℕ
  HSTransactionStructure .DecEq-Ix        = DecEq-ℕ
  HSTransactionStructure .DecEq-Netw      = DecEq-⊤
  HSTransactionStructure .DecEq-UpdT      = DecEq-⊤
  HSTransactionStructure .ss              = HSScriptStructure
  HSTransactionStructure .DecEq-ADHash    = DecEq-⊤

open import Ledger.Utxo HSTransactionStructure
open import Ledger.Utxow.Properties HSTransactionStructure
open TransactionStructure HSTransactionStructure

instance
  -- Since the foreign address is just a number, we do bad stuff here
  Convertible-Addr : Convertible Addr F.Addr
  Convertible-Addr .to (inj₁ record { pay = inj₁ x }) = x
  Convertible-Addr .to (inj₁ record { pay = inj₂ x }) = x
  Convertible-Addr .to (inj₂ record { pay = inj₁ x }) = x
  Convertible-Addr .to (inj₂ record { pay = inj₂ x }) = x
  Convertible-Addr .from n = inj₁ (record { net = _ ; pay = inj₁ n ; stake = inj₁ 0 })

  Convertible-TxBody : Convertible TxBody F.TxBody
  Convertible-TxBody = record { to = to' ; from = from' }
    where
      to' : TxBody → F.TxBody
      to' txb = let open TxBody txb in record
        { txins  = to ⦃ Convertible-FinSet ⦃ _ ⦄ ⦃ Coercible⇒Convertible ⦄ ⦄ txins
        ; txouts = to txouts
        ; txfee  = txfee
        ; txvldt = coerce txvldt
        ; txsize = txsize
        ; txid   = txid
        }

      from' : F.TxBody → TxBody
      from' txb = let open F.TxBody txb in record
        { txins    = from ⦃ Convertible-FinSet ⦃ _ ⦄ ⦃ Coercible⇒Convertible ⦄ ⦄ txins
        ; txouts   = from txouts
        ; txfee    = txfee
        ; txvldt   = coerce txvldt
        ; txwdrls  = ∅ᵐ
        ; txup     = nothing
        ; txADhash = nothing
        ; txsize   = txsize
        ; txid     = txid
        }

  Convertible-TxWitnesses : Convertible TxWitnesses F.TxWitnesses
  Convertible-TxWitnesses = record { to = to' ; from = from' }
    where
      to' : TxWitnesses → F.TxWitnesses
      to' txw = let open TxWitnesses txw in record
        { vkSigs  = to vkSigs
        ; scripts = [] }

      from' : F.TxWitnesses → TxWitnesses
      from' txw = let open F.TxWitnesses txw in record
        { vkSigs  = from vkSigs
        ; scripts = ∅ }

  Convertible-Tx : Convertible Tx F.Tx
  Convertible-Tx = record { to = to' ; from = from' }
    where
      to' : Tx → F.Tx
      to' tx = let open Tx tx in record
        { body = to body
        ; wits = to wits
        ; txAD = to txAD }

      from' : F.Tx → Tx
      from' tx = let open F.Tx tx in record
        { body = from body
        ; wits = from wits
        ; txAD = from txAD }


  Convertible-PParams : Convertible PParams F.PParams
  Convertible-PParams = record { to = to' ; from = from' }
    where
      to' : PParams → F.PParams
      to' pp = let open PParams pp in record
        { a             = a
        ; b             = b
        ; maxBlockSize  = maxBlockSize
        ; maxTxSize     = maxTxSize
        ; maxHeaderSize = maxHeaderSize
        ; poolDeposit   = poolDeposit
        ; Emax          = Emax
        }

      from' : F.PParams → PParams
      from' pp = let open F.PParams pp in record
        { a             = a
        ; b             = b
        ; maxBlockSize  = maxBlockSize
        ; maxTxSize     = maxTxSize
        ; maxHeaderSize = maxHeaderSize
        ; poolDeposit   = poolDeposit
        ; Emax          = Emax
        }

  Convertible-UTxOEnv : Convertible UTxOEnv F.UTxOEnv
  Convertible-UTxOEnv = record { to = to' ; from = from' }
    where
      to' : UTxOEnv → F.UTxOEnv
      to' record { slot = slot ; pparams = pparams } = record { slot = slot ; pparams = to pparams }

      from' : F.UTxOEnv → UTxOEnv
      from' e = let open F.UTxOEnv e in record { slot = slot ; pparams = from pparams }

  Convertible-UTxOState : Convertible UTxOState F.UTxOState
  Convertible-UTxOState = record { to = to' ; from = from' }
    where
      to' : UTxOState → F.UTxOState
      to' record { utxo = utxo ; fees = fees } = record
        { utxo = to ⦃ Convertible-Map ⦃ _ ⦄ ⦃ _ ⦄ ⦃ Coercible⇒Convertible ⦄ ⦄ utxo
        ; fees = fees
        }

      from' : F.UTxOState → UTxOState
      from' s = record
        { utxo = from ⦃ Convertible-Map ⦃ _ ⦄ ⦃ _ ⦄ ⦃ Coercible⇒Convertible ⦄ ⦄ (F.UTxOState.utxo s)
        ; fees = F.UTxOState.fees s
        }

utxo-step : F.UTxOEnv → F.UTxOState → F.TxBody → Maybe F.UTxOState
utxo-step e s txb = M.map to (UTXO-step (from e) (from s) (from txb))

{-# COMPILE GHC utxo-step as utxoStep #-}

utxow-step : F.UTxOEnv → F.UTxOState → F.Tx → Maybe F.UTxOState
utxow-step e s tx = M.map to (Computational.compute Computational-UTXOW (from e) (from s) (from tx))

{-# COMPILE GHC utxow-step as utxowStep #-}
