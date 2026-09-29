---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Leios.lagda.md
---

# Leios {#sec:leios}

This module defines the ledger-side building blocks of Ouroboros Leios
(CIP-0164): the stake-based voting committee and the certificate that attests a
quorum of committee votes for an endorser block (EB).

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Gov.Base using (GovStructure)

module Ledger.Dijkstra.Specification.Leios
  (gs : GovStructure) (open GovStructure gs) where

open import Ledger.Prelude
open import Ledger.Prelude.Numeric.UnitInterval
  using (UnitInterval; clamp; fromUnitInterval; ≤ᵘⁱ-DTO; _<ᵘⁱ_)
open import Ledger.Dijkstra.Specification.Certs gs

open import Data.List.Sort
import Data.Rational.Properties as ℚ
open import Data.Rational as ℚ using (ℚ)
open import Data.Refinement.Properties using (value-injective)
open import Relation.Binary.Bundles using (DecTotalOrder)
open import Relation.Binary.PropositionalEquality
  using ()
  renaming (sym to ≡-sym)
open import Relation.Binary.Definitions

open StakePoolState
```
-->

## Voting Committee

A committee seat holds a pool, its voting weight (the pool's fraction
of total active stake) and the pool's honoured voting key —
`nothing`{.AgdaInductiveConstructor} makes a *keyless* seat, which
counts for committee membership but can never sign.  The committee
maps each seat index (the `voter_id` of CIP-0164) to its seat.

```agda
record LeiosSeat : Type where
  field
    pool    : KeyHash
    weight  : UnitInterval
    key     : Maybe BlsVKey

LeiosCommittee : Type
LeiosCommittee = List LeiosSeat
```

<!--
```agda
open LeiosSeat

instance
  unquoteDecl HasCast-LeiosSeat = derive-HasCast
    [ (quote LeiosSeat , HasCast-LeiosSeat) ]
