---
source_path: build-tools/static/md/mkdocs/docs/Definitions.md
---

# Definitions {#sec:definitions}

To keep this site somewhat self-contained, we define some technical
terms that arise when defining and describing the Cardano blockchain and ledger.
This is not meant to be comprehensive and the reader may wish to consult
online resources to fill in any gaps. Here are a few such resources that
might be helpful.

-  <https://docs.cardano.org/>;

-  <https://cardano.org/docs/glossary#cardano-glossary>;

-  <https://www.ledger.com/academy/glossary>;

-  <https://www.essentialcardano.io/glossary>;

-  [(Re)introduction to Cardano][], by Eduardo Garrido and the Cardano community;

-  [Ouroboros Chronos blog post][], by Olga Hryniuk;

-  [Cardano Staking: How To Stake ADA][].


## Cardano Time Handling {#sec:cardano-time-handling}

For more details, see the [Time handling on Cardano][] section of <https://docs.cardano.org>.

In Cardano, the Ouroboros proof-of-stake (PoS) consensus protocol models
the passage of physical time as an infinite sequence of time slots and
epochs.

-   The actual time interval between blocks, or *block time*, is the
    slot length (in seconds) divided by the block coefficient f, which
    is the expected block frequency (blocks per second). For example, if
    f is 0.05, then on average 5% of slots contain blocks. If the slot
    length is 1 second, then the block time is 20 seconds.

-   An *epoch* is a period of time, containing some number of slots,
    used to select block-producing nodes. For example, in Shelley and
    later eras, an epoch consists of roughly 432,000 slots (or five days
    if we assume a slot length of 1 second).

-   The *genesis block* of Cardano was created on the 23rd of
    September 2017. As the first block in the blockchain, it set the
    foundation for the network, it does not reference any previous
    blocks, and it generated the initial supply of Ada.

-   A *slot* is a discrete time interval in which a single block may be
    produced; it is the fundamental time unit within the blockchain's
    consensus protocol. Slots should be long enough for a new block to
    have a good chance to reach the next slot leader in time. For
    example, the slot length in the Byron era was 20 seconds, while in
    Shelley and later eras it is 1 second. Not every slot results in a
    new block. Indeed, in any given slot, one or more block-producing
    nodes are nominated (probabilistically based on stake distribution)
    to be *slot leaders* and given the opportunity to produce a new
    block. For example, in Shelley and later eras, on average only 0.05
    of slots will produce a block (resulting in 20-second intervals
    between blocks). *Slot number* may refer to a slot's position within
    the current epoch or it may mean the absolute slot count since the
    genesis block. The context should make clear which meaning is
    intended.

The parameter values mentioned in the examples above,

-   block time = 20 seconds,

-   slot length = 1 second,

-   block coefficient = 0.05,

-   slots/epoch = 432,000,

are unlikely to change in the short-term. However, the longer term plan
is to replace the current Ouroboros protocol with Ouroboros Chronos,
which addresses timekeeping challenges by providing the first
high-resilience cryptographic time source based on blockchain technology
(see the [Ouroboros Chronos blog post][]).
