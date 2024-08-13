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

record SwapEnv : Type where
\end{code}
\begin{code}[hide]
  constructor ⟦_,_,_,_,_⟧ˢᵉ
  field
\end{code}
\begin{code}
    lenv        : LEnv
    bdat        : BatchData
    reqObs      : ℙ ScriptHash
    bScripts      : ℙ Script
    valP        : Bool

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
  Γ' : SwapEnv
  s s' s'' : LState
  u u' : UTxOState
  govSt govSt' : GovState
  certState certState' : CertState
  tx : Tx
\end{code}



\begin{code}
txToExUnits : Tx → ExUnits 
txToExUnits tx = (∑[ (_ , eu) ← (tx .wits .txrdmrs) ]  eu)
  where open Tx; open TxWitnesses

-- sum up all units across all transactions TODO this is wrong!
totExUnits : List Tx → ExUnits
totExUnits lstx = ∑[ au ← fromListᵐ (map (λ tx → ((tx .body .TxBody.txid) , txToExUnits tx)) lstx)] au
  where open Tx; open TxWitnesses


minfee : PParams → UTxO → Tx → Coin
minfee pp utxo tx  = pp .a * tx .body .txsize + pp .b
                     + txscriptfee (pp .prices) (totExUnits (tx ∷ (tx .subTxs)))
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
    totalFee            = (tx .Tx.body .TxBody.txfee) + sum (map (λ p → p .Tx.body .TxBody.txfee) (tx .Tx.subTxs))
\end{code}

\begin{figure*}
\begin{code}[hide]
module _ (let open UTxOState) where
\end{code}
\begin{code}

  deleteFirst : TxOut → List TxOut → List TxOut
  deleteFirst _ [] = [] 
  deleteFirst a (b ∷ bc) with ((txOutHash a) ≟ (txOutHash b))
  ... | yes _   = bc 
  ... | no _  = b ∷ deleteFirst a bc

  -- do two lists have the same elements?
  compareLists : List TxOut → List TxOut → Set 
  compareLists [] [] = true ≡ true
  compareLists (_ ∷ l) [] = false ≡ true
  compareLists [] (_ ∷ l) = false ≡ true
  compareLists (a ∷ l1) (b ∷ l2) = (a ∈ fromList (b ∷ l2) ) × (compareLists l1 (deleteFirst a (b ∷ l2) ))

  -- check ins in top-level tx correspond to spendOuts in the UTxO set
  -- could do this instead by forcing explicit indexing, ie spendOuts : TxIn - TxOut
  chkCorInsOuts : List TxBody → UTxO → Set 
  chkCorInsOuts tbl uu = compareLists (foldr (_++_) [] (map (λ p → (map proj₂ (setToList (proj₁ (p .TxBody.spendOuts))))) tbl))  (map proj₂ (setToList (proj₁ uu))) 

  -- no regular inputs in any transaction are in corInputs of the top-level
  chkCorIns : List TxBody → ℙ TxIn → Set
  chkCorIns txbods cins = foldr (λ t l → (t .TxBody.txins ∩ cins ≢ ∅) × l) (true ≡ true) txbods

  -- all corInputs and inputs are the UTxO
  chkInsInUTxO : List TxBody → ℙ TxIn → Set
  chkInsInUTxO txbods uins = foldr (λ t l → (t .TxBody.txins ∪ t .TxBody.corInputs ⊆ uins) × l) (true ≡ true) txbods

  singleInvalid : BatchData → List Tx → Bool
  singleInvalid SingularTransaction (tx ∷ []) with (tx .Tx.isValid)
  ... | true = false 
  ... | false = true 
  singleInvalid _ _ = false

  -- if tx is balanced, and all new features are empty, this is true
  noNewFeatures : Bool → TxBody → Bool
  noNewFeatures isBalanced txb with ((((isBalanced , setToList (txb .TxBody.requireBatchObservers)) , setToList (proj₁ (txb .TxBody.spendOuts))) , setToList (txb .TxBody.corInputs  )) , setToList (txb .TxBody.subTxIds ))
  ... | ((((true , []) , [] ) , []) , []) = true 
  ... | _ = false 

  mkBatchData : Bool → List Tx → BatchData
  mkBatchData  _ [] = SingularTransaction -- should not happen
  mkBatchData isBalanced (tx ∷ []) with (noNewFeatures isBalanced (tx .Tx.body)) 
  ... | false = SingularTransaction 
  ... | true  = OldTransaction 
  mkBatchData _ (tx ∷ txs) = BatchParent (tx .Tx.body .TxBody.txid) (foldr (λ p q → q ∧ (p .Tx.isValid)) true (tx ∷ txs))

  -- fold over all transaction bodies 
  -- add corInputs to total balance
  consumed : PParams → UTxOState → List TxBody → Value
  consumed pp st txbls
    =  foldr  (λ txb → (let open TxBody in 
    balance (st .utxo ∣ txb .txins)
    +  txb .mint
    +  inject (depositRefunds pp st txb)
    +  inject (getCoin (txb .txwdrls))
    +  balance (st .utxo ∣ txb .corInputs)) +_) (inject 0) txbls

  -- fold over all transaction bodies 
  produced : PParams → UTxOState → List TxBody → Value
  produced pp st txbls
    =  foldr (λ txb → (let open TxBody in balance (outs txb)
    +  inject (txb .txfee)
    +  inject (newDeposits pp st txb)
    +  inject (txb .txdonation)) +_) (inject 0) txbls

  getIDs : List Tx → ℙ TxId 
  getIDs ls = foldr (λ t → (singleton (t .Tx.body .TxBody.txid) ∪_ )) ∅ ls

  getValidPath : BatchData → List Tx → Bool
  getValidPath (BatchParent _ batchValid) _ = batchValid
  getValidPath SingularTransaction (tx ∷ l) = tx .Tx.isValid
  getValidPath OldTransaction (tx ∷ l) = tx .Tx.isValid
  getValidPath _ _ = false

  getIsTop : BatchData → Tx → Bool
  getIsTop (BatchParent tid batchValid) tx = (tid ≡ᵇ (tx .Tx.body .TxBody.txid)) 
  getIsTop _ _ = false

  invOrNotBalanced : BatchData → List Tx → Bool → Set
  invOrNotBalanced bd txs isBalanced = (singleInvalid bd txs ≡ false) → (isBalanced ≡ true)

  mkSwapEnv : LEnv → Tx → UTxOState → SwapEnv
  mkSwapEnv l tx u = ⟦ l , bd ,  tx .Tx.body .TxBody.requireBatchObservers , allScripts , vp ⟧ˢᵉ
    where 
      txs'               = tx ∷ (tx .Tx.subTxs)
      txBods            = (map (λ p → p .Tx.body)  (tx .Tx.subTxs))
      allScripts        = foldr (λ t l → (t .Tx.wits .TxWitnesses.scripts) ∪ l) ∅ txs' 
      pp                = l .LEnv.pparams
      isBalanced        = consumed pp u ((tx .Tx.body) ∷ txBods) ≡ᵇ produced pp u ((tx .Tx.body) ∷ txBods) 
      bd                = mkBatchData isBalanced txs' 
      vp                = getValidPath bd txs'

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
  _⊢_⇀⦇_,SWAP⦈_ : SwapEnv → LState → Tx → LState → Type
