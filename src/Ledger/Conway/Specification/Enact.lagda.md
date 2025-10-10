---
source_branch: master
source_path: src/Ledger/Conway/Specification/Enact.lagda.md
---

# Enactment {#sec:enactment}

<!--
```agda
{-# OPTIONS --safe #-}

open import Data.Nat.Properties using (+-0-monoid)
open import Data.Rational using (ℚ)

open import Ledger.Prelude
open import Ledger.Conway.Specification.Gov.Base

module Ledger.Conway.Specification.Enact (gs : _) (open GovStructure gs) where

open import Ledger.Conway.Specification.Gov.Actions gs
```
-->


## Auxiliary Types and Functions {#auxiliary-types-and-function}

This section contains some definitions required to define the
`ENACT`{.AgdaDatatype} transition system.  `EnactEnv`{.AgdaRecord} is the environment
and `EnactState`{.AgdaRecord} the state of `ENACT`{.AgdaDatatype}, which enacts a
governance action.  All governance actions except
`TreasuryWithdrawal`{.AgdaInductiveConstructor} and
`Info`{.AgdaInductiveConstructor} modify `EnactState`{.AgdaRecord} permanently,
which of course can have further consequences.
`TreasuryWithdrawal`{.AgdaInductiveConstructor} accumulates withdrawal temporarily in
the `withdrawals`{.AgdaField} field of `EnactState`{.AgdaRecord}, but this information
is applied and reset in `EPOCH`{.AgdaDatatype} (see [EPOCH Transition System][EPOCH]).
Also, enacting these governance actions is the *only* way of modifying
`EnactState`{.AgdaRecord}.

Note that all other fields of `EnactState`{.AgdaRecord} also contain a
`GovActionID`{.AgdaDatatype} since they are `HashProtected`{.AgdaFunction}.

```agda
record EnactEnv : Type where
  field
    gid       : GovActionID
    treasury  : Treasury
    epoch     : Epoch

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

*Type of the ENACT transition system*

```agda
data _⊢_⇀⦇_,ENACT⦈_ : EnactEnv → EnactState → GovAction → EnactState → Type
```

<!--
```agda
private variable
  s : EnactState
  up : PParamsUpdate
  new : Credential ⇀ Epoch
  rem : ℙ Credential
  q : ℚ
  dh : DocHash
  sh : Maybe ScriptHash
  v : ProtVer
  wdrl : Withdrawals
  t : Treasury
  gid : GovActionID
  e : Epoch

instance
  _ = +-0-monoid
```
-->


## The <span class="AgdaDatatype">ENACT</span> Transition System {#sec:the-enact-transition-system}

This section defines the rules of the `ENACT`{.AgdaDatatype} transition system.
Usually no preconditions are checked and the state is simply updated (including the
`GovActionID`{.AgdaDatatype} for the hash protection scheme, if
required).  The exceptions are `UpdateCommittee`{.AgdaInductiveConstructor} and
`TreasuryWithdrawal`{.AgdaInductiveConstructor}:

- `UpdateCommittee`{.AgdaInductiveConstructor} requires that maximum
  terms are respected, and

- `TreasuryWithdrawal`{.AgdaInductiveConstructor} requires that the
  treasury is able to cover the sum of all withdrawals (old and new).

<!--
```agda
open PParams using (ccMaxTermLength)
open EnactState using (cc)
data _⊢_⇀⦇_,ENACT⦈_ where
```
-->

```agda
  Enact-NoConf :
    ───────────────────────────────────────
    ⟦ gid , t , e ⟧ ⊢ s ⇀⦇ ⟦ NoConfidence , _ ⟧ᵍᵃ ,ENACT⦈ record s { cc = nothing , gid }

  Enact-UpdComm : let old      = maybe proj₁ ∅ (s .cc .proj₁)
                      maxTerm  = CCMaxTermLengthOf s +ᵉ e
                  in
    ∀[ term ∈ range new ] term ≤ maxTerm
    ───────────────────────────────────────
    ⟦ gid , t , e ⟧ ⊢ s ⇀⦇ ⟦ UpdateCommittee , (new , rem , q) ⟧ᵍᵃ ,ENACT⦈
      record s { cc = just ((new ∪ˡ old) ∣ rem ᶜ , q) , gid }

  Enact-NewConst :
    ───────────────────────────────────────
    ⟦ gid , t , e ⟧ ⊢ s ⇀⦇ ⟦ NewConstitution , (dh , sh) ⟧ᵍᵃ ,ENACT⦈ record s { constitution = (dh , sh) , gid }

  Enact-HF :
    ───────────────────────────────────────
    ⟦ gid , t , e ⟧ ⊢ s ⇀⦇ ⟦ TriggerHardFork , v ⟧ᵍᵃ ,ENACT⦈ record s { pv = v , gid }

  Enact-PParams :
    ───────────────────────────────────────
    ⟦ gid , t , e ⟧ ⊢ s ⇀⦇ ⟦ ChangePParams , up ⟧ᵍᵃ ,ENACT⦈
      record s { pparams = applyUpdate (PParamsOf s) up , gid }

  Enact-Wdrl : let newWdrls = s .withdrawals ∪⁺ wdrl in
    ∑[ x ← newWdrls ] x ≤ t
    ───────────────────────────────────────
    ⟦ gid , t , e ⟧ ⊢ s ⇀⦇ ⟦ TreasuryWithdrawal , wdrl ⟧ᵍᵃ ,ENACT⦈ record s { withdrawals = newWdrls }

  Enact-Info :
    ───────────────────────────────────────
    ⟦ gid , t , e ⟧ ⊢ s ⇀⦇ ⟦ Info , _ ⟧ᵍᵃ ,ENACT⦈ s
```

