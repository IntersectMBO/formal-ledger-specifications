\section{Transaction Linearelisability Test}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Transaction
open import Ledger.PParams
open import Ledger.Prelude
open import Ledger.Abstract
open import Ledger.Transaction using (TransactionStructure)

module Ledger.LinTest
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Zone txs abs

open Tx
\end{code}

Topological sort/cycle detection tests.

\begin{figure*}[h]
\begin{code}

txBody : TxBody
txBody = record {
        txins          : ℙ TxIn
        txouts         : Ix ⇀ TxOut
        txfee          = 0
        mint           =  ∅
        txvldt         = (nothing , nothing)
        txcerts        = []
        txwdrls        = ∅
        txvote         = []
        txprop         = []
        txdonation     = 0
        txup           = nothing
        txADhash       = nothing
        netwrk         = nothing
        txsize         = 0
        txid           : TxId
        collateral     : ℙ TxIn
        reqSigHash     : ℙ KeyHash
        scriptIntHash  = nothing
        fulfills       : ℙ Fulfill
        requests       : Ix ⇀ Request
        requiredTxs    =  ∅
      }

txWits : TxWitnesses
txWits = record {
      vkSigs    =  ∅
      scripts   =  ∅
      txdats    =  ∅
      txrdmrs   =  ∅
    }


tx : Tx
tx = record { body = txBody; wits = txWits; isValid = true; txAD = nothing }







-- get a set of TxIds containing all IDs of transaction in given list tb
getIDs : List Tx → ℙ TxId
getIDs tb = foldr (λ { tx ls → ls ∪ (singleton (tx .Tx.body .TxBody.txid)) }) ∅ tb

-- make edges for a given transaction
mkEdges : Tx → List Tx → List (Tx × Tx)
mkEdges _ [] = []
mkEdges tx (h ∷ tb) with ( ( tx .Tx.body .TxBody.txid ) ∈? (fromList (map proj₁ (setToList (h .Tx.body .TxBody.txins)))) )
... | yes p = (tx , h) ∷ mkEdges tx tb
... | no ¬p = mkEdges tx tb

-- make FR edges for a given transaction
mkFREdges : Tx → List Tx → List (Tx × Tx)
mkFREdges _ [] = []
mkFREdges tx (h ∷ tb) with ( ( tx .Tx.body .TxBody.txid ) ∈? (fromList (map proj₁ (setToList (h .Tx.body .TxBody.fulfills)))) )
... | yes p = (h , tx) ∷ mkFREdges tx tb
... | no ¬p = mkFREdges tx tb

-- make all edges for all transactions
mkAllEdges : List Tx → List Tx → List (Tx × Tx)
mkAllEdges [] ls = []
mkAllEdges (h ∷ tb) ls = mkEdges h ls ++ mkFREdges h ls ++ mkAllEdges tb ls