\end{code}
\begin{code}[hide]
  where
\end{code}
\caption{The type of the SWAP transition system}
\end{figure*}
\begin{figure*}[h]
\begin{AgdaSuppressSpace}
\begin{code}
  SWAP-V : let open Tx tx renaming (body to txb); open TxBody txb; open SwapEnv Γ' ; open LEnv lenv  
    in
    ∙  valP ≡ true
    ∙  ⟦ epoch slot , pparams , txvote , txwdrls ⟧ᶜ ⊢ certState ⇀⦇ txcerts ,CERTS⦈ certState'
    ∙  ⟦ txid , epoch slot , pparams , ppolicy , enactState , certState' ⟧ᵍ ⊢ govSt |ᵒ certState' ⇀⦇ txgov txb ,GOV⦈ govSt'
    ∙  record { LEnv lenv ; batchData = bdat ; bObs = reqObs ; batchScripts = bScripts ; validPath = true ; isTop = getIsTop bdat tx } ⊢ u ⇀⦇ tx ,UTXOW⦈ u'
       ────────────────────────────────
       Γ' ⊢ ⟦ u , govSt , certState ⟧ˡ ⇀⦇ tx ,SWAP⦈ ⟦ u' , govSt' , certState' ⟧ˡ

  SWAP-I : let open SwapEnv Γ' 
    in
    ∙ (valP ≡ false)
    ∙ record { LEnv lenv ; batchData = bdat ; bObs = reqObs ; batchScripts = bScripts ; validPath = false ; isTop = getIsTop bdat tx } ⊢ u ⇀⦇ tx ,UTXOW⦈ u'
      ────────────────────────────────
       Γ' ⊢ ⟦ u , govSt , certState ⟧ˡ ⇀⦇ tx ,SWAP⦈ ⟦ u' , govSt , certState ⟧ˡ
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
_⊢_⇀⦇_,SWAPS⦈_ : SwapEnv → LState → List Tx → LState → Type
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
        txBods            = (map (λ p → p .Tx.body)  subTxs)
        txs               = tx ∷ subTxs 
        isBalanced        = consumed pp u (body ∷ txBods) ≡ᵇ produced pp u (body ∷ txBods) 
        bd                = mkBatchData isBalanced txs 
        allScripts        = foldr (λ t l → (t .Tx.wits .TxWitnesses.scripts) ∪ l) ∅ txs 

    in
    ∙ (feesOK pp tx utx ≡ true)         --1       
    ∙ (chkCorIns (body ∷ txBods) (body .TxBody.corInputs )) -- 2
    ∙ (chkCorInsOuts (body ∷ txBods) (utx ∣ corInputs)) -- 3
    ∙ (chkInsInUTxO (body ∷ txBods) (dom utx)) -- 4
    ∙ (invOrNotBalanced bd txs isBalanced)    -- 5
    ∙ (txsize ≤ maxTxSize)  --6
    ∙ (maxTxExUnits ≡ maxTxExUnits) -- TODO actually supposed to be : ≥ᵉ totExUnits txs maxTxExUnits   --7 
    ∙ (getIDs subTxs ≡ subTxIds) -- TODO can we put subTxs directly in body? --8
    ∙ (lengthˢ subTxIds ≡ length subTxs) -- no repeated transactions --9
    ∙ (⟦ Γ , bd , body .TxBody.requireBatchObservers , allScripts , getValidPath bd txs ⟧ˢᵉ) ⊢ ⟦ u , govSt , certState ⟧ˡ ⇀⦇ txs ,SWAPS⦈ ⟦ u' , govSt' , certState' ⟧ˡ
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
 