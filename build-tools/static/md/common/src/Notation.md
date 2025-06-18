# Notation {#sec:notation}

This section introduces some of the notation we use in this document and
in our Agda formalization.

## Propositions, Sets and Types

See [Sets & Maps](Ledger.Introduction.md#sec:sets-maps).
Note that Agda denotes the primitive notion of type by `Set`{.agdaprimitive}. To
avoid confusion, throughout this document and in our Agda code we call this primitive
`Type`{.agdaprimitive} and use `ℙ`{.agdafunction} for our set type.

## Lists

We use the notation 
`a`{.agdabound} `∷`{.agdainductiveconstructor} `as`{.agdabound} for
the list with *head* 
`a`{.agdabound} and *tail* `as`{.agdabound};
`[]`{.agdainductiveconstructor} denotes the empty list, and
`l`{.agdabound} `∷ʳ`{.agdafunction} `x`{.agdabound} appends the element
`x`{.agdabound} to the end of the list `l`{.agdabound}.

## Sums and Products

The *sum* (or disjoint union, coproduct, etc.) of `A`{.agdabound} and
`B`{.agdabound} is denoted by
`A`{.agdabound} `⊎`{.agdadatatype} `B`{.agdabound}, and their product
is denoted by `A`{.agdabound} `×`{.agdafunction} `B`{.agdabound}. The 
projection functions from products are denoted \fst{} and \snd{}, 
`proj₁`{.agdafield} and `proj₂`{.agdafield} and the injections are denoted
`inj₁`{.agdainductiveconstructor} and
`inj₂`{.agdainductiveconstructor}, respectively. The
property of being an element of a coproduct in the left (resp., right) component is called
`isInj₁`{.agdafunction} (resp., `isInj₂`{.agdafunction}).

## Addition of Map Values

The expression
`∑[`{.agdafunction}
`x`{.agdabound}
`←`{.agdafunction}
`m`{.agdafunction}
`]`{.agdafunction}
`f`{.agdafunction}
`x`{.agdabound}
denotes the sum of the values obtained by applying the function 
`f`{.agdafunction}
to the values of the map
`m`{.agdafunction}.

## Record types

These are explained in [Agda Essentials](EssentialAgda.md#sec:appendix-agda-essentials).

## Postfix Projections

Projections can be written using postfix notation. For example, we may
write 
`x`{.agdabound}
`.`{.agdasymbol}
`proj₁`{.agdafield}
instead of

`proj₁`{.agdafield}
`x`{.agdabound}

## Restriction, Corestriction and Complements

The restriction of a function or map
`f`{.agdabound}
to some domain 
`A`{.agdabound}
is denoted by 
`f`{.agdabound}
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
`m'`{.agdabound} is in the union if and only if the key is not in
`m`{.agdabound}.

## Map Addition

For maps 
`m`{.agdabound} and 
`m'`{.agdabound}, we write
`m`{.agdabound}
`∪⁺`{.agdafunction}
`m'`{.agdabound} 
for their *union*, where keys that appear
in both maps have their corresponding values added.

## Mapping a Partial Function.

A *partial function* is a function on 
`A`{.agdabound}
which may not be defined for all elements of 
`A`{.agdabound}. 
We denote such a function by
`f`{.agdabound} :
`A`{.agdabound} ⇀ 
`B`{.agdabound}.
If we happen to know that the function is
*total* (defined for all elements of 
`A`{.agdabound}), then we write
`f`{.agdabound} :
`A`{.agdabound} →
`B`{.agdabound}.

The 
`mapPartial`{.agdafunction}
operation takes such a function 
`f`{.agdabound}
and a set 
`S`{.agdabound}
of elements of 
`A`{.agdabound}
and applies 
`f`{.agdabound}
to the elements
of 
`S`{.agdabound}
at which it is defined; the result is the set

{
`f`{.agdabound}
`x`{.agdabound} ∣ 
`x`{.agdabound} ∈
`S`{.agdabound} and
`f`{.agdabound} is defined at 
`x`{.agdabound}
}.



## The Maybe Type

This type represents an optional value and can either be
`just`{.agdainductiveconstructor} `x`{.agdabound} (indicating the presence of a value, 
`x`{.agdabound}) or `nothing`{.agdainductiveconstructor} (indicating the absence of a value).

If `x`{.agdabound} has type `X`{.agdadatatype}, then
`just`{.agdainductiveconstructor} `x`{.agdabound} has type
`Maybe`{.agdadatatype} `X`{.agdadatatype}.

The symbol `~`{.agdadatatype} denotes (pseudo)equality of two values 
`x`{.agdabound} and `y`{.agdabound} of type
`Maybe`{.agdadatatype} `X`{.agdadatatype} : if `x`{.agdabound} is of the form
`just`{.agdainductiveconstructor} `x'`{.agdabound} and `y`{.agdabound} is
of the form `just`{.agdainductiveconstructor} `y'`{.agdabound}, then
`x'`{.agdabound} and  `y'`{.agdabound} have to be equal. Otherwise, they are
considered "equal."

## The Unit Type

`⊤`{.agdarecord} has a single inhabitant 
`tt`{.agdainductiveconstructor} and may be thought
of as a type that carries no information; it is useful for signifying the completion of an action, the
presence of a trivial value, a trivially satisfied requirement, etc.

## Superscripts and Other Special Notations {#sec:superscripts-other-special-notation}

In the current version of this specification, superscript letters are
sometimes used for things such as disambiguations or type conversions.
These are essentially meaningless, only present for technical reasons
and can safely be ignored. However there are the two exceptions:

- `∪ˡ`{.agdafunction} for left-biased union

- `ᶜ`{.agdafunction}in the context of set restrictions, where it indicates the complement

Also, non-letter superscripts do carry meaning.[^1]

[^1]: At some point in the future we hope to be able to remove all those non-essential superscripts. Since we prefer doing this by changing the Agda source code instead of via hiding them in this document, this is a non-trivial problem that will take some time to address.
