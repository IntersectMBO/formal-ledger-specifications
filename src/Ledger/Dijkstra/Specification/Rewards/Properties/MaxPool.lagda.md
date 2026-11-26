---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Rewards/Properties/MaxPool.lagda.md
---

# Properties of <span class="AgdaFunction">maxPool</span> {#sec:maxpool-properties}

This module proves properties of the `maxPool`{.AgdaFunction} function.  We
restate its definition as the module `MaxPoolFormula`{.AgdaModule} and prove the
properties for this local version of `maxPool`{.AgdaFunction}.  The two
definitions agree by `maxPool-unfold`{.AgdaFunction}.

<!--
```agda
{-# OPTIONS --safe #-}

open import Data.Integer using () renaming (+_ to pos)
open import Data.Rational using (ℚ; floor; _*_; _÷_; _/_; _-_; _⊓_)
                          renaming (_⊔_ to _⊔ℚ_; NonZero to NonZeroℚ)
import      Data.Rational as ℚ
import      Data.Rational.Properties as ℚ
open import Data.Rational.Literals using (number)
open import Data.Maybe using (maybe′)
open import Ledger.Dijkstra.Specification.Abstract
open import Ledger.Dijkstra.Specification.Transaction

open import Agda.Builtin.FromNat
open        Number number renaming (fromNat to fromℕ)

module Ledger.Dijkstra.Specification.Rewards.Properties.MaxPool
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs)
  where

open import Ledger.Dijkstra.Specification.Rewards txs abs hiding (maxPool)
import      Ledger.Dijkstra.Specification.Rewards txs abs as Rewards
open import Ledger.Prelude hiding (_/_; _*_; _-_; >-nonZero; _⊓_)
open import Ledger.Prelude.Numeric
open import stdlib.Data.Rational.Properties using (*-0≤⇒0≤; fromℕ-0≤)
import      Data.Nat as ℕ
import      Data.Nat.Properties as ℕ
import      Data.Nat.DivMod as ℕ
import      Data.Integer as ℤ
import      Data.Integer.Properties as ℤ
import      Data.Integer.DivMod as ℤ
open import Data.Nat.Coprimality using (coprime⇒gcd≡1; 1-coprimeTo)
open import Data.Nat.GCD using () renaming (gcd to gcdℕ)
open import Data.Sum using ([_,_]′)
open import Data.Rational.Solver using (module +-*-Solver)
open import Data.Irrelevant using () renaming ([_] to irr[_])
open import Data.Refinement using () renaming (_,_ to _,ʳ_)
```
-->

## The formula

The body of `maxPool`{.AgdaFunction} only depends on three protocol
parameters: `a0`{.AgdaField}, `nopt`{.AgdaField} and
`maxPledgeLeverage`{.AgdaField}.  We restate it as a module
parameterised by these three values and by the arguments `rewardPot`,
`stake` and `pledge`, so that its intermediate quantities can be
referred to in proofs.

```agda
module MaxPoolFormula (a0ₚ : ℚ) (noptₚ : ℕ) (maxLeverageFactor : Maybe ℚ)
                      (rewardPot : Coin) (stake pledge : UnitInterval) where
  a0    = 0 ⊔ℚ a0ₚ
  1+a0  = 1 + a0
  nopt  = 1 ⊔ noptₚ

  instance
    nonZero-nopt : NonZero nopt
    nonZero-nopt = nonZero-max-1 noptₚ

  z0       = 1 / nopt
  stake'   = fromUnitInterval stake ⊓ z0
  stake''  = maybe′ (λ l → stake' ⊓ (fromUnitInterval pledge * l))
                    stake'
                    maxLeverageFactor
  pledge'  = fromUnitInterval pledge ⊓ z0

  instance
    nonZeroz0 : NonZeroℚ z0
    nonZeroz0 = nonZero-1/n nopt

    nonZero-1+a0 : NonZeroℚ (1+a0)
    nonZero-1+a0 = nonZero-1+max0-x a0ₚ

  rewardℚ =  fromℕ rewardPot ÷ 1+a0
             *  (  stake'' + pledge' * a0
                  * ( stake'' - pledge' * (z0 - stake'') ÷ z0 )
                  ÷ z0
                )
  rewardℕ = posPart (floor rewardℚ)

maxPool : ℚ → ℕ → Maybe ℚ → Coin → UnitInterval → UnitInterval → Coin
maxPool a0ₚ noptₚ maxLeverageFactor rewardPot stake pledge =
  MaxPoolFormula.rewardℕ a0ₚ noptₚ maxLeverageFactor rewardPot stake pledge
```

