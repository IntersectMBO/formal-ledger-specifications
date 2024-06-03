module Ledger.Foreign.HSLedger where

open import Ledger.Prelude hiding (ε) renaming (fromList to fromListˢ); open Computational

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
open import Ledger.Transaction renaming (Vote to VoteTag)
open import Ledger.Types.Epoch
open import Ledger.Types.GovStructure

open import Interface.HasOrder.Instance

module _ {A : Set} ⦃ _ : DecEq A ⦄ where instance
  ∀Hashable : Hashable A A
  ∀Hashable = λ where .hash → id

  ∀isHashableSet : isHashableSet A
  ∀isHashableSet = mkIsHashableSet A

instance
  Hashable-⊤ : Hashable ⊤ ℕ
  Hashable-⊤ = λ where .hash tt → 0

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
  CostModel    = ⊤
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

open import Ledger.PParams it it it hiding (PParams; Acnt; DrepThresholds; PoolThresholds)

HsGovParams : GovParams
HsGovParams = record
  { Implementation
  ; ppUpd = let open PParamsDiff in λ where
      .UpdateT      → ℕ -- cost parameter `a`
      .updateGroups → λ _ → ❴ EconomicGroup ❵
      .applyUpdate  → λ p a → record p { a = a }
      .ppWF?        → ⁇ yes (λ _ h → h)
  ; ppHashingScheme = it
  }

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
instance
  _ = HSTransactionStructure

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

HSGovStructure : GovStructure
HSGovStructure = TransactionStructure.govStructure HSTransactionStructure
instance _ = HSGovStructure

open TransactionStructure it hiding (GovVote; GovProposal; GovAction)
open GovStructure govStructure using (DocHash)

open import Ledger.Gov.Properties it
open import Ledger.Utxo it it
open import Ledger.Utxo.Properties it it
open import Ledger.Utxow.Properties it it
open import Ledger.Ratify it
open import Ledger.Ratify.Properties it
open import Ledger.Enact it
open import Ledger.GovernanceActions it using (Vote; GovVote; GovProposal; GovAction)
open import Ledger.GovernanceActions.Properties it
open import Ledger.Ledger it it
open import Ledger.Ledger.Properties it it
open import Ledger.Epoch it it using (NewEpochEnv; NewEpochState; EpochState)
open import Ledger.Epoch.Properties it it
open import Ledger.Chain it it
open import Ledger.Chain.Properties it it

open import Data.Rational

open import Algebra

