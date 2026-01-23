---
source_branch: master
source_path: src/Ledger/Dijksgtra/Specification/Enact.lagda.md
---

# Enactment {#sec:enactment}

<!--
```agda
{-# OPTIONS --safe #-}

open import Data.Nat.Properties using (+-0-monoid)
open import Data.Rational using (ℚ)

open import Ledger.Prelude
open import Ledger.Dijkstra.Specification.Gov.Base

module Ledger.Dijkstra.Specification.Enact (gs : _) (open GovStructure gs) where

open import Ledger.Dijkstra.Specification.Gov.Actions gs
```
-->

## Auxiliary Types and Functions

```agda
record EnactEnv : Type where
  field
    gid       : GovActionID
    treasury  : Treasury
    epoch     : Epoch

-- EnactState is modified only by enacting governance action
-- All fields contain a GovActionID since they are hash-protected.
record EnactState : Type where
  field
    cc            : HashProtected (Maybe ((Credential ⇀ Epoch) × ℚ))
    constitution  : HashProtected (DocHash × Maybe ScriptHash)
    pv            : HashProtected ProtVer
    pparams       : HashProtected PParams
    withdrawals   : Withdrawals
```

<!--
```agda
record HasEnactState {a} (A : Type a) : Type a where
  field EnactStateOf : A → EnactState
open HasEnactState ⦃...⦄ public

instance
  HasPParams-EnactState : HasPParams EnactState
  HasPParams-EnactState .PParamsOf = proj₁ ∘ EnactState.pparams

  HasccMaxTermLength-EnactState : HasCCMaxTermLength EnactState
  HasccMaxTermLength-EnactState .CCMaxTermLengthOf = PParams.ccMaxTermLength ∘ PParamsOf

  HasWithdrawals-EnactState : HasWithdrawals EnactState
  HasWithdrawals-EnactState .WithdrawalsOf = EnactState.withdrawals

  unquoteDecl HasCast-EnactEnv = derive-HasCast
    [ (quote EnactEnv , HasCast-EnactEnv) ]

open EnactState
```
-->

```agda
ccCreds : HashProtected (Maybe ((Credential ⇀ Epoch) × ℚ)) → ℙ Credential
ccCreds (just x   , _)  = dom (x .proj₁)
ccCreds (nothing  , _)  = ∅

getHash : ∀ {a} → NeedsHash a → Maybe GovActionID
getHash {NoConfidence}        h = just h
getHash {UpdateCommittee}     h = just h
getHash {NewConstitution}     h = just h
getHash {TriggerHardFork}     h = just h
getHash {ChangePParams}       h = just h
getHash {TreasuryWithdrawal}  _ = nothing
getHash {Info}                _ = nothing

getHashES : EnactState → GovActionType → Maybe GovActionID
getHashES es NoConfidence          = just (es .cc .proj₂)
getHashES es (UpdateCommittee)     = just (es .cc .proj₂)
getHashES es (NewConstitution)     = just (es .constitution .proj₂)
getHashES es (TriggerHardFork)     = just (es .pv .proj₂)
getHashES es (ChangePParams)       = just (es .pparams .proj₂)
getHashES es (TreasuryWithdrawal)  = nothing
getHashES es Info                  = nothing
```

<!--
```agda
private variable
  s        : EnactState
  up       : PParamsUpdate
  new      : Credential ⇀ Epoch
  removed  : ℙ Credential
  q        : ℚ
  dHash    : DocHash
  sHash    : Maybe ScriptHash
  protVer  : ProtVer
  wdrls    : Withdrawals
  t        : Treasury
  gid      : GovActionID
  ep       : Epoch

instance
  _ = +-0-monoid
```
-->


## The <span class="AgdaDataType">ENACT</span> Transition System

```agda
data _⊢_⇀⦇_,ENACT⦈_ : EnactEnv → EnactState → GovAction → EnactState → Type where

  Enact-NoConf :
    ───────────────────────────────────────
    ⟦ gid , t , ep ⟧ ⊢ s ⇀⦇ ⟦ NoConfidence , _ ⟧ᵍᵃ ,ENACT⦈ record s { cc = nothing , gid }

  Enact-UpdComm : let old      = maybe proj₁ ∅ (s .cc .proj₁)
                      maxTerm  = CCMaxTermLengthOf s +ᵉ ep
                  in
    ∀[ term ∈ range new ] term ≤ maxTerm
    ───────────────────────────────────────
    ⟦ gid , t , ep ⟧ ⊢ s ⇀⦇ ⟦ UpdateCommittee , (new , removed , q) ⟧ᵍᵃ ,ENACT⦈
      record s { cc = just ((new ∪ˡ old) ∣ removed ᶜ , q) , gid }

  Enact-NewConst :
    ───────────────────────────────────────
    ⟦ gid , t , ep ⟧ ⊢ s ⇀⦇ ⟦ NewConstitution , (dHash , sHash) ⟧ᵍᵃ ,ENACT⦈ record s { constitution = (dHash , sHash) , gid }

  Enact-HF :
    ───────────────────────────────────────
    ⟦ gid , t , ep ⟧ ⊢ s ⇀⦇ ⟦ TriggerHardFork , protVer ⟧ᵍᵃ ,ENACT⦈ record s { pv = protVer , gid }

  Enact-PParams :
    ───────────────────────────────────────
    ⟦ gid , t , ep ⟧ ⊢ s ⇀⦇ ⟦ ChangePParams , up ⟧ᵍᵃ ,ENACT⦈
      record s { pparams = applyUpdate (PParamsOf s) up , gid }

  Enact-Wdrl : let newWdrls = s .withdrawals ∪⁺ wdrls in
    ∑[ x ← newWdrls ] x ≤ t
    ───────────────────────────────────────
    ⟦ gid , t , ep ⟧ ⊢ s ⇀⦇ ⟦ TreasuryWithdrawal , wdrls ⟧ᵍᵃ ,ENACT⦈ record s { withdrawals = newWdrls }

  Enact-Info :
    ───────────────────────────────────────
    ⟦ gid , t , ep ⟧ ⊢ s ⇀⦇ ⟦ Info , _ ⟧ᵍᵃ ,ENACT⦈ s
```