The local definition of `maxPool`{.AgdaFunction} agrees with the one defined
in the `Rewards` module.

```agda
maxPool-unfold : ∀ pp rewardPot stake pledge
  → Rewards.maxPool pp rewardPot stake pledge
    ≡ maxPool (pp .PParams.a0) (pp .PParams.nopt) (pp .PParams.maxPledgeLeverage)
              rewardPot stake pledge
maxPool-unfold _ _ _ _ = refl
```

<!--
```agda
private
  posPart-floor : ∀ x → posPart (floor x) ≡ posPart (ℚ.↥ x ℤ./ℕ ℚ.↧ₙ x)
  posPart-floor x@record{} = cong posPart (ℤ.div-pos-is-/ℕ (ℚ.↥ x) (ℚ.↧ₙ x))

  posPart∘floor-mono : ∀ x y → x ℚ.≤ y → posPart (floor x) ℕ.≤ posPart (floor y)
  posPart∘floor-mono x@(ℚ.mkℚ ℤ.-[1+ a ] b _) y _ =
    begin
      posPart (floor x)                  ≡⟨ posPart-floor x ⟩
      posPart (ℤ.-[1+ a ] ℤ./ℕ ℕ.suc b)  ≡⟨ /ℕ-neg (ℕ.suc b) ⟩
      0                                  ≤⟨ ℕ.z≤n ⟩
      posPart (floor y)                  ∎
    where
      open ℕ.≤-Reasoning
      /ℕ-neg : ∀ d .⦃ _ : ℕ.NonZero d ⦄ → posPart (ℤ.-[1+ a ] ℤ./ℕ d) ≡ 0
      /ℕ-neg d with ℕ.suc a ℕ.% d
      ... | ℕ.suc _ = refl
      ... | ℕ.zero with ℕ.suc a ℕ./ d
      ...   | ℕ.zero  = refl
      ...   | ℕ.suc _ = refl
  posPart∘floor-mono x@(ℚ.mkℚ (ℤ.+ a) b _) y@(ℚ.mkℚ ℤ.-[1+ c ] d _) x≤y =
    ⊥-elim (ℚ.<-irrefl refl
      (begin-strict
         0  ≤⟨ ℚ.nonNegative⁻¹ x ⟩
         x  ≤⟨ x≤y ⟩
         y  <⟨ ℚ.negative⁻¹ y ⟩
         0  ∎))
    where open ℚ.≤-Reasoning
  posPart∘floor-mono x@(ℚ.mkℚ (ℤ.+ a) b _) y@(ℚ.mkℚ (ℤ.+ c) d _) x≤y =
    let open ℕ.≤-Reasoning in
    begin
      posPart (floor x)                        ≡⟨ posPart-floor x ⟩
      a ℕ./ ℕ.suc b                            ≡⟨ ℕ.m*n/o*n≡m/o a (ℕ.suc d) (ℕ.suc b) ⟨
      a ℕ.* ℕ.suc d ℕ./ (ℕ.suc b ℕ.* ℕ.suc d)  ≤⟨ ℕ./-monoˡ-≤ (ℕ.suc b ℕ.* ℕ.suc d) ad≤cb ⟩
      c ℕ.* ℕ.suc b ℕ./ (ℕ.suc b ℕ.* ℕ.suc d)  ≡⟨ ℕ./-congʳ {m = c ℕ.* ℕ.suc b} (ℕ.*-comm (ℕ.suc b) (ℕ.suc d)) ⟩
      c ℕ.* ℕ.suc b ℕ./ (ℕ.suc d ℕ.* ℕ.suc b)  ≡⟨ ℕ.m*n/o*n≡m/o c (ℕ.suc b) (ℕ.suc d) ⟩
      c ℕ./ ℕ.suc d                            ≡⟨ posPart-floor y ⟨
      posPart (floor y)                        ∎
    where
      ad≤cb : a ℕ.* ℕ.suc d ℕ.≤ c ℕ.* ℕ.suc b
      ad≤cb = ℤ.drop‿+≤+
        (begin
           ℤ.+ (a ℕ.* ℕ.suc d)      ≡⟨ ℤ.pos-* a (ℕ.suc d) ⟩
           ℤ.+ a ℤ.* ℤ.+ ℕ.suc d    ≤⟨ ℚ.drop-*≤* x≤y ⟩
           ℤ.+ c ℤ.* ℤ.+ ℕ.suc b    ≡⟨ ℤ.pos-* c (ℕ.suc b) ⟨
           ℤ.+ (c ℕ.* ℕ.suc b)      ∎)
        where open ℤ.≤-Reasoning
```
-->

