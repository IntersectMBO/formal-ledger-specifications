
module Ledger.Foreign.HSLedger.BaseTypes where

open import Data.Rational

open import Ledger.Prelude hiding (ε) renaming (fromList to fromListˢ); open Computational

open import Ledger.Foreign.HSLedger.Core public
import Ledger.Foreign.HSTypes as F
import Foreign.Haskell.Pair as F

instance
  iConvTop    = Convertible-Refl {⊤}
  iConvNat    = Convertible-Refl {ℕ}
  iConvString = Convertible-Refl {String}
  iConvBool   = Convertible-Refl {Bool}

instance

  -- * Unit and empty

  HsTy-⊥ = MkHsType ⊥ F.Empty
  Conv-⊥ = autoConvert ⊥

  HsTy-⊤ = MkHsType ⊤ ⊤

  -- * Rational numbers

  HsTy-Rational = MkHsType ℚ F.Rational
  Conv-Rational : HsConvertible ℚ
  Conv-Rational = λ where
    .to (mkℚ n d _) → n F., suc d
    .from (n F., zero) → 0ℚ -- TODO is there a safer way to do this?
    .from (n F., (suc d)) → n Data.Rational./ suc d

  -- * Maps and Sets

  HsTy-HSSet : ∀ {A} → ⦃ HasHsType A ⦄ → HasHsType (ℙ A)
  HsTy-HSSet {A} = MkHsType _ (F.HSSet (HsType A))

  Conv-HSSet : ∀ {A} ⦃ _ : HasHsType A ⦄
             → ⦃ HsConvertible A ⦄
             → HsConvertible (ℙ A)
  Conv-HSSet = λ where
    .to → F.MkHSSet ∘ to ∘ setToList
    .from → fromListˢ ∘ from ∘ F.HSSet.elems

  HsTy-Map : ∀ {A B} → ⦃ HasHsType A ⦄ → ⦃ HasHsType B ⦄ → HasHsType (A ⇀ B)
  HsTy-Map {A} {B} = MkHsType _ (F.HSMap (HsType A) (HsType B))

  Conv-HSMap : ∀ {A B} ⦃ _ : HasHsType A ⦄ ⦃ _ : HasHsType B ⦄
    → ⦃ DecEq A ⦄
    → ⦃ HsConvertible A ⦄
    → ⦃ HsConvertible B ⦄
    → HsConvertible (A ⇀ B)
  Conv-HSMap = λ where
    .to → F.MkHSMap ∘ to
    .from → from ∘ F.HSMap.assocList

  -- * ComputationResult

  HsTy-ComputationResult : ∀ {l} {Err} {A : Type l}
                           → ⦃ HasHsType Err ⦄ → ⦃ HasHsType A ⦄
                           → HasHsType (ComputationResult Err A)
  HsTy-ComputationResult {Err = Err} {A} = MkHsType _ (F.ComputationResult (HsType Err) (HsType A))

  Conv-ComputationResult : ConvertibleType ComputationResult F.ComputationResult
  Conv-ComputationResult = autoConvertible

  -- HsTy-BaseAddr      = MkHsType BaseAddr F.BaseAddr
  -- HsTy-BootstrapAddr = MkHsType BootstrapAddr F.BootstrapAddr

  -- Since the foreign address is just a number, we do bad stuff here

  -- Conv-BaseAddr : HsConvertible BaseAddr
  -- Conv-BaseAddr = λ where
  --   .to → λ where record{ pay = KeyHashObj x } → x
  --                 record{ pay = ScriptObj  x } → x
  --   .from n → record{ pay = KeyHashObj n; stake = KeyHashObj 0 }

  -- Conv-BootstrapAddr : HsConvertible BootstrapAddr
  -- Conv-BootstrapAddr = λ where
  --   .to → λ where record{ pay = KeyHashObj x } → x
  --                 record{ pay = ScriptObj  x } → x
  --   .from n → record{ pay = KeyHashObj n; attrsSize = 0 }

  -- -- TODO: Scripts
  -- Conv-Script : Convertible Script F.Script
  -- Conv-Script = λ where
  --   .to _ → tt
  --   .from _ → inj₂ tt

  -- -- TODO: Having a newtype on the Haskell side but not on the Agda side is a bit awkward.
  -- Conv-TxId : Convertible ℕ F.TxId
  -- Conv-TxId = λ where
  --   .to x → record { txid = x }
  --   .from → F.TxId.txid

  -- HsTy-P1Script = MkHsType P1Script F.Empty

  -- HsTy-TxWitnessess = autoHsType TxWitnesses
  -- Conv-TxWitnesses : HsConvertible TxWitnesses
  -- Conv-TxWitnesses = λ where
  --   .to txw → let open TxWitnesses txw in hsCon TxWitnesses 0
  --     (to vkSigs)
  --     (F.MkHSSet [])  -- TODO: scripts
  --     (to txdats)
  --     (to txrdmrs)
  --   .from txw → record
  --     { vkSigs  = from (hsProj TxWitnesses 0 txw)
  --     ; scripts = ∅
  --     ; txdats  = from (hsProj TxWitnesses 2 txw)
  --     ; txrdmrs = from (hsProj TxWitnesses 3 txw)
  --     }

  -- HsTy-RwdAddr = autoHsType RwdAddr
  -- Conv-RwdAddr = autoConvert RwdAddr

