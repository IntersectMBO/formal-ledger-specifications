---
source_branch: master
source_path: src/Ledger/Conway/Specification/Certs/Properties/VoteDelegsVDeleg.lagda.md
---

## Theorem: <span class="AgdaField">voteDelegs</span> values point at registered <span class="AgdaFunction">DReps</span> {#clm:VDelegsInRegDReps}

<!--
```agda

{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Gov.Base

module Ledger.Conway.Specification.Certs.Properties.VoteDelegsVDeleg
  (gs : GovStructure) (open GovStructure gs)
  where

open import Ledger.Conway.Specification.Certs gs
open import Ledger.Prelude
open import Ledger.Conway.Specification.Gov.Actions gs

open import Data.List.Relation.Unary.Any using (here; there)

private variable
  Γ         : CertEnv
  s s'      : CertState
  stᵈ stᵈ'  : DState
  certs     : List DCert
  dCert     : DCert
  D D'      : ℙ Credential
  m         : VoteDelegs
  v         : VDeleg
```
-->

*Informally*.

A `CertState`{.AgdaRecord} has a `DState`{.AgdaRecord}, a `PState`{.AgdaRecord},
and a `GState`{.AgdaRecord}.  The `DState`{.AgdaRecord} contains a field
`voteDelegs`{.AgdaField}, a map sending the `Credential`{.AgdaDatatype} of a
delegator to the `VDeleg`{.AgdaDatatype} that receives its voting stake.  The
`GState`{.AgdaRecord} contains a field `dreps`{.AgdaField} whose domain is the set
of registered `DReps`{.AgdaFunction}.

`VDeleg`{.AgdaDatatype} has three constructors:
`vDelegCredential`{.AgdaInductiveConstructor}, which takes the
`Credential`{.AgdaDatatype} of a `DRep`, and the two constants
`vDelegAbstain`{.AgdaInductiveConstructor} and
`vDelegNoConfidence`{.AgdaInductiveConstructor}.  Call a `VDeleg`{.AgdaDatatype}
*active* for a set of credentials if it is one of those two constants or if it
wraps a credential from that set.

The property proved here asserts that no `CERTS`{.AgdaDatatype} step introduces a
vote delegation that is inactive for the registered `DReps`{.AgdaFunction}: if
every value of `voteDelegs`{.AgdaField} is active before the batch of
certificates, then so is every value after it.

The two rules that could break this maintain it themselves, in opposite ways.
`DELEG-delegate`{.AgdaInductiveConstructor} may only install a `VDeleg`{.AgdaDatatype}
that is already active, and `GOVCERT-deregdrep`{.AgdaInductiveConstructor}, which
*shrinks* the set of registered `DReps`{.AgdaFunction}, simultaneously deletes every
delegation to the credential it deregisters.

*Formally*.

```agda
activeVDelegs : ℙ Credential → ℙ VDeleg
activeVDelegs D =  mapˢ vDelegCredential D
                   ∪ fromList (vDelegNoConfidence ∷ vDelegAbstain ∷ [])

voteDelegsVDeleg : CertState → Type
voteDelegsVDeleg s = range (VoteDelegsOf s) ⊆ activeVDelegs (dom (DRepsOf s))

CERTS-voteDelegsVDeleg : LedgerInvariant _⊢_⇀⦇_,CERTS⦈_ voteDelegsVDeleg
```

*Proof*.

It is convenient to read the property off one entry at a time, so we name the pointwise
form and record that the two forms agree.

```agda
vDelegsIn : ℙ Credential → VoteDelegs → Type
vDelegsIn D m = ∀ {c v} → (c , v) ∈ m → v ∈ activeVDelegs D

⊆⇒vDelegsIn : (m : VoteDelegs) → range m ⊆ activeVDelegs D → vDelegsIn D m
⊆⇒vDelegsIn _ h cv∈ = h (∈-map′ cv∈)

vDelegsIn⇒⊆ : (m : VoteDelegs) → vDelegsIn D m → range m ⊆ activeVDelegs D
vDelegsIn⇒⊆ _ h v∈range with Equivalence.from ∈-map v∈range
... | _ , refl , cv∈ = h cv∈
```

The set of active `VDelegs`{.AgdaDatatype} grows with the set of credentials, and
the two constants are active for every set.

