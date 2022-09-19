\section{Cryptographic primitives}
\begin{code}[hide]
{-# OPTIONS --safe #-}
module Ledger.Crypto where

open import Ledger.Prelude hiding (T)
open import Interface.Hashable public

record isHashableSet (T : Set) : Set₁ where
  field THash : Set
        instance T-Hashable : Hashable T THash
open isHashableSet

mkIsHashableSet : (T THash : Set) → (T → THash) → isHashableSet T
mkIsHashableSet T THash hash .THash            = THash
mkIsHashableSet T THash hash .T-Hashable .hash = hash

record HashableSet : Set₁ where
  field T : Set
        T-isHashable : isHashableSet T

  open isHashableSet T-isHashable public

record PKKScheme : Set₁ where
  field
\end{code}
We rely on a public key signing scheme for verification of spending.
\begin{figure*}[h]
\emph{Types \& functions}
\begin{code}
        SKey VKey Sig Ser : Set
        isKeyPair : SKey → VKey → Set
        isSigned : VKey → Ser → Sig → Set
        sign : SKey → Ser → Sig

  KeyPair = Σ[ sk ∈ SKey ] Σ[ vk ∈ VKey ] isKeyPair sk vk
\end{code}
\emph{Property of signatures}
\begin{code}[hide]
  field isSigned? : ∀ vk d σ → Dec (isSigned vk d σ)
        isSigned-correct :
\end{code}
\begin{code}
          ((sk , vk , _) : KeyPair) (d : Ser) (σ : Sig) → sign sk d ≡ σ → isSigned vk d σ
\end{code}
\caption{Definitions for the public key signature scheme}
\label{fig:defs:crypto}
\end{figure*}
\begin{code}[hide]
        instance decEq-VKey : DecEq VKey
                 decEq-Sig  : DecEq Sig
                 decEq-Ser  : DecEq Ser

record Crypto : Set₁ where
  field pkk : PKKScheme

  open PKKScheme pkk public

  field khs        : isHashableSet VKey
        ScriptHash : Set

  open isHashableSet khs renaming (THash to KeyHash) public

  field instance decEq-KeyHash    : DecEq KeyHash
                 decEq-ScriptHash : DecEq ScriptHash

-- TODO: KES and VRF
\end{code}
