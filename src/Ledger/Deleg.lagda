\section{Delegation}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Epoch
open import Ledger.Crypto
import Ledger.PParams as PP

module Ledger.Deleg
  (crypto : Crypto)
  (TxId Network DocHash : Set)
  (epochStructure : EpochStructure)
  (ppd : PP.PParamsDiff epochStructure)
  (ppHashable : isHashableSet (PP.PParams epochStructure))
  ⦃ _ : DecEq Network ⦄
  where

open Crypto crypto

open import Ledger.Address Network KeyHash ScriptHash
open import Ledger.PParams epochStructure using (PParams)
open import Ledger.GovernanceActions TxId Network DocHash epochStructure ppd ppHashable crypto
  using (Anchor; VDeleg)

open EpochStructure epochStructure

\end{code}
\begin{figure*}[h]
\begin{code}
record PoolParams : Set where
  field rewardAddr  : Credential

data DCert : Set where
  delegate   : Credential → Maybe VDeleg → Maybe Credential → Coin → DCert
  regpool    : Credential → PoolParams → DCert
  retirepool : Credential → Epoch → DCert
  regdrep    : Credential → Coin → Anchor → DCert
  deregdrep  : Credential → DCert
  ccreghot   : Credential → Maybe KeyHash → DCert

VDelEnv   = PParams
CertEnv   = PParams
DelegEnv  = PParams
PoolEnv   = PParams

record DState : Set where
  constructor ⟦_,_,_⟧ᵈ
  field voteDelegs      : Credential ↛ VDeleg
  --    ^ stake credential to DRep credential
        stakeDelegs     : Credential ↛ Credential
  --    ^ stake credential to pool credential
        rewards         : RwdAddr ↛ Coin

record PState : Set where
  constructor ⟦_,_⟧ᵖ
  field pools     : Credential ↛ PoolParams
        retiring  : Credential ↛ Epoch

record VState : Set where
  constructor ⟦_,_⟧ᵛ
  field dreps      : ℙ Credential
        ccHotKeys  : KeyHash ↛ Maybe KeyHash -- TODO: maybe replace with credential

record CertState : Set where
  field dState : DState
        pState : PState
        vState : VState
\end{code}

\begin{code}[hide]
private variable
  an : Anchor
  dReps dReps' : ℙ Credential
  pools : Credential ↛ PoolParams
  vDelegs : Credential ↛ VDeleg
  sDelegs : Credential ↛ Credential
  retiring retiring' : Credential ↛ Epoch
  ccKeys : KeyHash ↛ Maybe KeyHash
  rwds : RwdAddr ↛ Coin
  dCert : DCert
  c c' : Credential
  mc : Maybe Credential
  mv : Maybe VDeleg
  d : Coin
  e : Epoch
  kh kh' : KeyHash
  mkh : Maybe KeyHash
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

requiredVDelegDeposit : PParams → Maybe VDeleg → Coin
requiredVDelegDeposit pp (just _) = PParams.poolDeposit pp
requiredVDelegDeposit pp nothing = 0

insertIfPresent : ∀ {A B} → ⦃ DecEq A ⦄ → A → Maybe B → A ↛ B → A ↛ B
insertIfPresent x nothing  m = m
insertIfPresent x (just y) m = insert m x y
\end{code}
\caption{Types \& functions used for CERTS transition system}
\end{figure*}

\begin{figure*}[h]
\begin{code}
data _⊢_⇀⦇_,DELEG⦈_ : DelegEnv → DState → DCert → DState → Set where
  DELEG-delegate :
    d ≡ requiredVDelegDeposit pp mv ⊔ requiredDeposit pp mc
    ────────────────────────────────
    pp ⊢ ⟦ vDelegs , sDelegs , rwds ⟧ᵈ ⇀⦇ delegate c mv mc d ,DELEG⦈
         ⟦ insertIfPresent c mv vDelegs , insertIfPresent c mc sDelegs ,rwds ⟧ᵈ

