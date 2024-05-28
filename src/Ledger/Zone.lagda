\section{Zone State Transition}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Transaction
open import Ledger.PParams
open import Ledger.Prelude
open import Ledger.Abstract
open import Ledger.Transaction using (TransactionStructure)

module Ledger.Zone
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Enact govStructure
open import Ledger.Gov txs
open import Ledger.Utxo txs abs
open import Ledger.Utxow txs abs
open import Ledger.Ledger txs abs

open Tx
open TxBody
\end{code}

The entire state transformation of the ledger state caused by a valid
zone can now be given as a combination of the previously
defined transition systems.

\begin{figure*}[h]
\begin{code}

-- get a set of TxIds containing all IDs of transaction in given list ltx
getIDs : List Tx → ℙ TxId
getIDs ltx = foldr (λ { tx ls → ls ∪ (singleton (tx .body .txid)) }) ∅ ltx

-- make edges for a given transaction
mkEdges : Tx → List Tx → List (Tx × Tx)
mkEdges _ [] = []
mkEdges tx (h ∷ ltx) with ( ( tx .body .txid ) ∈? (fromList (map proj₁ (setToList (h .body .txins)))) )
... | yes p = (tx , h) ∷ mkEdges tx ltx
... | no ¬p = mkEdges tx ltx

-- make FR edges for a given transaction
mkFREdges : Tx → List Tx → List (Tx × Tx)
mkFREdges _ [] = []
mkFREdges tx (h ∷ ltx) with ( ( tx .body .txid ) ∈? (fromList (map proj₁ (setToList (h .body .fulfills)))) )
... | yes p = (h , tx) ∷ mkFREdges tx ltx
... | no ¬p = mkFREdges tx ltx

-- make all edges for all transactions
mkAllEdges : List Tx → List Tx → List (Tx × Tx)
mkAllEdges [] ls = []
mkAllEdges (h ∷ ltx) ls = mkEdges h ls ++ mkFREdges h ls ++ mkAllEdges ltx ls

-- for a given tx, and set of edges,
-- returns a list of transactions ls such that for each e in ls is such that e -> tx is a dependency
-- i.e. returns all ends of incoming edges
hasIncEdges : Tx → List (Tx × Tx) → List Tx
hasIncEdges tx [] = []
hasIncEdges tx ((e , tx') ∷ edges) with (tx .body .txid ≡ᵇ tx' .body .txid)
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
removeTx tx (n ∷ ne) with (tx .body .txid ≡ᵇ n .body .txid)
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
updateRES tx1 ((tx , tx') ∷ em) s with (tx .body .txid ≡ᵇ tx1 .body .txid)
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

-- -- returns true when a given list of edges makes a cycle starting at tx
-- -- when calling this, tx must be the starting vertex in the first edge in the list
-- mkCycle : List (Tx × Tx) → Tx → List (Tx × Tx) → List (Tx × Tx) → List (Tx × Tx)
-- isCycle [] tx allEdges cycle = cycle
-- isCycle ((a , b) ∷ []) tx ((a , b) ∷ []) = (tx .body .txid ≡ᵇ b .body .txid)
-- isCycle tx ((a , b) ∷ (c , d) ∷ em) = ((b .body .txid ≡ᵇ c .body .txid) ∧ (isCycle (c , d) ∷ em))
--
-- -- the given list of edges has a cycle
-- hasCycle : ℙ Tx → List (Tx × Tx) → Bool
-- hasCycle txs edges = ∃[ cycle ∈ List (Tx × Tx) ] ( ∃[ tx ∈ txs ] cycle ≢ᵇ [] → fromList cycle ⊆ fromList edges → isCycle tx cycle )

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
chkRqTx ltx tx = ∀[ txrid ∈ tx .requiredTxs ] Any (txrid ≡_) ( getIDs ltx )

-- check for duplicates in two sets
noDups : ℙ Tx → ℙ Tx → Set
noDups ltx ltx' = ∀[ tx ∈ ltx ] ∀[ tx' ∈ ltx' ] ¬ tx ≡ tx'

-- apply top. sort/cycle detection to graph generated from all transactions in the zone, with forward
-- edges between transactions spending each other's outputs within the zone,
-- and backwards edges between transactions spending each other's requests within the zone
chkLinear : List Tx → Set
chkLinear ltx = topSortTxs (mkAllEdges ltx ltx) (mkAllEdges ltx ltx) (nodesWithNoIncomingEdge ltx (mkAllEdges ltx ltx)) [] ≡ just []

-- sum up the fees (adjusted by collateralPercentage) of transactions in a list
sumCol : List Tx → ℕ → Coin
sumCol ltx cp = foldr (λ { tx c → c + tx .body .txfee * cp }) 0 ltx

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
  ltx lsV : List Tx
  tx : Tx
\end{code}

\begin{figure*}[h]
\begin{code}
  ZONE-V :
    Γ ⊢ ⟦ ⟦ (utxo , ∅) , fees , deposits , donations ⟧ᵘᵘ , govSt , certState ⟧ˡˡ ⇀⦇ ltx ,LEDGERS⦈
      ⟦ ⟦ (utxo' , ∅) , fees' , deposits' , donations' ⟧ᵘᵘ , govSt' , certState' ⟧ˡˡ
    ∙ All (chkRqTx ltx) (fromList ltx)
    ∙ chkLinear ltx
    ∙ All chkIsValid (fromList ltx)
    ∙ ((coin (balance  (utxo ∣ tx .body .collateral)) * 100)
      ≥ᵇ sumCol (lsV ++ [ tx ]) (Γ .LEnv.pparams .PParams.collateralPercentage)) ≡ true
       ────────────────────────────────
       Γ ⊢ ⟦ ⟦ utxo , fees , deposits , donations ⟧ᵘ , govSt , certState ⟧ˡ ⇀⦇ ltx ,ZONE⦈ ⟦ ⟦ utxo' , fees' , deposits' , donations' ⟧ᵘ , govSt' , certState' ⟧ˡ
  ZONE-N :
    Γ ⊢ ⟦ ⟦ (utxo , ∅) , fees , deposits , donations ⟧ᵘᵘ , govSt , certState ⟧ˡˡ ⇀⦇ (lsV ++ [ tx ]) ,LEDGERS⦈ _
    ∙ tx .isValid ≡ false
    ∙ All chkIsValid (fromList lsV)
    ∙ ((coin (balance  (utxo ∣ tx .body .collateral)) * 100)
      ≥ᵇ sumCol (lsV ++ [ tx ]) (Γ .LEnv.pparams .PParams.collateralPercentage)) ≡ true
       ────────────────────────────────
       Γ ⊢ ⟦ ⟦ utxo , fees , deposits , donations ⟧ᵘ , govSt , certState ⟧ˡ ⇀⦇ lsV ++ [ tx ] ,ZONE⦈
            ⟦ ⟦ utxo ∣ (tx .body .collateral) ᶜ
            , fees + cbalance (utxo ∣ tx .body .collateral)
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
