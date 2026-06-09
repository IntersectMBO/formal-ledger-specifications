---
source_branch: master
source_path: src/Ledger/Conway/Specification/Properties.lagda.md
---

## Properties

This section presents the properties of the ledger that we have formally proved in
Agda or plan to do so in the near future.  We indicate in which Agda module each
property is formally stated and (possibly) proved. A "Claim" is a property that is
not yet proved, while a "Theorem" is one for which we have a formal proof.


<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Abstract
open import Ledger.Conway.Specification.Transaction

module Ledger.Conway.Specification.Properties
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where
open import Ledger.Conway.Specification.Certs govStructure
open import Ledger.Conway.Specification.Chain txs abs
open import Ledger.Conway.Specification.Enact govStructure
open import Ledger.Conway.Specification.Epoch txs abs
open import Ledger.Conway.Specification.Ledger txs abs
open import Ledger.Prelude
```
-->

### Preservation of Value

A key property of the ledger is that the total amount of coin in the system
remains constant as transactions are processed.  This is known as
"preservation of value" (PoV). 

There are several "preservation of value" proofs throughout this formal
specificaition.  These can be found in the following modules:

+  **Theorem** [LEDGER-PoV][]. The `LEDGER`{.AgdaDatatype} rule preserves value.

+  **Lemma** [UTXO-PoV][]. The `UTXO`{.AgdaDatatype} rule preserves value.

+  **Lemma** [CERTS-PoV][]. The `CERTS`{.AgdaDatatype} rule preserves value.

+  **Lemma** [CERT-PoV][]. The `CERT`{.AgdaDatatype} rule preserves value.


### Invariance Properties

To say that a predicate `P`{.AgdaBound} is an *invariant* of a transition rule
`R`{.AgdaBound} means the following: if the rule `R`{.AgdaBound} relates states
`s`{.AgdaBound} and `s'`{.AgdaBound} and if `P`{.AgdaBound} holds at state
`s`{.AgdaBound}, then `P`{.AgdaBound} holds at state `s'`{.AgdaBound}.

Here are two examples of invariance properties.

+  **Claim** [CredDepsEqualDomRwds][]. Equality of credential deposits is a
   `CHAIN`{.AgdaDatatype} invariant.

+  **Claim** [CHAIN-PParamsWellFormed-inv]. Well-formedness of `PParams`{.AgdaRecord} is a
   `CHAIN`{.AgdaDatatype} invariant.


### Matching Governance Action Deposits

Given a ledger state `s`{.AgdaBound}, we focus on deposits in the
`UTxOState`{.AgdaRecord} of `s`{.AgdaBound} that are
`GovActionDeposit`{.AgdaInductiveConstructor}s and we compare that set of
deposits with the `GovActionDeposit`{.AgdaInductiveConstructor}s of the
`GovState`{.AgdaDatatype} of `s`{.AgdaBound}.
When these two sets are the same, we write
`govDepsMatch`{.AgdaFunction} `s`{.AgdaBound} and say the
`govDepsMatch`{.AgdaFunction} relation holds for `s`{.AgdaBound}.
The formal definition of `govDepsMatch`{.AgdaFunction} is given
in [Ledger.Properties][].

The properties [ChainGovDepsMatch][], [LedgerGovDepsMatch][] and [EpochGovDepsMatch][]
assert that `govDepsMatch`{.AgdaFunction} is an invariant of the `CHAIN`{.AgdaDatatype},
`LEDGER`{.AgdaDatatype}, and `EPOCH`{.AgdaDatatype} rules, respectively.

+  **Theorem** [CHAIN-GovDepsMatch][]. `govDepsMatch`{.AgdaFunction} is invariant of `CHAIN`{.AgdaOperator} rule.

   That is, if `govDepsMatch`{.AgdaFunction} `s` and if
   `s` `⇀⦇`{.AgdaDatatype} `tx` `,CHAIN⦈`{.AgdaDatatype} `s'`, then `govDepsMatch`{.AgdaFunction} `s'`.

+  **Lemma** [LEDGER-GovDepsMatch][]. `govDepsMatch`{.AgdaFunction} is an invariant of the `LEDGER`{.AgdaDatatype} rule.

+  **Lemma** [EPOCH-GovDepsMatch][]. `govDepsMatch`{.AgdaFunction} is an invariant of the `EPOCH`{.AgdaDatatype} rule.

