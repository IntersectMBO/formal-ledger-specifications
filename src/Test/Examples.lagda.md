---
source_branch: master
source_path: src/Test/Examples.lagda.md
---

The "Examples" module aims to add a couple of example smart contract
validators written as part of the Cardano Formal Ledger Specification.
These validator scripts are functions that examine a transaction and decide
if the UTxO locked by their script can be spent as part of the current
transaction. 

<!--
```agda
{-# OPTIONS --safe #-}
module Test.Examples where

import Test.Examples.SucceedIfNumber
import Test.Examples.HelloWorld
```
-->

The first two examples, "SucceedIfNumber" and "HelloWorld" are very simple
scripts that allow their UTxO to be spent if the input is a number or
the string "Hello World", respectively. In each file are also defined
example transactions that are expected to succeed or fail, respectively.
These transactions are passed through the UTxO-step rule, which uses the
formal ledger specification to simulate an actual transaction on the
blockchain and tells us if said transaction succeeds or not. As part
of the UTxO rule, we also run the scripts locking any consumed outputs,
which in our case are the validator scripts.

The other examples are more in-depth and are separated across
multiple modules. 

```agda
import Test.Examples.MultiSig.Datum
import Test.Examples.MultiSig.Validator
import Test.Examples.MultiSig.Test.Trace
```

The "MultiSig" example is based on the Multi-Signature wallet smart
contract proposed in the seminal EUTxO paper by Chakravarty et. al.
It aims to simulate a wallet that has a certain number of authorized
signatories, of which a certain subset must sign before a payment
can be approved. Payments can also be cancelled if a deadline passes
before enough signatories can be gathered.

All examples after and including this one use the same structure:

A "Datum" file that defines the types of the Input and Redeemer for
our validator script. The Datum stores most of the stateful information
in our smart contract. In the case of MultiSig, that would include
if a payment is trying to be made, who the payment is for, and
who has already signed off on said payment. The Inputs, on the other hand,
are the "actions" that the script is allowed to take. This would include
proposing a payment, signing on a payment, cancelling the payment after
the deadline is passed, etc.

A "Validator" file where the actual script is defined, alongside any
helper functions needed. Generally, the validator script is a combination
of checks that depend on what the contract is trying to accomplish, such
as making sure we only allow authorized wallets to sign, or executing
payments only after enough signatories are gathered. The validators
use Symbolic Data in order to avoid cyclical definitions. The Symbolic
data is described in more detail in a separate module in this folder,
but translates almost directly into the same data types used by the
Formal Ledger Rules.

An "OffChain" folder, which defines the "endpoints" used to interact with
our account. Essentially, this defines a way to easily create a transaction
where we are attempting to execute one of the actions our validator
might allow. This includes various aspects, such as making sure the transaction 

is signed by the right person, that the correct fees are paid, that payments
are sent to the correct recipients, that the smart contract self-perpetuates, etc.

Finally, the "Trace" file in the "Test" folder contains some definitions that
allow us to systematically apply multiple transactions in sequence, as well
as a couple of example traces of such sequences being run. By making use
of the previously defined "OffChain" endpoints, we can create transactions
which can be similarly verified using the UTxO or UTxOw rules defined by
the ledger specification. To do this for a sequence of transactions, we
define an "evalTransactions" function which takes a list of transactions
and applies them sequentially, letting us know if they all succeed or
if there is an error along the way. Finally, we put together some example
traces by defining lists of transactions that are expected to either
succeed or fail, running our "evalTransactions" function on that list
and checking that we get the expected result.

We have a trace that puts the smart contract on the simulated ledger,
proposes a payment, adds the two required signatures, and then executes
a payment. This trace succeeds and is tested with both the UTxO and UTxOw
rules. We also have a failing trace, where after the first payment, we try
to propose another payment of a larger amount than is contained in the wallet,
which naturally fails.
 
```agda
import Test.Examples.AccountSim.Datum
import Test.Examples.AccountSim.Validator
import Test.Examples.AccountSim.Test.Trace
```

The "AccountSim" contract attempts to simulate an account-based system
on UTxO. It is a naive implementation which holds all accounts represented
as a list of pairs linking a Public Key Hash to its associated Value.

It is meant to have the generic abilities required of such a simulation:
opening/closing an account, depositing/withdrawing value from/to your account,
transferring value to some other account, and a cleanup function when there
are no accounts left to remove the UTxO from the blockchain.

The example traces attempt to test every individual endpoint at least once,
as well as a simple failing trace where we try to withdraw more than an
account has in it.


```agda
import Test.Examples.DEx.Datum
import Test.Examples.DEx.Validator
import Test.Examples.DEx.Test.Trace
```

The "DEx" contract is meant to implement a Limit Order Book
Distributed Exchange. It is primarily designed for exchanging
one currency for another at various rates, but the Token Algebra
for native tokens is currently incomplete. As such, the example
currently exchanges Ada for Ada. When multiple assets can be used,
the code can be easily modified to fulfill its full purpose.


```agda
import Test.Examples.MultiSigV2.Datum
import Test.Examples.MultiSigV2.Validator
import Test.Examples.MultiSigV2.Test.Trace
```

The second implementation of "MultiSig" is, at its core, the same
contract, but with some modifications made to aid the effort of
proving properties of the validator. Many of these changes were
primarily made in order to better integrate with the Thread Token
mechanism necessary for certain properties of UTxO-based smart
contracts. Due to similar problems to the distributed exchange,
tokens are not currently fully functional, so for now, it can
be viewed as an alternative implementation of the same specification.
