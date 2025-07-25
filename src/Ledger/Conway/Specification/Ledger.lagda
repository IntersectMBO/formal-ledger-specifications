\section{Ledger}
\label{sec:ledger}
\modulenote{\ConwayModule{Ledger}}, where the entire state transformation of the
ledger state caused by a valid transaction can now be given as a combination of the
previously defined transition systems.

\begin{Conway}
As there is nothing new to the Conway era in this part of the ledger, we do not
present any details of the Agda formalization.
%% TODO: we need a way to reference the latest full spec
\end{Conway}

\begin{code}[hide]
{-# OPTIONS --safe #-}

import Data.List as L

open import Ledger.Prelude
open import Ledger.Conway.Specification.Abstract
open import Ledger.Conway.Specification.Transaction using (TransactionStructure)

module Ledger.Conway.Specification.Ledger
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Conway.Specification.Enact govStructure
open import Ledger.Conway.Specification.Gov txs
open import Ledger.Conway.Specification.Utxo txs abs
open import Ledger.Conway.Specification.Utxow txs abs
open import Ledger.Conway.Specification.Certs govStructure

open Tx
open GState
open GovActionState
open EnactState using (cc)
\end{code}

\begin{figure*}[ht]
\begin{AgdaMultiCode}
\begin{code}
record LEnv : Type where
  field
    slot        : Slot
    ppolicy     : Maybe ScriptHash
    pparams     : PParams
    enactState  : EnactState
    treasury    : Coin
\end{code}
\begin{code}[hide]
instance
  HasPParams-LEnv : HasPParams LEnv
  HasPParams-LEnv .PParamsOf = LEnv.pparams
\end{code}
\begin{code}


record LState : Type where
\end{code}
\begin{code}[hide]
  constructor ⟦_,_,_⟧ˡ
\end{code}
\begin{code}
  field
    utxoSt     : UTxOState
    govSt      : GovState
    certState  : CertState

\end{code}
\begin{code}[hide]
record HasLState {a} (A : Type a) : Type a where
  field LStateOf : A → LState
open HasLState ⦃...⦄ public

instance
  HasUTxOState-LState : HasUTxOState LState
  HasUTxOState-LState .UTxOStateOf = LState.utxoSt

  HasUTxO-LState : HasUTxO LState
  HasUTxO-LState .UTxOOf = UTxOOf ∘ UTxOStateOf

  HasGovState-LState : HasGovState LState
  HasGovState-LState .GovStateOf = LState.govSt

  HasCertState-LState : HasCertState LState
  HasCertState-LState .CertStateOf = LState.certState

  HasDeposits-LState : HasDeposits LState
  HasDeposits-LState .DepositsOf = DepositsOf ∘ UTxOStateOf

open CertState
open DState

instance
  unquoteDecl HasCast-LEnv HasCast-LState = derive-HasCast
    ((quote LEnv , HasCast-LEnv) ∷ (quote LState , HasCast-LState) ∷ [])
\end{code}
\begin{code}
txgov : TxBody → List (GovVote ⊎ GovProposal)
txgov txb = map inj₂ txprop ++ map inj₁ txvote
  where open TxBody txb

rmOrphanDRepVotes : CertState → GovState → GovState
rmOrphanDRepVotes cs govSt = L.map (map₂ go) govSt
  where
   ifDRepRegistered : Voter → Type
   ifDRepRegistered (r , c) = r ≡ DRep → c ∈ dom (cs .gState .dreps)

   go : GovActionState → GovActionState
   go gas = record gas { votes = filterKeys ifDRepRegistered (gas .votes) }

allColdCreds : GovState → EnactState → ℙ Credential
allColdCreds govSt es =
  ccCreds (es .cc) ∪ concatMapˢ (λ (_ , st) → proposedCC (st .action)) (fromList govSt)
\end{code}
\end{AgdaMultiCode}
\caption{Types and functions for the LEDGER transition system}
\end{figure*}
\begin{code}[hide]
private variable
  Γ : LEnv
  s s' s'' : LState
  utxoSt utxoSt' : UTxOState
  govSt govSt' : GovState
  certState certState' : CertState
  tx : Tx
  slot : Slot
  ppolicy : Maybe ScriptHash
  pp : PParams
  enactState : EnactState
  treasury : Coin
\end{code}

\begin{figure*}[ht]
\begin{AgdaMultiCode}
\begin{code}
data _⊢_⇀⦇_,LEDGER⦈_ : LEnv → LState → Tx → LState → Type where

  LEDGER-V :
    let  txb         = tx .body
\end{code}
\begin{code}[hide]
         open TxBody txb
\end{code}
\begin{code}
         rewards     = certState .dState .rewards
    in
    ∙ isValid tx ≡ true
    ∙ ⟦ slot , pp , treasury ⟧  ⊢ utxoSt ⇀⦇ tx ,UTXOW⦈ utxoSt'
    ∙ ⟦ epoch slot , pp , txvote , txwdrls , allColdCreds govSt enactState ⟧ ⊢ certState ⇀⦇ txcerts ,CERTS⦈ certState'
    ∙ ⟦ txid , epoch slot , pp , ppolicy , enactState , certState' , dom rewards ⟧ ⊢ rmOrphanDRepVotes certState' govSt ⇀⦇ txgov txb ,GOVS⦈ govSt'
      ────────────────────────────────
      ⟦ slot , ppolicy , pp , enactState , treasury ⟧ ⊢ ⟦ utxoSt , govSt , certState ⟧ ⇀⦇ tx ,LEDGER⦈ ⟦ utxoSt' , govSt' , certState' ⟧

  LEDGER-I :
    ∙ isValid tx ≡ false
    ∙ ⟦ slot , pp , treasury ⟧ ⊢ utxoSt ⇀⦇ tx ,UTXOW⦈ utxoSt'
      ────────────────────────────────
      ⟦ slot , ppolicy , pp , enactState , treasury ⟧ ⊢ ⟦ utxoSt , govSt , certState ⟧ ⇀⦇ tx ,LEDGER⦈ ⟦ utxoSt' , govSt , certState ⟧
\end{code}
\end{AgdaMultiCode}
\caption{LEDGER transition system}
\end{figure*}
\begin{code}[hide]
pattern LEDGER-V⋯ w x y z = LEDGER-V (w , x , y , z)
pattern LEDGER-I⋯ y z     = LEDGER-I (y , z)
\end{code}

\begin{NoConway}
\begin{figure*}[h]
\begin{code}
_⊢_⇀⦇_,LEDGERS⦈_ : LEnv → LState → List Tx → LState → Type
_⊢_⇀⦇_,LEDGERS⦈_ = ReflexiveTransitiveClosure {sts = _⊢_⇀⦇_,LEDGER⦈_}
\end{code}
\caption{LEDGERS transition system}
\end{figure*}
\end{NoConway}
