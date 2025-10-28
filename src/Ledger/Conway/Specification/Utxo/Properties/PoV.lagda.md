<!--
```agda

{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Abstract
open import Ledger.Conway.Specification.Transaction

module Ledger.Conway.Specification.Utxo.Properties.PoV
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs)
  where

open import Ledger.Conway.Specification.Certs govStructure
open import Ledger.Prelude
open import Ledger.Conway.Specification.Utxo txs abs
open import Ledger.Conway.Specification.Utxo.Properties.Base txs abs public
open UTxOState; open Tx; open TxBody
```
-->


**Lemma (The `UTXO`{.AgdaOperator} rule preserves value).**

*Informally*.

Let `s`{.AgdaBound} and `s'`{.AgdaBound} be `UTxOStates`{.AgdaRecord}, let
`tx`{.AgdaBound} : `Tx`{.AgdaRecord} be a fresh transaction with withdrawals
`txWithdrawals`{.AgdaBound}, and suppose
`s`{.AgdaBound} `⇀⦇`{.AgdaDatatype} `tx`{.AgdaBound} `,UTXO⦈`{.AgdaDatatype} `s'`{.AgdaBound}. If `tx`{.AgdaBound} is
valid.  Then the coin value of `s'`{.AgdaBound} is equal to the sum of
the coin values of `s`{.AgdaBound} and `txWithdrawals`{.AgdaBound}.
If `tx`{.AgdaBound} is not valid, then the coin values of `s`{.AgdaBound} and
`s'`{.AgdaBound} are equal.  We can express this concisely as follows:

<!--
`getCoin`{.AgdaField} `s`{.AgdaBound} + `getCoin`{.AgdaField} `txWithdrawals`{.AgdaBound} ·
`χ`{.AgdaFunction} (`tx`{.AgdaBound} .`isValid`{.AgdaField}) `≡`{.AgdaSymbol} `getCoin`{.AgdaField} `s'`{.AgdaBound},
-->

<pre class="Agda"><a id="1867" href="Ledger.Prelude.HasCoin.html#178" class="Field">getCoin</a> <a id="1875" href="Ledger.Conway.Specification.Utxo.Properties.PoV.html#1775" class="Bound">s</a> <a id="1877" href="Class.HasAdd.Core.html#162" class="Field Operator">+</a> <a id="1879" href="Ledger.Prelude.HasCoin.html#178" class="Field">getCoin</a> <a id="1887" class="Symbol">(</a><a id="1888" href="Ledger.Conway.Specification.Certs.html#3679" class="Field">wdrlsOf</a> <a id="1896" href="Ledger.Conway.Specification.Utxo.Properties.PoV.html#1765" class="Bound">tx</a><a id="1898" class="Symbol">)</a> <a id="1900" href="Agda.Builtin.Nat.html#539" class="Primitive Operator">*</a> <a id="1902" href="Ledger.Conway.Specification.Utxo.Properties.html#13724" class="Function">χ</a> <a id="1904" class="Symbol">(</a><a id="1905" href="Ledger.Conway.Specification.Utxo.Properties.PoV.html#1765" class="Bound">tx</a> <a id="1908" class="Symbol">.</a><a id="1909" href="Ledger.Conway.Specification.Transaction.html#6540" class="Field">isValid</a><a id="1916" class="Symbol">)</a> <a id="1918" href="Agda.Builtin.Equality.html#150" class="Datatype Operator">≡</a> <a id="1920" href="Ledger.Prelude.HasCoin.html#178" class="Field">getCoin</a> <a id="1928" href="Ledger.Conway.Specification.Utxo.Properties.PoV.html#1777" class="Bound">s&#39;</a>
</pre>

where `χ`{.AgdaFunction} : `Bool`{.AgdaDatatype} → $\{0, 1\}$ is the *characteristic function*,
which returns 0 for false and 1 for true.

*Formally*.

```agda
UTXOpov : {Γ : UTxOEnv} {tx : Tx} {s s' : UTxOState}
  → TxIdOf tx ∉ mapˢ proj₁ (dom (UTxOOf s))
  → Γ ⊢ s ⇀⦇ tx ,UTXO⦈ s'
  → getCoin s + getCoin (WithdrawalsOf tx) * χ (tx .isValid) ≡ getCoin s'
```

*Proof*.

```agda

UTXOpov h' step@(UTXO-inductive⋯ _ Γ _ _ _ _ _ _ _ newBal noMintAda _ _ _ _ _ _ _ _ _ (Scripts-Yes (_ , _ , valid)))
  = pov-scripts step h' refl valid

UTXOpov h' step@(UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ (Scripts-No (_ , invalid)))
  = pov-no-scripts step h' invalid
```
