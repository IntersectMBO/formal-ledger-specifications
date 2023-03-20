\section{Delegation}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Transaction

module Ledger.Deleg (Network KeyHash ScriptHash : Set) (txs : TransactionStructure)
                    ⦃ _ : DecEq Network ⦄ ⦃ _ : DecEq KeyHash ⦄ ⦃ _ : DecEq ScriptHash ⦄ where

open import Agda.Primitive renaming (Set to Type)

open import Ledger.Address Network KeyHash ScriptHash
open TransactionStructure txs using (epochStructure)
open import Ledger.PParams epochStructure using (PParams)
\end{code}
\begin{figure*}[h]
\begin{code}
data DCert : Set where
  --regkey    : Credential → DCert
  delegate  : Credential → Maybe Credential → Maybe Credential → Coin → DCert
  --deregkey  : Credential → DCert
  --regpool    : DCert
  --retirepool : KeyHash → DCert
  regdrep    : Credential → Coin → DCert
  deregdrep  : Credential → ℕ → DCert
  ccreghot   : Credential → KeyHash → DCert

VDelEnv = PParams

CertEnv = PParams

DelegEnv = PParams

PoolEnv = ⊤

record DState : Set where
  constructor ⟦_,_⟧ᵈ
  field voteDelegs : Credential ↛ Credential
        stakeDelegs : Credential ↛ Credential

record PState : Set where

record VState : Set where
  constructor ⟦_,_⟧ᵛ
  field dreps            : ℙ Credential
        ccHotKeys        : KeyHash ↛ KeyHash -- TODO: maybe replace with credential

record CertState : Set where
  field dState : DState
        pState : PState
        vState : VState
\end{code}

\begin{code}[hide]
private variable
  A B : Type
  dreps : ℙ Credential
  vDelegs sDelegs : Credential ↛ Credential
  stakingKeys : Credential ↛ Coin
  ccKeys : KeyHash ↛ KeyHash
  dCert : DCert
  c c' : Credential
  mc mc' : Maybe Credential
  d : Coin
  e : ℕ --Epoch
  kh kh' : KeyHash
  st st' : CertState
  stᵛ stᵛ' : VState
  stᵈ stᵈ' : DState
  pp : PParams
\end{code}

\begin{code}

data _⊢_⇀⦇_,DELEG⦈_ : DelegEnv → DState → DCert → DState → Set where
  DELEG-delegate :
    let requiredDeposit : Maybe Credential → Coin
        requiredDeposit x = if is-just x
          then PParams.poolDeposit pp
          else 0
    in
    d ≥ requiredDeposit mc + requiredDeposit mc'
    ────────────────────────────────
    pp ⊢ ⟦ vDelegs , sDelegs ⟧ᵈ ⇀⦇ delegate c mc mc' d ,DELEG⦈
         ⟦ update c mc vDelegs , update c mc' sDelegs ⟧ᵈ

--data _⊢_⇀⦇_,POOL⦈_ : PoolEnv → PState → DCert → PState → Set where

data _⊢_⇀⦇_,VDEL⦈_ : VDelEnv → VState → DCert → VState → Set where

  VDEL-regdrep :
    -- TODO: deposit
    {!!}
    ────────────────────────────────
    pp ⊢ ⟦ dreps , ccKeys ⟧ᵛ ⇀⦇ regdrep c d ,VDEL⦈ ⟦ dreps ∪ singleton c , ccKeys ⟧ᵛ

  VDEL-deregdrep :
    c ∉ dreps
    ────────────────────────────────
    pp ⊢ ⟦ dreps ∪ singleton c , ccKeys ⟧ᵛ ⇀⦇ deregdrep c e ,VDEL⦈ ⟦ dreps , ccKeys ⟧ᵛ

  VDEL-ccreghot :
    c ≡ inj₁ kh'
    ────────────────────────────────
    pp ⊢ ⟦ dreps , ccKeys ⟧ᵛ ⇀⦇ ccreghot c kh ,VDEL⦈
        ⟦ dreps , singletonᵐ kh' kh ∪ᵐˡ ccKeys ⟧ᵛ

data _⊢_⇀⦇_,CERT⦈_ : CertEnv → CertState → DCert → CertState → Set where
  CERT-deleg :
    pp ⊢ stᵈ ⇀⦇ dCert ,DELEG⦈ stᵈ'
    ────────────────────────────────
    pp ⊢ st ⇀⦇ dCert ,CERT⦈ record st { dState = stᵈ' }

  CERT-vdel :
    pp ⊢ stᵛ ⇀⦇ dCert ,VDEL⦈ stᵛ'
    ────────────────────────────────
    pp ⊢ st ⇀⦇ dCert ,CERT⦈ record st { vState = stᵛ' }
\end{code}
\caption{VDel rules \& definitions}
\end{figure*}
