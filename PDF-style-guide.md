# PDF spec guidelines

The purpose of the PDF specs is to be readable by a wide range of people. They should not assume
- knowledge of specific (as opposed to general) concepts, notations or syntax or
- familiarity with another Cardano-specific resource, other than other specifications.

## Notation

We want to avoid syntax that is not commonly used outside of the
languages we use. While this is really inconvenient sometimes, the
more we use such notations the more we need to introduce them,
increasing the barrier to entry.

| Concept                                       | Examples                                                 |                                                                                |
|-----------------------------------------------|----------------------------------------------------------|--------------------------------------------------------------------------------|
| General concepts                              | sets, functions, products                                | Should not be explained.                                                       |
| Functional programming concepts               | lambdas, pattern matching, inductive data types          | May be worth introducing briefly.                                              |
| Advanced or unusual FP concepts               | dependent types, `with`, copatterns                      | Should be avoided.                                                             |
| Functional programming names/notations/syntax | `_$_`, `map`, `fold`, `module`, `open`                   | Has to be explained. Avoid if reasonably possible.                             |
| Notation                                      | inference rules, concrete notations for general concepts | May or may not need an explanation, depending on how standard the notation is. |

## Hiding pieces of code

Hiding pieces of the underlying Agda code can be a useful tool to
accomplish these objectives, but it is important that this is not
overused. Any code whose meaning depends on hidden code must be
explained by prose. However, it is always preferable if a figure can
be fully understood without extra explanation.

## Avoiding complexity

- reduce the number of dependencies as much as possible, which can
  often be done by generalizing
- move (simple) definitions from being defined right next to their
  usage to where they would naturally be defined

## Alignment

For better visual presentation, we should align figures properly. This
might sometimes not be possible while also maintaining other
constraints. Two cases where we usually want to align things are:
- multiple lines of the form `a = b`, where those lines are short enough
- a long expression of the form `x = a1 + ... + an` should be broken
  into multiple lines where the `=` and `+` signs are aligned (also
  applies to any other infix operator)

The second point shouldn't be overused - if it is possible to use
horizontal space and save on vertical space it is probably good to do
so.

## Cardano-specific terms

We prefer generic naming over Cardano-specific naming. The main
example is `Coin` (instead of `Lovelace`).

## Prose explaining figures

The prose should supply context and should help understanding the
figures. Generally, for each definition we should answer the questions
what and why.

- For what, note that not everything that's contained in a figure
  necessarily needs an explanation - if the explanation of a
  definition is simply repeating the definition in words it can
  probably be omitted (like comments in a program). This ensures the
  prose is relevant: a reader that reads lots of unnecessary
  explanations is likely to skip reading the prose at some point. But
  then why write it in the first place?

- Why is a much more difficult question to answer, and also not every
  single definition needs a direct answer to this question. Instead of
  answering 'why do we need X' directly, it might be better to explain
  something about the greater design that explains why we need 'X, Y
  and Z' all at once.
  This question can also have other shapes: why did we define it as X
  instead of Y, why does this case need special handling, etc.

Other notes:
- repetition in the prose should be avoided
- the relations (and often the functions as well) in the spec don't do
  things, they define things (ex: '`feesOK` defines what conditions
  the transaction fees must satisfy', not '`feesOK` computes whether
  the conditions that the fees must satisfy are being met')

## Other points

- Don't include an empty line before `\end{code}`. This will add an
  additional line in the PDF, which looks odd.
