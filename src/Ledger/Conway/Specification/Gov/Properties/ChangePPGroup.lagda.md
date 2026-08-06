---
source_branch: master
source_path: src/Ledger/Conway/Specification/Gov/Properties/ChangePPGroup.lagda.md
---

## Theorem: <span class="AgdaRecord">PParam</span> updates have non-empty groups {#clm:ChangePPGroup}

<!--
```agda

{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Gov.Base

module Ledger.Conway.Specification.Gov.Properties.ChangePPGroup
  (gs : GovStructure) (open GovStructure gs)
  where

open import Ledger.Prelude
open import Ledger.Conway.Specification.Gov.Actions gs hiding (yes; no)
open import Ledger.Conway.Specification.Gov gs
open import Data.List.Relation.Unary.Any using (here; there)

private
  GOVS' = _⊢_⇀⟦_⟧ᵢ*'_ {_⊢_⇀⟦_⟧ᵇ_ = IdSTS} {_⊢_⇀⦇_,GOV⦈_}
```
-->

*Informally*.

Let `p : ``GovProposal`{.AgdaRecord} be a governance proposal whose
`action`{.AgdaField} is a `ChangePParams`{.AgdaInductiveConstructor} action carrying
the parameter update `pu : ``PParamsUpdate`{.AgdaField}.  If the `GOV`{.AgdaDatatype}
rule accepts `p`, then the set `updateGroups`{.AgdaField}` pu` is nonempty.[^1]

*Formally*.

```agda
ChangePPHasGroup :
  {Γ     : GovEnv}
  {k     : ℕ}
  {s s'  : GovState}
  {p     : GovProposal}
  {pu    : PParamsUpdate}
  → (Γ , k) ⊢ s ⇀⦇ inj₂ p ,GOV⦈ s'
  → GovActionOf p ≡ ⟦ ChangePParams , pu ⟧ᵍᵃ
  → updateGroups pu ≢ ∅
```

*Proof*.

A proposal signal can only be consumed by `GOV-Propose`{.AgdaInductiveConstructor},
whose first premise is `actionWellFormed`{.AgdaFunction}` a` for the proposed action
`a`.  Substituting the hypothesis `a ≡ ⟦ ChangePParams , pu ⟧ᵍᵃ` makes that
premise reduce to `ppdWellFormed`{.AgdaFunction}` pu`, whose first component is the
claim.

```agda
ChangePPHasGroup (GOV-Propose (awf , _)) eq = subst actionWellFormed eq awf .proj₁
```

### Lifting to <span class="AgdaFunction">GOVS</span>

The same holds for every proposal in a list of signals accepted by
`GOVS`{.AgdaFunction}, the reflexive transitive closure of `GOV`{.AgdaDatatype} that
processes the governance signals of a single transaction.

The lift is an induction on the derivation: the step that consumes
`inj₂`{.AgdaInductiveConstructor}` p` is a `GOV`{.AgdaDatatype} step, to which the
previous result applies, and every other step is handled by the induction hypothesis.
The induction runs over `GOVS'`{.AgdaFunction}, the general indexed closure
`_⊢_⇀⟦_⟧ᵢ*'_`{.AgdaDatatype} of `GOV`{.AgdaDatatype}, since the index advances along
the trace.

```agda
ChangePPHasGroupᵢ :
  {Γ     : GovEnv}
  {k     : ℕ}
  {s s'  : GovState}
  {sigs  : List (GovVote ⊎ GovProposal)}
  {p     : GovProposal}
  {pu    : PParamsUpdate}
  → GOVS' (Γ , k) s sigs s'
  → inj₂ p ∈ˡ sigs
  → GovActionOf p ≡ ⟦ ChangePParams , pu ⟧ᵍᵃ
  → updateGroups pu ≢ ∅
ChangePPHasGroupᵢ (BS-base _) ()
ChangePPHasGroupᵢ (BS-ind st _) (here refl) eq = ChangePPHasGroup st eq
ChangePPHasGroupᵢ (BS-ind _ rest) (there mem) eq = ChangePPHasGroupᵢ rest mem eq
```

`GOVS`{.AgdaFunction} is that closure at index `0`, so the statement for
`GOVS`{.AgdaFunction} is an instance of the above.

```agda
GOVS-ChangePPHasGroup :
  {Γ     : GovEnv}
  {s s'  : GovState}
  {sigs  : List (GovVote ⊎ GovProposal)}
  {p     : GovProposal}
  {pu    : PParamsUpdate}
  → Γ ⊢ s ⇀⦇ sigs ,GOVS⦈ s'
  → inj₂ p ∈ˡ sigs
  → GovActionOf p ≡ ⟦ ChangePParams , pu ⟧ᵍᵃ
  → updateGroups pu ≢ ∅
GOVS-ChangePPHasGroup = ChangePPHasGroupᵢ
```

---

[^1]: The `GOV`{.AgdaDatatype} premise cannot be dropped.  Nothing stops a
      transaction body from listing a degenerate proposal whose update touches
      no parameter group; what rules such a proposal out is the premise
      `actionWellFormed`{.AgdaFunction} of the `GOV-Propose`{.AgdaInductiveConstructor}
      rule.  So the property is about proposals the ledger *accepts*, not proposals a
      transaction merely mentions.
