{-# OPTIONS --safe #-}

open import Algebra              using (CommutativeMonoid)
open import Data.Nat.Properties  using (+-0-monoid)
import Data.Maybe as M
import Data.Sum.Relation.Unary.All as Sum

import Data.Integer as ℤ
import Data.Rational as ℚ

open import Tactic.Derive.DecEq

open import Ledger.Prelude
open import Ledger.Abstract
open import Ledger.Transaction

module Ledger.Conway.Conformance.Utxo
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Interface.HasDowncast.Instance txs govStructure
open import Ledger.ScriptValidation txs abs
open import Ledger.Fees txs using (scriptsCost)
open import Ledger.Conway.Conformance.Certs govStructure

private
  module L where
    open import Ledger.Utxo txs abs public

open PParams

instance
  _ = +-0-monoid

open L public using (UTxOEnv; UTxOState; ⟦_,_,_,_⟧ᵘ; To-UTxOState; updateDeposits
                    ; cbalance; balance; depositRefunds; consumed
                    ; produced; outs; newDeposits; refScriptsSize )

private variable
  Γ : UTxOEnv
  s s' : UTxOState
  tx : Tx

open PParams

data _⊢_⇀⦇_,UTXOS⦈_ : UTxOEnv → UTxOState → Tx → UTxOState → Type where
  Scripts-Yes :
    ∀ {Γ} {s} {tx}
    → let open Tx tx renaming (body to txb); open TxBody txb
          open UTxOEnv Γ renaming (pparams to pp)
          open UTxOState s
          sLst = collectPhaseTwoScriptInputs pp tx utxo
      in
        ∙ evalScripts tx sLst ≡ isValid
        ∙ isValid ≡ true
          ────────────────────────────────
          Γ ⊢ s ⇀⦇ tx ,UTXOS⦈  ⟦ (utxo ∣ txins ᶜ) ∪ˡ (L.outs txb)
                              , fees + txfee
                              , deposits
                              , donations + txdonation
                              ⟧

  Scripts-No :
    ∀ {Γ} {s} {tx}
    → let open Tx tx renaming (body to txb); open TxBody txb
          open UTxOEnv Γ renaming (pparams to pp)
          open UTxOState s
          sLst = collectPhaseTwoScriptInputs pp tx utxo
      in
        ∙ evalScripts tx sLst ≡ isValid
        ∙ isValid ≡ false
          ────────────────────────────────
          Γ ⊢ s ⇀⦇ tx ,UTXOS⦈  ⟦ utxo ∣ collateral ᶜ
                              , fees + L.cbalance (utxo ∣ collateral)
                              , deposits
                              , donations
                              ⟧

unquoteDecl Scripts-Yes-premises = genPremises Scripts-Yes-premises (quote Scripts-Yes)
unquoteDecl Scripts-No-premises  = genPremises Scripts-No-premises  (quote Scripts-No)

data _⊢_⇀⦇_,UTXO⦈_ : UTxOEnv → UTxOState → Tx → UTxOState → Type where

  UTXO-inductive :
    let open Tx tx renaming (body to txb); open TxBody txb
        open UTxOEnv Γ renaming (pparams to pp)
        open UTxOState s
        txoutsʰ = (mapValues txOutHash txouts)
        overhead = 160
    in
    ∙ txins ≢ ∅                              ∙ txins ∪ refInputs ⊆ dom utxo
    ∙ txins ∩ refInputs ≡ ∅                  ∙ L.inInterval slot txvldt
    ∙ L.feesOK pp tx utxo                    ∙ L.consumed pp s txb ≡ L.produced pp s txb
    ∙ coin mint ≡ 0                          ∙ txsize ≤ maxTxSize pp
    ∙ L.refScriptsSize utxo tx ≤ pp .maxRefScriptSizePerTx

    ∙ ∀[ (_ , txout) ∈ txoutsʰ ↓ ]
        inject ((overhead + L.utxoEntrySize txout) * coinsPerUTxOByte pp) ≤ᵗ getValueʰ txout
    ∙ ∀[ (_ , txout) ∈ txoutsʰ ↓ ]
        serSize (getValueʰ txout) ≤ maxValSize pp
    ∙ ∀[ (a , _) ∈ range txoutsʰ ]
        Sum.All (const ⊤) (λ a → a .BootstrapAddr.attrsSize ≤ 64) a
    ∙ ∀[ (a , _) ∈ range txoutsʰ ]  netId a         ≡ NetworkId
    ∙ ∀[ a ∈ dom txwdrls ]          NetworkIdOf a   ≡ NetworkId
    ∙ txNetworkId ~ just NetworkId
    ∙ curTreasury ~ just treasury
    ∙ Γ ⊢ s ⇀⦇ tx ,UTXOS⦈ s'
      ────────────────────────────────
      Γ ⊢ s ⇀⦇ tx ,UTXO⦈ s'

pattern UTXO-inductive⋯ tx Γ s x y z w k l m v j n o p q r t u h
      = UTXO-inductive {tx}{Γ}{s} (x , y , z , w , k , l , m , v , j , n , o , p , q , r , t , u , h)
unquoteDecl UTXO-premises = genPremises UTXO-premises (quote UTXO-inductive)