data _⊢_⇀⦇_,POOL⦈_ : PoolEnv → PState → DCert → PState → Set where
  POOL-regpool : let open PParams pp ; open PoolParams poolParams in
    c ∉ dom (pools ˢ)
    ────────────────────────────────
    pp ⊢ ⟦ pools , retiring ⟧ᵖ ⇀⦇ regpool c poolParams ,POOL⦈ ⟦ ❴ c , poolParams ❵ᵐ ∪ᵐˡ pools , retiring ⟧ᵖ

  POOL-retirepool : let open PoolParams poolParams in
    pp ⊢ ⟦ pools , retiring ⟧ᵖ ⇀⦇ retirepool c e ,POOL⦈
         ⟦ pools , ❴ c , e ❵ᵐ ∪ᵐˡ retiring ⟧ᵖ

data _⊢_⇀⦇_,VDEL⦈_ : VDelEnv → VState → DCert → VState → Set where
  VDEL-regdrep : let open PParams pp in
    d ≡ poolDeposit -- TODO use drepDeposit instead
    → c ∉ dReps
    ────────────────────────────────
    pp ⊢ ⟦ dReps , ccKeys ⟧ᵛ ⇀⦇ regdrep c d an ,VDEL⦈
         ⟦ ❴ c ❵ ∪ dReps , ccKeys ⟧ᵛ

  VDEL-deregdrep :
    c ∉ dReps'
    → ❴ c ❵ ∪ dReps' ≡ dReps
    ────────────────────────────────
    pp ⊢ ⟦ dReps , ccKeys ⟧ᵛ ⇀⦇ deregdrep c ,VDEL⦈
         ⟦ dReps' , ccKeys ⟧ᵛ

  VDEL-ccreghot :
    (kh , nothing) ∉ ccKeys ˢ
    -- TODO: Should we check if kh actually belongs to the CC?
    ────────────────────────────────
    pp ⊢ ⟦ dReps , ccKeys ⟧ᵛ ⇀⦇ ccreghot (inj₁ kh) mkh ,VDEL⦈
         ⟦ dReps , singletonᵐ kh mkh ∪ᵐˡ ccKeys ⟧ᵛ

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
\end{code}
\caption{CERTS rules}
\end{figure*}

\begin{code}[hide]
open import Interface.Decidable.Instance
open import Data.Maybe.Properties

open import Tactic.ReduceDec
open import MyDebugOptions

Computational-DELEG : Computational _⊢_⇀⦇_,DELEG⦈_
Computational-DELEG .compute pp ⟦ vDelegs , sDelegs , rewards ⟧ᵈ (delegate c mv mc d) =
  ifᵈ d ≡ requiredVDelegDeposit pp mv ⊔ requiredDeposit pp mc
    then just ⟦ insertIfPresent c mv vDelegs , insertIfPresent c mc sDelegs , rewards ⟧ᵈ
    else nothing
Computational-DELEG .compute Γ s _ = nothing
Computational-DELEG .≡-just⇔STS {pp} {⟦ s₁ , s₂ , rewards ⟧ᵈ} {cert} {s'} = mk⇔
  (case cert return (λ c → compute Computational-DELEG pp ⟦ s₁ , s₂ , rewards ⟧ᵈ c ≡ just s' → pp ⊢ ⟦ s₁ , s₂ , rewards ⟧ᵈ ⇀⦇ c ,DELEG⦈ s') of λ where
    (delegate c mv mc d) h → case d ≟ requiredVDelegDeposit pp mv ⊔ requiredDeposit pp mc of λ where
      (yes p) → subst _ (just-injective $ by-reduceDec h) (DELEG-delegate {mv = mv} {mc} {s₁} {s₂} {rewards} {c} p)
      (no ¬p) → case by-reduceDec h of λ ()
    (regpool x x₁) → λ ()
    (retirepool x x₁) → λ ()
    (regdrep x x₁) → λ ()
    (deregdrep x) → λ ()
    (ccreghot x x₁) → λ ())
  (λ where (DELEG-delegate {mv = mv} {mc} {vDelegs} {sDelegs} {rwds} {c} h) → by-reduceDecInGoal
             (refl {x = just ⟦ insertIfPresent c mv vDelegs , insertIfPresent c mc sDelegs , rewards ⟧ᵈ}))

--Computational-CERTS : Computational _⊢_⇀⦇_,CERTS⦈_
--Computational-CERTS .compute     = {!!}
--Computational-CERTS .≡-just⇔STS = {!!}

\end{code}
