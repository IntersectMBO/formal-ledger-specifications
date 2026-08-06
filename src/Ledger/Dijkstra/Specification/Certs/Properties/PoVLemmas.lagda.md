# Per-Step Lemmas for the `CERT`{.AgdaDatatype} Preservation-of-Value Property

This module proves the single-certificate ingredients from which
`Certs.Properties.PoV`{.AgdaModule} assembles the `CERTS`{.AgdaDatatype}-level
value-accounting facts.  There are two kinds of ingredients:

+  **Transition lemmas** — for a single `CERT`{.AgdaDatatype} step:
   the rewards balance is unchanged (`CERT-rewards-pov`{.AgdaFunction});
   the deposit pots change by exactly the step's new deposit minus its refund,
   in the closed form used by the `UTXO`{.AgdaDatatype} batch balance
   (`CERT-deposits-pov`{.AgdaFunction}); the pool-deposit registration
   invariant is preserved (`CERT-deposits-registered`{.AgdaFunction}); and the
   registered-pool set evolves exactly as the `newCertDeposits`{.AgdaFunction}
   fold's internal accumulator predicts (`CERT-poolSet`{.AgdaFunction}).

+  **Fold lemmas** — pure facts about the deposit folds of `Certs`{.AgdaModule}:
   how `newCertDeposits`{.AgdaFunction} peels off its first certificate
   (`newCertDeposits-∷`{.AgdaFunction}), that it only depends on the pool set
   up to extensional equality (`newCertDeposits-cong`{.AgdaFunction}), and that
   `refundCertDeposits`{.AgdaFunction} distributes over concatenation
   (`refundCertDeposits-++`{.AgdaFunction}).

## Reasoning about the folds

`newCertDeposits`{.AgdaFunction} is a left fold whose accumulator is a *pair*:
the coin collected so far, and the set of pool keys regarded as registered so
far (`regpool`{.AgdaInductiveConstructor} charges `poolDeposit`{.AgdaField}
only for keys outside that set, and then adds the key to it).  The fold's
per-step function is local to `Certs`{.AgdaModule}, so the lemmas here speak
about it only through `newCertDeposits`{.AgdaFunction} itself.  Two devices
make this possible:

+  **Seed certificates.**  A fold state with coin component `d`{.AgdaBound} and
   pool set `P`{.AgdaBound} is definitionally the state reached by running the
   fold from `(0 , P)` over a single `delegate`{.AgdaInductiveConstructor} (or
   `regdrep`{.AgdaInductiveConstructor}) certificate carrying deposit
   `d`{.AgdaBound}.  The mutually recursive shift lemmas
   (`newCertDeposits-delegate`{.AgdaFunction},
   `newCertDeposits-regdrep`{.AgdaFunction}) exploit this: they extract such a
   head certificate's deposit as a summand, by induction on the tail,
   re-packing intermediate fold states as new head certificates (built from
   the fields already at hand — for a `regpool`{.AgdaInductiveConstructor}
   head, from `KeyHashObj`{.AgdaInductiveConstructor} of its key hash).

+  **Membership tests only.**  The fold consumes the pool set exclusively
   through the decidable test `kh ∈ P`, so extensionally equal pool sets yield
   equal deposits (`newCertDeposits-cong`{.AgdaFunction}); each
   `regpool`{.AgdaInductiveConstructor} case splits on the test on both sides.

`refundCertDeposits`{.AgdaFunction} folds a plain coin accumulator, so the same
seed-certificate device (with `dereg`{.AgdaInductiveConstructor} heads and no
set component) gives its shift lemma and `++`-distribution directly.

## The pool-set invariant in the per-step accounting

The deposit accounting of `CERT-deposits-pov`{.AgdaFunction} needs
`PoolDepositsRegistered`{.AgdaFunction} (see `Certs`{.AgdaModule}) in exactly
one place: `POOL-reg`{.AgdaInductiveConstructor} extends the pool-deposit pot
with a *left-biased* union, so the closed form counts `poolDeposit`{.AgdaField}
as added only if the key is genuinely fresh in the pot.  The rule's premise
makes the key fresh in `pools`{.AgdaField}; the invariant transports this
freshness to the pot.  The remaining rules either add through `_∪⁺_` (which
adds to the total unconditionally), remove an entry whose value the rule pins
down by a membership premise, or leave the pots untouched.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Gov.Base using (GovStructure)

