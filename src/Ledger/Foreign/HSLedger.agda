module Ledger.Foreign.HSLedger where

open import Ledger.Prelude hiding (fromList; ε); open Computational

open import Data.Rational using (0ℚ; ½)

open import Algebra             using (CommutativeMonoid)
open import Algebra.Morphism    using (module MonoidMorphisms)
open import Data.Nat.Properties using (+-0-commutativeMonoid; +-0-isCommutativeMonoid)
open import Relation.Binary.Morphism.Structures

open import Foreign.Convertible
open import Foreign.Convertible.Deriving

import Foreign.Haskell as F
import Ledger.Foreign.LedgerTypes as F

open import Ledger.Crypto
open import Ledger.Transaction
open import Ledger.Types.Epoch
open import Ledger.Types.GovStructure

open import Interface.HasOrder.Instance

module _ {A : Set} ⦃ _ : DecEq A ⦄ where instance
  ∀Hashable : Hashable A A
  ∀Hashable = λ where .hash → id; .hashInj refl → refl

  ∀isHashableSet : isHashableSet A
  ∀isHashableSet = mkIsHashableSet A

instance
  Hashable-⊤ : Hashable ⊤ ℕ
  Hashable-⊤ = λ where .hash tt → 0; .hashInj _ → refl

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

  Data         = ⊤
  Dataʰ        = mkHashableSet Data
  toData : ∀ {A : Set} → A → Data
  toData _ = tt

  PlutusScript = ⊤
  ExUnits      = ℕ × ℕ
  ExUnit-CommutativeMonoid = IsCommutativeMonoid' 0ℓ 0ℓ ExUnits ∋ (toCommMonoid' record
    { Carrier = ExUnits
    ; _≈_ = _≈ᵖ_
    ; _∙_ = _∙ᵖ_
    ; ε = zero , zero
    ; isCommutativeMonoid = pairOpRespectsComm +-0-isCommutativeMonoid
    }) where open import Algebra.PairOp ℕ zero _≡_ _+_
  _≥ᵉ_ : ExUnits → ExUnits → Set
  _≥ᵉ_ = _≡_
  CostModel    = ⊥
  Language     = ⊤
  LangDepView  = ⊤
  Prices       = ⊤
  open import Ledger.TokenAlgebra ℕ
  coinTokenAlgebra : TokenAlgebra
  coinTokenAlgebra = λ where
    .Value                      → ℕ
    .Value-IsCommutativeMonoid' → it
      -- ^ Agda bug? Without this line, `coinIsMonoidHomomorphism` doesn't type check anymore
    .coin                       → id
    .inject                     → id
    .policies                   → λ _ → ∅
    .size                       → λ x → 1 -- there is only ada in this token algebra
    ._≤ᵗ_                       → _≤_
    .AssetName                  → String
    .specialAsset               → "Ada"
    .property                   → λ _ → refl
    .coinIsMonoidHomomorphism   → Id.isMonoidHomomorphism _ refl
   where open TokenAlgebra
         open Algebra.Morphism.IsMonoidHomomorphism
         open Algebra.Morphism.IsMagmaHomomorphism
         import Algebra.Morphism.Construct.Identity as Id

  TxId            = ℕ
  Ix              = ℕ
  AuxiliaryData   = ⊤
  DocHash         = ℕ
  networkId       = tt
  tokenAlgebra    = coinTokenAlgebra

HSGlobalConstants = GlobalConstants ∋ record {Implementation}
HSEpochStructure  = EpochStructure  ∋ ℕEpochStructure HSGlobalConstants
instance _ = HSEpochStructure

HSCrypto : Crypto
HSCrypto = record
  { Implementation
  ; pkk = HSPKKScheme
  }
  where
  -- Dummy private key crypto scheme
  HSPKKScheme : PKKScheme
  HSPKKScheme = record
    { Implementation
    ; isSigned         = λ a b m → a + b ≡ m
    ; sign             = _+_
    ; isSigned-correct = λ where (sk , sk , refl) _ _ h → h
    }

instance _ = HSCrypto

-- No scripts for now

open import Ledger.Script it it

HSScriptStructure : ScriptStructure
HSScriptStructure = record
  { hashRespectsUnion = hashRespectsUnion
  ; ps = HSP2ScriptStructure }
  where
  postulate
    instance Hashable-Timelock : Hashable Timelock ℕ

    hashRespectsUnion : ∀ {A B ℍ}
      → Hashable A ℍ → Hashable B ℍ
      → Hashable (A ⊎ B) ℍ

  HSP2ScriptStructure : PlutusStructure
  HSP2ScriptStructure = record
    { Implementation
    ; validPlutusScript = λ _ _ _ _ → ⊤
    }

instance _ = HSScriptStructure

open import Ledger.PParams it it it hiding (PParams)