instance
  _ = Convertible-Refl {⊤}
  _ = Convertible-Refl {ℕ}
  _ = Convertible-Refl {String}
  _ = Convertible-Refl {Bool}

  Convertible-⊥ : Convertible ⊥ F.Empty
  Convertible-⊥ = λ where
    .to ()
    .from ()

  Convertible-HSMap : ∀ {A B A′ B′}
    → ⦃ DecEq A ⦄
    → ⦃ Convertible A A′ ⦄
    → ⦃ Convertible B B′ ⦄
    → Convertible (A ⇀ B) (F.HSMap A′ B′)
  Convertible-HSMap = λ where
    .to → F.MkHSMap ∘ to
    .from → from ∘ F.HSMap.assocList

  Convertible-HSSet : ∀ {A A′}
    → ⦃ Convertible A A′ ⦄
    → Convertible (ℙ A) (F.HSSet A′)
  Convertible-HSSet =
    λ where
      .to → F.MkHSSet ∘ to ∘ setToList
      .from → fromListˢ ∘ from ∘ F.HSSet.elems

  Convertible-Rational : Convertible ℚ F.Rational
  Convertible-Rational = λ where
    .to (mkℚ n d _) → n F., suc d
    .from (n F., zero) → 0ℚ -- TODO is there a safer way to do this?
    .from (n F., (suc d)) → n Data.Rational./ suc d

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
    .to record { hash = x } → x
    .from x → record { url = "bogus" ; hash = x }

  Convertible-Script : Convertible Script F.Script
  Convertible-Script = λ where
    .to _ → tt
    .from _ → inj₂ tt

  Convertible-DCert : Convertible DCert F.TxCert
  Convertible-DCert = autoConvertible

  Convertible-TxId : Convertible ℕ F.TxId
  Convertible-TxId = λ where
    .to x → record { txid = x }
    .from → F.TxId.txid

  Convertible-DataHash : Convertible DataHash F.DataHash
  Convertible-DataHash = autoConvertible

  Convertible-TxBody : Convertible TxBody F.TxBody
  Convertible-TxBody = λ where
    .to txb → let open TxBody txb in record
      { txins  = to txins
      ; refInputs  = to refInputs
      ; txouts = to txouts
      ; txfee  = txfee
      ; txvldt = to txvldt
      ; txsize = txsize
      ; txid   = to txid
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
      ; txid       = from txid
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

  Convertible-DrepThresholds : Convertible DrepThresholds F.DrepThresholds
  Convertible-DrepThresholds = λ where
    .to x → let open DrepThresholds x in record
      { P1 = to P1
      ; P2a = to P2a
      ; P2b = to P2b
      ; P3 = to P3
      ; P4 = to P4
      ; P5a = to P5a
      ; P5b = to P5b
      ; P5c = to P5c
      ; P5d = to P5d
      ; P6 = to P6
      }
    .from x → let open F.DrepThresholds x in record
      { P1 = from P1
      ; P2a = from P2a
      ; P2b = from P2b
      ; P3 = from P3
      ; P4 = from P4
      ; P5a = from P5a
      ; P5b = from P5b
      ; P5c = from P5c
      ; P5d = from P5d
      ; P6 = from P6
      }

  Convertible-PoolThresholds : Convertible PoolThresholds F.PoolThresholds
  Convertible-PoolThresholds = λ where
    .to x → let open PoolThresholds x in record
      { Q1 = to Q1
      ; Q2a = to Q2a
      ; Q2b = to Q2b
      ; Q4 = to Q4
      ; Q5e = to Q5e
      }
    .from x → let open F.PoolThresholds x in record
      { Q1 = from Q1
      ; Q2a = from Q2a
      ; Q2b = from Q2b
      ; Q4 = from Q4
      ; Q5e = from Q5e
      }

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
      ; keyDeposit          = keyDeposit
      ; Emax                = Emax
      ; nopt                = nopt
      ; pv                  = to pv
      ; drepVotingThresholds  = to drepThresholds
      ; poolVotingThresholds  = to poolThresholds
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
      ; coinsPerUTxOByte    = coinsPerUTxOByte
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
      ; keyDeposit                  = keyDeposit
      ; minFeeRefScriptCoinsPerByte = 0ℚ
      ; a0                          = 0ℚ
      ; Emax                        = Emax
      ; nopt                        = nopt
      ; collateralPercentage        = 0
      ; pv                          = from pv
      ; drepThresholds              = from drepVotingThresholds
      ; poolThresholds              = from poolVotingThresholds
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
      ; coinsPerUTxOByte            = coinsPerUTxOByte
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

  Convertible-RwdAddr : Convertible RwdAddr F.RwdAddr
  Convertible-RwdAddr = autoConvertible

  Convertible-DocHash : Convertible DocHash F.DataHash
  Convertible-DocHash = autoConvertible

  Convertible-EnactState : Convertible EnactState F.EnactState
  Convertible-EnactState = autoConvertible

  Convertible-GovEnv : ConvertibleType GovEnv F.GovEnv
  Convertible-GovEnv = autoConvertible

  Convertible-Vote : Convertible Vote F.Vote
  Convertible-Vote = autoConvertible

  Convertible-PParamsUpdate : Convertible PParamsUpdate F.PParamsUpdate
  Convertible-PParamsUpdate = record { to = id ; from = id }

  Convertible-GovAction : Convertible GovAction F.GovAction
  Convertible-GovAction = autoConvertible

toNeedsHash : ∀ {action} → F.GovActionID → NeedsHash action
toNeedsHash {NoConfidence} x = from x
toNeedsHash {NewCommittee _ _ _} x = from x
toNeedsHash {NewConstitution _ _} x = from x
toNeedsHash {TriggerHF _} x = from x
toNeedsHash {ChangePParams _} x = from x
toNeedsHash {TreasuryWdrl _} x = tt
toNeedsHash {Info} x = tt

fromNeedsHash : ∀ {action} → NeedsHash action → F.GovActionID
fromNeedsHash {NoConfidence} x = to x
fromNeedsHash {NewCommittee _ _ _} x = to x
fromNeedsHash {NewConstitution _ _} x = to x
fromNeedsHash {TriggerHF _} x = to x
fromNeedsHash {ChangePParams _} x = to x
fromNeedsHash {TreasuryWdrl _} x = to 0 F., 0
fromNeedsHash {Info} x = to 0 F., 0

open import Ledger.Certs.Properties govStructure

instance
  Convertible-GovActionState : Convertible GovActionState F.GovActionState
  Convertible-GovActionState = λ where
    .to s → let open GovActionState s in
      record
        { gasVotes = to votes
        ; gasReturnAddr = to returnAddr
        ; gasExpiresIn = to expiresIn
        ; gasAction = to action
        ; gasPrevAction = fromNeedsHash prevAction
        }
    .from s → let open F.GovActionState s in
      record
        { votes = from gasVotes
        ; returnAddr = from gasReturnAddr
        ; expiresIn = from gasExpiresIn
        ; action = from gasAction
        ; prevAction = toNeedsHash gasPrevAction
        }

  Convertible-GovVote : Convertible GovVote F.GovVote
  Convertible-GovVote = autoConvertible

  Convertible-GovProposal : Convertible GovProposal F.GovProposal
  Convertible-GovProposal = λ where
    .to p → let open GovProposal p in
      record
        { gpAction = to action
        ; gpPrevAction = fromNeedsHash prevAction
        ; gpPolicy = to policy
        ; gpDeposit = to deposit
        ; gpReturnAddr = to returnAddr
        ; gpAnchor = to anchor
        }
    .from p → let open F.GovProposal p in
      record
        { action = from gpAction
        ; prevAction = toNeedsHash gpPrevAction
        ; policy = from gpPolicy
        ; deposit = from gpDeposit
        ; returnAddr = from gpReturnAddr
        ; anchor = from gpAnchor
        }

  Convertible-GovSignal : Convertible (GovVote ⊎ GovProposal) F.GovSignal
  Convertible-GovSignal = λ where
    .to (inj₁ x) → F.GovSignalVote (to x)
    .to (inj₂ y) → F.GovSignalProposal (to y)
    .from (F.GovSignalVote x) → inj₁ (from x)
    .from (F.GovSignalProposal x) → inj₂ (from x)

  Convertible-⊥⊎ : ∀ {A} → Convertible (⊥ ⊎ A) A
  Convertible-⊥⊎ = λ where
    .to (inj₂ y) → y
    .from → inj₂

  Convertible-CertEnv : ConvertibleType CertEnv F.CertEnv
  Convertible-CertEnv = autoConvertible

  Convertible-GState : ConvertibleType GState F.GState
  Convertible-GState = autoConvertible

  Convertible-PState : ConvertibleType PState F.PState
  Convertible-PState = autoConvertible

  Convertible-DState : ConvertibleType DState F.DState
  Convertible-DState = autoConvertible

  Convertible-CertState : ConvertibleType CertState F.CertState
  Convertible-CertState = autoConvertible

  Convertible-StakeDistrs : Convertible StakeDistrs F.StakeDistrs
  Convertible-StakeDistrs = autoConvertible

  Convertible-RatifyEnv : Convertible RatifyEnv F.RatifyEnv
  Convertible-RatifyEnv = autoConvertible

  Convertible-RatifyState : Convertible RatifyState F.RatifyState
  Convertible-RatifyState = autoConvertible

  Convertible-EnactEnv : Convertible EnactEnv F.EnactEnv
  Convertible-EnactEnv = autoConvertible

  Convertible-LEnv : Convertible LEnv F.LEnv
  Convertible-LEnv = autoConvertible

  Convertible-LState : Convertible LState F.LState
  Convertible-LState = autoConvertible

  Convertible-NewEpochEnv : Convertible NewEpochEnv F.NewEpochEnv
  Convertible-NewEpochEnv = autoConvertible

  Convertible-Acnt : Convertible Acnt F.Acnt
  Convertible-Acnt = λ where
    .to record { treasury = treasury ; reserves = reserves } →
      record { treasury = treasury ; reserves = reserves }
    .from record { treasury = treasury ; reserves = reserves } →
      record { treasury = treasury ; reserves = reserves }

  Convertible-EpochState : Convertible EpochState F.EpochState
  Convertible-EpochState = autoConvertible

  Convertible-NewEpochState : Convertible NewEpochState F.NewEpochState
  Convertible-NewEpochState = autoConvertible

  Convertible-ChainState : Convertible ChainState F.ChainState
  Convertible-ChainState = autoConvertible

  Convertible-Block : Convertible Block F.Block
  Convertible-Block = autoConvertible

  Convertible-DelegEnv : Convertible DelegEnv F.DelegEnv
  Convertible-DelegEnv = autoConvertible

utxo-step : F.UTxOEnv → F.UTxOState → F.Tx → F.ComputationResult String F.UTxOState
utxo-step = to (compute Computational-UTXO)

{-# COMPILE GHC utxo-step as utxoStep #-}

utxow-step : F.UTxOEnv → F.UTxOState → F.Tx → F.ComputationResult String F.UTxOState
utxow-step = to (compute Computational-UTXOW)

{-# COMPILE GHC utxow-step as utxowStep #-}

gov-step : F.GovEnv → F.GovState → List F.GovSignal → F.ComputationResult String F.GovState
gov-step = to (compute Computational-GOV)

{-# COMPILE GHC gov-step as govStep #-}

certs-step : F.CertEnv → F.CertState → List F.TxCert → F.ComputationResult String F.CertState
certs-step = to (compute Computational-CERTS)

{-# COMPILE GHC certs-step as certsStep #-}

cert-step : F.CertEnv →  F.CertState → F.TxCert → F.ComputationResult String F.CertState
cert-step = to (compute Computational-CERT)

{-# COMPILE GHC cert-step as certStep #-}

deleg-step : F.DelegEnv → F.DState → F.TxCert → F.ComputationResult String F.DState
deleg-step = to (compute Computational-DELEG)

{-# COMPILE GHC deleg-step as delegStep #-}

pool-step : F.PParams → F.PState → F.TxCert → F.ComputationResult String F.PState
pool-step = to (compute Computational-POOL)

{-# COMPILE GHC pool-step as poolStep #-}

govcert-step : F.CertEnv → F.GState → F.TxCert → F.ComputationResult String F.GState
govcert-step = to (compute Computational-GOVCERT)

{-# COMPILE GHC govcert-step as govCertStep #-}

ratify-step : F.RatifyEnv → F.RatifyState → List (F.Pair F.GovActionID F.GovActionState) → F.ComputationResult F.Empty F.RatifyState
ratify-step = to (compute Computational-RATIFY)

{-# COMPILE GHC ratify-step as ratifyStep #-}

enact-step : F.EnactEnv → F.EnactState → F.GovAction → F.ComputationResult String F.EnactState
enact-step = to (compute Computational-ENACT)

{-# COMPILE GHC enact-step as enactStep #-}

ledger-step : F.LEnv → F.LState → F.Tx → F.ComputationResult String F.LState
ledger-step = to (compute Computational-LEDGER)

{-# COMPILE GHC ledger-step as ledgerStep #-}

ledgers-step : F.LEnv → F.LState → List F.Tx → F.ComputationResult String F.LState
ledgers-step = to (compute Computational-LEDGERS)

{-# COMPILE GHC ledgers-step as ledgersStep #-}

epoch-step : F.NewEpochEnv → F.EpochState → F.Epoch → F.ComputationResult F.Empty F.EpochState
epoch-step = to (compute Computational-EPOCH)

{-# COMPILE GHC epoch-step as epochStep #-}

newepoch-step : F.NewEpochEnv → F.NewEpochState → F.Epoch → F.ComputationResult F.Empty F.NewEpochState
newepoch-step = to (compute Computational-NEWEPOCH)

{-# COMPILE GHC newepoch-step as newEpochStep #-}

chain-step : ⊤ → F.ChainState → F.Block → F.ComputationResult String F.ChainState
chain-step = to (compute Computational-CHAIN)

{-# COMPILE GHC chain-step as chainStep #-}
