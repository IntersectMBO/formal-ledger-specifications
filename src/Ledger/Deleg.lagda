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
  using (Anchor; VDeleg; GovVote; GovRole)

open EpochStructure epochStructure

\end{code}
\begin{figure*}[h]
\begin{code}
record PoolParams : Set where
  field rewardAddr  : Credential

data DCert : Set where
  delegate    : Credential → Maybe VDeleg → Maybe Credential → Coin → DCert
  regpool     : Credential → PoolParams → DCert
  retirepool  : Credential → Epoch → DCert
  regdrep     : Credential → Coin → Anchor → DCert
  deregdrep   : Credential → DCert
  ccreghot    : Credential → Maybe KeyHash → DCert

cwitness : DCert → Credential
cwitness (delegate c _ _ _)  = c
cwitness (regpool c _)       = c
cwitness (retirepool c _)    = c
cwitness (regdrep c _ _)     = c
cwitness (deregdrep c)       = c
cwitness (ccreghot c _)      = c

record CertEnv : Set where
  constructor ⟦_,_,_⟧ᶜ
  field epoch  : Epoch
        pp     : PParams
        votes  : List GovVote

GovCertEnv  = CertEnv
DelegEnv    = PParams
PoolEnv     = PParams

record DState : Set where
  constructor ⟦_,_,_⟧ᵈ

  field voteDelegs      : Credential ⇀ VDeleg
  --    ^ stake credential to DRep credential
        stakeDelegs     : Credential ⇀ Credential
  --    ^ stake credential to pool credential
        rewards         : RwdAddr ⇀ Coin

record PState : Set where
  constructor ⟦_,_⟧ᵖ
  field pools     : Credential ⇀ PoolParams
        retiring  : Credential ⇀ Epoch

record GState : Set where
  constructor ⟦_,_⟧ᵛ
  field dreps      : Credential ⇀ Epoch
        ccHotKeys  : KeyHash ⇀ Maybe KeyHash -- TODO: maybe replace with credential

record CertState : Set where
  field dState : DState
        pState : PState
        gState : GState
\end{code}

\begin{code}[hide]
private variable
  an : Anchor
  dReps dReps' : Credential ⇀ Epoch
  pools : Credential ⇀ PoolParams
  vDelegs : Credential ⇀ VDeleg
  sDelegs : Credential ⇀ Credential
  retiring retiring' : Credential ⇀ Epoch
  ccKeys : KeyHash ⇀ Maybe KeyHash
  rwds : RwdAddr ⇀ Coin
  dCert : DCert
  c c' : Credential
  mc : Maybe Credential
  mv : Maybe VDeleg
  d : Coin
  e : Epoch
  kh kh' : KeyHash
  mkh : Maybe KeyHash
  st st' : CertState
  stᵍ stᵍ' : GState
  stᵈ stᵈ' : DState
  stᵖ stᵖ' : PState
  Γ : CertEnv
  pp : PParams
  vs : List GovVote
  poolParams : PoolParams
\end{code}

\begin{code}
requiredDeposit : {A : Set} → PParams → Maybe A → Coin
requiredDeposit pp (just _) = PParams.poolDeposit pp
requiredDeposit pp nothing = 0

insertIfJust : ∀ {A B} → ⦃ DecEq A ⦄ → A → Maybe B → A ⇀ B → A ⇀ B
insertIfJust x nothing  m = m
insertIfJust x (just y) m = insert m x y
\end{code}
\caption{Types \& functions used for CERTS transition system}
\end{figure*}

\begin{figure*}[h]
\begin{code}
data _⊢_⇀⦇_,DELEG⦈_ : DelegEnv → DState → DCert → DState → Set where
  DELEG-delegate :
    d ≡ requiredDeposit pp mv ⊔ requiredDeposit pp mc
    ────────────────────────────────
    pp ⊢ ⟦ vDelegs , sDelegs , rwds ⟧ᵈ ⇀⦇ delegate c mv mc d ,DELEG⦈
         ⟦ insertIfJust c mv vDelegs , insertIfJust c mc sDelegs , rwds ⟧ᵈ

data _⊢_⇀⦇_,POOL⦈_ : PoolEnv → PState → DCert → PState → Set where
  POOL-regpool : let open PParams pp ; open PoolParams poolParams in
    c ∉ dom (pools ˢ)
    ────────────────────────────────
    pp ⊢ ⟦ pools , retiring ⟧ᵖ ⇀⦇ regpool c poolParams ,POOL⦈ ⟦ ❴ c , poolParams ❵ᵐ ∪ᵐˡ pools , retiring ⟧ᵖ

  POOL-retirepool : let open PoolParams poolParams in
    pp ⊢ ⟦ pools , retiring ⟧ᵖ ⇀⦇ retirepool c e ,POOL⦈
         ⟦ pools , ❴ c , e ❵ᵐ ∪ᵐˡ retiring ⟧ᵖ

