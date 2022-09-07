{-# OPTIONS --overlapping-instances #-}
open import Prelude
open import DecEq

open import Data.Nat
open import Data.Product
open import Data.Maybe
open import Data.List
open import Function
open import Function.Bundles
open import FinSet
open import FinMap
open import FiniteMap
open import Function.Definitions
open import Relation.Binary.PropositionalEquality
open import Function.Construct.Composition

open import Foreign.Haskell
open import Foreign.Haskell.Coerce

module HSLedger where

open import Ledger.PParams ℕ
open import Ledger.Crypto

-- Dummy private key crypto scheme
open PKKScheme
HSPKKScheme : PKKScheme
HSPKKScheme .SKey             = ℕ
HSPKKScheme .VKey             = ℕ
HSPKKScheme .Sig              = ℕ
HSPKKScheme .Ser              = ℕ
HSPKKScheme .isKeyPair        = _≡_
HSPKKScheme .isSigned         = λ a b m → a + b ≡ m
HSPKKScheme .sign             = _+_
HSPKKScheme .isSigned-correct = λ where (sk , sk , refl) _ _ h → h
HSPKKScheme .decEq-VKey       = DecEq-ℕ
HSPKKScheme .decEq-Sig        = DecEq-ℕ
HSPKKScheme .decEq-Ser        = DecEq-ℕ

isHashableSelf : ∀ A → isHashableSet A
isHashableSelf A = mkIsHashableSet A A id

isHashableSet-⊤ : isHashableSet ⊤
isHashableSet-⊤ = isHashableSelf ⊤

isHashableSet-ℕ : isHashableSet ℕ
isHashableSet-ℕ = isHashableSelf ℕ

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
HSP1ScriptStructure .Dec-validP1Script {s = ()}
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
HSP2ScriptStructure .Dec-validPlutusScript {s = ()}

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
  HSTransactionStructure .DecEq-TxId      = DecEq-ℕ
  HSTransactionStructure .DecEq-Ix        = DecEq-ℕ
  HSTransactionStructure .DecEq-Netw      = DecEq-⊤
  HSTransactionStructure .DecEq-UpdT      = DecEq-⊤
  HSTransactionStructure .ss              = HSScriptStructure

open import Ledger.Utxo HSTransactionStructure
open TransactionStructure HSTransactionStructure

import Foreign.LedgerTypes as F
open import Foreign.Convertible

instance
  Convertible-Pair : ∀ {A A' B B'} → ⦃ _ : Convertible A A' ⦄ → ⦃ _ : Convertible B B' ⦄
                   → Convertible (A × B) (Pair A' B')
  Convertible-Pair .to   (a , b) = (to a , to b)
  Convertible-Pair .from (a , b) = (from a , from b)

  Convertible-FinSet : ∀ {A A'} ⦃ _ : DecEq A ⦄ → ⦃ _ : Convertible A A' ⦄ → Convertible (FinSet A) (List A')
  Convertible-FinSet .to   s = Data.List.map to (elements s)
  Convertible-FinSet .from l = fromList (Data.List.map from l)

  Convertible-Map : ∀ {K K' V V'} ⦃ _ : DecEq K ⦄ ⦃ _ : DecEq V ⦄
                  → ⦃ _ : Convertible K K' ⦄ → ⦃ _ : Convertible V V' ⦄ → Convertible (FinMap K V) (F.HSMap K' V')
  Convertible-Map .to   m = Data.List.map to (listOfᵐ m)
  Convertible-Map .from m = fromList' (Data.List.map from m)

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
        ; txwdrls  = FinMap.∅
        ; txup     = nothing
        ; txADhash = nothing
        ; txsize   = txsize
        ; txid     = txid
        }

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
      to' (slot , pparams) = record { slot = slot ; pparams = to pparams }

      from' : F.UTxOEnv → UTxOEnv
      from' e = let open F.UTxOEnv e in (slot , from pparams)

  Convertible-UTxOState : Convertible UTxOState F.UTxOState
  Convertible-UTxOState = record { to = to' ; from = from' }
    where
      to' : UTxOState → F.UTxOState
      to' (utxo , fees) = record
        { utxo = to ⦃ Convertible-Map ⦃ _ ⦄ ⦃ _ ⦄ ⦃ Coercible⇒Convertible ⦄ ⦄ utxo
        ; fees = fees
        }

      from' : F.UTxOState → UTxOState
      from' s =
        ( from ⦃ Convertible-Map ⦃ _ ⦄ ⦃ _ ⦄ ⦃ Coercible⇒Convertible ⦄ ⦄ (F.UTxOState.utxo s)
        , F.UTxOState.fees s
        )

utxo-step : F.UTxOEnv → F.UTxOState → F.TxBody → Maybe F.UTxOState
utxo-step e s txb = Data.Maybe.map to (UTXO-step (from e) (from s) (from txb))

{-# COMPILE GHC utxo-step as utxoStep #-}

-- {-# FOREIGN GHC
--   type Coin = Integer
--   type Slot = Integer
--   type Ix = Integer
--   type TxIn = (Integer, Integer)
--   type TxOut = (Integer, Integer)
--   type UTxO = [(TxIn, TxOut)]
--   type PParams = (Integer, (Integer, Integer))
--   type TxBody = ([TxIn], ([(Ix, TxOut)], (Coin, ((Maybe Slot, Maybe Slot), Integer))))

--   utxoStep :: (Slot, PParams) -> (UTxO, Coin) -> TxBody -> Maybe (UTxO, Coin)
--   utxoStep = utxoStep'
-- #-}