## Properties

The properties are stated for `maxPool a0 nopt`, as a function of the
pledge-leverage parameter.

```agda
module MaxPoolProperties (a0ₚ : ℚ) (noptₚ : ℕ) where
```

<!--
```agda
  private
    open MaxPoolFormula a0ₚ noptₚ nothing 0 0ᵘⁱ 0ᵘⁱ
      using (a0; 1+a0; nopt; z0; nonZero-nopt; nonZeroz0; nonZero-1+a0)

    module F = MaxPoolFormula a0ₚ noptₚ

    0<z0 : 0 ℚ.< z0
    0<z0 = ℚ.positive⁻¹ z0 ⦃ ℚ.normalize-pos (suc zero) nopt ⦄

    0≤z0 : 0 ℚ.≤ z0
    0≤z0 = ℚ.<⇒≤ 0<z0

    0≤pledge' : ∀ p → 0 ℚ.≤ fromUnitInterval p ⊓ z0
    0≤pledge' p = ℚ.⊓-glb (fromUnitInterval-0≤ p) 0≤z0

    0≤a0 : 0 ℚ.≤ a0
    0≤a0 = ℚ.p≤p⊔q 0 a0ₚ

    0≤1/1+a0 : 0 ℚ.≤ ℚ.1/ 1+a0
    0≤1/1+a0 = ℚ.<⇒≤ (ℚ.positive⁻¹ _ ⦃ ℚ.1/pos⇒pos 1+a0
                 ⦃ ℚ.positive (ℚ.+-mono-<-≤ (ℚ.positive⁻¹ ℚ.1ℚ) 0≤a0) ⦄ ⦄)

    K : Coin → ℚ
    K rewardPot = fromℕ rewardPot ÷ 1+a0

    0≤K : ∀ rewardPot → 0 ℚ.≤ K rewardPot
    0≤K rewardPot = *-0≤⇒0≤ _ _ (fromℕ-0≤ rewardPot) 0≤1/1+a0

    ÷z0-mono : ∀ {x y} → x ℚ.≤ y → x ÷ z0 ℚ.≤ y ÷ z0
    ÷z0-mono = ℚ.*-monoʳ-≤-nonNeg (ℚ.1/ z0)
                 ⦃ ℚ.nonNegative (ℚ.<⇒≤ (ℚ.positive⁻¹ (ℚ.1/ z0) ⦃ ℚ.1/pos⇒pos z0 ⦃ ℚ.positive 0<z0 ⦄ ⦄)) ⦄

    rewardℕ-cong : ∀ m₁ m₂ R σ₁ σ₂ π
      → F.stake'' m₁ R σ₁ π ≡ F.stake'' m₂ R σ₂ π
      → F.rewardℕ m₁ R σ₁ π ≡ F.rewardℕ m₂ R σ₂ π
    rewardℕ-cong m₁ _ R σ₁ _ π =
      cong (λ s → posPart (floor (K R * (s + M.pledge' * a0 * (s - M.pledge' * (z0 - s) ÷ z0) ÷ z0))))
      where module M = MaxPoolFormula a0ₚ noptₚ m₁ R σ₁ π

    rewardℚ-monoˡ : ∀ m₁ m₂ R σ₁ σ₂ π
      → F.stake'' m₁ R σ₁ π ℚ.≤ F.stake'' m₂ R σ₂ π
      → F.rewardℚ m₁ R σ₁ π ℚ.≤ F.rewardℚ m₂ R σ₂ π
    rewardℚ-monoˡ m₁ m₂ R σ₁ σ₂ π s₁≤s₂ =
      ℚ.*-monoˡ-≤-nonNeg (K R) ⦃ ℚ.nonNegative (0≤K R) ⦄
        (begin
           M₁.stake'' + M₁.pledge' * a0 * (M₁.stake'' - M₁.pledge' * (z0 - M₁.stake'') ÷ z0) ÷ z0
             ≤⟨ ℚ.+-mono-≤ s₁≤s₂ (÷z0-mono (pa0* (ℚ.+-monoˡ-≤ _ s₁≤s₂))) ⟩
           M₂.stake'' + M₁.pledge' * a0 * (M₂.stake'' - M₁.pledge' * (z0 - M₁.stake'') ÷ z0) ÷ z0
             ≤⟨ ℚ.+-monoʳ-≤ M₂.stake'' (÷z0-mono (pa0* (ℚ.+-monoʳ-≤ M₂.stake'' (ℚ.neg-antimono-≤
                  (÷z0-mono (ℚ.*-monoˡ-≤-nonNeg M₁.pledge' ⦃ ℚ.nonNegative (0≤pledge' π) ⦄
                    (ℚ.+-monoʳ-≤ z0 (ℚ.neg-antimono-≤ s₁≤s₂)))))))) ⟩
           M₂.stake'' + M₁.pledge' * a0 * (M₂.stake'' - M₁.pledge' * (z0 - M₂.stake'') ÷ z0) ÷ z0
             ∎)
      where
        open ℚ.≤-Reasoning
        module M₁ = MaxPoolFormula a0ₚ noptₚ m₁ R σ₁ π
        module M₂ = MaxPoolFormula a0ₚ noptₚ m₂ R σ₂ π
        pa0* : ∀ {x y} → x ℚ.≤ y → M₁.pledge' * a0 * x ℚ.≤ M₁.pledge' * a0 * y
        pa0* = ℚ.*-monoˡ-≤-nonNeg (M₁.pledge' * a0) ⦃ ℚ.nonNegative (*-0≤⇒0≤ M₁.pledge' a0 (0≤pledge' π) 0≤a0) ⦄
```
-->

