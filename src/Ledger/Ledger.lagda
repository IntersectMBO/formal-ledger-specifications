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
  aslot : Slot
  ppr : PParams
  txb : TxBody
\end{code}



\begin{code}
txToExUnits : Tx → ExUnits 
txToExUnits tx = (∑[ (_ , eu) ← (tx .wits .txrdmrs) ]  eu)
  where open Tx' ; open TxWitnesses

totExUnits : List Tx → ExUnits
totExUnits lstx = ∑[ au ← fromListᵐ (map (λ tx → ((tx .body .TxBody.txid) , txToExUnits tx)) lstx)] au
  where open Tx' ; open TxWitnesses



minfee : PParams → UTxO → Tx → Coin
minfee pp utxo tx  = pp .a * tx .body .txsize + pp .b
                     + txscriptfee (pp .prices) (totExUnits (tx ∷ (tx .body .subTxs)))
                     + scriptsCost pp (refScriptsSize utxo tx)
  -- + pp .minFeeRefScriptCoinsPerByte 
  -- *↓ ∑[ x ← mapValues scriptSize (setToHashMap (refScripts tx utxo)) ] x
  where open PParams; open Tx' ; open TxBody 

-- totalFee is computed instead of using top-level fee
feesOK : PParams → Tx → UTxO → Bool
feesOK pp tx utxo = minfee pp utxo tx ≤ᵇ totalFee ∧ (not (≟-∅ᵇ (txrdmrs ˢ)))
                  =>ᵇ ( allᵇ (λ (addr , _) → ¿ isVKeyAddr addr ¿) collateralRange
                      ∧ isAdaOnlyᵇ bal
                      ∧ (coin bal * 100) ≥ᵇ (totalFee * collateralPercentage)
                      ∧ not (≟-∅ᵇ collateral)
                      )
  where
    open Tx' tx; open TxBody body; open TxWitnesses wits; open PParams pp
    collateralRange  = range    ((mapValues txOutHash utxo) ∣ collateral)
    bal              = balance  (utxo ∣ collateral)
    totalFee            = (tx .Tx'.body .TxBody.txfee) + sum (map (λ p → p .Tx'.body .TxBody.txfee) (tx .Tx'.body .TxBody.subTxs))
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
noSubsInSubs l = foldr (λ a b → (emp (a .TxBody.subTxs)) ∧ b) true l
  where 
  emp : List Tx → Bool
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

adjustTx : ℙ Script → Bool → Tx → Tx 
adjustTx scs isv tx = record { body = body ; wits = record { TxWitnesses wits ; scripts = scs} ; isValid = isv ; txAD = txAD }
  where
    open Tx' tx ; open TxWitnesses 
\end{code}
\caption{Functions used in UTxO rules, continued}
\label{fig:functions:utxo-conway}
\end{figure*}

\begin{code}[hide]
record CertEnv' : Type where
  constructor ⟦_,_⟧ᶜᶜ
  field
    epoch     : Epoch
    pp        : PParams

data
  _⊢_⇀⦇_,CERTS'⦈_     : CertEnv' → CertState → TxBody → CertState → Type

data _⊢_⇀⦇_,CERTS'⦈_ where
  CERTS'-r :
    ∙ ⟦ epoch aslot , ppr , (txb .TxBody.txvote) , (txb .TxBody.txwdrls) ⟧ᶜ ⊢ certState ⇀⦇ (txb .TxBody.txcerts) ,CERTS⦈ certState'
      ────────────────────────────────
      ⟦ epoch aslot , ppr ⟧ᶜᶜ ⊢ certState ⇀⦇ txb ,CERTS'⦈ certState'
\end{code}

\begin{NoConway}
\begin{figure*}[h]
\begin{code}
_⊢_⇀⦇_,ALLCERTS⦈_ = ReflexiveTransitiveClosure _⊢_⇀⦇_,CERTS'⦈_
\end{code}
\caption{ALLGOV transition system}
\end{figure*}
\end{NoConway}

\begin{NoConway} 
\begin{figure*}[h]
\begin{code}
open RwdAddr
open DState
open CertState
open UTxOState

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
-- NOTE that rules 1-7 , as well as calling ALLUTXOW and ALLUTXOS are the same in isValid ≡ true AND isValid ≡ false cases
-- probably there is a nicer way to do this
  LEDGER-I : 
    let open UTxOState u renaming (utxo to utx); open Tx' tx; open TxBody body; open LEnv Γ renaming (pparams to pp); open PParams pp 
        bods           = map (λ t → t .Tx'.body) subTxs
        allScripts        = foldr (λ t l → (t .Tx'.wits .TxWitnesses.scripts) ∪ l) ∅ (tx ∷ subTxs)
        txsWithScripts  = map (adjustTx allScripts isValid) (tx ∷ subTxs)
        isBalanced        = consumed pp u (body ∷ bods) ≡ᵇ produced pp u (body ∷ bods) 

    in
    ∙ (isValid ≡ true)
    ∙ (feesOK pp tx utx ≡ true)         --1   
    ∙ isBalanced ≡ true --2
    ∙ (chkInsInUTxO (body ∷ bods) (dom utx)) -- 3 --? TODO discuss in CIP
    ∙ (txsize ≤ maxTxSize)  --4
    ∙ (maxTxExUnits ≡ maxTxExUnits) -- TODO actually supposed to be : ≥ᵉ totExUnits subTxs maxTxExUnits   --5
    ∙ (noSubsInSubs bods ≡ true) --6
    ∙ (noColsInSubs bods ≡ true) --7 -- TODO no collateral returns either (this is implied)
    ∙ (⟦ epoch slot , pp ⟧ᶜᶜ ⊢ certState ⇀⦇ (body ∷ bods) ,ALLCERTS⦈ certState')
    ∙ (⟦ txid , epoch slot , pp , ppolicy , enactState , certState' ⟧ᵍ ⊢ govSt |ᵒ certState' ⇀⦇ (map txgov (body ∷ bods)) ,ALLGOV⦈ govSt')

    ∙ record { LEnv Γ }  ⊢ u ⇀⦇ txsWithScripts ,ALLUTXOW⦈ u'
    ∙ record { LEnv Γ }  ⊢ u ⇀⦇ txsWithScripts ,ALLUTXOS⦈ u'
       ────────────────────────────────
       Γ ⊢  ⟦ u , govSt , certState ⟧ˡ ⇀⦇ tx ,LEDGER⦈ ⟦ u' , govSt' , certState' ⟧ˡ

  LEDGER-V : 
    let open UTxOState u renaming (utxo to utx); open Tx' tx; open TxBody body; open LEnv Γ renaming (pparams to pp); open PParams pp 
        bods           = map (λ t → t .Tx'.body) subTxs
        allScripts        = foldr (λ t l → (t .Tx'.wits .TxWitnesses.scripts) ∪ l) ∅ (tx ∷ subTxs)
        txsWithScripts  = map (adjustTx allScripts isValid) (tx ∷ subTxs)
        isBalanced        = consumed pp u (body ∷ bods) ≡ᵇ produced pp u (body ∷ bods) 

    in
    ∙ (isValid ≡ false)
    ∙ (feesOK pp tx utx ≡ true)         --1   
    ∙ isBalanced ≡ true --2
    ∙ (chkInsInUTxO (body ∷ bods) (dom utx)) -- 3 --? TODO discuss in CIP
    ∙ (txsize ≤ maxTxSize)  --4
    ∙ (maxTxExUnits ≡ maxTxExUnits) -- TODO actually supposed to be : ≥ᵉ totExUnits subTxs maxTxExUnits   --5
    ∙ (noSubsInSubs bods ≡ true) --6
    ∙ (noColsInSubs bods ≡ true) --7 -- TODO no returns either

    ∙ (record { LEnv Γ }  ⊢ u ⇀⦇ txsWithScripts ,ALLUTXOW⦈ u')
    ∙ (record { LEnv Γ }  ⊢ u ⇀⦇ txsWithScripts ,ALLUTXOS⦈ u')
       ────────────────────────────────
       Γ ⊢  ⟦ u , govSt , certState ⟧ˡ ⇀⦇ tx ,LEDGER⦈ ⟦ u' , govSt' , certState' ⟧ˡ
\end{code}
\end{NoConway}
\end{AgdaSuppressSpace}
\caption{LEDGER transition system}
\end{figure*}

\begin{NoConway}
\begin{figure*}[h]
\begin{code}
_⊢_⇀⦇_,LEDGERS⦈_ : LEnv → LState → List Tx → LState → Type
_⊢_⇀⦇_,LEDGERS⦈_ = ReflexiveTransitiveClosure _⊢_⇀⦇_,LEDGER⦈_
\end{code}
\caption{LEDGERS transition system}
\end{figure*}
\end{NoConway}

 