data _⊢_⇀⦇_,GOVCERT⦈_ : GovCertEnv → GState → DCert → GState → Set where
  GOVCERT-regdrep : let open PParams pp in
    (d ≡ drepDeposit × c ∉ dom (dReps ˢ)) ⊎ (d ≡ 0 × c ∈ dom (dReps ˢ))
    ────────────────────────────────
    ⟦ e , pp , vs ⟧ᶜ ⊢ ⟦ dReps , ccKeys ⟧ᵛ ⇀⦇ regdrep c d an ,GOVCERT⦈
                       ⟦ ❴ c , e +ᵉ' drepActivity ❵ᵐ ∪ᵐˡ dReps , ccKeys ⟧ᵛ

  GOVCERT-deregdrep :
    c ∈ dom (dReps ˢ)
    ────────────────────────────────
    Γ ⊢ ⟦ dReps , ccKeys ⟧ᵛ ⇀⦇ deregdrep c ,GOVCERT⦈
        ⟦ dReps ∣ ❴ c ❵ ᶜ , ccKeys ⟧ᵛ

  GOVCERT-ccreghot :
    (kh , nothing) ∉ ccKeys ˢ
    ────────────────────────────────
    Γ ⊢ ⟦ dReps , ccKeys ⟧ᵛ ⇀⦇ ccreghot (inj₁ kh) mkh ,GOVCERT⦈
        ⟦ dReps , singletonᵐ kh mkh ∪ᵐˡ ccKeys ⟧ᵛ

data _⊢_⇀⦇_,CERT⦈_ : CertEnv → CertState → DCert → CertState → Set where
  CERT-deleg :
    pp ⊢ stᵈ ⇀⦇ dCert ,DELEG⦈ stᵈ'
    ────────────────────────────────
    ⟦ e , pp , vs ⟧ᶜ ⊢ st ⇀⦇ dCert ,CERT⦈ record st { dState = stᵈ' }

  CERT-vdel :
    Γ ⊢ stᵍ ⇀⦇ dCert ,GOVCERT⦈ stᵍ'
    ────────────────────────────────
    Γ ⊢ st ⇀⦇ dCert ,CERT⦈ record st { gState = stᵍ' }

  CERT-pool :
    pp ⊢ stᵖ ⇀⦇ dCert ,POOL⦈ stᵖ'
    ────────────────────────────────
    ⟦ e , pp , vs ⟧ᶜ ⊢ st ⇀⦇ dCert ,CERT⦈ record st { pState = stᵖ' }

data _⊢_⇀⦇_,CERTBASE⦈_ : CertEnv → CertState → ⊤ → CertState → Set where
  CERT-base :
    let open PParams pp; open CertState st; open GState gState
        refresh = mapPartial (λ v → let open GovVote v in case role of λ where
          GovRole.DRep → just credential
          _    → nothing) (fromList vs)
    in ⊤ -- TODO: check that the withdrawals are correct here
    ────────────────────────────────
    ⟦ e , pp , vs ⟧ᶜ ⊢ st ⇀⦇ _ ,CERTBASE⦈ record st { gState = record gState
                         { dreps = constMap refresh (e +ᵉ' drepActivity) ∪ᵐˡ dreps } }

-- TODO: use CERTBASE by modifying SS⇒BS to allow for a base case
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
  ifᵈ d ≡ requiredDeposit pp mv ⊔ requiredDeposit pp mc
    then just ⟦ insertIfJust c mv vDelegs , insertIfJust c mc sDelegs , rewards ⟧ᵈ
    else nothing
Computational-DELEG .compute Γ s _ = nothing
Computational-DELEG .≡-just⇔STS {pp} {⟦ s₁ , s₂ , rewards ⟧ᵈ} {cert} {s'} = mk⇔
  (case cert return (λ c → compute Computational-DELEG pp ⟦ s₁ , s₂ , rewards ⟧ᵈ c ≡ just s' → pp ⊢ ⟦ s₁ , s₂ , rewards ⟧ᵈ ⇀⦇ c ,DELEG⦈ s') of λ where
    (delegate c mv mc d) h → case d ≟ requiredDeposit pp mv ⊔ requiredDeposit pp mc of λ where
      (yes p) → subst _ (just-injective $ by-reduceDec h) (DELEG-delegate {mv = mv} {mc} {s₁} {s₂} {rewards} {c} p)
      (no ¬p) → case by-reduceDec h of λ ()
    (regpool x x₁) → λ ()
    (retirepool x x₁) → λ ()
    (regdrep x x₁ _) → λ ()
    (deregdrep x) → λ ()
    (ccreghot x x₁) → λ ())
  (λ where (DELEG-delegate {mv = mv} {mc} {vDelegs} {sDelegs} {rwds} {c} h) → by-reduceDecInGoal
             (refl {x = just ⟦ insertIfJust c mv vDelegs , insertIfJust c mc sDelegs , rewards ⟧ᵈ}))

--Computational-CERTS : Computational _⊢_⇀⦇_,CERTS⦈_
--Computational-CERTS .compute     = {!!}
--Computational-CERTS .≡-just⇔STS = {!!}

\end{code}