### Leverage cap as a stake cap

A leverage cap `l` is the same as capping the relative stake at `l` times the
pledge.  A pool without pledge gets nothing under a cap.

```agda
  module _ (l : ℚ) (0≤l : 0 ℚ.≤ l) where
    leverageCappedStake : UnitInterval → UnitInterval → UnitInterval
    leverageCappedStake σ pledge =
      fromUnitInterval σ ⊓ q
      ,ʳ irr[ ( ℚ.⊓-glb (fromUnitInterval-0≤ σ) (*-0≤⇒0≤ _ l (fromUnitInterval-0≤ pledge) 0≤l)
              , (begin
                   fromUnitInterval σ ⊓ q  ≤⟨ ℚ.p⊓q≤p _ q ⟩
                   fromUnitInterval σ      ≤⟨ proj₂ (fromUnitInterval-inUnitInterval σ) ⟩
                   1                       ∎) ) ]
      where
        open ℚ.≤-Reasoning
        q = fromUnitInterval pledge * l

    maxPool-leverage≡cap : ∀ rewardPot σ pledge
      → maxPool a0ₚ noptₚ (just l) rewardPot σ pledge
        ≡ maxPool a0ₚ noptₚ nothing rewardPot (leverageCappedStake σ pledge) pledge

    maxPool-noPledge : ∀ rewardPot σ
      → maxPool a0ₚ noptₚ (just l) rewardPot σ 0ᵘⁱ ≡ 0
```
<!--
```agda
    maxPool-leverage≡cap rewardPot σ pledge =
      rewardℕ-cong (just l) nothing rewardPot σ (leverageCappedStake σ pledge) pledge
           ( begin
               (s ⊓ z0) ⊓ q  ≡⟨ ℚ.⊓-assoc s z0 q ⟩
               s ⊓ (z0 ⊓ q)  ≡⟨ cong (s ⊓_) (ℚ.⊓-comm z0 q) ⟩
               s ⊓ (q ⊓ z0)  ≡⟨ ℚ.⊓-assoc s q z0 ⟨
               (s ⊓ q) ⊓ z0  ∎ )
      where
        open ≡-Reasoning
        s = fromUnitInterval σ
        q = fromUnitInterval pledge * l

    maxPool-noPledge rewardPot σ =
      begin
        maxPool a0ₚ noptₚ (just l) rewardPot σ 0ᵘⁱ
          ≡⟨ rewardℕ-cong (just l) nothing rewardPot σ 0ᵘⁱ 0ᵘⁱ
               (begin
                  (fromUnitInterval σ ⊓ z0) ⊓ (0 * l)
                    ≡⟨ cong ((fromUnitInterval σ ⊓ z0) ⊓_) (ℚ.*-zeroˡ l) ⟩
                  (fromUnitInterval σ ⊓ z0) ⊓ 0
                    ≡⟨ ℚ.p≥q⇒p⊓q≡q (ℚ.⊓-glb (fromUnitInterval-0≤ σ) 0≤z0) ⟩
                  0
                    ≡⟨ ℚ.p≤q⇒p⊓q≡p 0≤z0 ⟨
                  0 ⊓ z0
                    ∎) ⟩
        maxPool a0ₚ noptₚ nothing rewardPot 0ᵘⁱ 0ᵘⁱ
          ≡⟨ cong (λ x → posPart (floor (fromℕ rewardPot ÷ 1+a0 * (x + x * a0 * (x - x * (z0 - x) ÷ z0) ÷ z0))))
                  (ℚ.p≤q⇒p⊓q≡p 0≤z0) ⟩
        posPart (floor (fromℕ rewardPot ÷ 1+a0 * (0 + 0 * a0 * (0 - 0 * (z0 - 0) ÷ z0) ÷ z0)))
          ≡⟨ cong (λ x → posPart (floor (fromℕ rewardPot ÷ 1+a0 * (0 + x * (0 - 0 * (z0 - 0) ÷ z0) ÷ z0))))
                  (ℚ.*-zeroˡ a0) ⟩
        posPart (floor (fromℕ rewardPot ÷ 1+a0 * (0 + 0 * (0 - 0 * (z0 - 0) ÷ z0) ÷ z0)))
          ≡⟨ cong (λ x → posPart (floor (fromℕ rewardPot ÷ 1+a0 * (0 + x ÷ z0))))
                  (ℚ.*-zeroˡ (0 - 0 * (z0 - 0) ÷ z0)) ⟩
        posPart (floor (fromℕ rewardPot ÷ 1+a0 * (0 + 0 ÷ z0)))
          ≡⟨ cong (λ x → posPart (floor (fromℕ rewardPot ÷ 1+a0 * (0 + x))))
                  (ℚ.*-zeroˡ (ℚ.1/ z0)) ⟩
        posPart (floor (fromℕ rewardPot ÷ 1+a0 * 0))
          ≡⟨ cong (λ x → posPart (floor x)) (ℚ.*-zeroʳ (fromℕ rewardPot ÷ 1+a0)) ⟩
        0 ∎
      where
        open ≡-Reasoning
```
-->

