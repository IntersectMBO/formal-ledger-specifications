\section{Ledger State Transition}

\begin{code}[hide]
{-# OPTIONS --safe #-}

import Data.List as L

open import Ledger.Prelude
open import Ledger.Abstract
open import Ledger.Transaction using (TransactionStructure)

module Ledger.Ledger
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where
   

open import Ledger.Enact govStructure
open import Ledger.Gov txs
open import Ledger.Utxo txs abs
open import Ledger.Utxow txs abs
open import Ledger.Certs govStructure
open import Ledger.Fees txs using (scriptsCost)

open GState
open GovActionState

\end{code}

The entire state transformation of the ledger state caused by a valid
transaction can now be given as a combination of the previously
defined transition systems.

\begin{figure*}[h]
\begin{AgdaMultiCode}
\begin{code}
record LEnv : Type where
\end{code}
\begin{code}[hide]
  constructor ⟦_,_,_,_,_⟧ˡᵉ
  field
\end{code}
\begin{code}
    slot        : Slot
    ppolicy     : Maybe ScriptHash
    pparams     : PParams
    enactState  : EnactState
    treasury    : Coin

record LState : Type where
\end{code}
\begin{code}[hide]
  constructor ⟦_,_,_⟧ˡ
  field
\end{code}
\begin{code}
    utxoSt     : UTxOState
    govSt      : GovState
    certState  : CertState

txgov : TxBody → List (GovVote ⊎ GovProposal)
txgov txb = map inj₂ txprop ++ map inj₁ txvote
  where open TxBody txb

isUnregisteredDRep : CertState → Voter → Type
isUnregisteredDRep ⟦ _ , _ , gState ⟧ᶜˢ (r , c) = r ≡ DRep × c ∉ dom (gState .dreps)

removeOrphanDRepVotes : CertState → GovActionState → GovActionState
removeOrphanDRepVotes certState gas = record gas { votes = votes′ }
  where
    votes′ = filterKeys (¬_ ∘ isUnregisteredDRep certState) (votes gas)

_|ᵒ_ : GovState → CertState → GovState
govSt |ᵒ certState = L.map (map₂ (removeOrphanDRepVotes certState)) govSt
\end{code}
\end{AgdaMultiCode}
\caption{Types and functions for the LEDGER and SWAP transition systems}
\end{figure*}
\begin{code}[hide]
private variable
  Γ : LEnv
  s s' s'' : LState
  u u' : UTxOState
  govSt govSt' : GovState
  certState certState' : CertState
  tx : Tx
\end{code}



\begin{code}
txToExUnits : (RdmrPtr  ⇀ Redeemer × ExUnits) → ExUnits 
txToExUnits rdmrs = (∑[ (_ , eu) ← rdmrs ]  eu)
  where open Tx; open TxWitnesses

-- sum up all units across all transactions TODO this is wrong!
totExUnits : Tx → ExUnits
totExUnits tx = ∑[ au ← (mapValues txToExUnits (subTxRdmrs ∪ˡ (singletonᵐ txid txrdmrs)) ) ] au
 where open Tx tx; open TxWitnesses wits ; open TxBody body


minfee : PParams → UTxO → Tx → Coin
minfee pp utxo tx  = pp .a * tx .body .txsize + pp .b
                     + txscriptfee (pp .prices) (totExUnits tx)
                     + scriptsCost pp (refScriptsSize utxo tx)
  -- + pp .minFeeRefScriptCoinsPerByte 
  -- *↓ ∑[ x ← mapValues scriptSize (setToHashMap (refScripts tx utxo)) ] x
  where open PParams; open Tx ; open TxBody 

-- totalFee is computed instead of using top-level fee
feesOK : PParams → Tx → UTxO → Bool
feesOK pp tx utxo = minfee pp utxo tx ≤ᵇ totalFee ∧ (not (≟-∅ᵇ (txrdmrs ˢ)))
                  =>ᵇ ( allᵇ (λ (addr , _) → ¿ isVKeyAddr addr ¿) collateralRange
                      ∧ isAdaOnlyᵇ bal
                      ∧ (coin bal * 100) ≥ᵇ (totalFee * collateralPercentage)
                      ∧ not (≟-∅ᵇ collateral)
                      )
  where
    open Tx tx; open TxBody body; open TxWitnesses wits; open PParams pp
    collateralRange  = range    ((mapValues txOutHash utxo) ∣ collateral)
    bal              = balance  (utxo ∣ collateral)
    totalFee            = (tx .Tx.body .TxBody.txfee) + sum (map (λ p → p .TxBody.txfee) (tx .Tx.body .TxBody.subTxBodies))
\end{code}

\begin{figure*}
\begin{code}[hide]
module _ (let open UTxOState) where
\end{code}
\begin{code}

   -- all corInputs and inputs are the UTxO
  chkInsInUTxO : List TxBody → ℙ TxIn → Set
  chkInsInUTxO txbods uins = foldr (λ t l → (t .TxBody.txins ⊆ uins) × l) (true ≡ true) txbods

  -- fold over all transaction bodies 
  -- add corInputs to total balance
  consumed : PParams → UTxOState → List TxBody → Value
  consumed pp st txbls
    =  foldr  (λ txb → (let open TxBody in 
    balance (st .utxo ∣ txb .txins)
    +  txb .mint
    +  inject (depositRefunds pp st txb)
    +  inject (getCoin (txb .txwdrls))) +_) (inject 0) txbls

  -- fold over all transaction bodies 
  produced : PParams → UTxOState → List TxBody → Value
  produced pp st txbls
    =  foldr (λ txb → (let open TxBody in balance (outs txb)
    +  inject (txb .txfee)
    +  inject (newDeposits pp st txb)
    +  inject (txb .txdonation)) +_) (inject 0) txbls
  
noSubsInSubs : List TxBody → Bool
noSubsInSubs l = foldr (λ a b → (emp (a .TxBody.subTxBodies)) ∧ b) true l
  where 
  emp : List TxBody → Bool
  emp [] = true 
  emp (t ∷ k) = false

noColsInSubs : List TxBody → Bool
noColsInSubs l = foldr (λ a b → (emp (setToList (a .TxBody.collateral))) ∧ b) true l
  where 
  emp : List TxIn → Bool
  emp [] = true 
  emp (t ∷ k) = false

lookupOrNothingᵐ : ∀ {A B} → ⦃ _ : DecEq A ⦄ → A ⇀ B → A → B → B 
lookupOrNothingᵐ mp k default with lookupᵐ? mp k
... | nothing = default 
... | just a = a

-- TODO txdats should be only the relevant ones!
mkTx : Tx → TxBody → Tx 
mkTx tx txb = record { body = txb ; wits = record { vkSigs = lookupOrNothingᵐ subTxSigs txid ∅ᵐ ; subTxSigs = ∅ᵐ ; scripts = scripts ; txdats = txdats ; txrdmrs = lookupOrNothingᵐ subTxRdmrs txid ∅ᵐ ; subTxRdmrs = ∅ᵐ } ; isValid = isValid ; txAD = lookupOrNothingᵐ subTxADs txid nothing ; subTxADs = ∅ᵐ }
 where open Tx tx; open TxWitnesses wits ; open TxBody body

\end{code}
\caption{Functions used in UTxO rules, continued}
\label{fig:functions:utxo-conway}
\end{figure*}



\begin{NoConway} 
\begin{figure*}[h]
\begin{code}[hide]
open RwdAddr
open DState
open CertState
open UTxOState

data
\end{code}
\begin{code}
  _⊢_⇀⦇_,SWAP⦈_ : LEnv → LState → Tx → LState → Type
\end{code}
\begin{code}[hide]
  where
\end{code}
\caption{The type of the SWAP transition system}
\end{figure*}
\begin{figure*}[h]
\begin{AgdaSuppressSpace}
\begin{code}
  SWAP-V : let open Tx tx renaming (body to txb); open TxBody txb; open LEnv Γ
    in
    ∙  isValid ≡ true
    ∙  ⟦ epoch slot , pparams , txvote , txwdrls ⟧ᶜ ⊢ certState ⇀⦇ txcerts ,CERTS⦈ certState'
    ∙  ⟦ txid , epoch slot , pparams , ppolicy , enactState , certState' ⟧ᵍ ⊢ govSt |ᵒ certState' ⇀⦇ txgov txb ,GOV⦈ govSt'
    ∙  record { LEnv Γ } ⊢ u ⇀⦇ tx ,UTXOW⦈ u'
       ────────────────────────────────
       Γ ⊢ ⟦ u , govSt , certState ⟧ˡ ⇀⦇ tx ,SWAP⦈ ⟦ u' , govSt' , certState' ⟧ˡ

  SWAP-I : let open Tx tx renaming (body to txb); open TxBody txb; open LEnv Γ 
    in
    ∙ (isValid ≡ false)
    ∙ record { LEnv Γ }  ⊢ u ⇀⦇ tx ,UTXOW⦈ u'
      ────────────────────────────────
       Γ ⊢ ⟦ u , govSt , certState ⟧ˡ ⇀⦇ tx ,SWAP⦈ ⟦ u' , govSt , certState ⟧ˡ
\end{code}
\end{AgdaSuppressSpace}
\caption{SWAP transition system}
\end{figure*}
\begin{code}[hide]
pattern SWAP-V⋯ w x y z = SWAP-V (w , x , y , z)
pattern SWAP-I⋯ y z     = SWAP-I (y , z)
\end{code}


\begin{NoConway}
\begin{figure*}[h]
\begin{code}
_⊢_⇀⦇_,SWAPS⦈_ : LEnv → LState → List Tx → LState → Type
_⊢_⇀⦇_,SWAPS⦈_ = ReflexiveTransitiveClosure _⊢_⇀⦇_,SWAP⦈_
\end{code}
\caption{LEDGERS transition system}
\end{figure*}
\end{NoConway}


\begin{figure*}[h]
\begin{code}[hide]

data
\end{code}
\begin{code}
  _⊢_⇀⦇_,LEDGER⦈_ : LEnv → LState → Tx → LState → Type
\end{code}
\begin{code}[hide]
  where
\end{code}
\caption{The type of the LEDGER transition system}
\end{figure*}
\end{NoConway}

\begin{figure*}[htb]
\begin{figure*}[h]
\begin{AgdaSuppressSpace}
\begin{code}
  LEDGER-Ind : 
    let open UTxOState u renaming (utxo to utx); open Tx tx; open TxBody body; open LEnv Γ renaming (pparams to pp); open PParams pp 
        txs            = tx ∷ (map (mkTx tx) subTxBodies)
        isBalanced        = consumed pp u (body ∷ subTxBodies) ≡ᵇ produced pp u (body ∷ subTxBodies) 

    in
    ∙ (feesOK pp tx utx ≡ true)         --1       
    ∙ (chkInsInUTxO (body ∷ subTxBodies) (dom utx)) -- 4
    ∙ (txsize ≤ maxTxSize)  --6
    ∙ (maxTxExUnits ≡ maxTxExUnits) -- TODO actually supposed to be : ≥ᵉ totExUnits txs maxTxExUnits   --7 
    ∙ Γ ⊢ ⟦ u , govSt , certState ⟧ˡ ⇀⦇ txs ,SWAPS⦈ ⟦ u' , govSt' , certState' ⟧ˡ
    ∙  noSubsInSubs subTxBodies ≡ true 
    ∙  noColsInSubs subTxBodies ≡ true 
       ────────────────────────────────
       Γ ⊢  ⟦ u , govSt , certState ⟧ˡ ⇀⦇ tx ,LEDGER⦈ ⟦ u' , govSt' , certState' ⟧ˡ
\end{code}
\end{NoConway}
\end{AgdaSuppressSpace}
\caption{LEDGER transition system}
\end{figure*}
\begin{code}[hide]
pattern LEDGER-Ind⋯  p1  p2 p3  p4 p5  p6 p7 p8 p9 p10 = LEDGER-Ind (p1  , p2 , p3  , p4 , p5  , p6 , p7 , p8 , p9 , p10)
unquoteDecl LEDGER-premises = genPremises LEDGER-premises (quote LEDGER-Ind)
\end{code}

\begin{NoConway}
\begin{figure*}[h]
\begin{code}
_⊢_⇀⦇_,LEDGERS⦈_ : LEnv → LState → List Tx → LState → Type
_⊢_⇀⦇_,LEDGERS⦈_ = ReflexiveTransitiveClosure _⊢_⇀⦇_,LEDGER⦈_
\end{code}
\caption{LEDGERS transition system}
\end{figure*}
\end{NoConway}
 