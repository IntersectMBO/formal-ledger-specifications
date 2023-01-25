\section{Governance actions}

\begin{code}[hide]
{-# OPTIONS --safe #-}
open import Ledger.Crypto

open import Ledger.Prelude hiding (yes; no)
open import Ledger.Epoch

import Ledger.PParams as PP

open import Data.Rational using (ℚ)

module Ledger.GovernanceActions (TxId Network DocHash : Set)
                                (es : EpochStructure) (open EpochStructure es)
                                (ppd : PP.PParamsDiff Epoch)
                                (crypto : Crypto) ⦃ _ : DecEq Network ⦄ where

open Crypto crypto

open import Ledger.Address Network KeyHash ScriptHash

open PP Epoch
open PParamsDiff ppd

open import Tactic.Derive.DecEq
open import MyDebugOptions

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
  NewCommittee     : ℙ KeyHash → ℚ        → GovAction
  NewConstitution  : DocHash              → GovAction
  TriggerHF        : ProtVer              → GovAction
  ChangePParams    : UpdateT              → GovAction
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

\begin{figure*}[h]
\begin{code}
record EnactEnv : Set where

record EnactState : Set where
  field cc            : Maybe (ℙ KeyHash × ℚ)
        constitution  : DocHash
        pv            : ProtVer
        pparams       : PParams
        -- Acnt
        -- Rwds
\end{code}
\begin{code}[hide]
open EnactState

private variable
  s : EnactState
  up : UpdateT
  mem : ℙ KeyHash
  q : ℚ
  dh : DocHash
  v : ProtVer

data
\end{code}
\begin{code}
  _⊢_⇀⦇_,ENACT⦈_ : EnactEnv → EnactState → GovAction → EnactState → Set
\end{code}
\begin{code}[hide]
data _⊢_⇀⦇_,ENACT⦈_ where
\end{code}
\begin{code}

  Enact-NoConf    : _ ⊢ s ⇀⦇ NoConfidence        ,ENACT⦈  record s { cc = nothing }
  Enact-NewComm   : _ ⊢ s ⇀⦇ NewCommittee mem q  ,ENACT⦈  record s { cc = just (mem , q) }
  Enact-NewConst  : _ ⊢ s ⇀⦇ NewConstitution dh  ,ENACT⦈  record s { constitution = dh }
  Enact-HF        : _ ⊢ s ⇀⦇ TriggerHF v         ,ENACT⦈  record s { pv = v }
  Enact-PParams   : _ ⊢ s ⇀⦇ ChangePParams up    ,ENACT⦈  record s { pparams = applyUpdate (s .pparams) up }
  --Enact-Wdrl      : _ ⊢ s ⇀⦇ TreasuryWdrl wdrl  ,ENACT⦈  record s { ... }
\end{code}
\caption{ENACT transition system}
\end{figure*}