### Non-binding cap

A leverage cap `l` does not bind when the relative stake, capped at the
saturation point `1/nopt`, is at most `l` times the relative pledge.  Such a cap
gives the same result as no cap.

```agda
  module _ (l : ℚ) (σ pledge : UnitInterval)
           (h : fromUnitInterval σ ⊓ (1 / (1 ⊔ noptₚ)) ⦃ nonZero-max-1 noptₚ ⦄
                ℚ.≤ fromUnitInterval pledge * l) where
    maxPool-nonbinding : ∀ rewardPot
      → maxPool a0ₚ noptₚ (just l) rewardPot σ pledge ≡ maxPool a0ₚ noptₚ nothing rewardPot σ pledge
```
<!--
```agda
    maxPool-nonbinding rewardPot =
      rewardℕ-cong (just l) nothing rewardPot σ σ pledge (ℚ.p≤q⇒p⊓q≡p h)
```
-->

### Monotonicity in the relative stake

```agda
  module _ (σ₁ σ₂ : UnitInterval)
           (σ₁≤σ₂ : fromUnitInterval σ₁ ℚ.≤ fromUnitInterval σ₂) where
    maxPool-mono-stake : ∀ maxLeverageFactor rewardPot pledge
      → maxPool a0ₚ noptₚ maxLeverageFactor rewardPot σ₁ pledge
        ℕ.≤ maxPool a0ₚ noptₚ maxLeverageFactor rewardPot σ₂ pledge
```
<!--
```agda
    maxPool-mono-stake maxLeverageFactor rewardPot pledge =
      posPart∘floor-mono _ _
        (rewardℚ-monoˡ maxLeverageFactor maxLeverageFactor rewardPot σ₁ σ₂ pledge
                       (stake''-mono maxLeverageFactor))
      where
        stake''-mono : ∀ m → F.stake'' m rewardPot σ₁ pledge ℚ.≤ F.stake'' m rewardPot σ₂ pledge
        stake''-mono nothing  = ℚ.⊓-monoˡ-≤ z0 σ₁≤σ₂
        stake''-mono (just l) = ℚ.⊓-monoˡ-≤ (fromUnitInterval pledge * l)
                                             (ℚ.⊓-monoˡ-≤ z0 σ₁≤σ₂)
```
-->

### A leverage cap never increases the result

```agda
  maxPool-cap-≤ : ∀ l rewardPot σ pledge
    → maxPool a0ₚ noptₚ (just l) rewardPot σ pledge ℕ.≤ maxPool a0ₚ noptₚ nothing rewardPot σ pledge
```
<!--
```agda
  maxPool-cap-≤ l rewardPot σ pledge =
    posPart∘floor-mono _ _
      (rewardℚ-monoˡ (just l) nothing rewardPot σ σ pledge
                     (ℚ.p⊓q≤p (fromUnitInterval σ ⊓ z0) (fromUnitInterval pledge * l)))
```
-->

