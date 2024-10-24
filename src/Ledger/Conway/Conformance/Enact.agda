
{-# OPTIONS --safe #-}

open import Data.Nat.Properties using (+-0-monoid)
open import Data.Rational using (ℚ)

open import Ledger.Prelude
open import Ledger.Types.GovStructure

module Ledger.Conway.Conformance.Enact (gs : _) (open GovStructure gs) where

open import Ledger.Conway.Conformance.GovernanceActions gs

record EnactEnv : Type where

  constructor ⟦_,_,_⟧ᵉ
  field

    gid       : GovActionID
    treasury  : Coin
    epoch     : Epoch

record EnactState : Type where

  field

    cc            : HashProtected (Maybe ((Credential ⇀ Epoch) × ℚ))
    constitution  : HashProtected (DocHash × Maybe ScriptHash)
    pv            : HashProtected ProtVer
    pparams       : HashProtected PParams
    withdrawals   : RwdAddr ⇀ Coin

open EnactState


ccCreds : HashProtected (Maybe ((Credential ⇀ Epoch) × ℚ)) → ℙ Credential
ccCreds (just x   , _)  = dom (x .proj₁)
ccCreds (nothing  , _)  = ∅

getHash : ∀ {a} → NeedsHash a → Maybe GovActionID
getHash {NoConfidence}           h = just h
getHash {UpdateCommittee _ _ _}  h = just h
getHash {NewConstitution _ _}    h = just h
getHash {TriggerHF _}            h = just h
getHash {ChangePParams _}        h = just h
getHash {TreasuryWdrl _}         _ = nothing
getHash {Info}                   _ = nothing

getHashES : EnactState → GovAction → Maybe GovActionID
getHashES es NoConfidence             = just (es .cc .proj₂)
getHashES es (UpdateCommittee _ _ _)  = just (es .cc .proj₂)
getHashES es (NewConstitution _ _)    = just (es .constitution .proj₂)
getHashES es (TriggerHF _)            = just (es .pv .proj₂)
getHashES es (ChangePParams _)        = just (es .pparams .proj₂)
getHashES es (TreasuryWdrl _)         = nothing
getHashES es Info                     = nothing

data

  _⊢_⇀⦇_,ENACT⦈_ : EnactEnv → EnactState → GovAction → EnactState → Type

open EnactState

private variable
  s : EnactState
  up : PParamsUpdate
  new : Credential ⇀ Epoch
  rem : ℙ Credential
  q : ℚ
  dh : DocHash
  sh : Maybe ScriptHash
  v : ProtVer
  wdrl : RwdAddr ⇀ Coin
  t : Coin
  gid : GovActionID
  e : Epoch

instance
  _ = +-0-monoid

open PParams using (ccMaxTermLength)
open EnactState using (cc)
data _⊢_⇀⦇_,ENACT⦈_ where

  Enact-NoConf :
    ───────────────────────────────────────
    ⟦ gid , t , e ⟧ᵉ ⊢ s ⇀⦇ NoConfidence ,ENACT⦈ record s { cc = nothing , gid }

  Enact-NewComm : let old      = maybe proj₁ ∅ (s .cc .proj₁)
                      maxTerm  = s .pparams .proj₁ .ccMaxTermLength +ᵉ e
                  in
    ∀[ term ∈ range new ] term ≤ maxTerm
    ───────────────────────────────────────
    ⟦ gid , t , e ⟧ᵉ ⊢ s ⇀⦇ UpdateCommittee new rem q ,ENACT⦈
      record s { cc = just ((new ∪ˡ old) ∣ rem ᶜ , q) , gid }

  Enact-NewConst :
    ───────────────────────────────────────
    ⟦ gid , t , e ⟧ᵉ ⊢ s ⇀⦇ NewConstitution dh sh ,ENACT⦈ record s { constitution = (dh , sh) , gid }

  Enact-HF :
    ───────────────────────────────────────
    ⟦ gid , t , e ⟧ᵉ ⊢ s ⇀⦇ TriggerHF v ,ENACT⦈ record s { pv = v , gid }

  Enact-PParams :
    ───────────────────────────────────────
    ⟦ gid , t , e ⟧ᵉ ⊢ s ⇀⦇ ChangePParams up ,ENACT⦈
      record s { pparams = applyUpdate (s .pparams .proj₁) up , gid }

  Enact-Wdrl : let newWdrls = s .withdrawals ∪⁺ wdrl in
    ∑[ x ← newWdrls ] x ≤ t
    ───────────────────────────────────────
    ⟦ gid , t , e ⟧ᵉ ⊢ s ⇀⦇ TreasuryWdrl wdrl ,ENACT⦈ record s { withdrawals = newWdrls }

  Enact-Info :
    ───────────────────────────────────────
    ⟦ gid , t , e ⟧ᵉ ⊢ s ⇀⦇ Info ,ENACT⦈ s

