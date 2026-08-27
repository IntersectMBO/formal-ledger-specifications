---
source_branch: leios-main
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
open import Ledger.Prelude.Numeric.UnitInterval using (UnitInterval; fromUnitInterval)
open import Ledger.Dijkstra.Specification.Certs gs

open import Agda.Builtin.FromNat
open import Data.Rational as ℚ using (ℚ)
open import Data.Rational.Literals using (number)

open Number number renaming (fromNat to fromℚℕ)
```
-->

## Voting Committee

A committee seat holds a pool, its voting weight (the pool's active stake) and
the pool's honoured voting key — `nothing`{.AgdaInductiveConstructor} makes a
*keyless* seat, which counts for committee membership but can never sign.  The
committee maps each seat index (the `voter_id` of CIP-0164) to its seat.

```agda
record LeiosSeat : Type where
  field
    pool    : KeyHash
    weight  : Coin
    key     : Maybe BlsVKey

LeiosCommittee : Type
LeiosCommittee = ℕ ⇀ LeiosSeat
```

<!--
```agda
instance
  unquoteDecl HasCast-LeiosSeat = derive-HasCast
    [ (quote LeiosSeat , HasCast-LeiosSeat) ]
```
-->

A registered voting key is honoured until `BlsKeyMaxAgeᶜ`{.AgdaField} epochs
after its registration; expiry takes effect at an epoch boundary, so a
committee has a stable set of usable keys throughout its epoch.

```agda
honouredBlsKey : Epoch → Maybe BlsKeyState → Maybe BlsVKey
honouredBlsKey e nothing   = nothing
honouredBlsKey e (just k)  =
  if e < BlsKeyState.registered k + ℕtoEpoch BlsKeyMaxAgeᶜ then just (BlsKeyState.key k) else nothing
```

The committee for an epoch consists of the `leiosCommitteeSize`{.AgdaField}
pools with the most active stake, ties broken by ascending pool id.  Instead of
sorting, a pool's seat index is *defined* as the number of pools strictly ahead
of it in this order — a deterministic, order-invariant count.

```agda
module _ (pd : KeyHash ⇀ Coin) where

  -- x comes before y in committee order: more stake, or equal stake and smaller pool id
  _≺_ : KeyHash × Coin → KeyHash × Coin → Type
  (kh , c) ≺ (kh' , c') = c' < c ⊎ (c ≡ c' × kh <ᵏʰ kh')

  seatIndex : KeyHash × Coin → ℕ
  seatIndex x = lengthˢ (filterˢ (_≺ x) (pd ˢ))

selectCommittee : ℕ → Epoch → (KeyHash ⇀ Coin) → Pools → LeiosCommittee
selectCommittee nc e pd pools =
  setToMap (mapˢ (λ x → seatIndex pd x , mkSeat x) (filterˢ (λ x → seatIndex pd x < nc) (pd ˢ)))
  where
    mkSeat : KeyHash × Coin → LeiosSeat
    mkSeat (kh , c) = ⟦ kh , c , honouredBlsKey e (poolBlsKey pools kh) ⟧
```

## Leios Certificates

A certificate stands in for a quorum of votes on an EB announcement: the set of
seat indices that signed (the bitfield of CIP-0164) and their aggregate BLS
signature.

```agda
record LeiosCert : Type where
  field
    signers  : ℙ ℕ
    sig      : BlsSig
```

<!--
```agda
instance
  unquoteDecl HasCast-LeiosCert = derive-HasCast
    [ (quote LeiosCert , HasCast-LeiosCert) ]

open LeiosSeat
open LeiosCert
```
-->

```agda
keyedSeats : LeiosCommittee → ℕ ⇀ BlsVKey
keyedSeats = mapMaybeWithKeyᵐ λ _ s → s .key

signedStake : LeiosCommittee → ℙ ℕ → Coin
signedStake cmt signers = ∑[ w ← mapValues weight (cmt ∣ signers) ] w

totalActiveStake : (KeyHash ⇀ Coin) → Coin
totalActiveStake pd = ∑[ c ← pd ] c
```

A certificate is valid for a message (the hash of the announcing block header)
iff every signing seat holds an honoured key, the aggregate signature verifies
under those keys, and the signing seats' stake meets the quorum threshold of
the *total* active stake — not merely the seated stake.

```agda
record ValidLeiosCert
  (cmt   : LeiosCommittee)
  (tot   : Coin)
  (τ     : UnitInterval)
  (msg   : Ser)
  (cert  : LeiosCert) : Type where
  field
    signersKeyed    : cert .signers ⊆ dom (keyedSeats cmt)
    validSignature  : isSignedByAggregate
                        (map proj₂ (setToList ((keyedSeats cmt ∣ cert .signers) ˢ)))
                        msg (cert .sig)
    quorum          : fromUnitInterval τ ℚ.* fromℚℕ tot ℚ.≤ fromℚℕ (signedStake cmt (cert .signers))
```

??? note "Deferred: block-level rules (CIP-0164 Step 5)"

    The chain-level integration is *not* yet part of this specification; the
    intended design, to be added on top of this module:

    + `BHBody`{.AgdaRecord} gains `announcedEb : Maybe (EBHash × ℕ)` and
      `certifiedEb : Bool`; the `Block`{.AgdaRecord} carries
      `Maybe LeiosCert`{.AgdaDatatype} and the *resolved* endorsed transactions.
    + `ChainState`{.AgdaRecord} remembers the previous block's announcement
      (EB hash, slot, header hash).
    + A `LEIOSCERT` rule checks — against the *pre-`TICK`* state, so the
      committee of the announcing block's epoch applies — header/body
      consistency (`certifiedEb ⇔ is-just cert`), the minimum inclusion delay
      `⌈ (3·L_hdr + L_vote + L_diff) / slotLength ⌉` and
      `ValidLeiosCert`{.AgdaRecord} with the announcing header's hash as
      message.
    + An `EBBODY` rule applies the endorsed transactions via `LEDGERS` to the
      pre-`TICK` ledger state in the announcing block's slot context, checking
      the announced EB hash and the per-EB limits
      (`leiosMaxEBTxsSize`{.AgdaField},
      `leiosMaxEBExUnits`{.AgdaField},
      `leiosMaxRefScriptSizePerEB`{.AgdaField}, non-emptiness).
    + `BBODY` requires an empty transaction list whenever a certificate is
      present (certificate and transactions are mutually exclusive in a
      ranking block).
