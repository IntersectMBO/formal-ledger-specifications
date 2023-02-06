\section{Delegation}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Prelude

module Ledger.Deleg (Network KeyHash ScriptHash : Set)
                    ⦃ _ : DecEq Network ⦄ ⦃ _ : DecEq KeyHash ⦄ ⦃ _ : DecEq ScriptHash ⦄ where

open import Ledger.Address Network KeyHash ScriptHash
\end{code}
\begin{figure*}[h]
\begin{code}
data DCert : Set where
  -- regkey    : Credential → DCert
  -- delegate  : Credential → KeyHash → DCert
  -- deregkey
  -- regpool
  -- retirepool
  regdrep    : Credential → DCert
  deregdrep  : Credential → DCert
  delegdrep  : Credential → Credential → DCert -- TODO: merge with 'delegate' certificate?
  ccreghot   : Credential → KeyHash → DCert

VDelEnv = ⊤

record VDelState : Set where
  constructor ⟦_,_,_⟧ᵈ
  field dreps            : ℙ Credential
        drepDelegations  : Credential ↛ Credential
        ccHotKeys        : KeyHash ↛ KeyHash -- TODO: maybe replace with credential
\end{code}

\begin{code}[hide]
private variable
  dreps : ℙ Credential
  delegs : Credential ↛ Credential
  ccKeys : KeyHash ↛ KeyHash
  c c' : Credential
  kh kh' : KeyHash
\end{code}

\begin{code}
data _⊢_⇀⦇_,VDEL⦈_ : VDelEnv → VDelState → DCert → VDelState → Set where
  VDEL-regdrep :
    -- TODO: deposit
    _ ⊢ ⟦ dreps , delegs , ccKeys ⟧ᵈ ⇀⦇ regdrep c ,VDEL⦈ ⟦ dreps ∪ singleton c , delegs , ccKeys ⟧ᵈ

  VDEL-deregdrep :
    c ∉ dreps
    ────────────────────────────────
    _ ⊢ ⟦ dreps ∪ singleton c , delegs , ccKeys ⟧ᵈ ⇀⦇ deregdrep c ,VDEL⦈ ⟦ dreps , delegs , ccKeys ⟧ᵈ

  VDEL-delegdrep :
    -- TODO: deposit? easy if merged with 'delegate'
    _ ⊢ ⟦ dreps , delegs , ccKeys ⟧ᵈ ⇀⦇ delegdrep c c' ,VDEL⦈
        ⟦ dreps , singletonᵐ c c' ∪ᵐˡ delegs , ccKeys ⟧ᵈ

  VDEL-ccreghot :
    c ≡ inj₁ kh'
    ────────────────────────────────
    _ ⊢ ⟦ dreps , delegs , ccKeys ⟧ᵈ ⇀⦇ ccreghot c kh ,VDEL⦈
        ⟦ dreps , delegs , singletonᵐ kh' kh ∪ᵐˡ ccKeys ⟧ᵈ
\end{code}
\caption{VDel rules \& definitions}
\end{figure*}
