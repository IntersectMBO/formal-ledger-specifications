# Notation {#sec:notation}

This section introduces some of the notation we use in this document and
in our Agda formalization.

## Propositions, Sets and Types

See [Sets & Maps](Ledger.Introduction.md#sec:sets-maps).
Note that Agda denotes the primitive notion of type by `Set`{.AgdaPrimitive}. To
avoid confusion, throughout this document and in our Agda code we call this primitive
`Type`{.AgdaPrimitive} and use `ℙ`{.AgdaFunction} for our set type.

## Lists

We use the notation
`a`{.AgdaBound} `∷`{.AgdaInductiveConstructor} `as`{.AgdaBound} for
the list with *head*
`a`{.AgdaBound} and *tail* `as`{.AgdaBound};
`[]`{.AgdaInductiveConstructor} denotes the empty list, and
`l`{.AgdaBound} `∷ʳ`{.AgdaFunction} `x`{.AgdaBound} appends the element
`x`{.AgdaBound} to the end of the list `l`{.AgdaBound}.

## Sums and Products

The *sum* (or disjoint union, coproduct, etc.) of `A`{.AgdaBound} and
`B`{.AgdaBound} is denoted by
`A`{.AgdaBound} `⊎`{.AgdaDatatype} `B`{.AgdaBound}, and their product
is denoted by `A`{.AgdaBound} `×`{.AgdaFunction} `B`{.AgdaBound}. The
projection functions from products are denoted `proj₁`{.AgdaField} and
`proj₂`{.AgdaField} and the injections are denoted
`inj₁`{.AgdaInductiveConstructor} and
`inj₂`{.AgdaInductiveConstructor}, respectively. The
property of being an element of a coproduct in the left (resp., right) component is called
`isInj₁`{.AgdaFunction} (resp., `isInj₂`{.AgdaFunction}).

## Addition of Map Values

The expression
`∑[`{.AgdaFunction}
`x`{.AgdaBound}
`←`{.AgdaFunction}
`m`{.AgdaFunction}
`]`{.AgdaFunction}
`f`{.AgdaFunction}
`x`{.AgdaBound}
denotes the sum of the values obtained by applying the function
`f`{.AgdaFunction}
to the values of the map
`m`{.AgdaFunction}.

## Record types

These are explained in [Agda Essentials](EssentialAgda.md#sec:appendix-agda-essentials).

## Postfix Projections

Projections can be written using postfix notation. For example, we may
write
`x`{.AgdaBound}
`.`{.AgdaSymbol}
`proj₁`{.AgdaField}
instead of

`proj₁`{.AgdaField}
`x`{.AgdaBound}

## Restriction, Corestriction and Complements

The restriction of a function or map
`f`{.AgdaBound}
to some domain
`A`{.AgdaBound}
is denoted by
`f`{.AgdaBound}
`|`{.agdafunction}
`A`{.agdabound},
and the restriction to the complement of `A`{.agdabound} is written
`f`{.agdabound}
`|`{.agdafunction}
`A`{.agdabound}
`ᶜ`{.agdafunction}.

Corestriction or range restriction is
denoted similarly, except that `|`{.agdafunction} is replaced by
`∣^`{.agdafunction}.

## Inverse Image

The expression 
`m`{.agdabound}
`⁻¹`{.agdafunction}
`B`{.agdabound}
denotes the
*inverse image* of the set 
`B`{.agdabound} 
under the map 
`m`{.agdabound}.

## Left-biased Union

For maps 
`m`{.agdabound} and 
`m'`{.agdabound}, we write
`m`{.agdabound}
`∪ˡ`{.agdafunction}
`m'`{.agdabound} 
for their *left-biased union*. This means that
key-value pairs in 
`m`{.agdabound}
are guaranteed to be in the union, while a key-value pair in
`m'`{.AgdaBound} is in the union if and only if the key is not in
`m`{.AgdaBound}.

## Map Addition

For maps 
`m`{.AgdaBound} and 
`m'`{.AgdaBound}, we write
`m`{.AgdaBound}
`∪⁺`{.AgdaFunction}
`m'`{.AgdaBound} 
for their *union*, where keys that appear
in both maps have their corresponding values added.

## Mapping a Partial Function.

A *partial function* is a function on 
`A`{.AgdaBound}
which may not be defined for all elements of 
`A`{.AgdaBound}. 
We denote such a function by
`f`{.AgdaBound} :
`A`{.AgdaBound} ⇀ 
`B`{.AgdaBound}.
If we happen to know that the function is
*total* (defined for all elements of 
`A`{.AgdaBound}), then we write
`f`{.AgdaBound} :
`A`{.AgdaBound} →
`B`{.AgdaBound}.

The `mapPartial`{.AgdaFunction} operation takes such a function
`f`{.AgdaBound} and a set
`S`{.AgdaBound} of elements of
`A`{.AgdaBound} and applies
`f`{.AgdaBound} to the elements of
`S`{.AgdaBound} at which it is defined; the result is the set

{ `f`{.AgdaBound} `x`{.AgdaBound} ∣ `x`{.AgdaBound} ∈ `S`{.AgdaBound} and `f`{.AgdaBound} is defined at  `x`{.AgdaBound} }.

## The Maybe Type

This type represents an optional value and can either be
`just`{.AgdaInductiveConstructor} `x`{.AgdaBound} (indicating the presence of a value,
`x`{.AgdaBound}) or `nothing`{.AgdaInductiveConstructor} (indicating the absence of a value).

If `x`{.AgdaBound} has type `X`{.AgdaDatatype}, then
`just`{.AgdaInductiveConstructor} `x`{.AgdaBound} has type
`Maybe`{.AgdaDatatype} `X`{.AgdaDatatype}.

The symbol `~`{.AgdaDatatype} denotes (pseudo)equality of two values
`x`{.AgdaBound} and `y`{.AgdaBound} of type
`Maybe`{.AgdaDatatype} `X`{.AgdaDatatype} : if `x`{.AgdaBound} is of the form
`just`{.AgdaInductiveConstructor} `x'`{.AgdaBound} and `y`{.AgdaBound} is
of the form `just`{.AgdaInductiveConstructor} `y'`{.AgdaBound}, then
`x'`{.AgdaBound} and  `y'`{.AgdaBound} have to be equal. Otherwise, they are
considered "equal."

## The Unit Type

`⊤`{.AgdaRecord} has a single inhabitant
`tt`{.AgdaInductiveConstructor} and may be thought
of as a type that carries no information; it is useful for signifying the
completion of an action, the presence of a trivial value, a trivially
satisfied requirement, etc.

## Superscripts and Other Special Notations {#sec:superscripts-other-special-notation}

In the current version of this specification, superscript letters are
sometimes used for things such as disambiguations or type conversions.
These are essentially meaningless, only present for technical reasons
and can safely be ignored. However there are the two exceptions:

- `∪ˡ`{.AgdaFunction} for left-biased union

- `ᶜ`{.AgdaFunction} in the context of set restrictions, where it indicates the complement

Also, non-letter superscripts do carry meaning.[^1]

[^1]:  At some point in the future we hope to be able to remove all those
       non-essential superscripts. Since we prefer doing this by changing the Agda
       source code instead of via hiding them in this document, this is a non-trivial
       problem that will take some time to address.