To be clear, the assertion that "the `govDepsMatch`{.AgdaFunction} relation is an invariant of the
`LEDGER`{.AgdaDatatype} rule" means the following:
if `govDepsMatch`{.AgdaFunction} `s`{.AgdaBound} and
`s`{.AgdaBound} `⇀⦇`{.AgdaDatatype} `tx`{.AgdaBound} `,LEDGER⦈`{.AgdaDatatype} `s'`{.AgdaBound},
then `govDepsMatch`{.AgdaFunction} `s'`{.AgdaBound}.


### Minimum Spending Condition

**Theorem** [UTXO-minspend][]. Let `s`{.AgdaBound} and `s'`{.AgdaBound} be UTxO states.
If `s`{.AgdaBound} `⇀⦇`{.AgdaDatatype} `tx`{.AgdaBound} `,UTXO⦈`{.AgdaDatatype} `s'`{.AgdaBound} and
if there are no refunds from deregistrations, then the coin consumed by
`tx`{.AgdaBound} is at least the sum of the governance action deposits of the
proposals in `tx`{.AgdaBound}.


### Other Miscellaneous Properties

+  **Claim** [Gov-ChangePPHasGroup][]. PParam updates have non-empty groups.

   Let `p`{.AgdaBound} : `GovProposal`{.AgdaRecord} be a governance proposal and
   suppose the `GovActionType`{.AgdaDatatype} of `p`{.AgdaBound}
   `.action`{.AgdaField} is `ChangePParams`{.AgdaInductiveConstructor}.  Moreover,
   suppose `pu`{.AgdaBound} is the data field of `p`{.AgdaBound}. Then the
   set `updateGroups`{.AgdaField} `pu`{.AgdaBound} is nonempty.


+  **Claim** `Gov.Properties.LastVoteApplied`.  A voter's vote is applied to the governance action.

   When a voter casts a vote on a governance action via the `GOV`{.AgdaDatatype} rule, that
   vote is recorded on the action in the resulting `GovState`{.AgdaFunction}.  Lifting to a
   block (the `GOVS`{.AgdaFunction} closure), the *last* vote a voter casts on a given action
   is the one recorded in the resulting state.

+  **Claim** [CHAIN-EpochStep][].  A new enact state occurs only in a new epoch.

   Let `cs`{.AgdaBound} and `cs'`{.AgdaBound} be `ChainStates`{.AgdaRecord} and
   `b`{.AgdaBound} a `Block`{.AgdaRecord}.  If `cs`{.AgdaBound} `⇀⦇`{.AgdaDatatype}
   `b`{.AgdaBound} `,CHAIN⦈`{.AgdaDatatype} `cs'`{.AgdaBound} and if the enact states
   of `cs`{.AgdaBound} and `cs'`{.AgdaBound} differ, then the epoch of the slot of
   `b`{.AgdaBound} is the successor of the last epoch of `cs`{.AgdaBound}.

+  **Claim** [NEWEPOCH-ConstRwds][].  Rewards are left unchanged by the `NEWEPOCH`{.AgdaOperator} rule.

   That is, if `es`{.AgdaBound} and `es'`{.AgdaBound} are two
   `NewEpochStates`{.AgdaRecord} such that `es`{.AgdaBound} `⇀⦇`{.AgdaDatatype}
   `e`{.AgdaBound} `,NEWEPOCH⦈`{.AgdaDatatype} `es'`{.AgdaBound}, then the rewards of
   `es`{.AgdaBound} and `es'`{.AgdaBound} are equal.

+  **Claim** [Epoch-NoPropSameDReps][]. The set of active `DReps`{.AgdaFunction} remains unchanged if
   there are no governance proposals.

   That is, if `es`{.AgdaBound} is a `NewEpochState`{.AgdaRecord}, and if the
   `GovState`{.AgdaFunction} of `es`{.AgdaBound} contains no governance proposals,
   then the set of `activeDReps`{.AgdaField} of `es`{.AgdaBound} in
   `Epoch`{.AgdaDatatype} `e`{.AgdaBound} is equal to the set of
   `activeDReps`{.AgdaField} of `es` in the next epoch.


