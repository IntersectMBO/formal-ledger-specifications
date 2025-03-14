\section{Enactment}
\label{sec:enactment}
\modulenote{\LedgerModule{Enact}}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Data.Nat.Properties using (+-0-monoid)
open import Data.Rational using (ℚ)

open import Ledger.Prelude
open import Ledger.Types.GovStructure

module Ledger.Enact (gs : _) (open GovStructure gs) where

open import Ledger.GovernanceActions gs
\end{code}

\Cref{fig:enact-defs} contains some definitions required to
define the ENACT transition system.  \EnactEnv{} is the environment and
\EnactState{} the state of ENACT, which enacts a governance action. All
governance actions except \TreasuryWdrl{} and \Info{} modify \EnactState{}
permanently, which of course can have further
consequences.  \TreasuryWdrl{} accumulates withdrawal temporarily in \EnactState{},
but this information is applied and discarded immediately in EPOCH.
Also, enacting these governance actions is the
\emph{only} way of modifying \EnactState{}.  The \withdrawals{} field of
\EnactState{} is special in that it is ephemeral---ENACT accumulates
withdrawals there which are paid out at the next epoch boundary where
this field will be reset.

Note that all other fields of \EnactState{} also contain a \GovActionID{}
since they are \HashProtected{}.

\begin{figure*}[ht]
\begin{AgdaMultiCode}
\begin{code}
record EnactEnv : Type where
  field
    gid       : GovActionID
    treasury  : Coin
    epoch     : Epoch

record EnactState : Type where
  field
    cc            : HashProtected (Maybe ((Credential ⇀ Epoch) × ℚ))
    constitution  : HashProtected (DocHash × Maybe ScriptHash)
    pv            : HashProtected ProtVer
    pparams       : HashProtected PParams
    withdrawals   : RwdAddr ⇀ Coin
\end{code}
\begin{code}[hide]
instance
  unquoteDecl To-EnactEnv = derive-To
    [ (quote EnactEnv , To-EnactEnv) ]

open EnactState
\end{code}
\begin{code}

ccCreds : HashProtected (Maybe ((Credential ⇀ Epoch) × ℚ)) → ℙ Credential
ccCreds (just x   , _)  = dom (x .proj₁)
ccCreds (nothing  , _)  = ∅

getHash : ∀ {a} → NeedsHash a → Maybe GovActionID
getHash {NoConfidence}     h = just h
getHash {UpdateCommittee}  h = just h
getHash {NewConstitution}  h = just h
getHash {TriggerHF}        h = just h
getHash {ChangePParams}    h = just h
getHash {TreasuryWdrl}     _ = nothing
getHash {Info}             _ = nothing

getHashES : EnactState → GovActionType → Maybe GovActionID
getHashES es NoConfidence       = just (es .cc .proj₂)
getHashES es (UpdateCommittee)  = just (es .cc .proj₂)
getHashES es (NewConstitution)  = just (es .constitution .proj₂)
getHashES es (TriggerHF)        = just (es .pv .proj₂)
getHashES es (ChangePParams)    = just (es .pparams .proj₂)
getHashES es (TreasuryWdrl)     = nothing
getHashES es Info               = nothing
\end{code}
\emph{Type of the ENACT transition system}
\begin{code}[hide]
data
\end{code}
\begin{code}
  _⊢_⇀⦇_,ENACT⦈_ : EnactEnv → EnactState → GovAction → EnactState → Type
\end{code}
\end{AgdaMultiCode}
\caption{Types and function used for the ENACT transition system}
\label{fig:enact-defs}
\end{figure*}
\begin{code}[hide]
open EnactState

private variable
  s : EnactState
  up : PParamsUpdate
  new : Credential ⇀ Epoch
  rem : ℙ Credential
  q : ℚ
  dh : DocHash
  sh : Maybe ScriptHash
  v : ProtVer
  wdrl : RwdAddr ⇀ Coin
  t : Coin
  gid : GovActionID
  e : Epoch

instance
  _ = +-0-monoid
\end{code}

\Cref{fig:sts:enact,fig:sts:enact-cont} define the rules of the ENACT transition
system. Usually no preconditions are checked and the state is simply
updated (including the \GovActionID{} for the hash protection scheme, if
required). The exceptions are \UpdateCommittee{} and \TreasuryWdrl{}:
\begin{itemize}
\item \UpdateCommittee{} requires that maximum terms are respected, and
\item \TreasuryWdrl{} requires that the treasury is able to cover the sum of all withdrawals (old and new).
\end{itemize}

\begin{figure*}[ht]
\begin{AgdaMultiCode}
\begin{code}[hide]
open PParams using (ccMaxTermLength)
open EnactState using (cc)
data _⊢_⇀⦇_,ENACT⦈_ where
\end{code}
\begin{code}
  Enact-NoConf :
    ───────────────────────────────────────
    ⟦ gid , t , e ⟧ ⊢ s ⇀⦇ ⟦ NoConfidence , _ ⟧ᵍᵃ ,ENACT⦈ record s { cc = nothing , gid }

  Enact-UpdComm : let old      = maybe proj₁ ∅ (s .cc .proj₁)
                      maxTerm  = s .pparams .proj₁ .ccMaxTermLength +ᵉ e
                  in
    ∀[ term ∈ range new ] term ≤ maxTerm
    ───────────────────────────────────────
    ⟦ gid , t , e ⟧ ⊢ s ⇀⦇ ⟦ UpdateCommittee , (new , rem , q) ⟧ᵍᵃ ,ENACT⦈
      record s { cc = just ((new ∪ˡ old) ∣ rem ᶜ , q) , gid }

  Enact-NewConst :
    ───────────────────────────────────────
    ⟦ gid , t , e ⟧ ⊢ s ⇀⦇ ⟦ NewConstitution , (dh , sh) ⟧ᵍᵃ ,ENACT⦈ record s { constitution = (dh , sh) , gid }
\end{code}
\end{AgdaMultiCode}
\caption{ENACT transition system}
\label{fig:sts:enact}
\end{figure*}
\begin{figure*}[ht]
\begin{AgdaMultiCode}
\begin{code}
  Enact-HF :
    ───────────────────────────────────────
    ⟦ gid , t , e ⟧ ⊢ s ⇀⦇ ⟦ TriggerHF , v ⟧ᵍᵃ ,ENACT⦈ record s { pv = v , gid }

  Enact-PParams :
    ───────────────────────────────────────
    ⟦ gid , t , e ⟧ ⊢ s ⇀⦇ ⟦ ChangePParams , up ⟧ᵍᵃ ,ENACT⦈
      record s { pparams = applyUpdate (s .pparams .proj₁) up , gid }

  Enact-Wdrl : let newWdrls = s .withdrawals ∪⁺ wdrl in
    ∑[ x ← newWdrls ] x ≤ t
    ───────────────────────────────────────
    ⟦ gid , t , e ⟧ ⊢ s ⇀⦇ ⟦ TreasuryWdrl , wdrl ⟧ᵍᵃ ,ENACT⦈ record s { withdrawals = newWdrls }

  Enact-Info :
    ───────────────────────────────────────
    ⟦ gid , t , e ⟧ ⊢ s ⇀⦇ ⟦ Info , _ ⟧ᵍᵃ ,ENACT⦈ s
\end{code}
\end{AgdaMultiCode}
\caption{ENACT transition system (continued)}
\label{fig:sts:enact-cont}
\end{figure*}