```
-->

A registered voting key is honoured until `maxKeyAge`{.AgdaFunction}
epochs after its registration: the KES key lifetime rounded up to
whole epochs, plus two epochs of activation delay (a registered key
enters the mark snapshot at the next boundary and the committee at the
one after).

```agda
maxKeyAge : Epoch
maxKeyAge = ℕtoEpoch ((MaxKESEvoᶜ * SlotsPerKESPeriodᶜ + SlotsPerEpochᶜ ∸ 1) / SlotsPerEpochᶜ + 2)
```

Expiry is judged against the epoch the committee is selected for, not
the epoch its stake snapshot was taken in: the seat's key comes from a
snapshot and may therefore have been registered several epochs ago.

```agda
honouredBlsKey : Epoch → Maybe (BlsVKey × Epoch) → Maybe BlsVKey
honouredBlsKey e nothing          = nothing
honouredBlsKey e (just (k , e'))  =
  if e < e' + maxKeyAge then just k else nothing
```

The committee for an epoch consists of the `leiosCommitteeSize`{.AgdaField}
pools with the most active stake, ties broken by ascending pool keyhash.

```agda
_≼_ : LeiosSeat → LeiosSeat → Type
ls₁ ≼ ls₂ = c₂ <ᵘⁱ c₁ ⊎ (c₁ ≡ c₂ × ls₁ .pool ≤ᵏʰ ls₂ .pool)
  where
    c₁ = ls₁ .weight
    c₂ = ls₂ .weight
```

<!--
```agda
private
  ≼-DTO : DecTotalOrder 0ℓ 0ℓ 0ℓ
  ≼-DTO = decTotalOrder (×-decTotalOrder ≥-decTotalOrder DTO-KeyHash)
                        (λ ls → ls .weight , ls .pool)
    where
      open import Relation.Binary.Construct.On using (decTotalOrder)
      open import Data.Product.Relation.Binary.Lex.NonStrict using (×-decTotalOrder)
      open import Relation.Binary.Properties.DecTotalOrder ≤ᵘⁱ-DTO using (≥-decTotalOrder)

  open DecTotalOrder ≼-DTO renaming (_≤_ to _≤DTO_) using ()

  ≼⇒≤DTO : ∀ {x y} → x ≼ y → x ≤DTO y
  ≼⇒≤DTO (inj₁ p)          = inj₁ (ℚ.<⇒≤ p , ℚ.<⇒≢ p ∘ ≡-sym)
  ≼⇒≤DTO (inj₂ (refl , q)) = inj₂ (refl , q)

  ≤DTO⇒≼ : ∀ {x y} → x ≤DTO y → x ≼ y
  ≤DTO⇒≼ {x} {y} (inj₁ (p , q))
    with ℚ.<-cmp (fromUnitInterval (y .weight)) (fromUnitInterval (x .weight))
  ... | tri< lt _ _  = inj₁ lt
  ... | tri≈ _ eq _  = ⊥-elim (q (≡-sym eq))
  ... | tri> _ _ gt  = ⊥-elim (ℚ.<-irrefl refl (ℚ.<-≤-trans gt p))
  ≤DTO⇒≼ (inj₂ (e , q)) = inj₂ (value-injective e , q)
```
-->

<!--
```agda
module _ (pp : PParams)
         (let open PParams pp using ( leiosCommitteeSize
                                    ; leiosHeaderPeriod; leiosVotingPeriod; leiosDiffusionPeriod )) where
```
-->

```agda
  selectCommittee : Epoch → (KeyHash ⇀ Coin) → Pools → LeiosCommittee
  selectCommittee e pd pools = take leiosCommitteeSize sortedLeiosSeats
    where
      totalStake : Coin
      totalStake = ∑[ c ← pd ] c

      poolDistr : KeyHash ⇀ UnitInterval
      poolDistr = mapValues (λ c → clamp (c /₀ totalStake)) pd

      allLeiosSeats : List LeiosSeat
      allLeiosSeats = map (λ (kh , w) → ⟦ kh , w , (if lookupᵐ? pools kh then (λ {spp} → honouredBlsKey e (spp .bls)) else nothing) ⟧)
                          (setToList (poolDistr ˢ))

      sortedLeiosSeats : List LeiosSeat
      sortedLeiosSeats = sort ≼-DTO allLeiosSeats
```

## Certification Delay

CIP-0164 admits a certificate only when the certifying block is at least
`⌈(3·L_hdr + L_vote + L_diff) / slotLength⌉` slots after the announcing block
([Step 5][cip-step5]).  `certificationDelay`{.AgdaFunction} computes that bound
from the protocol parameters: three header diffusion periods, the voting
period, and the additional diffusion period, summed in milliseconds and
converted to whole slots by `slotsFromDuration`{.AgdaField} through the genesis
slot length `SlotLengthᶜ`{.AgdaField}.  The conversion rounds up, since
rounding down would admit a certificate before the durations the security
argument relies on have elapsed.  The chain rule decides which block's
parameters the function is applied to.

```agda
  certificationDelay : Slot
  certificationDelay =
    slotsFromDuration (3 * leiosHeaderPeriod + leiosVotingPeriod + leiosDiffusionPeriod)
```

## Leios Certificates

An EB certificate (`eb_certificate` in CIP-0164's CDDL) stands in for a quorum
of votes on an EB announcement: the set of seat indices that signed (the CIP's
bitfield) and their aggregate BLS signature.  It is not a transaction certificate;
it travels in the body of the ranking block that certifies the EB.

```agda
record EBCert : Type where
  field
    signers  : ℙ ℕ
    sig      : BlsSig
```

<!--
```agda
instance
  unquoteDecl HasCast-EBCert = derive-HasCast
    [ (quote EBCert , HasCast-EBCert) ]

open EBCert
```
-->

A seat index is a position in the committee list, so the committee is also a map
from indices to seats; the keyed seats are those holding a key, and the stake a
set of signers carries is the sum of their weights.

```agda
seatMap : LeiosCommittee → ℕ ⇀ LeiosSeat
seatMap = go 0
  where
    go : ℕ → LeiosCommittee → ℕ ⇀ LeiosSeat
    go _ []        = ∅ᵐ
    go i (s ∷ ss)  = ❴ i , s ❵ᵐ ∪ˡ go (suc i) ss

keyedSeats : LeiosCommittee → ℕ ⇀ BlsVKey
keyedSeats cmt = mapMaybeWithKeyᵐ (λ _ s → s .key) (seatMap cmt)

signedStake : LeiosCommittee → ℙ ℕ → Coin
signedStake cmt signers = ∑[ w ← mapValues weight (seatMap cmt ∣ signers) ] w

totalActiveStake : (KeyHash ⇀ Coin) → Coin
totalActiveStake pd = ∑[ c ← pd ] c
```

A certificate is valid for a message, the hash of the announcing block's header,
when every signing seat holds a key (a keyless seat cannot sign), the aggregate
signature verifies under the set of those keys, and the signing seats' stake
meets the quorum threshold `τ` of the *total* active stake, not merely the
seated stake.

```agda
record ValidEBCert
  (cmt   : LeiosCommittee)
  (tot   : Coin)
  (τ     : UnitInterval)
  (msg   : Ser)
  (cert  : EBCert) : Type where
  field
    signersKeyed    : cert .signers ⊆ dom (keyedSeats cmt)
    validSignature  : isSignedByAggregate
                        (range (keyedSeats cmt ∣ cert .signers))
                        msg (cert .sig)
    quorum          : fromUnitInterval τ ℚ.* fromℚℕ tot ℚ.≤ fromℚℕ (signedStake cmt (cert .signers))
```

Of the five checks of CIP-0164's [Certificate Validation][cip-certval], the first
(conformance to the CDDL) is structural typing; the second is
`validSignature`{.AgdaField}; the third, that every signer is a committee member
able to sign, is `signersKeyed`{.AgdaField}; the fourth is `quorum`{.AgdaField};
and the fifth, that the message is the hash of the announcing header taken from
the chain context, is supplied by the block rule that applies the certificate,
through `msg`{.AgdaBound}.

[cip-step5]: https://github.com/cardano-foundation/CIPs/blob/master/CIP-0164/README.md#step-5-chain-inclusion
[cip-certval]: https://github.com/cardano-foundation/CIPs/blob/master/CIP-0164/README.md#certificate-validation