### Monotonicity in the leverage cap

```agda
  module _ (l₁ l₂ : ℚ) (l₁≤l₂ : l₁ ℚ.≤ l₂) where
    maxPool-mono-cap : ∀ rewardPot σ pledge
      → maxPool a0ₚ noptₚ (just l₁) rewardPot σ pledge ℕ.≤ maxPool a0ₚ noptₚ (just l₂) rewardPot σ pledge
```
<!--
```agda
    maxPool-mono-cap rewardPot σ pledge =
      posPart∘floor-mono _ _
        (rewardℚ-monoˡ (just l₁) (just l₂) rewardPot σ σ pledge
          (ℚ.⊓-monoʳ-≤ (fromUnitInterval σ ⊓ z0)
            (ℚ.*-monoˡ-≤-nonNeg (fromUnitInterval pledge)
                                ⦃ ℚ.nonNegative (fromUnitInterval-0≤ pledge) ⦄ l₁≤l₂)))
```
-->

### Monotonicity in the reward pot

```agda
  module _ (R₁ R₂ : Coin) (R₁≤R₂ : R₁ ℕ.≤ R₂) where
    maxPool-mono-rewardPot : ∀ maxLeverageFactor σ pledge
      → maxPool a0ₚ noptₚ maxLeverageFactor R₁ σ pledge ℕ.≤ maxPool a0ₚ noptₚ maxLeverageFactor R₂ σ pledge
```
<!--
```agda
    maxPool-mono-rewardPot maxLeverageFactor σ pledge =
      let open ℕ.≤-Reasoning in
      [ (λ 0≤G → posPart∘floor-mono _ _
                   (ℚ.*-monoʳ-≤-nonNeg G ⦃ ℚ.nonNegative 0≤G ⦄
                     (ℚ.*-monoʳ-≤-nonNeg (ℚ.1/ 1+a0) ⦃ ℚ.nonNegative 0≤1/1+a0 ⦄ R₁≤R₂ℚ)))
      , (λ G≤0 → begin
                   posPart (floor M₁.rewardℚ)  ≤⟨ posPart∘floor-mono _ 0 (r₁≤0 G≤0) ⟩
                   0                   ≤⟨ ℕ.z≤n ⟩
                   posPart (floor M₂.rewardℚ)  ∎)
      ]′ (ℚ.≤-total 0 G)
      where
        module M₁ = MaxPoolFormula a0ₚ noptₚ maxLeverageFactor R₁ σ pledge
        module M₂ = MaxPoolFormula a0ₚ noptₚ maxLeverageFactor R₂ σ pledge

        G = M₁.stake'' + M₁.pledge' * a0 * (M₁.stake'' - M₁.pledge' * (z0 - M₁.stake'') ÷ z0) ÷ z0

        R₁≤R₂ℚ : fromℕ R₁ ℚ.≤ fromℕ R₂
        R₁≤R₂ℚ = ℚ.*≤*
          (begin
             ℤ.+ R₁ ℤ.* ℤ.+ 1  ≡⟨ ℤ.pos-* R₁ 1 ⟨
             ℤ.+ (R₁ ℕ.* 1)    ≤⟨ ℤ.+≤+ (ℕ.*-monoˡ-≤ 1 R₁≤R₂) ⟩
             ℤ.+ (R₂ ℕ.* 1)    ≡⟨ ℤ.pos-* R₂ 1 ⟩
             ℤ.+ R₂ ℤ.* ℤ.+ 1  ∎)
          where open ℤ.≤-Reasoning

        r₁≤0 : G ℚ.≤ 0 → M₁.rewardℚ ℚ.≤ 0
        r₁≤0 G≤0 =
          begin
            K R₁ * G  ≤⟨ ℚ.*-monoˡ-≤-nonNeg (K R₁) ⦃ ℚ.nonNegative (0≤K R₁) ⦄ G≤0 ⟩
            K R₁ * 0  ≡⟨ ℚ.*-zeroʳ (K R₁) ⟩
            0         ∎
          where open ℚ.≤-Reasoning
```
-->

### Saturation

Increasing the relative stake beyond the saturation point `z0 = 1/nopt` does not
change the result.