```agda
activeVDelegs-mono : D ⊆ D' → activeVDelegs D ⊆ activeVDelegs D'
activeVDelegs-mono D⊆D' v∈ with Equivalence.from ∈-∪ v∈
... | inj₂ v∈consts = Equivalence.to ∈-∪ (inj₂ v∈consts)
... | inj₁ v∈creds with Equivalence.from ∈-map v∈creds
... | c , refl , c∈D =
  Equivalence.to ∈-∪ (inj₁ (Equivalence.to ∈-map (c , refl , D⊆D' c∈D)))

abstain∈active : vDelegAbstain ∈ activeVDelegs D
abstain∈active = Equivalence.to ∈-∪ (inj₂ (Equivalence.to ∈-fromList (there (here refl))))

noConfidence∈active : vDelegNoConfidence ∈ activeVDelegs D
noConfidence∈active = Equivalence.to ∈-∪ (inj₂ (Equivalence.to ∈-fromList (here refl)))
```

**Lemma (`DELEG`{.AgdaDatatype} preserves the property)**.
The delegatee set is fixed throughout, so this is a statement about
`voteDelegs`{.AgdaField} alone.  The premise of
`DELEG-delegate`{.AgdaInductiveConstructor} says precisely that the installed
`VDeleg`{.AgdaDatatype} is active; `DELEG-dereg`{.AgdaInductiveConstructor} only
removes entries, and `DELEG-reg`{.AgdaInductiveConstructor} leaves
`voteDelegs`{.AgdaField} alone.

```agda
delegatee∈active :
  just v ∈ mapˢ (just ∘ vDelegCredential) D
           ∪ fromList (nothing ∷ just vDelegAbstain ∷ just vDelegNoConfidence ∷ [])
  → v ∈ activeVDelegs D
delegatee∈active mvd∈ with Equivalence.from ∈-∪ mvd∈
... | inj₁ ∈creds with Equivalence.from ∈-map ∈creds
... | c , refl , c∈D = Equivalence.to ∈-∪ (inj₁ (Equivalence.to ∈-map (c , refl , c∈D)))
delegatee∈active mvd∈ | inj₂ ∈consts with Equivalence.from ∈-fromList ∈consts
... | there (here refl)         = abstain∈active
... | there (there (here refl)) = noConfidence∈active
```

```agda
DELEG-vDelegsIn : ∀ {pp : PParams} {pools : Pools}
  → ⟦ pp , pools , D ⟧ ⊢ stᵈ ⇀⦇ dCert ,DELEG⦈ stᵈ'
  → vDelegsIn D (VoteDelegsOf stᵈ) → vDelegsIn D (VoteDelegsOf stᵈ')
DELEG-vDelegsIn (DELEG-delegate {mvd = nothing} _) h = h
DELEG-vDelegsIn (DELEG-delegate {mvd = just _} (_ , _ , mvd∈ , _)) h cv∈
  with Properties.∈-∪⁻ cv∈
... | inj₂ cv∈rest = h (proj₂ (Equivalence.from ∈-filter cv∈rest))
... | inj₁ cv∈new  =
  subst (_∈ activeVDelegs _)
        (sym (cong proj₂ (Equivalence.from ∈-singleton cv∈new)))
        (delegatee∈active mvd∈)
DELEG-vDelegsIn (DELEG-dereg _) h cv∈ = h (ex-⊆ cv∈)
DELEG-vDelegsIn (DELEG-reg _) h = h
```

**Lemma (`GOVCERT`{.AgdaDatatype} preserves the property)**.
`GOVCERT-regdrep`{.AgdaInductiveConstructor} only grows the domain of
`dreps`{.AgdaField}, so `activeVDelegs`{.AgdaFunction} only grows;
`GOVCERT-ccreghot`{.AgdaInductiveConstructor} touches neither field.  In the
`GOVCERT-deregdrep`{.AgdaInductiveConstructor} case a value `v`{.AgdaBound} of the
resulting map comes from the incoming map and, by the corestriction, differs from
`vDelegCredential`{.AgdaInductiveConstructor} `c`{.AgdaBound}.  If `v`{.AgdaBound}
is one of the two constants it stays active; otherwise `v`{.AgdaBound} is
`vDelegCredential`{.AgdaInductiveConstructor} `c'`{.AgdaBound} for some registered
`c'`{.AgdaBound}, and `c'`{.AgdaBound} `≢`{.AgdaFunction} `c`{.AgdaBound}, so
`c'`{.AgdaBound} is still registered after the deregistration.

