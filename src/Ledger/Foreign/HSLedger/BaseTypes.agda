module Ledger.Foreign.HSLedger.BaseTypes where

open import Data.Rational

open import Ledger.Prelude hiding (ε) renaming (fromList to fromListˢ); open Computational

open import Ledger.Foreign.HSLedger.Core public

import Ledger.Foreign.LedgerTypes as F
import Foreign.Haskell.Pair as F

instance
  _ = Convertible-Refl {⊤}
  _ = Convertible-Refl {ℕ}
  _ = Convertible-Refl {String}
  _ = Convertible-Refl {Bool}

  Convertible-⊥ : Convertible ⊥ F.Empty
  Convertible-⊥ = λ where
    .to ()
    .from ()

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

  Convertible-HSMap : ∀ {A B A′ B′}
    → ⦃ DecEq A ⦄
    → ⦃ Convertible A A′ ⦄
    → ⦃ Convertible B B′ ⦄
    → Convertible (A ⇀ B) (F.HSMap A′ B′)
  Convertible-HSMap = λ where
    .to → F.MkHSMap ∘ to
    .from → from ∘ F.HSMap.assocList

  -- Since the foreign address is just a number, we do bad stuff here
  Convertible-Addr : Convertible Addr F.Addr
  Convertible-Addr = λ where
    .to → λ where (inj₁ record { pay = KeyHashObj x }) → x
                  (inj₁ record { pay = ScriptObj  x }) → x
                  (inj₂ record { pay = KeyHashObj x }) → x
                  (inj₂ record { pay = ScriptObj  x }) → x
    .from n → inj₁ record { net = _ ; pay = KeyHashObj n ; stake = KeyHashObj 0 }

  Convertible-Credential : Convertible Credential F.Credential
  Convertible-Credential = autoConvertible

  Convertible-GovRole : Convertible GovRole F.GovRole
  Convertible-GovRole = autoConvertible

  Convertible-VDeleg : Convertible VDeleg F.VDeleg
  Convertible-VDeleg = autoConvertible

  Convertible-Anchor : Convertible Anchor F.Anchor
  Convertible-Anchor = λ where
    .to record { hash = x } → x
    .from x → record { url = "bogus" ; hash = x }

  Convertible-Script : Convertible Script F.Script
  Convertible-Script = λ where
    .to _ → tt
    .from _ → inj₂ tt

  Convertible-TxId : Convertible ℕ F.TxId
  Convertible-TxId = λ where
    .to x → record { txid = x }
    .from → F.TxId.txid

  Convertible-DataHash : Convertible DataHash F.DataHash
  Convertible-DataHash = autoConvertible

  Convertible-Tag : Convertible Tag F.Tag
  Convertible-Tag = autoConvertible

  Convertible-Ix : Convertible Ix F.Ix
  Convertible-Ix = Convertible-Refl {ℕ}

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

  Convertible-ComputationResult : ConvertibleType ComputationResult F.ComputationResult
  Convertible-ComputationResult = autoConvertible

  Convertible-RwdAddr : Convertible RwdAddr F.RwdAddr
  Convertible-RwdAddr = autoConvertible

  Convertible-PParamsUpdate : Convertible PParamsUpdate F.PParamsUpdate
  Convertible-PParamsUpdate = λ where
    .to x   → let open PParamsUpdate.PParamsUpdate x in
      record
        { a = to a
        ; b = to b
        ; maxBlockSize = to maxBlockSize
        ; maxTxSize = to maxTxSize
        ; maxHeaderSize = to maxHeaderSize
        ; keyDeposit = to keyDeposit
        ; poolDeposit = to poolDeposit
        ; Emax = to Emax
        ; nopt = to nopt
        ; pv = to pv
        ; minUTxOValue = to minUTxOValue
        ; coinsPerUTxOByte = to coinsPerUTxOByte
        ; costmdls = to costmdls
        ; prices = to prices
        ; maxTxExUnits = to maxTxExUnits
        ; maxBlockExUnits = to maxBlockExUnits
        ; maxValSize = to maxValSize
        ; maxCollateralInputs = to maxCollateralInputs
        ; poolVotingThresholds = to poolThresholds
        ; drepVotingThresholds = to drepThresholds
        ; ccMinSize = to ccMinSize
        ; ccMaxTermLength = to ccMaxTermLength
        ; govActionLifetime = to govActionLifetime
        ; govActionDeposit = to govActionDeposit
        ; drepDeposit = to drepDeposit
        ; drepActivity = to drepActivity
        }
    .from x → let open F.PParamsUpdate x in
      record
        { a = from a
        ; b = from b
        ; maxBlockSize = from maxBlockSize
        ; maxTxSize = from maxTxSize
        ; maxHeaderSize = from maxHeaderSize
        ; keyDeposit = from keyDeposit
        ; poolDeposit = from poolDeposit
        ; Emax = from Emax
        ; nopt = from nopt
        ; a0 = nothing
        ; pv = from pv
        ; minUTxOValue = from minUTxOValue
        ; coinsPerUTxOByte = from coinsPerUTxOByte
        ; costmdls = from costmdls
        ; prices = from prices
        ; maxTxExUnits = from maxTxExUnits
        ; maxBlockExUnits = from maxBlockExUnits
        ; maxValSize = from maxValSize
        ; collateralPercentage = nothing
        ; maxCollateralInputs = from maxCollateralInputs
        ; poolThresholds = from poolVotingThresholds
        ; drepThresholds = from drepVotingThresholds
        ; ccMinSize = from ccMinSize
        ; ccMaxTermLength = from ccMaxTermLength
        ; govActionLifetime = from govActionLifetime
        ; govActionDeposit = from govActionDeposit
        ; drepDeposit = from drepDeposit
        ; drepActivity = from drepActivity
        ; minFeeRefScriptCoinsPerByte = nothing
        }