```agda
  module _ (σ₁ σ₂ : UnitInterval)
           (h₁ : (1 / (1 ⊔ noptₚ)) ⦃ nonZero-max-1 noptₚ ⦄ ℚ.≤ fromUnitInterval σ₁)
           (h₂ : (1 / (1 ⊔ noptₚ)) ⦃ nonZero-max-1 noptₚ ⦄ ℚ.≤ fromUnitInterval σ₂) where
    maxPool-saturated : ∀ maxLeverageFactor rewardPot pledge
      → maxPool a0ₚ noptₚ maxLeverageFactor rewardPot σ₁ pledge
        ≡ maxPool a0ₚ noptₚ maxLeverageFactor rewardPot σ₂ pledge
```
<!--
```agda
    maxPool-saturated maxLeverageFactor rewardPot pledge =
      rewardℕ-cong maxLeverageFactor maxLeverageFactor rewardPot σ₁ σ₂ pledge
        (cong (λ s → maybe′ (λ l → s ⊓ (fromUnitInterval pledge * l)) s maxLeverageFactor)
              (begin
                 fromUnitInterval σ₁ ⊓ z0  ≡⟨ ℚ.p≥q⇒p⊓q≡q h₁ ⟩
                 z0                        ≡⟨ ℚ.p≥q⇒p⊓q≡q h₂ ⟨
                 fromUnitInterval σ₂ ⊓ z0  ∎))
      where open ≡-Reasoning
```
-->

### Upper bound

The result never exceeds the reward pot.

