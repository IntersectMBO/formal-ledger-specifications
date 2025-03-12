\section{Bootstrapping EnactState}

\begin{code}[hide]
{-# OPTIONS --safe #-}
module Ledger.PDF.ConwayBootstrapEnact where
\end{code}

To form an \EnactState{}, some governance action IDs need to be
provided. However, at the time of the initial hard fork into Conway
there are no such previous actions. There are effectively two ways to
solve this issue:

\begin{itemize}[itemsep=\itmsep]
\item populate those fields with IDs chosen in some manner (e.g. random, all zeros, etc.), or
\item add a special value to the types to indicate this situation.
\end{itemize}

In the Haskell implementation the latter solution was chosen. This
means that everything that deals with \GovActionID{} needs to be aware
of this special case and handle it properly.

This specification could have mirrored this choice, but it is not
necessary here: since it is already necessary to assume the absence of
hash-collisions (specifically first pre-image resistance) for various
properties, we could pick arbitrary initial values to mirror this
situation. Then, since \GovActionID{} contains a hash, that arbitrary
initial value behaves just like a special case.