+  **Claim** [Certs-VoteDelegsVDeleg][].

   Suppose we have a collection `C`{.AgdaBound} of credentials—for instance, given
   `d`{.AgdaBound} : `DState`{.AgdaDatatype}, take `C`{.AgdaBound} to be the domain
   of the `voteDelegs`{.AgdaField} field of `d`{.AgdaBound}.  Then the set of
   `VDelegs`{.AgdaDatatype} that results from applying
   `vDelegCredential`{.AgdaInductiveConstructor} to the domain of the
   `voteDelegs`{.AgdaField} of `d`{.AgdaBound} contains the range of the
   `voteDelegs`{.AgdaField} of `d`{.AgdaBound}.

---

## Transaction Validity

This section defines some of the types and functions we use to check the
validity of transactions and blocks of the Cardano blockchain.

Transaction validity is complicated. In the truest sense, a transaction
is valid if it is part of a valid block; i.e.,
`validTxIn₁`{.AgdaFunction} `s`{.AgdaBound} `tx`{.AgdaBound}, where
`s`{.AgdaBound} is a chain state and `tx`{.AgdaBound} is the transaction
in question. However, a transaction can also be seen as valid if it
could be applied at a certain slot (with no knowledge of an actual
block). This is closer to how the mempool sees transaction validity and
is expressed by `validTxIn₂`{.AgdaFunction}.

Note that these two are not equivalent and in fact there is no
implication between the two in either direction. Indeed,
`validTxIn₂`{.AgdaFunction} `=>` `validTxIn₁`{.AgdaFunction} would
require one to come up with a block, which we can't, while
`validTxIn₁`{.AgdaFunction} `=>` `validTxIn₂`{.AgdaFunction} may fail
since the transaction might depend on a previous transaction in the same
block.[^1]

```agda
isCredDeposit : DepositPurpose → Type
isCredDeposit (CredentialDeposit x) = ⊤
isCredDeposit _ = ⊥
```

<!--
```agda
instance
  isCredDeposit? : isCredDeposit ⁇¹
  isCredDeposit? {CredentialDeposit x} = ⁇ (yes tt)
  isCredDeposit? {PoolDeposit x} = ⁇ (no λ ())
  isCredDeposit? {DRepDeposit x} = ⁇ (no λ ())
  isCredDeposit? {GovActionDeposit x} = ⁇ (no λ ())
```
-->

```agda
isGADeposit : DepositPurpose → Type
isGADeposit (GovActionDeposit x) = ⊤
isGADeposit _ = ⊥
```

<!--
```agda
instance
  isGADeposit? : isGADeposit ⁇¹
  isGADeposit? {CredentialDeposit x} = ⁇ (no λ ())
  isGADeposit? {PoolDeposit x} = ⁇ (no λ ())
  isGADeposit? {DRepDeposit x} = ⁇ (no λ ())
  isGADeposit? {GovActionDeposit x} = ⁇ (yes tt)

instance
  _ : IsSet Block Tx
  _ = record { toSet = fromList ∘ Block.ts }

  _ : IsSet TxBody GovProposal
  _ = record { toSet = fromList ∘ TxBody.txGovProposals }
```
-->

```agda
validBlockIn : ChainState → Block → Type
validBlockIn s b = ∃[ s' ] _ ⊢ s ⇀⦇ b ,CHAIN⦈ s'

validBlock : Block → Type
validBlock b = ∃[ s ] validBlockIn s b

validTxIn₁ : ChainState → Tx → Type
validTxIn₁ s tx = ∃[ b ] tx ∈ b × validBlockIn s b
```

<!--
```agda
module _ (s : ChainState) (slot : Slot) where
  open ChainState s; open NewEpochState newEpochState
  open EpochState epochState; open EnactState es
```
-->

```agda
  private
    ledgerEnv = ⟦ slot , constitution .proj₁ .proj₂ , pparams .proj₁ , es , Acnt.treasury acnt ⟧

  validTxIn₂ : Tx → Type
  validTxIn₂ tx = ∃[ ls' ] ledgerEnv ⊢ ls ⇀⦇ tx ,LEDGER⦈ ls'

validTx₁ : Tx → Type
validTx₁ tx = ∃[ s ] validTxIn₁ s tx
```


[^1]: This could indicate that `validTxIn₂`{.AgdaFunction} should be
    changed so that it allows for applying a list of transactions before
    the final transaction; the downside would then be that the
    transaction isn't applied to the given state but to some
    intermediate one. We expect to have more insight into this matter
    once we have proved more theorems.
