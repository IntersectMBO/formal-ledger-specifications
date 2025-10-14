<!--
```agda

{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Transaction
open import Ledger.Conway.Specification.Abstract

module Ledger.Conway.Specification.Chain.Properties.GovDepsMatch
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Conway.Specification.Certs govStructure
open import Ledger.Conway.Specification.Chain txs abs
open import Ledger.Conway.Specification.Enact govStructure
open import Ledger.Conway.Specification.Epoch txs abs
open import Ledger.Conway.Specification.Epoch.Properties.GovDepsMatch txs abs
open import Ledger.Conway.Specification.Ledger txs abs
open import Ledger.Conway.Specification.Ledger.Properties.Base txs abs
open import Ledger.Conway.Specification.Ledger.Properties.GovDepsMatch txs abs
open import Ledger.Prelude hiding (map) renaming (mapˢ to map)
open import Ledger.Conway.Specification.RewardUpdate txs abs

module _
  {b   : Block }
  {nes : NewEpochState}
  {cs  : ChainState}
  where
  open Block b; open ChainState cs
  open NewEpochState
  open EPOCH-Body (EpochStateOf cs) renaming (epsLState to csLState)
  open EnactState ens using (pparams)
  pp = pparams .proj₁
  open PParams pp using (maxRefScriptSizePerBlock)
```
-->

<a id="thm:ChainGovDepsMatch"></a>
**Theorem (`govDepsMatch`{.AgdaFunction} is invariant of `CHAIN`{.AgdaOperator} rule)**.

*Informally*.

Fix a `Block`{.AgdaRecord} `b`{.AgdaBound}, a `ChainState`{.AgdaRecord} `cs`{.AgdaBound},
and a `NewEpochState`{.AgdaRecord} `nes`{.AgdaBound}.
Let `csLState`{.AgdaFunction} be the ledger state of `cs`{.AgdaBound}.
Recall, a `ChainState`{.AgdaRecord} has just one field,
`newEpochState`{.AgdaField} : `NewEpochState`{.AgdaRecord}.
Consider the chain state `cs'`{.AgdaFunction} defined as follows:

```agda
  cs' : ChainState
  cs' .newEpochState =
    record nes {epochState  = record (EpochStateOf cs) {ls = LStateOf nes}}
```

That is `cs'`{.AgdaFunction} is essentially `nes`{.AgdaBound}, but
the `EpochState`{.AgdaRecord} field is set to the
`epochState`{.AgdaField} of `cs`{.AgdaBound} with the exception of the
`LState`{.AgdaRecord} field, which is set to that of `nes`{.AgdaBound}.
Let `utxoSt`{.AgdaBound} and `utxoSt'`{.AgdaBound} be the
respective `UTxOStates`{.AgdaRecord} of the ledger states of `cs`{.AgdaBound} and
`cs'`{.AgdaFunction}, respectively, and let `govSt`{.AgdaBound} and
`govSt'`{.AgdaBound} be their respective `GovStates`{.AgdaFunction}.
Assume the following conditions hold:

+  Let `removed'`{.AgdaFunction} : `ℙ`{.AgdaFunction}(`GovActionID`{.AgdaDatatype} × `GovActionState`{.AgdaDatatype}) be the union of

    + the governance actions in the `removed`{.AgdaField} field of the ratify state of `eps`{.AgdaBound}, and

    + the orphaned governance actions in the `GovState`{.AgdaFunction} of `eps`{.AgdaBound}.

    Let $\mathcal{G}$ be the set
    $\{$`GovActionDeposit`{.AgdaInductiveConstructor} `id`{.AgdaBound} :
    `id`{.AgdaBound} ∈ `proj₁`{.AgdaField} `removed'`{.AgdaFunction}$\}$.

    $\mathcal{G}$ is a subset of the set of deposits of the chain state `cs`{.AgdaBound};
    that is,

    `map`{.AgdaFunction} (`GovActionDeposit`{.AgdaInductiveConstructor} $∘$
    `proj₁`{.AgdaField}) `removed'`{.AgdaFunction} ⊆ `dom`{.AgdaFunction} (`DepositsOf`{.AgdaField} `cs`{.AgdaBound}).

+  The total reference script size of `csLState`{.AgdaFunction} is not
   greater than the maximum allowed size per block (as specified in `PParams`{.AgdaRecord}).

+  `cs`{.AgdaBound} `⇀⦇`{.AgdaDatatype} `b`{.AgdaBound} `,CHAIN⦈`{.AgdaDatatype} `cs'`{.AgdaFunction}.

Under these conditions, if the governance action deposits of `utxoSt`{.AgdaBound} equal
those of `govSt`{.AgdaBound}, then the same holds for `utxoSt'`{.AgdaBound} and `govSt'`{.AgdaBound}.
In other terms,

`govDepsMatch`{.AgdaFunction} `csLState`{.AgdaFunction} implies `govDepsMatch`{.AgdaFunction} `nesState`{.AgdaFunction}.

*Formally*.

```agda
  CHAIN-govDepsMatch :
    map (GovActionDeposit ∘ proj₁) removed' ⊆ dom (DepositsOf cs)
    →  totalRefScriptsSize csLState ts ≤ maxRefScriptSizePerBlock
    →  _ ⊢ cs ⇀⦇ b ,CHAIN⦈ cs'
    →  govDepsMatch csLState → govDepsMatch (LStateOf nes)
```

*Proof*.

```agda
  CHAIN-govDepsMatch rrm rss
      ( CHAIN ( x
              , TICK ((NEWEPOCH-New (_ , eps₁→eps₂)) , _)
              , BBODY-Block-Body (_ , _ , ledgers)
              )
      ) =
    RTC-preserves-inv LEDGER-govDepsMatch ledgers
     ∘ EPOCH-PROPS.EPOCH-govDepsMatch rrm eps₁→eps₂

  CHAIN-govDepsMatch rrm rss
      ( CHAIN ( x
              , TICK (NEWEPOCH-Not-New _ , _)
              , BBODY-Block-Body (_ , _ , ledgers)
              )
      ) =
    RTC-preserves-inv LEDGER-govDepsMatch ledgers

  CHAIN-govDepsMatch rrm rss
      ( CHAIN ( x
              , TICK (NEWEPOCH-No-Reward-Update (_ , eps₁→eps₂) , _)
              , BBODY-Block-Body (_ , _ , ledgers)
              )
      ) =
    RTC-preserves-inv LEDGER-govDepsMatch ledgers
     ∘ EPOCH-PROPS.EPOCH-govDepsMatch rrm eps₁→eps₂
```

