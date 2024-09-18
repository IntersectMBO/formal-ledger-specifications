\section{Ledger State Transition}

\begin{code}[hide]
{-# OPTIONS --safe #-}

import Data.List as L

open import Ledger.Prelude
open import Ledger.Abstract
open import Ledger.Transaction using (TransactionStructure)
open import Data.Integer.Ext     using (posPart; negPart)
open import Data.List.Sort.Base

module Ledger.Ledger
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where
   

open import Ledger.Enact govStructure
open import Ledger.Gov txs
open import Ledger.Utxo txs abs
open import Ledger.Utxow txs abs

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
  constructor ⟦_,_,_⟧ˢᵉ
  field
\end{code}
\begin{code}
    lenv        : LEnv
    bdat        : BatchData
    reqObs      : ℙ ScriptHash

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
  g g' : GovState
  c c' : CertState
  tx : Tx
\end{code}



\begin{code}
-- builds list of transactions from sub-txs in top-level tx
mkTxList : Tx → List Tx
mkTxList tx = 
  tx ∷ map (λ stx → 
    record { body = stx .Tx.body ; 
          wits = record { vkSigs = stx .Tx.wits .TxWitnesses.vkSigs ; scripts = tx .Tx.wits .TxWitnesses.scripts; txdats = stx .Tx.wits .TxWitnesses.txdats; 
            txrdmrs = stx .Tx.wits .TxWitnesses.txrdmrs };
          isValid = stx .Tx.isValid;
          txAD = stx .Tx.txAD;
          subTxs = [] })
     (tx .Tx.subTxs)

-- sum up all units across all transactions TODO this is wrong!
totExUnits : Tx → List Tx → ExUnits
totExUnits tx _ = ∑[ (_ , eu) ← tx .wits .txrdmrs ] eu 
  where open Tx; open TxWitnesses

minfee : PParams → UTxO → Tx → Coin
minfee pp utxo tx  =
  pp .a * tx .body .txsize + pp .b
  + txscriptfee (pp .prices) (totExUnits tx (mkTxList tx))
  + pp .minFeeRefScriptCoinsPerByte
  *↓ ∑[ x ← mapValues scriptSize (setToHashMap (refScripts tx utxo)) ] x
  where open PParams; open Tx ; open TxBody 

-- totalFee is computed instead of using top-level fee
feesOK : PParams → Tx → UTxO → Bool
feesOK pp tx utxo = minfee pp utxo tx ≤ᵇ totalFee
                  ∧ (not (≟-∅ᵇ (txrdmrs ˢ)))
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

  -- no corInputs provided are also provided as regular inputs in any transaction
  chkCorIns : List TxBody → ℙ TxIn → Set
  chkCorIns txbods cins = foldr (λ t l → (t .TxBody.txins ∩ cins ≢ ∅) × l) (true ≡ true) txbods

  -- all corInputs exist in the UTxO set
  chkInsInUTxO : List TxBody → ℙ TxIn → Set
  chkInsInUTxO txbods uins = foldr (λ t l → (t .TxBody.txins ∪ t .TxBody.corInputs ⊆ uins ) × l) (true ≡ true) txbods  

  depositRefunds : PParams → UTxOState → TxBody → Coin
  depositRefunds pp st txb = let open TxBody in negPart (depositsChange pp txb (st .deposits))

  newDeposits : PParams → UTxOState → TxBody → Coin
  newDeposits pp st txb = let open TxBody in posPart (depositsChange pp txb (st .deposits))

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

-- TODO FIX / discuss
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
    =  foldr  (λ txb → (let open TxBody in balance (st .utxo ∣ txb .txins)
    +  txb .mint
    +  inject (depositRefunds pp st txb)
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

\end{code}
\caption{Functions used in UTxO rules, continued}
\label{fig:functions:utxo-conway}
\end{figure*}


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
  SWAP-V : let open Tx tx renaming (body to txb); open TxBody txb; open SwapEnv Γ' ; open LEnv lenv renaming (slot to sl) 
    in
    ∙  validPath bdat tx ≡ true
    ∙  ⟦ epoch sl , pparams , txvote , txwdrls , deposits u ⟧ᶜ ⊢ c ⇀⦇ txcerts ,CERTS⦈ c'
    ∙  ⟦ txid , epoch sl , pparams , ppolicy , enactState ⟧ᵍ ⊢ g ⇀⦇ txgov txb ,GOV⦈ g'
    ∙  record { LEnv lenv ; batchData = bdat ; bObs = reqObs } ⊢ u ⇀⦇ tx ,UTXOW⦈ u'
       ────────────────────────────────
       Γ' ⊢ ⟦ u , g , c ⟧ˡ ⇀⦇ tx ,SWAP⦈ ⟦ u' , g' , c' ⟧ˡ

  SWAP-I : let open SwapEnv Γ' 
    in
    ∙ validPath bdat tx ≡ false
    ∙ record { LEnv lenv ; batchData = bdat ; bObs = reqObs } ⊢ u ⇀⦇ tx ,UTXOW⦈ u'
      ────────────────────────────────
       Γ' ⊢ ⟦ u , g , c ⟧ˡ ⇀⦇ tx ,SWAP⦈ ⟦ u' , g , c ⟧ˡ
\end{code}
\end{AgdaSuppressSpace}
\caption{SWAP transition system}
\end{figure*}
\begin{code}[hide]
-- pattern SWAP-V⋯ w x y z = SWAP-V (w , x , y , z)
-- pattern SWAP-I⋯ y z     = SWAP-I (y , z)
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
\begin{figure*}[h]
\begin{AgdaSuppressSpace}
\begin{code}
  LEDGER-Ind : let open UTxOState u renaming (utxo to utx); open Tx tx; open TxBody body; open LEnv Γ renaming (pparams to pp); open PParams pp; txBods = (map (λ p → p .Tx.body)  subTxs); txs = (mkTxList tx) ; isBalanced = consumed pp u (body ∷ txBods) ≡ᵇ produced pp u (body ∷ txBods) ; bd = mkBatchData isBalanced txs
    in
    ∙ feesOK pp tx utx ≡ true         --1      
    ∙ isBalanced ≡ true  → singleInvalid bd txs ≡ false  --2
    ∙ txsize ≤ maxTxSize  --3
    ∙ chkInsInUTxO txBods (dom utx)  --4
    -- ∙ maxTxExUnits ≥ᵉ totExUnits txs maxTxExUnits   --5 -- TODO this doesnt work!
    ∙ chkCorIns (body ∷ txBods) (body .TxBody.corInputs ) → singleInvalid bd txs ≡ false --6
    ∙ chkCorInsOuts (body ∷ txBods) (utx ∣ corInputs) → singleInvalid bd txs ≡ false  --7
    ∙ getIDs subTxs ≡ subTxIds -- TODO can we put subTxs directly in body?
    ∙ lengthˢ subTxIds ≡ length subTxs -- no repeated transactions 
    ∙ ⟦ Γ , bd ,  body .TxBody.requireBatchObservers ⟧ˢᵉ ⊢ ⟦ u , g , c ⟧ˡ ⇀⦇ txs ,SWAPS⦈ ⟦ u' , g' , c' ⟧ˡ
       ────────────────────────────────
       Γ ⊢  ⟦ u , g , c ⟧ˡ ⇀⦇ tx ,LEDGER⦈ ⟦ u' , g' , c' ⟧ˡ
\end{code}
\end{AgdaSuppressSpace}
\caption{LEDGER transition system}
\end{figure*}
\begin{code}[hide]
-- pattern LEDGER-V⋯ w x y z = LEDGER-V (w , x , y , z)
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
