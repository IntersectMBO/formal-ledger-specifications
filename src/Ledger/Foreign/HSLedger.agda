{-# OPTIONS --overlapping-instances #-}

module Ledger.Foreign.HSLedger where

open import Ledger.Prelude

import Data.Maybe    as M
import Data.Rational as ℚ

open import Algebra             using (CommutativeMonoid)
open import Algebra.Morphism    using (module MonoidMorphisms)
open import Data.Nat            using (_≤_)
open import Data.Nat.Properties using (+-0-commutativeMonoid)
open import Relation.Binary.Morphism.Structures

open import Foreign.Convertible
open import Foreign.Haskell.Coerce

import Ledger.Foreign.LedgerTypes as F

open import Ledger.Crypto
open import Ledger.Epoch
open import Ledger.GovStructure
open import Ledger.Script
open import Ledger.Transaction

module _ {A : Set} ⦃ _ : DecEq A ⦄ where instance
  ∀Hashable : Hashable A A
  ∀Hashable = λ where .hash → id

  ∀isHashableSet : isHashableSet A
  ∀isHashableSet = mkIsHashableSet A

mkHashable⊥ : {A : Set} → Hashable ⊥ A
mkHashable⊥ = record { hash = λ () }

module Implementation where
  Network          = ⊤
  SlotsPerEpochᶜ   = 100
  StabilityWindowᶜ = 10
  Quorum           = 1
  NetworkId        = tt

  SKey = ℕ
  VKey = ℕ
  Sig  = ℕ
  Ser  = ℕ

  isKeyPair  = _≡_
  sign       = _+_
  ScriptHash = ℕ

  P1Script     = ⊥; Hashable-P1Script = mkHashable⊥
  Dataʰ        = mkHashableSet ⊥
  PlutusScript = ⊥; Hashable-PlutusScript = mkHashable⊥
  ExUnits      = ⊥
  CostModel    = ⊥

  open import Ledger.TokenAlgebra ℕ
  coinTokenAlgebra : TokenAlgebra
  coinTokenAlgebra = λ where
    .Value-CommutativeMonoid   → +-0-commutativeMonoid
    .coin                      → id
    .inject                    → id
    .policies                  → λ _ → ∅
    .size                      → λ x → 1 -- there is only ada in this token algebra
    ._≤ᵗ_                      → _≤_
    .AssetName                 → String
    .specialAsset              → "Ada"
    .property                  → λ _ → refl
    .coinIsMonoidHomomorphism → λ where
      .isMagmaHomomorphism → λ where
        .isRelHomomorphism → record {cong = id}
        .homo → λ _ _ → refl
      .ε-homo → refl
   where open TokenAlgebra
         open Algebra.Morphism.IsMonoidHomomorphism
         open Algebra.Morphism.IsMagmaHomomorphism

  TxId    = ℕ
  Ix      = ℕ
  AuxiliaryData   = ⊤
  DocHash = ⊤
  networkId       = tt
  tokenAlgebra    = coinTokenAlgebra

HSGlobalConstants = GlobalConstants ∋ record {Implementation}
HSEpochStructure  = EpochStructure  ∋ ℕEpochStructure HSGlobalConstants

open import Ledger.PParams HSEpochStructure

-- Dummy private key crypto scheme
HSPKKScheme : PKKScheme
HSPKKScheme = record
  { Implementation
  ; isSigned         = λ a b m → a + b ≡ m
  ; isSigned?        = λ a b m → a + b ≟ m
  ; sign             = _+_
  ; isSigned-correct = λ where (sk , sk , refl) _ _ h → h
  }

HSCrypto : Crypto
HSCrypto = record
  { Implementation
  ; pkk = HSPKKScheme
  }

-- No scripts for now
HSP1ScriptStructure : P1ScriptStructure ℕ ℕ ℕ
HSP1ScriptStructure = record
  { Implementation
  ; validP1Script  = λ _ _ ()
  ; validP1Script? = λ _ _ ()
  }

HSP2ScriptStructure : PlutusStructure ℕ ℕ ℕ
HSP2ScriptStructure = record
  { Implementation
  ; validPlutusScript  = λ ()
  ; validPlutusScript? = λ ()
  }

HSScriptStructure : ScriptStructure ℕ ℕ ℕ
HSScriptStructure = record { p1s = HSP1ScriptStructure ; ps = HSP2ScriptStructure }

HsGovParams : GovParams
HsGovParams = record
  { Implementation
  ; ppUpd = let open PParamsDiff in λ where
      .UpdateT          → ⊤
      .updateGroups     → λ _ → ∅
      .applyUpdate      → λ p _ → p
      .ppdWellFormed    → λ _ → true
      .ppdWellFormed⇒WF → λ _ _ x → x
  ; ppHashingScheme = it
  }

HSGovStructure : GovStructure
HSGovStructure = record
  { Implementation
  ; epochStructure = HSEpochStructure
  ; govParams      = HsGovParams
  ; crypto         = HSCrypto
  }

open import Ledger.GovernanceActions HSGovStructure
open import Ledger.Deleg             HSGovStructure
open import Ledger.Gov               HSGovStructure

HSTransactionStructure : TransactionStructure
HSTransactionStructure = record
  { Implementation
  ; epochStructure  = HSEpochStructure
  ; globalConstants = HSGlobalConstants
  ; adHashingScheme = it
  ; crypto          = HSCrypto
  ; govParams       = HsGovParams
  ; txidBytes       = id
  ; ss              = HSScriptStructure
  }

open import Ledger.Utxo             HSTransactionStructure
open import Ledger.Utxo.Properties  HSTransactionStructure
open import Ledger.Utxow.Properties HSTransactionStructure
open TransactionStructure           HSTransactionStructure
  hiding (PParams)

instance
  -- Since the foreign address is just a number, we do bad stuff here
  Convertible-Addr : Convertible Addr F.Addr
  Convertible-Addr = λ where
    .to → λ where (inj₁ record { pay = inj₁ x }) → x
                  (inj₁ record { pay = inj₂ x }) → x
                  (inj₂ record { pay = inj₁ x }) → x
                  (inj₂ record { pay = inj₂ x }) → x
    .from n → inj₁ record { net = _ ; pay = inj₁ n ; stake = inj₁ 0 }

  Convertible-TxBody : Convertible TxBody F.TxBody
  Convertible-TxBody = λ where
    .to txb → let open TxBody txb in record
      { txins  = to ⦃ Convertible-FinSet ⦃ Coercible⇒Convertible ⦄ ⦄ txins
      ; txouts = to txouts
      ; txfee  = txfee
      ; txvldt = coerce txvldt
      ; txsize = txsize
      ; txid   = txid
      }
    .from txb → let open F.TxBody txb in record
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
  Convertible-TxWitnesses = λ where
    .to txw → let open TxWitnesses txw in record
      { vkSigs  = to vkSigs
      ; scripts = [] }
    .from txw → let open F.TxWitnesses txw in record
      { vkSigs  = from vkSigs
      ; scripts = ∅ }

  Convertible-Tx : Convertible Tx F.Tx
  Convertible-Tx = λ where
    .to tx → let open Tx tx in record
      { body = to body
      ; wits = to wits
      ; txAD = to txAD }
    .from tx → let open F.Tx tx in record
      { body = from body
      ; wits = from wits
      ; txAD = from txAD }


  Convertible-PParams : Convertible PParams F.PParams
  Convertible-PParams = λ where
    .to pp → let open PParams pp in record
      { a                 = a
      ; b                 = b
      ; maxBlockSize      = maxBlockSize
      ; maxTxSize         = maxTxSize
      ; maxHeaderSize     = maxHeaderSize
      ; maxValSize        = maxValSize
      ; minUTxOValue      = minUTxOValue
      ; poolDeposit       = poolDeposit
      ; Emax              = Emax
      ; pv                = coerce pv
      ; votingThresholds  = _
      ; govActionLifetime = govActionLifetime
      ; govActionDeposit  = govActionDeposit
      ; drepDeposit       = drepDeposit
      ; drepActivity      = drepActivity
      ; ccMinSize         = ccMinSize
      ; ccMaxTermLength   = ccMaxTermLength
      }
    .from pp → let open F.PParams pp in record
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
      ; govActionLifetime = govActionLifetime
      ; govActionDeposit  = govActionDeposit
      ; drepDeposit       = drepDeposit
      ; drepActivity      = drepActivity
      ; ccMinSize         = ccMinSize
      ; ccMaxTermLength   = ccMaxTermLength
      ; minimumAVS        = 0
      }

  Convertible-UTxOEnv : Convertible UTxOEnv F.UTxOEnv
  Convertible-UTxOEnv = λ where
    .to record { slot = slot ; pparams = pparams } →
        record { slot = slot ; pparams = to pparams }
    .from e → let open F.UTxOEnv e in record
      { slot = slot ; ppolicy = nothing ; pparams = from pparams }

  Convertible-UTxOState : Convertible UTxOState F.UTxOState
  Convertible-UTxOState = λ where
    .to record { utxo = utxo ; fees = fees } →
        record { utxo = to ⦃ conv-utxo ⦄ utxo ; fees = fees }
    .from s → record
      { utxo      = from ⦃ conv-utxo ⦄ $ F.UTxOState.utxo s
      ; fees      = F.UTxOState.fees s
      ; deposits  = ∅ᵐ
      ; donations = ε
      }
   where conv-utxo : Convertible UTxO F.UTxO
         conv-utxo = Convertible-Map ⦃ DecEq-Product ⦄ ⦃ Coercible⇒Convertible ⦄

utxo-step : F.UTxOEnv → F.UTxOState → F.TxBody → Maybe F.UTxOState
utxo-step e s txb = M.map to (UTXO-step (from e) (from s) (from txb))

{-# COMPILE GHC utxo-step as utxoStep #-}

utxow-step : F.UTxOEnv → F.UTxOState → F.Tx → Maybe F.UTxOState
utxow-step e s tx = M.map to (compute Computational-UTXOW (from e) (from s) (from tx))

{-# COMPILE GHC utxow-step as utxowStep #-}