HsGovParams : GovParams
HsGovParams = record
  { Implementation
  ; ppUpd = let open PParamsDiff in λ where
      .UpdateT                → ⊤
      .updateGroups           → λ _ → ∅
      .applyUpdate            → λ p _ → p
      .ppdWellFormed          → λ _ → false
      .ppdWellFormed⇒hasGroup → λ ()
      .ppdWellFormed⇒WF       → λ _ _ x → x
  ; ppHashingScheme = it
  }

HSGovStructure : GovStructure
HSGovStructure = record
  { Implementation
  ; epochStructure = HSEpochStructure
  ; govParams      = HsGovParams
  ; crypto         = HSCrypto
  }
instance _ = HSGovStructure

open import Ledger.GovernanceActions it hiding (Vote; GovRole; VDeleg; Anchor)
open import Ledger.Deleg it hiding (PoolParams; DCert)

HSTransactionStructure : TransactionStructure
HSTransactionStructure = record
  { Implementation
  ; epochStructure  = HSEpochStructure
  ; globalConstants = HSGlobalConstants
  ; adHashingScheme = it
  ; crypto          = HSCrypto
  ; govParams       = HsGovParams
  ; txidBytes       = id
  ; scriptStructure = HSScriptStructure
  }
instance _ = HSTransactionStructure

open import Ledger.Abstract it
open import Ledger.Gov it

HSAbstractFunctions : AbstractFunctions
HSAbstractFunctions = record
  { Implementation
  ; txscriptfee = λ tt y → 0
  ; serSize     = λ v → v
  ; indexOfImp  = record
    { indexOfDCert    = λ _ _ → nothing
    ; indexOfRwdAddr  = λ _ _ → nothing
    ; indexOfTxIn     = λ _ _ → nothing
    ; indexOfPolicyId = λ _ _ → nothing
    ; indexOfVote     = λ _ _ → nothing
    ; indexOfProposal = λ _ _ → nothing
    }
  ; runPLCScript = λ _ _ _ _ → false
  ; scriptSize = λ _ → 0
  }
instance _ = HSAbstractFunctions

open TransactionStructure it
open import Ledger.Utxo it it
open import Ledger.Utxo.Properties it it
open import Ledger.Utxow.Properties it it