open import Ledger.Certs.Properties govStructure
open import Ledger.Certs.Haskell.Properties govStructure

instance

  -- HsTy-GState = autoHsType GState
  -- Conv-GState = autoConvert GState

  -- HsTy-VDeleg = autoHsType VDeleg
  -- Conv-VDeleg = autoConvert VDeleg

  -- HsTy-DepositPurpose = autoHsType DepositPurpose
  -- Conv-DepositPurpose = autoConvert DepositPurpose

  -- Convertible-GState' : ConvertibleType GState' F.GState'
  -- Convertible-GState' = autoConvertible

  -- Convertible-DState : ConvertibleType DState F.DState
  -- Convertible-DState = autoConvertible

  -- Convertible-DState' : ConvertibleType DState' F.DState'
  -- Convertible-DState' = autoConvertible

  -- Convertible-Acnt : Convertible Acnt F.Acnt
  -- Convertible-Acnt = λ where
  --   .to record { treasury = treasury ; reserves = reserves } →
  --     record { treasury = treasury ; reserves = reserves }
  --   .from record { treasury = treasury ; reserves = reserves } →
  --     record { treasury = treasury ; reserves = reserves }
  -- HsTy-DState = autoHsType DState
  -- Conv-DState = autoConvert DState

  -- HsTy-PoolParams = autoHsType PoolParams
  -- Conv-PoolParams = autoConvert PoolParams

  -- HsTy-DCert = autoHsType DCert
  -- Conv-DCert = autoConvert DCert

  -- HsTy-GovVote = autoHsType GovVote
  -- Conv-GovVote = autoConvert GovVote

  -- HsTy-GovAction = autoHsType GovAction
  -- Conv-GovAction = autoConvert GovAction

  -- TODO: This one is a dependent record!
  -- HsTy-GovProposal = autoHsType GovProposal
  -- Conv-GovProposal = autoConvert GovProposal

  -- HsTy-TxBody = autoHsType TxBody
  -- Conv-TxBody = autoConvert TxBody

  -- TODO
  -- Conv-TxBody : Convertible TxBody F.TxBody
  -- Conv-TxBody = λ where
  --   .to txb → let open TxBody txb in record
  --     { txins  = to txins
  --     ; refInputs  = to refInputs
  --     ; txouts = to txouts
  --     ; txfee  = txfee
  --     ; txvldt = to txvldt
  --     ; txsize = txsize
  --     ; txid   = to txid
  --     ; collateral = to collateral
  --     ; reqSigHash = to reqSigHash
  --     ; scriptIntHash = nothing
  --     ; txcerts = to txcerts
  --     }
  --   .from txb → let open F.TxBody txb in record
  --     { txins         = from txins
  --     ; refInputs     = from refInputs
  --     ; txouts        = from txouts
  --     ; txcerts       = from txcerts
  --     ; mint          = ε -- tokenAlgebra only contains ada atm, so mint is surely empty
  --     ; txfee         = txfee
  --     ; txvldt        = from txvldt
  --     ; txwdrls       = ∅
  --     ; txup          = nothing
  --     ; txADhash      = nothing
  --     ; txNetworkId   = nothing
  --     ; curTreasury   = nothing
  --     ; txsize        = txsize
  --     ; txid          = from txid
  --     ; txvote        = []
  --     ; txprop        = []
  --     ; txdonation    = ε
  --     ; collateral    = from collateral
  --     ; reqSigHash    = from reqSigHash
  --     ; scriptIntHash = nothing
  --     }

  -- Conv-Tx : Convertible Tx F.Tx
  -- Conv-Tx = λ where
  --   .to tx → let open Tx tx in record
  --     { body = to body
  --     ; wits = to wits
  --     ; txAD = to txAD }
  --   .from tx → let open F.Tx tx in record
  --     { body    = from body
  --     ; wits    = from wits
  --     ; isValid = true
  --     ; txAD    = from txAD }
