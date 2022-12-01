\begin{code}[hide]
{-# OPTIONS --safe #-}
open import Ledger.Crypto

open import Ledger.Prelude hiding (yes; no)

module Ledger.GovernanceActions (TxId Network DocHash PParamsUpdate : Set)
                                (crypto : Crypto) ⦃ _ : DecEq Network ⦄ where

open Crypto crypto

open import Ledger.Address Network KeyHash ScriptHash

open import Tactic.Derive.DecEq
open import MyDebugOptions

private
  Coin = ℕ
\end{code}
\begin{figure*}[h]
\begin{code}
GovActionID : Set
GovActionID = TxId × ℕ

data GovRole : Set where
  CC    : GovRole
  DRep  : GovRole
  SPO   : GovRole

instance
  unquoteDecl DecEq-GovRole = derive-DecEq ((quote GovRole , DecEq-GovRole) ∷ [])

record GovMD : Set where
  field url   : String
        hash  : DocHash

data GovAction : Set where
  NoConfidence     : GovAction
  NewCommittee     : ℙ KeyHash → ℕ        → GovAction
  NewConstitution  : DocHash              → GovAction
  TriggerHF        : ℕ                    → GovAction
  ChangePParams    : PParamsUpdate        → GovAction
  TreasuryWdrl     : (Credential ↛ Coin)  → GovAction

data Vote : Set where
  yes      : Vote
  no       : Vote
  present  : Vote

data GovProcedure : Set where
  vote     : GovActionID → GovRole → KeyHash → Vote → GovMD → GovProcedure
  propose  : Coin → RwdAddr → GovAction → GovMD → GovProcedure
\end{code}
\caption{Governance actions and votes}
\label{defs:governance}
\end{figure*}