-- for a given tx, and set of edges,
-- returns a list of transactions ls such that for each e in ls is such that e -> tx is a dependency
-- i.e. returns all ends of incoming edges
hasIncEdges : Tx → List (Tx × Tx) → List Tx
hasIncEdges tx [] = []
hasIncEdges tx ((e , tx') ∷ edges) with (tx .Tx.body .TxBody.txid ≡ᵇ tx' .Tx.body .TxBody.txid)
... | true = e ∷ (hasIncEdges tx edges)
... | false = (hasIncEdges tx edges)

-- filters a list of transactions such that only ones with no incoming edges remain
nodesWithNoIncomingEdge : List Tx → List (Tx × Tx) → List Tx
nodesWithNoIncomingEdge [] edges = []
nodesWithNoIncomingEdge (tx ∷ txs) edges with (hasIncEdges tx edges)
... | e ∷ dges = nodesWithNoIncomingEdge txs edges
... | [] = tx ∷ nodesWithNoIncomingEdge txs edges

-- remove the first instance of a transaction in a list
removeTx : Tx → List Tx → List Tx
removeTx tx [] = []
removeTx tx (n ∷ ne) with (tx .Tx.body .TxBody.txid ≡ᵇ n .Tx.body .TxBody.txid)
... | true = ne
... | false = [ n ] ++ (removeTx tx ne)

-- remove a transaction from a list if it has no incoming edges
ifNoEdgeRemove : Tx → List (Tx × Tx) → List Tx → List Tx
ifNoEdgeRemove tx edges s with (hasIncEdges tx edges)
... | [] = removeTx tx s
... | e ∷ dges = s

-- given tx1, for all tx such that (tx1 , tx) in edges,
--             remove (tx1 , tx) from the graph
--             if tx has no other incoming edges then
--               insert tx into S
updateRES : Tx → List (Tx × Tx) → List Tx → ((List (Tx × Tx)) × (List Tx))
updateRES tx1 [] s = ([] , s)
updateRES tx1 ((tx , tx') ∷ em) s with (tx .Tx.body .TxBody.txid ≡ᵇ tx1 .Tx.body .TxBody.txid)
... | true = (proj₁ (updateRES tx1 em (ifNoEdgeRemove tx em s)) , (ifNoEdgeRemove tx em s))
... | false = ((tx , tx') ∷ proj₁ (updateRES tx1 em s) , s)

-- topologically sorts a tx list
-- arguments : tracking edges for agda termination check, remaining edges, remaining txs with no incoming edge (S), current sorted list (L)
-- returns nothing if there are remaining edges the graph, but S is empty
topSortTxs : List (Tx × Tx) → List (Tx × Tx) → List Tx → List Tx → Maybe (List Tx)
topSortTxs e [] s srtd = just srtd
topSortTxs [] (r ∷ em) s srtd = nothing
topSortTxs e (r ∷ em) [] srtd = nothing
topSortTxs ((tx1 , tx2) ∷ dges) (r ∷ em) (tx ∷ rls) srtd =
  topSortTxs dges (proj₁ updRES) (proj₂ updRES) (srtd ++ [ tx1 ])
  where updRES = updateRES tx1 (r ∷ em) (removeTx tx1 (tx ∷ rls))

-- TOP SORT original
-- L ← Empty list that will contain the sorted elements
-- S ← Set of all nodes with no incoming edge
--
-- while S is not empty do
--     remove a node n from S
--     add n to L
--     for each node m with an edge e from n to m do
--         remove edge e from the graph
--         if m has no other incoming edges then
--             insert m into S
--
-- if graph has edges then
--     return error   (graph has at least one cycle)
-- else
--     return L   (a topologically sorted order)

-- TOP SORT implemented
-- L ← Empty list that will contain the sorted elements
-- S ← Set of all nodes with no incoming edge
-- --
-- for each (tx1 , tx2) in edges do
--           remove tx1 from S
--           add tx1 to L
--           for all tx such that (tx1 , tx) in edges,
--             remove (tx1 , tx) from the graph
--             if tx has no other incoming edges then
--               insert tx into S
--
-- if graph has edges then
--     return error   (graph has at least one cycle)
-- else
--     return L   (a topologically sorted order)

-- check that all IDs in all requiredTxs groups correspond to Txs in the given zone
chkRqTx : List Tx → Tx → Set
chkRqTx tb tx = ∀[ txrid ∈ tx .Tx.body .TxBody.requiredTxs ] Any (txrid ≡_) ( getIDs tb )

-- check for duplicates in two sets
noDups : ℙ Tx → ℙ Tx → Set
noDups tb tb' = ∀[ tx ∈ tb ] ∀[ tx' ∈ tb' ] ¬ tx ≡ tx'

-- apply top. sort/cycle detection to graph generated from all transactions in the zone, with forward
-- edges between transactions spending each other's outputs within the zone,
-- and backwards edges between transactions spending each other's requests within the zone
chkLinear : List Tx → Set
chkLinear tb = topSortTxs (mkAllEdges tb tb) (mkAllEdges tb tb) (nodesWithNoIncomingEdge tb (mkAllEdges tb tb)) [] ≡ just []

-- sum up the fees (adjusted by collateralPercentage) of transactions in a list
sumCol : List Tx → ℕ → Coin
sumCol tb cp = foldr (λ { tx c → c + tx .Tx.body .TxBody.txfee * cp }) 0 tb

\end{code}
\caption{Functions used for zone validation}
\label{fig:functions:zone}
\end{figure*}

\begin{figure*}[h]
\begin{code}[hide]
data
\end{code}
\begin{code}
  _⊢_⇀⦇_,ZONE⦈_ : LEnv → LState → List Tx → LState → Set
\end{code}
\begin{code}[hide]
  where
\end{code}
\caption{The type of the ZONE transition system}
\end{figure*}

\begin{code}[hide]
private variable
  Γ : LEnv
  utxo utxo' : UTxO
  fees fees' : Coin
  deposits deposits' : Deposits
  donations donations' : Coin
  govSt govSt' : GovState
  certState certState' : CertState
  tb lsV : List Tx
  tx : Tx
\end{code}

\begin{figure*}[h]
\begin{code}
  ZONE-V :
    Γ ⊢ ⟦ ⟦ (utxo , ∅) , fees , deposits , donations ⟧ᵘᵘ , govSt , certState ⟧ˡˡ ⇀⦇ tb ,LEDGERS⦈
      ⟦ ⟦ (utxo' , ∅) , fees' , deposits' , donations' ⟧ᵘᵘ , govSt' , certState' ⟧ˡˡ
    ∙ All (chkRqTx tb) (fromList tb)
    ∙ chkLinear tb
    ∙ All chkIsValid (fromList tb)
    ∙ ((coin (balance  (utxo ∣ tx .Tx.body .TxBody.collateral)) * 100)
      ≥ᵇ sumCol (lsV ++ [ tx ]) (Γ .LEnv.pparams .PParams.collateralPercentage)) ≡ true
       ────────────────────────────────
       Γ ⊢ ⟦ ⟦ utxo , fees , deposits , donations ⟧ᵘ , govSt , certState ⟧ˡ ⇀⦇ tb ,ZONE⦈ ⟦ ⟦ utxo' , fees' , deposits' , donations' ⟧ᵘ , govSt' , certState' ⟧ˡ
  ZONE-N :
    Γ ⊢ ⟦ ⟦ (utxo , ∅) , fees , deposits , donations ⟧ᵘᵘ , govSt , certState ⟧ˡˡ ⇀⦇ (lsV ++ [ tx ]) ,LEDGERS⦈ _
    ∙ tx .Tx.isValid ≡ false
    ∙ All chkIsValid (fromList lsV)
    ∙ ((coin (balance  (utxo ∣ tx .Tx.body .TxBody.collateral)) * 100)
      ≥ᵇ sumCol (lsV ++ [ tx ]) (Γ .LEnv.pparams .PParams.collateralPercentage)) ≡ true
       ────────────────────────────────
       Γ ⊢ ⟦ ⟦ utxo , fees , deposits , donations ⟧ᵘ , govSt , certState ⟧ˡ ⇀⦇ tb ,ZONE⦈
            ⟦ ⟦ utxo ∣ (tx .Tx.body .TxBody.collateral) ᶜ
            , fees + cbalance (utxo ∣ tx .Tx.body .TxBody.collateral)
            , deposits , donations ⟧ᵘ
            , govSt
            , certState ⟧ˡ
\end{code}
\caption{ZONE transition system}
\end{figure*}
\begin{code}[hide]
-- TODO fix this
-- unquoteDecl ZONE-V-premises = genPremises ZONE-V-premises (quote ZONE-V)
-- unquoteDecl ZONE-N-premises  = genPremises ZONE-N-premises  (quote ZONE-N)
-- pattern ZONE-V⋯ x y z w = ZONE (x , y , z , w)
-- unquoteDecl ZONE-premises = genPremises ZONE-premises (quote ZONE)
\end{code}
\begin{figure*}[h]
\begin{code}
_⊢_⇀⦇_,ZONES⦈_ : LEnv → LState → List (List Tx) → LState → Set
_⊢_⇀⦇_,ZONES⦈_ = ReflexiveTransitiveClosure _⊢_⇀⦇_,ZONE⦈_
\end{code}
\caption{ZONES transition system}
\end{figure*}
