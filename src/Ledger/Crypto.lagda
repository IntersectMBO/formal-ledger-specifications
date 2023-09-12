\section{Cryptographic primitives}
\begin{code}[hide]
{-# OPTIONS --safe #-}
module Ledger.Crypto where

open import Ledger.Prelude hiding (T)
open import Interface.Hashable public

record isHashableSet (T : Set) : Set₁ where
  constructor mkIsHashableSet
  field THash : Set
        ⦃ DecEq-THash ⦄ : DecEq      THash
        ⦃ T-Hashable  ⦄ : Hashable T THash
open isHashableSet

record HashableSet : Set₁ where
  constructor mkHashableSet
  field T : Set; ⦃ T-isHashable ⦄ : isHashableSet T
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
        ⦃ DecEq-VKey ⦄ : DecEq VKey
        ⦃ DecEq-Sig  ⦄ : DecEq Sig
        ⦃ DecEq-Ser  ⦄ : DecEq Ser
  instance
    Dec-isSigned : ∀ {vk d σ} → Dec (isSigned vk d σ)
    Dec-isSigned = isSigned? _ _ _

record Crypto : Set₁ where
  field pkk : PKKScheme

  open PKKScheme pkk public

  field ⦃ khs ⦄    : isHashableSet VKey
        ScriptHash : Set; ⦃ DecEq-ScriptHash ⦄ : DecEq ScriptHash

  open isHashableSet khs renaming (THash to KeyHash) public

-- TODO: KES and VRF
\end{code}
