{-# OPTIONS --overlapping-instances #-}

module Ledger.Foreign.HSLedger where

open import Ledger.Prelude

import Data.Maybe as M
import Data.Rational as ℚ

open import Algebra              using (CommutativeMonoid)
open import Algebra.Morphism     using (module MonoidMorphisms)
open import Data.Nat.Properties  using (+-0-commutativeMonoid) -- ; _≟_) --  to _≟ℕ_)
open import Data.Nat.Properties  using (+-*-semiring; <-isStrictTotalOrder)
open import Relation.Binary.Morphism.Structures

open import Foreign.Convertible
open import Foreign.Haskell.Coerce

import Ledger.Foreign.LedgerTypes as F

open import Ledger.Crypto
open import Ledger.Epoch

open GlobalConstants
HSGlobalConstants : GlobalConstants
HSGlobalConstants .Network               = ⊤
HSGlobalConstants .SlotsPerEpochᶜ        = 100
HSGlobalConstants .NonZero-SlotsPerEpoch = _
HSGlobalConstants .StabilityWindowᶜ      = 10
HSGlobalConstants .Quorum                = 1
HSGlobalConstants .NetworkId             = tt

open EpochStructure
HSEpochStructure : EpochStructure
HSEpochStructure = ℕEpochStructure HSGlobalConstants

open import Ledger.PParams HSEpochStructure

-- Dummy hash functions
isHashableSelf : ∀ A → ⦃ DecEq A ⦄ → isHashableSet A
isHashableSelf A ⦃ eq ⦄ = mkIsHashableSet A A id eq

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
HSCrypto .decEq-ScriptHash = DecEq-ℕ

open import Ledger.Script

-- No scripts for now
open P1ScriptStructure
HSP1ScriptStructure : P1ScriptStructure ℕ ℕ ℕ
HSP1ScriptStructure .P1Script          = ⊥
HSP1ScriptStructure .validP1Script     = λ _ _ ()
HSP1ScriptStructure .validP1Script?    = λ _ _ ()
HSP1ScriptStructure .Hashable-P1Script = record { hash = λ () }
HSP1ScriptStructure .DecEq-P1Script    = DecEq-⊥

open PlutusStructure
HSP2ScriptStructure : PlutusStructure ℕ ℕ ℕ
HSP2ScriptStructure .Dataʰ                 =
  record { T = ⊥ ; T-isHashable = isHashableSelf ⊥ }
HSP2ScriptStructure .PlutusScript          = ⊥
HSP2ScriptStructure .ExUnits               = ⊥
HSP2ScriptStructure .CostModel             = ⊥
HSP2ScriptStructure .Hashable-PlutusScript = record { hash = λ () }
HSP2ScriptStructure .DecEq-PlutusScript    = DecEq-⊥
HSP2ScriptStructure .validPlutusScript     = λ ()
HSP2ScriptStructure .validPlutusScript?    = λ ()

HSScriptStructure : ScriptStructure ℕ ℕ ℕ
HSScriptStructure = record { p1s = HSP1ScriptStructure ; ps = HSP2ScriptStructure }

open import Ledger.Transaction
import Ledger.TokenAlgebra as TA

module _ where

  open TA ℕ
  open TA.TokenAlgebra
  open Algebra.Morphism.IsMonoidHomomorphism
  open Algebra.Morphism.IsMagmaHomomorphism

  coinTokenAlgebra : TokenAlgebra
  coinTokenAlgebra  .Value-CommutativeMonoid   = +-0-commutativeMonoid
  coinTokenAlgebra  .coin                      = id
  coinTokenAlgebra  .inject                    = id
  coinTokenAlgebra  .policies                  = λ _ → ∅
  coinTokenAlgebra  .size                      = λ x → 1 -- there is only ada in this token algebra
  coinTokenAlgebra  ._≤ᵗ_                      = _≤_
  coinTokenAlgebra  .AssetName                 = String
  coinTokenAlgebra  .specialAsset              = "Ada"
  coinTokenAlgebra  .property                  = λ _ → refl
  coinTokenAlgebra  .coinIsMonoidHomomorphism
                    .isMagmaHomomorphism
                    .isRelHomomorphism
                    .IsRelHomomorphism.cong    = id
  coinTokenAlgebra  .coinIsMonoidHomomorphism
                    .isMagmaHomomorphism
                    .homo                      = λ _ _ → refl
  coinTokenAlgebra  .coinIsMonoidHomomorphism
                    .ε-homo                    = refl
  coinTokenAlgebra  .DecEq-Value               = record { _≟_ = _≟_ }

module _ where
  open TransactionStructure
  open PParamsDiff

  HSTransactionStructure : TransactionStructure
  HSTransactionStructure .Ix                      = ℕ
  HSTransactionStructure .TxId                    = ℕ
  HSTransactionStructure .epochStructure          = HSEpochStructure
  HSTransactionStructure .globalConstants         = HSGlobalConstants
  HSTransactionStructure .AuxiliaryData           = ⊤
  HSTransactionStructure .crypto                  = HSCrypto
  HSTransactionStructure .adHashingScheme         = isHashableSet-⊤
  HSTransactionStructure .ppHashingScheme         = isHashableSelf PParams
  HSTransactionStructure .ppUpd .UpdateT          = ⊤
  HSTransactionStructure .ppUpd .updateGroups     = λ _ → ∅
  HSTransactionStructure .ppUpd .applyUpdate      = λ p _ → p
  HSTransactionStructure .ppUpd .ppdWellFormed    = λ _ → true
  HSTransactionStructure .ppUpd .ppdWellFormed⇒WF = λ _ _ x → x
  HSTransactionStructure .txidBytes               = id
  HSTransactionStructure .networkId               = tt
  HSTransactionStructure .tokenAlgebra            = coinTokenAlgebra
  HSTransactionStructure .DecEq-TxId              = DecEq-ℕ
  HSTransactionStructure .DecEq-Ix                = DecEq-ℕ
  HSTransactionStructure .DecEq-Netw              = DecEq-⊤
  HSTransactionStructure .DecEq-UpdT              = DecEq-⊤
  HSTransactionStructure .ss                      = HSScriptStructure