module Ledger.Dijkstra.Specification.Certs.Properties.PoVLemmas
  (gs : GovStructure) (open GovStructure gs) where

open import Data.Nat.Properties using (+-assoc; +-comm; +-identityʳ)
open import Relation.Binary using (IsEquivalence)

open import Ledger.Prelude
open import Ledger.Dijkstra.Specification.Gov.Actions gs hiding (yes; no)
open import Ledger.Dijkstra.Specification.Certs gs

open import Axiom.Set.Properties th using (∪-cong; ≡ᵉ-isEquivalence)

open Equivalence
open PParams
open ≡-Reasoning

private module ≡ᵉ = IsEquivalence (≡ᵉ-isEquivalence {KeyHash})

private variable
  dCert : DCert
  Γ : CertEnv
  s s' : CertState
```
-->

## Fold lemmas for `refundCertDeposits`{.AgdaFunction}

The shift lemma extracts a `dereg`{.AgdaInductiveConstructor} head's deposit as
a summand; distribution over `_++_` follows by induction on the first list.

```agda
refundCertDeposits-dereg : ∀ (pp : PParams) c d cs
  → refundCertDeposits pp (dereg c d ∷ cs) ≡ d + refundCertDeposits pp cs
refundCertDeposits-dereg pp c d [] = sym (+-identityʳ d)
refundCertDeposits-dereg pp c d (dereg c' d' ∷ cs) =
  trans (refundCertDeposits-dereg pp c' (d + d') cs)
        (trans (+-assoc d d' _)
               (cong (d +_) (sym (refundCertDeposits-dereg pp c' d' cs))))
refundCertDeposits-dereg pp c d (deregdrep c' d' ∷ cs) =
  trans (refundCertDeposits-dereg pp c' (d + d') cs)
        (trans (+-assoc d d' _)
               (cong (d +_) (sym (refundCertDeposits-dereg pp c' d' cs))))
refundCertDeposits-dereg pp c d (delegate _ _ _ _ ∷ cs) = refundCertDeposits-dereg pp c d cs
refundCertDeposits-dereg pp c d (regpool _ _ ∷ cs)      = refundCertDeposits-dereg pp c d cs
refundCertDeposits-dereg pp c d (retirepool _ _ ∷ cs)   = refundCertDeposits-dereg pp c d cs
refundCertDeposits-dereg pp c d (regdrep _ _ _ ∷ cs)    = refundCertDeposits-dereg pp c d cs
refundCertDeposits-dereg pp c d (ccreghot _ _ ∷ cs)     = refundCertDeposits-dereg pp c d cs

refundCertDeposits-++ : ∀ (pp' : PParams) (xs ys : List DCert)
  → refundCertDeposits pp' (xs ++ ys)
  ≡ refundCertDeposits pp' xs + refundCertDeposits pp' ys
refundCertDeposits-++ pp [] ys = refl
refundCertDeposits-++ pp (dereg c d ∷ xs) ys =
  trans (refundCertDeposits-dereg pp c d (xs ++ ys))
        (trans (cong (d +_) (refundCertDeposits-++ pp xs ys))
               (trans (sym (+-assoc d _ _))
                      (cong (_+ refundCertDeposits pp ys)
                            (sym (refundCertDeposits-dereg pp c d xs)))))
refundCertDeposits-++ pp (deregdrep c d ∷ xs) ys =
  trans (refundCertDeposits-dereg pp c d (xs ++ ys))
        (trans (cong (d +_) (refundCertDeposits-++ pp xs ys))
               (trans (sym (+-assoc d _ _))
                      (cong (_+ refundCertDeposits pp ys)
                            (sym (refundCertDeposits-dereg pp c d xs)))))
refundCertDeposits-++ pp (delegate _ _ _ _ ∷ xs) ys = refundCertDeposits-++ pp xs ys
refundCertDeposits-++ pp (regpool _ _ ∷ xs) ys      = refundCertDeposits-++ pp xs ys
refundCertDeposits-++ pp (retirepool _ _ ∷ xs) ys   = refundCertDeposits-++ pp xs ys
refundCertDeposits-++ pp (regdrep _ _ _ ∷ xs) ys    = refundCertDeposits-++ pp xs ys
refundCertDeposits-++ pp (ccreghot _ _ ∷ xs) ys     = refundCertDeposits-++ pp xs ys
```

## Fold lemmas for `newCertDeposits`{.AgdaFunction}

The mutually recursive shift lemmas (see the module preamble for the
seed-certificate device):

```agda
newCertDeposits-delegate : ∀ (pp : PParams) (P : ℙ KeyHash) c mvd mkh d cs
  → newCertDeposits pp P (delegate c mvd mkh d ∷ cs) ≡ d + newCertDeposits pp P cs

newCertDeposits-regdrep : ∀ (pp : PParams) (P : ℙ KeyHash) c d an cs
  → newCertDeposits pp P (regdrep c d an ∷ cs) ≡ d + newCertDeposits pp P cs

newCertDeposits-delegate pp P c mvd mkh d [] = sym (+-identityʳ d)
newCertDeposits-delegate pp P c mvd mkh d (delegate c' mvd' mkh' d' ∷ cs) =
  trans (newCertDeposits-delegate pp P c' mvd' mkh' (d + d') cs)
        (trans (+-assoc d d' _)
               (cong (d +_) (sym (newCertDeposits-delegate pp P c' mvd' mkh' d' cs))))
newCertDeposits-delegate pp P c mvd mkh d (regdrep c' d' an' ∷ cs) =
  trans (newCertDeposits-regdrep pp P c' (d + d') an' cs)
        (trans (+-assoc d d' _)
               (cong (d +_) (sym (newCertDeposits-regdrep pp P c' d' an' cs))))
newCertDeposits-delegate pp P c mvd mkh d (regpool kh x ∷ cs) with kh ∈? P
... | yes _ = newCertDeposits-delegate pp P c mvd mkh d cs
... | no  _ =
  trans (newCertDeposits-delegate pp (P ∪ ❴ kh ❵) c mvd mkh (d + pp .poolDeposit) cs)
        (trans (+-assoc d (pp .poolDeposit) _)
               (cong (d +_)
                     (sym (newCertDeposits-delegate pp (P ∪ ❴ kh ❵) c mvd mkh (pp .poolDeposit) cs))))
newCertDeposits-delegate pp P c mvd mkh d (dereg _ _ ∷ cs)      = newCertDeposits-delegate pp P c mvd mkh d cs
newCertDeposits-delegate pp P c mvd mkh d (retirepool _ _ ∷ cs) = newCertDeposits-delegate pp P c mvd mkh d cs
newCertDeposits-delegate pp P c mvd mkh d (deregdrep _ _ ∷ cs)  = newCertDeposits-delegate pp P c mvd mkh d cs
newCertDeposits-delegate pp P c mvd mkh d (ccreghot _ _ ∷ cs)   = newCertDeposits-delegate pp P c mvd mkh d cs

newCertDeposits-regdrep pp P c d an [] = sym (+-identityʳ d)
newCertDeposits-regdrep pp P c d an (delegate c' mvd' mkh' d' ∷ cs) =
  trans (newCertDeposits-delegate pp P c' mvd' mkh' (d + d') cs)
        (trans (+-assoc d d' _)
               (cong (d +_) (sym (newCertDeposits-delegate pp P c' mvd' mkh' d' cs))))
newCertDeposits-regdrep pp P c d an (regdrep c' d' an' ∷ cs) =
  trans (newCertDeposits-regdrep pp P c' (d + d') an' cs)
        (trans (+-assoc d d' _)
               (cong (d +_) (sym (newCertDeposits-regdrep pp P c' d' an' cs))))
newCertDeposits-regdrep pp P c d an (regpool kh x ∷ cs) with kh ∈? P
... | yes _ = newCertDeposits-regdrep pp P c d an cs
... | no  _ =
  trans (newCertDeposits-regdrep pp (P ∪ ❴ kh ❵) c (d + pp .poolDeposit) an cs)
        (trans (+-assoc d (pp .poolDeposit) _)
               (cong (d +_)
                     (sym (newCertDeposits-regdrep pp (P ∪ ❴ kh ❵) c (pp .poolDeposit) an cs))))
newCertDeposits-regdrep pp P c d an (dereg _ _ ∷ cs)      = newCertDeposits-regdrep pp P c d an cs
newCertDeposits-regdrep pp P c d an (retirepool _ _ ∷ cs) = newCertDeposits-regdrep pp P c d an cs
newCertDeposits-regdrep pp P c d an (deregdrep _ _ ∷ cs)  = newCertDeposits-regdrep pp P c d an cs
newCertDeposits-regdrep pp P c d an (ccreghot _ _ ∷ cs)   = newCertDeposits-regdrep pp P c d an cs
```

`nextPools`{.AgdaFunction} is the one-certificate evolution of the fold's
registered-pool accumulator, and `newCertDeposits-∷`{.AgdaFunction} peels the
first certificate off a run of the fold: its deposit contribution is the
singleton-list value, and the tail is charged against the evolved pool set.

```agda
nextPools : ℙ KeyHash → DCert → ℙ KeyHash
nextPools P (regpool kh _) = if kh ∈ P then P else P ∪ ❴ kh ❵
nextPools P _              = P

newCertDeposits-∷ : ∀ (pp : PParams) (P : ℙ KeyHash) c cs
  → newCertDeposits pp P (c ∷ cs)
  ≡ newCertDeposits pp P (c ∷ []) + newCertDeposits pp (nextPools P c) cs
newCertDeposits-∷ pp P (delegate c mvd mkh d) cs = newCertDeposits-delegate pp P c mvd mkh d cs
newCertDeposits-∷ pp P (regdrep c d an) cs       = newCertDeposits-regdrep pp P c d an cs
newCertDeposits-∷ pp P (dereg _ _) cs            = refl
newCertDeposits-∷ pp P (retirepool _ _) cs       = refl
newCertDeposits-∷ pp P (deregdrep _ _) cs        = refl
newCertDeposits-∷ pp P (ccreghot _ _) cs         = refl
newCertDeposits-∷ pp P (regpool kh x) cs with kh ∈? P
... | yes _ = refl
... | no  _ = newCertDeposits-delegate pp (P ∪ ❴ kh ❵) (KeyHashObj kh) nothing nothing (pp .poolDeposit) cs
```

The fold consumes the pool set only through membership tests, so it respects
extensional set equality:

```agda
newCertDeposits-cong : ∀ (pp : PParams) {P P' : ℙ KeyHash} cs
  → P ≡ᵉ P'
  → newCertDeposits pp P cs ≡ newCertDeposits pp P' cs
newCertDeposits-cong pp [] eq = refl
newCertDeposits-cong pp (delegate c mvd mkh d ∷ cs) eq =
  trans (newCertDeposits-delegate pp _ c mvd mkh d cs)
        (trans (cong (d +_) (newCertDeposits-cong pp cs eq))
               (sym (newCertDeposits-delegate pp _ c mvd mkh d cs)))
newCertDeposits-cong pp (regdrep c d an ∷ cs) eq =
  trans (newCertDeposits-regdrep pp _ c d an cs)
        (trans (cong (d +_) (newCertDeposits-cong pp cs eq))
               (sym (newCertDeposits-regdrep pp _ c d an cs)))
newCertDeposits-cong pp (dereg _ _ ∷ cs) eq      = newCertDeposits-cong pp cs eq
newCertDeposits-cong pp (retirepool _ _ ∷ cs) eq = newCertDeposits-cong pp cs eq
newCertDeposits-cong pp (deregdrep _ _ ∷ cs) eq  = newCertDeposits-cong pp cs eq
newCertDeposits-cong pp (ccreghot _ _ ∷ cs) eq   = newCertDeposits-cong pp cs eq
newCertDeposits-cong pp {P} {P'} (regpool kh x ∷ cs) eq with kh ∈? P | kh ∈? P'
... | yes _   | yes _    = newCertDeposits-cong pp cs eq
... | yes kh∈ | no  kh∉  = ⊥-elim (kh∉ (eq .proj₁ kh∈))
... | no  kh∉ | yes kh∈  = ⊥-elim (kh∉ (eq .proj₂ kh∈))
... | no  _   | no  _    =
  trans (newCertDeposits-delegate pp (P ∪ ❴ kh ❵) (KeyHashObj kh) nothing nothing (pp .poolDeposit) cs)
        (trans (cong (pp .poolDeposit +_)
                     (newCertDeposits-cong pp cs (∪-cong eq ≡ᵉ.refl)))
               (sym (newCertDeposits-delegate pp (P' ∪ ❴ kh ❵) (KeyHashObj kh) nothing nothing (pp .poolDeposit) cs)))
```

## Transition lemmas

Every `CERT`{.AgdaDatatype} step changes `dom (PoolsOf -)` exactly as
`nextPools`{.AgdaFunction} changes the fold's accumulator on that certificate;
the only non-trivial case is `POOL-reg`{.AgdaInductiveConstructor}, where the
rule's left-biased pool update adds precisely the new key
(`dom-∪ˡ-singleton`{.AgdaFunction}).

```agda
CERT-poolSet : Γ ⊢ s ⇀⦇ dCert ,CERT⦈ s'
  → nextPools (dom (PoolsOf s)) dCert ≡ᵉ dom (PoolsOf s')
CERT-poolSet (CERT-deleg (DELEG-delegate _))   = ≡ᵉ.refl
CERT-poolSet (CERT-deleg (DELEG-dereg _))      = ≡ᵉ.refl
CERT-poolSet (CERT-gov (GOVCERT-regdrep _))    = ≡ᵉ.refl
CERT-poolSet (CERT-gov (GOVCERT-deregdrep _))  = ≡ᵉ.refl
CERT-poolSet (CERT-gov (GOVCERT-ccreghot _))   = ≡ᵉ.refl
CERT-poolSet (CERT-pool POOL-retirepool)       = ≡ᵉ.refl
CERT-poolSet (CERT-pool (POOL-rereg {pools = pools} {kh = kh} regd))
  with kh ∈? dom pools
... | yes _ = ≡ᵉ.refl
... | no ¬r = ⊥-elim (¬r regd)
CERT-poolSet (CERT-pool (POOL-reg {pools = pools} {kh = kh} ¬regd))
  with kh ∈? dom pools
... | yes r = ⊥-elim (¬regd r)
... | no  _ = ≡ᵉ.sym (dom-∪ˡ-singleton pools)
```

A `CERT`{.AgdaDatatype} step preserves the rewards balance: a
`DELEG-delegate`{.AgdaInductiveConstructor} step inserts at most a zero-valued
account, a `DELEG-dereg`{.AgdaInductiveConstructor} step removes an account
that its premise pins at zero, and no other rule touches the rewards map.

```agda
CERT-rewards-pov : Γ ⊢ s ⇀⦇ dCert ,CERT⦈ s'
  → coinFromRewards s ≡ coinFromRewards s'
CERT-rewards-pov (CERT-deleg (DELEG-delegate {rwds = rwds} _)) =
  sym (∪ˡsingleton0≡ rwds)
CERT-rewards-pov (CERT-deleg (DELEG-dereg {rwds = rwds} (c0∈rwds , _))) =
  trans (getCoin-remove rwds c0∈rwds) (+-identityʳ _)
CERT-rewards-pov (CERT-pool _) = refl
CERT-rewards-pov (CERT-gov _)  = refl
```

A `CERT`{.AgdaDatatype} step preserves `PoolDepositsRegistered`{.AgdaFunction}:
only `POOL-reg`{.AgdaInductiveConstructor} touches the pool-deposit pot or the
pool set, and it extends both by exactly the same key.

```agda
CERT-deposits-registered : PoolDepositsRegistered s
  → Γ ⊢ s ⇀⦇ dCert ,CERT⦈ s'
  → PoolDepositsRegistered s'
CERT-deposits-registered reg (CERT-deleg (DELEG-delegate _))  = reg
CERT-deposits-registered reg (CERT-deleg (DELEG-dereg _))     = reg
CERT-deposits-registered reg (CERT-gov (GOVCERT-regdrep _))   = reg
CERT-deposits-registered reg (CERT-gov (GOVCERT-deregdrep _)) = reg
CERT-deposits-registered reg (CERT-gov (GOVCERT-ccreghot _))  = reg
CERT-deposits-registered reg (CERT-pool POOL-retirepool)      = reg
CERT-deposits-registered reg (CERT-pool (POOL-rereg _))       = reg
CERT-deposits-registered reg (CERT-pool (POOL-reg {pools = pools} {kh = kh} {deposits = deps} ¬regd)) =
  λ a∈ → case from ∈-∪ (dom-∪ˡ-singleton deps .proj₁ a∈) of λ where
    (inj₁ h) → dom-∪ˡ-singleton pools .proj₂ (to ∈-∪ (inj₁ (reg h)))
    (inj₂ h) → dom-∪ˡ-singleton pools .proj₂ (to ∈-∪ (inj₂ h))
```

The per-step closed-form deposit accounting.  The new-deposit and refund
contributions of the singleton certificate list reduce by computation (after
splitting on the registration test for `regpool`{.AgdaInductiveConstructor}),
and the pot changes are handled by the coin lemmas of
`Ledger.Prelude`{.AgdaModule}: `getCoin-∪⁺-singleton`{.AgdaFunction} for the
`_∪⁺_` additions, `getCoin-remove`{.AgdaFunction} for the removals with
value-pinning premises, and `∪ˡsingleton∉dom`{.AgdaFunction} for
`POOL-reg`{.AgdaInductiveConstructor} (whose freshness is supplied by the
invariant, as explained in the preamble).

```agda
private
  +-pull-g : ∀ a p g d → a + p + g + d ≡ a + p + (g + d)
  +-pull-g a p g d = +-assoc (a + p) g d

  +-pull-p : ∀ a p g d → a + p + g + d ≡ a + (p + d) + g
  +-pull-p a p g d = begin
    a + p + g + d      ≡⟨ +-assoc (a + p) g d ⟩
    a + p + (g + d)    ≡⟨ cong ((a + p) +_) (+-comm g d) ⟩
    a + p + (d + g)    ≡˘⟨ +-assoc (a + p) d g ⟩
    a + p + d + g      ≡⟨ cong (_+ g) (+-assoc a p d) ⟩
    a + (p + d) + g    ∎

  +-pull-d : ∀ a p g d → a + p + g + d ≡ a + d + p + g
  +-pull-d a p g d = begin
    a + p + g + d      ≡⟨ +-pull-p a p g d ⟩
    a + (p + d) + g    ≡⟨ cong (λ z → a + z + g) (+-comm p d) ⟩
    a + (d + p) + g    ≡˘⟨ cong (_+ g) (+-assoc a d p) ⟩
    a + d + p + g      ∎

CERT-deposits-pov : PoolDepositsRegistered s
  → Γ ⊢ s ⇀⦇ dCert ,CERT⦈ s'
  → coinFromDeposits s  + newCertDeposits (PParamsOf Γ) (dom (PoolsOf s)) (dCert ∷ [])
  ≡ coinFromDeposits s' + refundCertDeposits (PParamsOf Γ) (dCert ∷ [])

CERT-deposits-pov _ (CERT-deleg {stᵖ = stᵖ} {stᵍ = stᵍ}
                     (DELEG-delegate {c = c} {d = d} {deposits = deps} _)) =
  begin
    getCoin deps + dᵖ + dᵍ + d                  ≡⟨ +-pull-d (getCoin deps) dᵖ dᵍ d ⟩
    getCoin deps + d + dᵖ + dᵍ                  ≡˘⟨ cong (λ z → z + dᵖ + dᵍ) (getCoin-∪⁺-singleton deps) ⟩
    getCoin (deps ∪⁺ ❴ c , d ❵) + dᵖ + dᵍ       ≡˘⟨ +-identityʳ _ ⟩
    getCoin (deps ∪⁺ ❴ c , d ❵) + dᵖ + dᵍ + 0   ∎
  where
  dᵖ = getCoin (DepositsOf stᵖ)
  dᵍ = getCoin (DepositsOf stᵍ)

CERT-deposits-pov _ (CERT-deleg {stᵖ = stᵖ} {stᵍ = stᵍ}
                     (DELEG-dereg {c = c} {d = d} {deposits = deps} (_ , cd∈))) =
  begin
    getCoin deps + dᵖ + dᵍ + 0                  ≡⟨ +-identityʳ _ ⟩
    getCoin deps + dᵖ + dᵍ                      ≡⟨ cong (λ z → z + dᵖ + dᵍ) (getCoin-remove deps cd∈) ⟩
    getCoin (deps ∣ ❴ c ❵ ᶜ) + d + dᵖ + dᵍ      ≡˘⟨ +-pull-d (getCoin (deps ∣ ❴ c ❵ ᶜ)) dᵖ dᵍ d ⟩
    getCoin (deps ∣ ❴ c ❵ ᶜ) + dᵖ + dᵍ + d      ∎
  where
  dᵖ = getCoin (DepositsOf stᵖ)
  dᵍ = getCoin (DepositsOf stᵍ)

CERT-deposits-pov reg (CERT-pool {pp = pp} {stᵈ = stᵈ} {stᵍ = stᵍ}
                       (POOL-reg {pools = pools} {kh = kh} {deposits = deps} ¬regd))
  with kh ∈? dom pools
... | yes regd = ⊥-elim (¬regd regd)
... | no  _    =
  begin
    dᵈ + getCoin deps + dᵍ + pp .poolDeposit
      ≡⟨ +-pull-p dᵈ (getCoin deps) dᵍ (pp .poolDeposit) ⟩
    dᵈ + (getCoin deps + pp .poolDeposit) + dᵍ
      ≡˘⟨ cong (λ z → dᵈ + z + dᵍ) (∪ˡsingleton∉dom deps (λ kh∈deps → ¬regd (reg kh∈deps))) ⟩
    dᵈ + getCoin (deps ∪ˡ ❴ kh , pp .poolDeposit ❵) + dᵍ
      ≡˘⟨ +-identityʳ _ ⟩
    dᵈ + getCoin (deps ∪ˡ ❴ kh , pp .poolDeposit ❵) + dᵍ + 0
      ∎
  where
  dᵈ = getCoin (DepositsOf stᵈ)
  dᵍ = getCoin (DepositsOf stᵍ)

CERT-deposits-pov _ (CERT-pool (POOL-rereg {pools = pools} {kh = kh} regd))
  with kh ∈? dom pools
... | yes _ = refl
... | no ¬r = ⊥-elim (¬r regd)

CERT-deposits-pov _ (CERT-pool POOL-retirepool) = refl

CERT-deposits-pov _ (CERT-gov {stᵈ = stᵈ} {stᵖ = stᵖ}
                     (GOVCERT-regdrep {d = d} {c = c} {deposits = deps} _)) =
  begin
    dᵈ + dᵖ + getCoin deps + d                  ≡⟨ +-pull-g dᵈ dᵖ (getCoin deps) d ⟩
    dᵈ + dᵖ + (getCoin deps + d)                ≡˘⟨ cong (λ z → dᵈ + dᵖ + z) (getCoin-∪⁺-singleton deps) ⟩
    dᵈ + dᵖ + getCoin (deps ∪⁺ ❴ c , d ❵)       ≡˘⟨ +-identityʳ _ ⟩
    dᵈ + dᵖ + getCoin (deps ∪⁺ ❴ c , d ❵) + 0   ∎
  where
  dᵈ = getCoin (DepositsOf stᵈ)
  dᵖ = getCoin (DepositsOf stᵖ)

CERT-deposits-pov _ (CERT-gov {stᵈ = stᵈ} {stᵖ = stᵖ}
                     (GOVCERT-deregdrep {c = c} {d = d} {deposits = deps} (_ , cd∈))) =
  begin
    dᵈ + dᵖ + getCoin deps + 0                  ≡⟨ +-identityʳ _ ⟩
    dᵈ + dᵖ + getCoin deps                      ≡⟨ cong (λ z → dᵈ + dᵖ + z) (getCoin-remove deps cd∈) ⟩
    dᵈ + dᵖ + (getCoin (deps ∣ ❴ c ❵ ᶜ) + d)    ≡˘⟨ +-pull-g dᵈ dᵖ (getCoin (deps ∣ ❴ c ❵ ᶜ)) d ⟩
    dᵈ + dᵖ + getCoin (deps ∣ ❴ c ❵ ᶜ) + d      ∎
  where
  dᵈ = getCoin (DepositsOf stᵈ)
  dᵖ = getCoin (DepositsOf stᵖ)

CERT-deposits-pov _ (CERT-gov (GOVCERT-ccreghot _)) = refl
```