open import Ledger.Certs.Properties govStructure
open import Ledger.Certs.Haskell.Properties govStructure
-- open import Ledger.Certs govStructure using (DepositPurpose)

instance

  Convertible-⊥⊎ : ∀ {A} → Convertible (⊥ ⊎ A) A
  Convertible-⊥⊎ = λ where
    .to (inj₂ y) → y
    .from → inj₂

  Convertible-GState : ConvertibleType GState F.GState
  Convertible-GState = autoConvertible

  Convertible-DepositPurpose : ConvertibleType DepositPurpose F.DepositPurpose
  Convertible-DepositPurpose = autoConvertible

  Convertible-GState' : ConvertibleType GState' F.GState'
  Convertible-GState' = autoConvertible

  Convertible-DState : ConvertibleType DState F.DState
  Convertible-DState = autoConvertible

  Convertible-DState' : ConvertibleType DState' F.DState'
  Convertible-DState' = autoConvertible

  Convertible-Acnt : Convertible Acnt F.Acnt
  Convertible-Acnt = λ where
    .to record { treasury = treasury ; reserves = reserves } →
      record { treasury = treasury ; reserves = reserves }
    .from record { treasury = treasury ; reserves = reserves } →
      record { treasury = treasury ; reserves = reserves }

  Convertible-PParams : Convertible PParams F.PParams
  Convertible-PParams = λ where
    .to pp → let open PParams pp in record
      { a                   = a
      ; b                   = b
      ; maxBlockSize        = maxBlockSize
      ; maxTxSize           = maxTxSize
      ; maxHeaderSize       = maxHeaderSize
      ; keyDeposit          = keyDeposit
      ; poolDeposit         = poolDeposit
      ; Emax                = Emax
      ; nopt                = nopt
      ; pv                  = to pv
      ; minUTxOValue        = minUTxOValue
      ; coinsPerUTxOByte    = coinsPerUTxOByte
      ; costmdls            = to costmdls
      ; prices              = prices
      ; maxTxExUnits        = to maxTxExUnits
      ; maxBlockExUnits     = to maxBlockExUnits
      ; maxValSize          = maxValSize
      ; maxCollateralInputs = maxCollateralInputs
      ; poolVotingThresholds  = to poolThresholds
      ; drepVotingThresholds  = to drepThresholds
      ; ccMinSize           = ccMinSize
      ; ccMaxTermLength     = ccMaxTermLength
      ; govActionLifetime   = govActionLifetime
      ; govActionDeposit    = govActionDeposit
      ; drepDeposit         = drepDeposit
      ; drepActivity        = drepActivity
      }
    .from pp → let open F.PParams pp in record
      { a                           = a
      ; b                           = b
      ; maxBlockSize                = maxBlockSize
      ; maxTxSize                   = maxTxSize
      ; maxHeaderSize               = maxHeaderSize
      ; keyDeposit                  = keyDeposit
      ; poolDeposit                 = poolDeposit
      ; Emax                        = Emax
      ; nopt                        = nopt
      ; a0                          = 0ℚ
      ; pv                          = from pv
      ; minUTxOValue                = minUTxOValue
      ; coinsPerUTxOByte            = coinsPerUTxOByte
      ; costmdls                    = from costmdls
      ; prices                      = prices
      ; maxTxExUnits                = from maxTxExUnits
      ; maxBlockExUnits             = from maxBlockExUnits
      ; maxValSize                  = maxValSize
      ; collateralPercentage        = 0
      ; maxCollateralInputs         = maxCollateralInputs
      ; poolThresholds              = from poolVotingThresholds
      ; drepThresholds              = from drepVotingThresholds
      ; ccMinSize                   = ccMinSize
      ; ccMaxTermLength             = ccMaxTermLength
      ; govActionLifetime           = govActionLifetime
      ; govActionDeposit            = govActionDeposit
      ; drepDeposit                 = drepDeposit
      ; drepActivity                = drepActivity
      ; minFeeRefScriptCoinsPerByte = 0ℚ
      }

  Convertible-PoolParams : Convertible PoolParams F.PoolParams
  Convertible-PoolParams = λ where
    .to → to ∘ PoolParams.rewardAddr
    .from x → record { rewardAddr = from x }

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
      ; txid   = to txid
      ; collateral = to collateral
      ; reqSigHash = to reqSigHash
      ; scriptIntHash = nothing
      ; txcerts = to txcerts
      }
    .from txb → let open F.TxBody txb in record
      { txins         = from txins
      ; refInputs     = from refInputs
      ; txouts        = from txouts
      ; txcerts       = from txcerts
      ; mint          = ε -- tokenAlgebra only contains ada atm, so mint is surely empty
      ; txfee         = txfee
      ; txvldt        = from txvldt
      ; txwdrls       = ∅
      ; txup          = nothing
      ; txADhash      = nothing
      ; txNetworkId   = nothing
      ; curTreasury   = nothing
      ; txsize        = txsize
      ; txid          = from txid
      ; txvote        = []
      ; txprop        = []
      ; txdonation    = ε
      ; collateral    = from collateral
      ; reqSigHash    = from reqSigHash
      ; scriptIntHash = nothing
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
