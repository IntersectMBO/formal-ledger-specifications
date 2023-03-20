\section{Delegation}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Epoch
open import Ledger.Crypto

module Ledger.Deleg
  (crypto : Crypto)
  (Network : Set)
  (epochStructure : EpochStructure)
  ⦃ _ : DecEq Network ⦄
  where

open Crypto crypto

open import Ledger.Address Network KeyHash ScriptHash
open import Ledger.PParams epochStructure using (PParams)

open EpochStructure epochStructure

\end{code}
\begin{figure*}[h]
\begin{code}
record PoolParams : Set where
  field rewardAddr : Credential
        deposit    : Coin

data DCert : Set where
  delegate   : Credential → Maybe Credential → Maybe Credential → Coin → DCert
  regpool    : Credential → PoolParams → DCert
  retirepool : Credential → Epoch → DCert
  regdrep    : Credential → Coin → DCert
  deregdrep  : Credential → DCert
  ccreghot   : Credential → KeyHash → DCert

VDelEnv = PParams

CertEnv = PParams

DelegEnv = PParams

PoolEnv = PParams

record DState : Set where
  constructor ⟦_,_⟧ᵈ
  field voteDelegs      : Credential ↛ Credential
  --    ^ stake credential to DRep credential
        stakeDelegs     : Credential ↛ Credential
  --    ^ stake credential to pool credential

record PState : Set where
  constructor ⟦_,_⟧ᵖ
  field pools    : Credential ↛ PoolParams
        retiring : Credential ↛ Epoch

record VState : Set where
  constructor ⟦_,_⟧ᵛ
  field dreps     : Credential ↛ Coin
        ccHotKeys : KeyHash ↛ KeyHash -- TODO: maybe replace with credential

record CertState : Set where
  field dState : DState
        pState : PState
        vState : VState
\end{code}

\begin{code}[hide]
private variable
  dReps dReps' : Credential ↛ Coin
  pools : Credential ↛ PoolParams
  vDelegs sDelegs : Credential ↛ Credential
  retiring retiring' : Credential ↛ Epoch
  ccKeys : KeyHash ↛ KeyHash
  dCert : DCert
  c c' : Credential
  mc mc' : Maybe Credential
  d : Coin
  e : Epoch
  kh kh' : KeyHash
  st st' : CertState
  stᵛ stᵛ' : VState
  stᵈ stᵈ' : DState
  stᵖ stᵖ' : PState
  pp : PParams
  poolParams : PoolParams
\end{code}

\begin{code}

requiredDeposit : PParams → Maybe Credential → Coin
requiredDeposit pp (just x) = PParams.poolDeposit pp
requiredDeposit pp nothing = 0

data _⊢_⇀⦇_,DELEG⦈_ : DelegEnv → DState → DCert → DState → Set where
  DELEG-delegate :
    d ≡ requiredDeposit pp mc ⊔ requiredDeposit pp mc'
    ────────────────────────────────
    pp ⊢ ⟦ vDelegs , sDelegs ⟧ᵈ ⇀⦇ delegate c mc mc' d ,DELEG⦈
         ⟦ update c mc vDelegs , update c mc' sDelegs ⟧ᵈ

data _⊢_⇀⦇_,POOL⦈_ : PoolEnv → PState → DCert → PState → Set where
  POOL-regpool : let open PParams pp ; open PoolParams poolParams in
    deposit ≡ poolDeposit
    → c ∉ dom (pools ˢ)
    ────────────────────────────────
    pp ⊢ ⟦ pools , retiring ⟧ᵖ ⇀⦇ regpool c poolParams ,POOL⦈ ⟦ ❴ c , poolParams ❵ᵐ ∪ᵐˡ pools , retiring ⟧ᵖ

  POOL-retirepool : let open PoolParams poolParams in
    pp ⊢ ⟦ pools , retiring ⟧ᵖ ⇀⦇ retirepool c e ,POOL⦈
         ⟦ pools , ❴ c , e ❵ᵐ ∪ᵐˡ retiring ⟧ᵖ

data _⊢_⇀⦇_,VDEL⦈_ : VDelEnv → VState → DCert → VState → Set where
  VDEL-regdrep : let open PParams pp in
    d ≡ poolDeposit -- TODO use drepDeposit instead
    → c ∉ dom (dReps ˢ)
    ────────────────────────────────
    pp ⊢ ⟦ dReps , ccKeys ⟧ᵛ ⇀⦇ regdrep c d ,VDEL⦈
         ⟦ ❴ c , d ❵ᵐ ∪ᵐˡ dReps , ccKeys ⟧ᵛ

  VDEL-deregdrep :
    c ∉ dom (dReps ˢ)
    → dReps' ≡ ❴ c , d ❵ᵐ ∪ᵐˡ dReps
    ────────────────────────────────
    pp ⊢ ⟦ dReps , ccKeys ⟧ᵛ ⇀⦇ deregdrep c ,VDEL⦈
         ⟦ dReps' , ccKeys ⟧ᵛ

  VDEL-ccreghot :
    c ≡ inj₁ kh'
    ────────────────────────────────
    pp ⊢ ⟦ dReps , ccKeys ⟧ᵛ ⇀⦇ ccreghot c kh ,VDEL⦈
         ⟦ dReps , singletonᵐ kh' kh ∪ᵐˡ ccKeys ⟧ᵛ

data _⊢_⇀⦇_,CERT⦈_ : CertEnv → CertState → DCert → CertState → Set where
  CERT-deleg :
    pp ⊢ stᵈ ⇀⦇ dCert ,DELEG⦈ stᵈ'
    ────────────────────────────────
    pp ⊢ st ⇀⦇ dCert ,CERT⦈ record st { dState = stᵈ' }

  CERT-vdel :
    pp ⊢ stᵛ ⇀⦇ dCert ,VDEL⦈ stᵛ'
    ────────────────────────────────
    pp ⊢ st ⇀⦇ dCert ,CERT⦈ record st { vState = stᵛ' }

  CERT-pool :
    pp ⊢ stᵖ ⇀⦇ dCert ,POOL⦈ stᵖ'
    ────────────────────────────────
    pp ⊢ st ⇀⦇ dCert ,CERT⦈ record st { pState = stᵖ' }

_⊢_⇀⦇_,CERTS⦈_ : CertEnv → CertState → List DCert → CertState → Set
_⊢_⇀⦇_,CERTS⦈_ = SS⇒BS λ (Γ , _) → Γ ⊢_⇀⦇_,CERT⦈_

--Computational-CERTS : Computational _⊢_⇀⦇_,CERTS⦈_
--Computational-CERTS = MkComputational
--  (λ Γ st cs → {!!})
--  {!!}
\end{code}
\caption{VDel rules \& definitions}
\end{figure*}
