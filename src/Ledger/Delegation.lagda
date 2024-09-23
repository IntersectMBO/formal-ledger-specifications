\begin{code}
{-# OPTIONS --safe #-}

open import Prelude using (Type)
open import Ledger.Types.GovStructure

module Ledger.Delegation
  (gs : _) (open GovStructure gs)
  where

open import Data.Maybe
import Data.Integer as ℤ

open import Ledger.GovernanceActions gs
open import Ledger.Prelude
open import Ledger.Prelude.Base

open import Agda.Builtin.FromNat

open import Tactic.Derive.DecEq

record PoolParams : Type where
  field
    rewardAddr : Credential

data DepositPurpose : Type where
  CredentialDeposit  : Credential   → DepositPurpose
  PoolDeposit        : KeyHash      → DepositPurpose
  DRepDeposit        : Credential   → DepositPurpose
  GovActionDeposit   : GovActionID  → DepositPurpose

instance
  unquoteDecl DecEq-DepositPurpose = derive-DecEq
    ((quote DepositPurpose , DecEq-DepositPurpose) ∷ [])

Deposits = DepositPurpose ⇀ Coin

data DCert : Type where
  delegate    : Credential → Maybe VDeleg → Maybe KeyHash → Coin → DCert
  dereg       : Credential → Coin → DCert
  regpool     : KeyHash → PoolParams → DCert
  retirepool  : KeyHash → Epoch → DCert
  regdrep     : Credential → Coin → Anchor → DCert
  deregdrep   : Credential → Coin → DCert
  ccreghot    : Credential → Maybe Credential → DCert

cwitness : DCert → Credential
cwitness (delegate c _ _ _)  = c
cwitness (dereg c _)         = c
cwitness (regpool kh _)      = KeyHashObj kh
cwitness (retirepool kh _)   = KeyHashObj kh
cwitness (regdrep c _ _)     = c
cwitness (deregdrep c _)     = c
cwitness (ccreghot c _)      = c

record RewardUpdate : Set where
  constructor ⟦_,_,_,_⟧ʳᵘ
  field
    Δt Δr Δf : ℤ
    rs : Credential ⇀ Coin
    {zeroSum} : Δt + Δr + Δf + ℤ.+ ∑[ x ← rs ] x ≡ ℤ.0ℤ
\end{code}
