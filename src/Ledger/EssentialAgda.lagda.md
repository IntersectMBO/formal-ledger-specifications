---
source_branch: master
source_path: src/EssentialAgda.lagda.md
---

# Agda Essentials {#sec:agda-essentials}

Here we describe some of the essential concepts and syntax of the Agda
programming language and proof assistant. The goal is to provide some
background for readers who are not already familiar with Agda, to help
them understand the other sections of the specification. For more
details, the reader is encouraged to consult the official
[Agda documentation](https://agda.readthedocs.io/en/latest/)
[Team24](#agda2024).

<!--
```agda
{-# OPTIONS --safe #-}

module Ledger.EssentialAgda where

open import Prelude using (Type)
open import Data.Nat
```
-->

## Record Types

A **record** is a product with named accessors for the individual fields. It
provides a way to define a type that groups together inhabitants of
other types.

**Example**.

```agda
record Pair (A B : Type) : Type where
  constructor ⦅_,_⦆
  field
    fst : A
    snd : B
```

We can construct an element of the type
`Pair`{.AgdaRecord} `ℕ`{.AgdaDatatype} `ℕ`{.AgdaDatatype} (i.e., a pair of natural
numbers) as follows:

```agda
p23 : Pair ℕ ℕ
p23 = record { fst = 2; snd = 3 }
```

Since our definition of the `Pair`{.AgdaRecord} type provides an (optional)
constructor `⦅_,_⦆`{.AgdaInductiveConstructor}, we could have defined
`p23`{.AgdaFunction} as follows:

```agda
_ : Pair ℕ ℕ
_ = ⦅ 2 , 3 ⦆
```

Finally, we can "update" a record by deriving from it a new record whose fields may
contain new values.  The syntax is best explained by way of example.

```agda
p24 : Pair ℕ ℕ
p24 = record p23 { snd = 4 }
```

This results a new record, `p24`{.AgdaRecord}, which denotes the pair
`⦅`{.AgdaInductiveConstructor} `2`{.AgdaNumber}
`,`{.AgdaInductiveConstructor} `4`{.AgdaNumber} `⦆`{.AgdaInductiveConstructor}.
See also [agda.readthedocs.io/record-types](https://agda.readthedocs.io/en/latest/language/record-types.html).

# References {#references .unnumbered}

**\[Team24\]** <span id="agda2024" label="agda2024"></span> Agda team.
*Agda 2.7.0 documentation*. 2024.