open import Ledger.Utxo HSTransactionStructure
open import Ledger.Utxo.Properties HSTransactionStructure
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
        { txins  = to ⦃ Convertible-FinSet ⦃ Coercible⇒Convertible ⦄ ⦄ txins
        ; txouts = to txouts
        ; txfee  = txfee
        ; txvldt = coerce txvldt
        ; txsize = txsize
        ; txid   = txid
        }

      from' : F.TxBody → TxBody
      from' txb = let open F.TxBody txb in record
        { txins      = from ⦃ Convertible-FinSet ⦃ Coercible⇒Convertible ⦄ ⦄ txins
        ; txouts     = from txouts
        ; txcerts    = []
        ; mint       = ε -- since simpleTokenAlgebra only contains ada mint will always be empty
        ; txfee      = txfee
        ; txvldt     = coerce txvldt
        ; txwdrls    = ∅ᵐ
        ; txup       = nothing
        ; txADhash   = nothing
        ; netwrk     = nothing
        ; txsize     = txsize
        ; txid       = txid
        ; txvote     = []
        ; txprop     = []
        ; txdonation = ε
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
        { a                = a
        ; b                = b
        ; maxBlockSize     = maxBlockSize
        ; maxTxSize        = maxTxSize
        ; maxHeaderSize    = maxHeaderSize
        ; maxValSize       = maxValSize
        ; minUTxOValue     = minUTxOValue
        ; poolDeposit      = poolDeposit
        ; Emax             = Emax
        ; pv               = coerce pv
        ; votingThresholds = _
        ; minCCSize        = minCCSize
        ; ccTermLimit      = ccTermLimit
        ; govExpiration    = govExpiration
        ; govDeposit       = govDeposit
        ; drepDeposit      = drepDeposit
        ; drepActivity     = drepActivity
        }

      from' : F.PParams → PParams
      from' pp = let open F.PParams pp in record
        { a                 = a
        ; b                 = b
        ; maxBlockSize      = maxBlockSize
        ; maxTxSize         = maxTxSize
        ; maxHeaderSize     = maxHeaderSize
        ; maxValSize        = maxValSize
        ; minUTxOValue      = minUTxOValue
        ; poolDeposit       = poolDeposit
        ; Emax              = Emax
        ; collateralPercent = 0
        ; pv                = coerce pv
         -- TODO: translate these once they are implemented in F.PParams
        ; drepThresholds    = record
          { P1  = ℚ.½ ; P2a = ℚ.½ ; P2b = ℚ.½ ; P3  = ℚ.½ ; P4 = ℚ.½
          ; P5a = ℚ.½ ; P5b = ℚ.½ ; P5c = ℚ.½ ; P5d = ℚ.½ ; P6 = ℚ.½}
        ; poolThresholds    = record
          { Q1 = ℚ.½ ; Q2a = ℚ.½ ; Q2b = ℚ.½ ; Q4 = ℚ.½ }
        ; minCCSize         = minCCSize
        ; ccTermLimit       = ccTermLimit
        ; govExpiration     = govExpiration
        ; govDeposit        = govDeposit
        ; drepDeposit       = drepDeposit
        ; drepActivity      = drepActivity
        ; minimumAVS        = 0
        }

  Convertible-UTxOEnv : Convertible UTxOEnv F.UTxOEnv
  Convertible-UTxOEnv = record { to = to' ; from = from' }
    where
      to' : UTxOEnv → F.UTxOEnv
      to' record { slot = slot ; pparams = pparams } = record { slot = slot ; pparams = to pparams }

      from' : F.UTxOEnv → UTxOEnv
      from' e = let open F.UTxOEnv e in record { slot = slot ; ppolicy = nothing ; pparams = from pparams }

  Convertible-UTxOState : Convertible UTxOState F.UTxOState
  Convertible-UTxOState = record { to = to' ; from = from' }
    where
      to' : UTxOState → F.UTxOState
      to' record { utxo = utxo ; fees = fees } = record
        { utxo = to ⦃ Convertible-Map ⦃ DecEq-Product ⦄ ⦃ Coercible⇒Convertible ⦄ ⦄ utxo
        ; fees = fees
        }

      from' : F.UTxOState → UTxOState
      from' s = record
        { utxo      = from ⦃ Convertible-Map ⦃ DecEq-Product ⦄ ⦃ Coercible⇒Convertible ⦄ ⦄ (F.UTxOState.utxo s)
        ; fees      = F.UTxOState.fees s
        ; deposits  = ∅ᵐ
        ; donations = ε
        }

utxo-step : F.UTxOEnv → F.UTxOState → F.TxBody → Maybe F.UTxOState
utxo-step e s txb = M.map to (UTXO-step (from e) (from s) (from txb))

{-# COMPILE GHC utxo-step as utxoStep #-}

utxow-step : F.UTxOEnv → F.UTxOState → F.Tx → Maybe F.UTxOState
utxow-step e s tx = M.map to (compute Computational-UTXOW (from e) (from s) (from tx))

{-# COMPILE GHC utxow-step as utxowStep #-}