instance
  _ = Convertible-Refl {⊤}
  _ = Convertible-Refl {ℕ}
  _ = Convertible-Refl {String}

  -- Since the foreign address is just a number, we do bad stuff here
  Convertible-Addr : Convertible Addr F.Addr
  Convertible-Addr = λ where
    .to → λ where (inj₁ record { pay = inj₁ x }) → x
                  (inj₁ record { pay = inj₂ x }) → x
                  (inj₂ record { pay = inj₁ x }) → x
                  (inj₂ record { pay = inj₂ x }) → x
    .from n → inj₁ record { net = _ ; pay = inj₁ n ; stake = inj₁ 0 }

  Convertible-Credential : Convertible Credential F.Credential
  Convertible-Credential = autoConvertible

  Convertible-GovRole : Convertible GovRole F.GovRole
  Convertible-GovRole = autoConvertible

  Convertible-VDeleg : Convertible VDeleg F.VDeleg
  Convertible-VDeleg = autoConvertible

  Convertible-PoolParams : Convertible PoolParams F.PoolParams
  Convertible-PoolParams = λ where
    .to → to ∘ PoolParams.rewardAddr
    .from x → record { rewardAddr = from x }

  Convertible-Anchor : Convertible Anchor F.Anchor
  Convertible-Anchor = λ where
    .to _ → tt
    .from tt → record { url = "bogus" ; hash = tt }

  Convertible-Script : Convertible Script F.Script
  Convertible-Script = λ where
    .to _ → tt
    .from tt → inj₂ tt

  Convertible-DCert : Convertible DCert F.TxCert
  Convertible-DCert = autoConvertible

  Convertible-TxBody : Convertible TxBody F.TxBody
  Convertible-TxBody = λ where
    .to txb → let open TxBody txb in record
      { txins  = to txins
      ; refInputs  = to refInputs
      ; txouts = to txouts
      ; txfee  = txfee
      ; txvldt = to txvldt
      ; txsize = txsize
      ; txid   = txid
      ; collateral = to collateral
      ; reqSigHash = to reqSigHash
      ; scriptIntHash = nothing
      ; txcerts = to txcerts
      }
    .from txb → let open F.TxBody txb in record
      { txins      = from txins
      ; refInputs  = from refInputs
      ; txouts     = from txouts
      ; txcerts    = from txcerts
      ; mint       = ε -- tokenAlgebra only contains ada atm, so mint is surely empty
      ; txfee      = txfee
      ; txvldt     = from txvldt
      ; txwdrls    = ∅
      ; txup       = nothing
      ; txADhash   = nothing
      ; netwrk     = nothing
      ; txsize     = txsize
      ; txid       = txid
      ; txvote     = []
      ; txprop     = []
      ; txdonation = ε
      ; collateral    = from collateral
      ; reqSigHash    = from reqSigHash
      ; scriptIntHash = nothing
      }

  Convertible-Tag : Convertible Tag F.Tag
  Convertible-Tag = autoConvertible

  Convertible-TxWitnesses : Convertible TxWitnesses F.TxWitnesses
  Convertible-TxWitnesses = λ where
    .to txw → let open TxWitnesses txw in record
      { vkSigs  = to vkSigs
      ; scripts = []
      ; txdats  = to txdats
      ; txrdmrs = to txrdmrs
      }
    .from txw → let open F.TxWitnesses txw in record
      { vkSigs  = from vkSigs
      ; scripts = ∅
      ; txdats  = from txdats
      ; txrdmrs = from txrdmrs
      }

  Convertible-Tx : Convertible Tx F.Tx
  Convertible-Tx = λ where
    .to tx → let open Tx tx in record
      { body = to body
      ; wits = to wits
      ; txAD = to txAD }
    .from tx → let open F.Tx tx in record
      { body    = from body
      ; wits    = from wits
      ; isValid = true
      ; txAD    = from txAD }

  Convertible-⊥ : Convertible ⊥ F.Empty
  Convertible-⊥ = λ where .to (); .from ()

  Convertible-PParams : Convertible PParams F.PParams
  Convertible-PParams = λ where
    .to pp → let open PParams pp in record
      { a                   = a
      ; b                   = b
      ; maxBlockSize        = maxBlockSize
      ; maxTxSize           = maxTxSize
      ; maxHeaderSize       = maxHeaderSize
      ; maxValSize          = maxValSize
      ; minUTxOValue        = minUTxOValue
      ; poolDeposit         = poolDeposit
      ; Emax                = Emax
      ; nopt                = nopt
      ; pv                  = to pv
      ; votingThresholds    = _
      ; govActionLifetime   = govActionLifetime
      ; govActionDeposit    = govActionDeposit
      ; drepDeposit         = drepDeposit
      ; drepActivity        = drepActivity
      ; ccMinSize           = ccMinSize
      ; ccMaxTermLength     = ccMaxTermLength
      ; costmdls            = to costmdls
      ; prices              = prices
      ; maxTxExUnits        = to maxTxExUnits
      ; maxBlockExUnits     = to maxBlockExUnits
      ; coinsPerUTxOWord    = coinsPerUTxOWord
      ; maxCollateralInputs = maxCollateralInputs
      }
    .from pp → let open F.PParams pp in record
      { a                           = a
      ; b                           = b
      ; maxBlockSize                = maxBlockSize
      ; maxTxSize                   = maxTxSize
      ; maxHeaderSize               = maxHeaderSize
      ; maxValSize                  = maxValSize
      ; minUTxOValue                = minUTxOValue
      ; poolDeposit                 = poolDeposit
      ; minFeeRefScriptCoinsPerByte = 0ℚ
      ; a0                          = 0ℚ
      ; Emax                        = Emax
      ; nopt                        = nopt
      ; collateralPercentage        = 0
      ; pv                          = from pv
        -- TODO: translate these once they are implemented in F.PParams
      ; drepThresholds    = record
        { P1  = ½ ; P2a = ½ ; P2b = ½ ; P3  = ½ ; P4 = ½
        ; P5a = ½ ; P5b = ½ ; P5c = ½ ; P5d = ½ ; P6 = ½}
      ; poolThresholds    = record
        { Q1 = ½ ; Q2a = ½ ; Q2b = ½ ; Q4 = ½ ; Q5e = ½ }
      ; govActionLifetime           = govActionLifetime
      ; govActionDeposit            = govActionDeposit
      ; drepDeposit                 = drepDeposit
      ; drepActivity                = drepActivity
      ; ccMinSize                   = ccMinSize
      ; ccMaxTermLength             = ccMaxTermLength
      ; costmdls                    = from costmdls
      ; prices                      = prices
      ; maxTxExUnits                = from maxTxExUnits
      ; maxBlockExUnits             = from maxBlockExUnits
      ; coinsPerUTxOWord            = coinsPerUTxOWord
      ; maxCollateralInputs         = maxCollateralInputs
      }

  Convertible-UTxOEnv : Convertible UTxOEnv F.UTxOEnv
  Convertible-UTxOEnv = autoConvertible

  Convertible-UTxOState : Convertible UTxOState F.UTxOState
  Convertible-UTxOState = λ where
    .to record { utxo = utxo ; fees = fees } →
        record { utxo = to utxo ; fees = fees }
    .from s → let open F.UTxOState s in record
      { utxo      = from utxo
      ; fees      = fees
      ; deposits  = ∅ᵐ
      ; donations = ε
      }

  Convertible-ComputationResult : ConvertibleType ComputationResult F.ComputationResult
  Convertible-ComputationResult = autoConvertible

utxo-step : F.UTxOEnv → F.UTxOState → F.Tx → F.ComputationResult String F.UTxOState
utxo-step = to UTXO-step

{-# COMPILE GHC utxo-step as utxoStep #-}

utxow-step : F.UTxOEnv → F.UTxOState → F.Tx → F.ComputationResult String F.UTxOState
utxow-step = to (compute Computational-UTXOW)

{-# COMPILE GHC utxow-step as utxowStep #-}
