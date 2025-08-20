\section{Cryptographic Primitives}
\label{sec:cryptographic-primitives}
\modulenote{\ConwayModule{Crypto}}, in which we rely on a public key signing scheme
for verification of spending.

\Cref{fig:defs:crypto} shows some of the types,
functions and properties of this scheme.

\begin{code}[hide]
{-# OPTIONS --safe #-}
module Ledger.Core.Specification.Crypto where

open import Ledger.Prelude hiding (T)
open import Ledger.Prelude.Numeric.UnitInterval

record isHashableSet (T : Type) : Type₁ where
  constructor mkIsHashableSet
  field THash : Type
        ⦃ DecEq-THash ⦄ : DecEq      THash
        ⦃ Show-THash  ⦄ : Show       THash
        ⦃ DecEq-T     ⦄ : DecEq    T
        ⦃ T-Hashable  ⦄ : Hashable T THash
open isHashableSet

record HashableSet : Type₁ where
  constructor mkHashableSet
  field T : Type; ⦃ T-isHashable ⦄ : isHashableSet T
  open isHashableSet T-isHashable public
\end{code}

\begin{figure*}[h]
\begin{AgdaMultiCode}
\begin{code}[hide]
record PKKScheme : Type₁ where
  field
\end{code}
\emph{Types \& functions}
\begin{code}
    SKey VKey Sig Ser  : Type
    isKeyPair          : SKey → VKey → Type
    isSigned           : VKey → Ser → Sig → Type
    sign               : SKey → Ser → Sig

  KeyPair = Σ[ sk ∈ SKey ] Σ[ vk ∈ VKey ] isKeyPair sk vk

\end{code}
\begin{code}[hide]
  field
    ⦃ Dec-isSigned ⦄ : isSigned ⁇³
\end{code}
\emph{Property of signatures}
\begin{code}
    isSigned-correct  : ((sk , vk , _) : KeyPair) (d : Ser) (σ : Sig)
                      → sign sk d ≡ σ → isSigned vk d σ
\end{code}
\end{AgdaMultiCode}
\caption{Definitions for the public key signature scheme}
\label{fig:defs:crypto}
\end{figure*}

\begin{code}[hide]
    ⦃ DecEq-Sig  ⦄ : DecEq Sig
    ⦃ DecEq-Ser  ⦄ : DecEq Ser

record CryptoStructure : Type₁ where
  field pkk : PKKScheme

  open PKKScheme pkk public

  field ⦃ khs ⦄    : isHashableSet VKey
        ScriptHash : Type; ⦃ DecEq-ScriptHash ⦄ : DecEq ScriptHash ; ⦃ Show-ScriptHash ⦄ : Show ScriptHash

  open isHashableSet khs renaming (THash to KeyHash) hiding (DecEq-T) public

-- TODO: KES and VRF
\end{code}