```agda
GOVCERT-voteDelegsVDeleg : LedgerInvariant _⊢_⇀⦇_,GOVCERT⦈_ voteDelegsVDeleg
GOVCERT-voteDelegsVDeleg (GOVCERT-regdrep {dReps = dReps} _) h =
  activeVDelegs-mono (dom-insert-⊇ dReps) ∘ h
GOVCERT-voteDelegsVDeleg (GOVCERT-ccreghot _) h = h
GOVCERT-voteDelegsVDeleg (GOVCERT-deregdrep {c = c} {dReps = dReps} {vDelegs = vDelegs} _) h =
  vDelegsIn⇒⊆ (vDelegs ∣^ ❴ vDelegCredential c ❵ ᶜ) λ cv∈ →
    let v∉ , cv∈vd = coex-∈⁻ vDelegs cv∈ in
    reinstate v∉ (⊆⇒vDelegsIn vDelegs h cv∈vd)
  where
  -- A delegation to `c'` survives the deregistration of `c` because `c' ≢ c`: were they
  -- equal, `v` would be the very `vDelegCredential c` the corestriction ruled out.
  keep : ∀ {v c'} → v ∉ ❴ vDelegCredential c ❵ → v ≡ vDelegCredential c'
       → c' ∈ dom dReps → v ∈ activeVDelegs (dom (dReps ∣ ❴ c ❵ ᶜ))
  keep {c' = c'} v∉ v≡ c'∈dom = Equivalence.to ∈-∪ (inj₁ (Equivalence.to ∈-map
    ( c' , v≡
    , ∈-resᶜ-dom⁺ ( (λ c'∈ → v∉ (Equivalence.to ∈-singleton (trans v≡
                      (cong vDelegCredential (Equivalence.from ∈-singleton c'∈)))))
                  , Equivalence.from dom∈ c'∈dom ) )))

  reinstate : ∀ {v} → v ∉ ❴ vDelegCredential c ❵ → v ∈ activeVDelegs (dom dReps)
            → v ∈ activeVDelegs (dom (dReps ∣ ❴ c ❵ ᶜ))
  reinstate v∉ v∈ with Equivalence.from ∈-∪ v∈
  ... | inj₂ v∈consts = Equivalence.to ∈-∪ (inj₂ v∈consts)
  ... | inj₁ v∈creds  =
    let c' , v≡ , c'∈dom = Equivalence.from ∈-map v∈creds in keep v∉ v≡ c'∈dom
```

**Lemma (`CERT`{.AgdaDatatype} and `PRE-CERT`{.AgdaDatatype} preserve the property)**.
`CERT-pool`{.AgdaInductiveConstructor} touches neither field, and
`CERT-pre`{.AgdaInductiveConstructor} leaves `voteDelegs`{.AgdaField} alone while
refreshing `dreps`{.AgdaField} with a left-biased union that keeps every key.

```agda
CERT-voteDelegsVDeleg : LedgerInvariant _⊢_⇀⦇_,CERT⦈_ voteDelegsVDeleg
CERT-voteDelegsVDeleg (CERT-deleg {stᵈ = stᵈ} {stᵈ' = stᵈ'} deleg) h =
  vDelegsIn⇒⊆ (VoteDelegsOf stᵈ')
              (DELEG-vDelegsIn deleg (⊆⇒vDelegsIn (VoteDelegsOf stᵈ) h))
CERT-voteDelegsVDeleg (CERT-pool _) h = h
CERT-voteDelegsVDeleg (CERT-vdel govcert) h = GOVCERT-voteDelegsVDeleg govcert h

PRE-CERT-voteDelegsVDeleg : LedgerInvariant _⊢_⇀⦇_,PRE-CERT⦈_ voteDelegsVDeleg
PRE-CERT-voteDelegsVDeleg (CERT-pre {dReps = dReps} _) h =
  activeVDelegs-mono (dom-mapValueRestricted-⊇ dReps) ∘ h
```

A `CERTS`{.AgdaDatatype} step is a `PRE-CERT`{.AgdaDatatype} step followed by a
trace of `CERT`{.AgdaDatatype} steps, so the theorem follows by lifting the two
lemmas along the reflexive-transitive closure.

```agda
CERTS-voteDelegsVDeleg (run (pre , trace)) =
  RTC-preserves-inv CERT-voteDelegsVDeleg trace ∘ PRE-CERT-voteDelegsVDeleg pre
```