```agda
  maxPool-≤-rewardPot : ∀ maxLeverageFactor rewardPot σ pledge
    → maxPool a0ₚ noptₚ maxLeverageFactor rewardPot σ pledge ℕ.≤ rewardPot
```
<!--
```agda
  maxPool-≤-rewardPot maxLeverageFactor R σ pledge =
    let open ℕ.≤-Reasoning in
    begin
      posPart (floor M.rewardℚ)          ≤⟨ posPart∘floor-mono _ _ r≤R ⟩
      posPart (floor (fromℕ R))  ≡⟨ posPart-floor (fromℕ R) ⟩
      ℕ._/_ R 1 ⦃ ℕ.nonZero ⦄    ≡⟨ ℕ.n/1≡n R ⟩
      R                          ∎
    where
      module M = MaxPoolFormula a0ₚ noptₚ maxLeverageFactor R σ pledge

      s≤z0 : ∀ m → F.stake'' m R σ pledge ℚ.≤ z0
      s≤z0 nothing  = ℚ.p⊓q≤q (fromUnitInterval σ) z0
      s≤z0 (just l) =
        begin
          (fromUnitInterval σ ⊓ z0) ⊓ (fromUnitInterval pledge * l)
            ≤⟨ ℚ.p⊓q≤p (fromUnitInterval σ ⊓ z0) (fromUnitInterval pledge * l) ⟩
          fromUnitInterval σ ⊓ z0
            ≤⟨ ℚ.p⊓q≤q (fromUnitInterval σ) z0 ⟩
          z0
            ∎
        where open ℚ.≤-Reasoning

      z0≤1 : z0 ℚ.≤ 1
      z0≤1 = ℚ.*≤*
        (begin
           ℚ.↥ z0 ℤ.* ℤ.+ 1             ≡⟨ cong (λ k → ℚ.↥ z0 ℤ.* ℤ.+ k) gcd≡1 ⟨
           ℚ.↥ z0 ℤ.* ℤ.+ gcdℕ 1 nopt   ≡⟨ ℚ.↥-normalize 1 nopt ⟩
           ℤ.+ 1                         ≤⟨ ℤ.+≤+ (ℕ.m≤m⊔n 1 noptₚ) ⟩
           ℤ.+ nopt                      ≡⟨ ℚ.↧-normalize 1 nopt ⟨
           ℚ.↧ z0 ℤ.* ℤ.+ gcdℕ 1 nopt   ≡⟨ cong (λ k → ℚ.↧ z0 ℤ.* ℤ.+ k) gcd≡1 ⟩
           ℚ.↧ z0 ℤ.* ℤ.+ 1             ≡⟨ ℤ.*-identityʳ _ ⟩
           ℚ.↧ z0                        ≡⟨ ℤ.*-identityˡ _ ⟨
           ℤ.+ 1 ℤ.* ℚ.↧ z0             ∎)
        where
          open ℤ.≤-Reasoning
          gcd≡1 = coprime⇒gcd≡1 (1-coprimeTo nopt)

      σ₀ : UnitInterval
      σ₀ = z0 ,ʳ irr[ (0≤z0 , z0≤1) ]

      r≤R : M.rewardℚ ℚ.≤ fromℕ R
      r≤R =
        begin
          M.rewardℚ
            ≤⟨ rewardℚ-monoˡ maxLeverageFactor nothing R σ σ₀ pledge
                 (begin
                    F.stake'' maxLeverageFactor R σ pledge  ≤⟨ s≤z0 maxLeverageFactor ⟩
                    z0                                       ≡⟨ ℚ.⊓-idem z0 ⟨
                    z0 ⊓ z0                                  ∎) ⟩
          F.rewardℚ nothing R σ₀ pledge
            ≡⟨ cong (λ x → K R * (x + M.pledge' * a0 * (x - M.pledge' * (z0 - x) ÷ z0) ÷ z0)) (ℚ.⊓-idem z0) ⟩
          K R * (z0 + M.pledge' * a0 * (z0 - M.pledge' * (z0 - z0) ÷ z0) ÷ z0)
            ≡⟨ cong (λ x → K R * (z0 + M.pledge' * a0 * (z0 - M.pledge' * x ÷ z0) ÷ z0)) (ℚ.+-inverseʳ z0) ⟩
          K R * (z0 + M.pledge' * a0 * (z0 - M.pledge' * 0 ÷ z0) ÷ z0)
            ≡⟨ cong (λ x → K R * (z0 + M.pledge' * a0 * (z0 - x ÷ z0) ÷ z0)) (ℚ.*-zeroʳ M.pledge') ⟩
          K R * (z0 + M.pledge' * a0 * (z0 - 0 ÷ z0) ÷ z0)
            ≡⟨ cong (λ x → K R * (z0 + M.pledge' * a0 * (z0 - x) ÷ z0)) (ℚ.*-zeroˡ (ℚ.1/ z0)) ⟩
          K R * (z0 + M.pledge' * a0 * (z0 - 0) ÷ z0)
            ≡⟨ cong (λ x → K R * (z0 + M.pledge' * a0 * x ÷ z0)) (ℚ.+-identityʳ z0) ⟩
          K R * (z0 + M.pledge' * a0 * z0 ÷ z0)
            ≡⟨ cong (λ x → K R * (z0 + x)) (ℚ.*-assoc (M.pledge' * a0) z0 (ℚ.1/ z0)) ⟩
          K R * (z0 + M.pledge' * a0 * (z0 * ℚ.1/ z0))
            ≡⟨ cong (λ x → K R * (z0 + M.pledge' * a0 * x)) (ℚ.*-inverseʳ z0) ⟩
          K R * (z0 + M.pledge' * a0 * 1)
            ≡⟨ cong (λ x → K R * (z0 + x)) (ℚ.*-identityʳ (M.pledge' * a0)) ⟩
          K R * (z0 + M.pledge' * a0)
            ≤⟨ ℚ.*-monoˡ-≤-nonNeg (K R) ⦃ ℚ.nonNegative (0≤K R) ⦄
                 (ℚ.+-monoʳ-≤ z0 (ℚ.*-monoʳ-≤-nonNeg a0 ⦃ ℚ.nonNegative 0≤a0 ⦄
                                    (ℚ.p⊓q≤q (fromUnitInterval pledge) z0))) ⟩
          K R * (z0 + z0 * a0)
            ≡⟨ cong (λ x → K R * (x + z0 * a0)) (ℚ.*-identityʳ z0) ⟨
          K R * (z0 * 1 + z0 * a0)
            ≡⟨ cong (K R *_) (ℚ.*-distribˡ-+ z0 1 a0) ⟨
          K R * (z0 * 1+a0)
            ≡⟨ solve 4 (λ r i z c → (r :* i) :* (z :* c) := (r :* z) :* (i :* c))
                     (λ {_ _ _ _} → refl) (fromℕ R) (ℚ.1/ 1+a0) z0 1+a0 ⟩
          fromℕ R * z0 * (ℚ.1/ 1+a0 * 1+a0)
            ≡⟨ cong (fromℕ R * z0 *_) (ℚ.*-inverseˡ 1+a0) ⟩
          fromℕ R * z0 * 1
            ≡⟨ ℚ.*-identityʳ _ ⟩
          fromℕ R * z0
            ≤⟨ ℚ.*-monoˡ-≤-nonNeg (fromℕ R) ⦃ ℚ.nonNegative (fromℕ-0≤ R) ⦄ z0≤1 ⟩
          fromℕ R * 1
            ≡⟨ ℚ.*-identityʳ _ ⟩
          fromℕ R
            ∎
        where
          open ℚ.≤-Reasoning
          open +-*-Solver
```
-->
