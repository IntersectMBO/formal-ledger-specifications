\section{Structured Contracts}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Algebra
open import Data.Nat.Properties using (+-0-monoid)

open import Ledger.Prelude; open Equivalence
open import Ledger.Conway.Specification.Transaction
open import Ledger.Conway.Specification.Abstract
open import Ledger.Conway.Specification.TokenAlgebra.Base
open import Ledger.Conway.Specification.TokenAlgebra.ValueSet


module Ledger.Conway.Specification.Test.StructuredContracts
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Conway.Specification.Ledger txs abs
open import Ledger.Conway.Specification.Script.ScriptPurpose txs
open import Ledger.Conway.Specification.Script.Validation txs abs
open import Ledger.Conway.Specification.Utxo txs abs
\end{code}

Defining an instance of the $\type{StrucSimulation}$ record constitutes implementing a 
stateful program on (the Agda specification of) the Cardano ledger. The following 
must be specified when defining such an instance:

\begin{itemize}
\item[(i)] $\type{S}$ - the program state type 
\item[(ii)] $\type{S}$ - the program input type 
\item[(iii)] $\type{STRUC}$ - the program's small-step semantics
\item[(iv)] $\type{\pi^{s}}$ - projection function of program state from a given ledger state 
\item[(v)] $\type{\pi^{i}}$ - projection function of program input from a given $\type{TxInfo}$ 
\item[(vi)] $\type{simulates}$ - proof obligation required for demonstrating that data in (i)-(v)
is such that state of the program as it appears on the ledger can only be updated according to its 
small-step $\type{STRUC}$ specification
\end{itemize}

\begin{code}
SSRel : Type → Type → Type → Type₁
SSRel Env State Input = Env → State → Input → State → Type

record StrucSimulation S I (_⊢_⇀⦇_,STRUC⦈_ : SSRel ⊤ S I) : Type₁ where
  field
    πˢ : LState → Maybe S
    πⁱ : TxInfo → I
    -- here, add optional extra assumptions about ledger state, env, and transaction that may be too difficult to prove without reasoning about complete ledger traces
    -- e.g. transaction does not re-add a UTxO entry it spends
    -- e.g. current Slot is after the validity interval of some previous transaction
    extraAssmp : LEnv → LState → Tx → Type 

  _~ˢ_ : LState → S → Type -- R
  u ~ˢ s = πˢ u ≡ just s

    -- only for PlutusV3
  _~ᵉ_ : LEnv × Tx × LState → ⊤ × I → Type
  _~ᵉ_ = λ (le , tx , u) (tt , i) → πⁱ (txInfo PlutusV3 (PParamsOf le) (UTxOOf u) tx) ≡ i

  field
    simulates : ∀ Γ s u tx i′ u′ → extraAssmp Γ u tx →
      ∙ Γ ⊢ u ⇀⦇ tx ,LEDGER⦈ u′
      ∙ (Γ , tx , u) ~ᵉ (tt , i′)
      ∙ u ~ˢ s
      ────────────────────────────────
        ∃[ s′ ] u′ ~ˢ s′
               × tt ⊢ s ⇀⦇ i′ ,STRUC⦈ s′
\end{code}
