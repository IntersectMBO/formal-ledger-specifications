\section{Cryptographic Primitives}
\begin{code}[hide]
{-# OPTIONS --safe #-}
module Ledger.Conway.Conformance.Crypto where

open import Ledger.Prelude hiding (T)

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

record PKKScheme : Type₁ where
  field
\end{code}
We rely on a public key signing scheme for verification of spending.
\begin{figure*}[h]
\emph{Types \& functions}
\begin{code}
        SKey VKey Sig Ser  : Type
        isKeyPair          : SKey → VKey → Type
        isSigned           : VKey → Ser → Sig → Type
        sign               : SKey → Ser → Sig

  KeyPair = Σ[ sk ∈ SKey ] Σ[ vk ∈ VKey ] isKeyPair sk vk
\end{code}
\emph{Property of signatures}
\begin{code}[hide]
  field ⦃ Dec-isSigned ⦄ : isSigned ⁇³
        isSigned-correct :
\end{code}
\begin{code}
          ((sk , vk , _) : KeyPair) (d : Ser) (σ : Sig) → sign sk d ≡ σ → isSigned vk d σ
\end{code}
\caption{Definitions for the public key signature scheme}
\label{fig:defs:crypto}
\end{figure*}
\begin{code}[hide]
        ⦃ DecEq-Sig  ⦄ : DecEq Sig
        ⦃ DecEq-Ser  ⦄ : DecEq Ser

record Crypto : Type₁ where
  field pkk : PKKScheme

  open PKKScheme pkk public

  field ⦃ khs ⦄    : isHashableSet VKey
        ScriptHash : Type; ⦃ DecEq-ScriptHash ⦄ : DecEq ScriptHash ; ⦃ Show-ScriptHash ⦄ : Show ScriptHash

  open isHashableSet khs renaming (THash to KeyHash) hiding (DecEq-T) public

-- TODO: KES and VRF
\end{code}
