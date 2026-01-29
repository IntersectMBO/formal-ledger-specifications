{-# OPTIONS --safe #-}

open import Algebra              using (CommutativeMonoid)
open import Data.Nat.Properties  using (+-0-monoid)
import Data.Maybe as M
import Data.Sum.Relation.Unary.All as Sum

import Data.Integer as ℤ
import Data.Rational as ℚ


open import Ledger.Prelude
open import Ledger.Conway.Specification.Abstract
open import Ledger.Conway.Specification.Transaction

module Ledger.Conway.Conformance.Utxo
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Conway.Specification.Script.Validation txs abs
open import Ledger.Conway.Specification.Fees using (scriptsCost)
open import Ledger.Conway.Conformance.Certs govStructure

private
  module L where
    open import Ledger.Conway.Specification.Utxo txs abs public

open PParams

instance
  _ = +-0-monoid

open L public using (UTxOEnv; UTxOState; ⟦_,_,_,_⟧ᵘ; HasCast-UTxOState; updateDeposits
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
          p2Scripts = collectP2ScriptsWithContext pp tx utxo
      in
        ∙ evalP2Scripts p2Scripts ≡ isValid
        ∙ isValid ≡ true
          ────────────────────────────────
          Γ ⊢ s ⇀⦇ tx ,UTXOS⦈  ⟦ (utxo ∣ txIns ᶜ) ∪ˡ (L.outs txb)
                              , fees + txFee
                              , deposits
                              , donations + txDonation
                              ⟧

  Scripts-No :
    ∀ {Γ} {s} {tx}
    → let open Tx tx renaming (body to txb); open TxBody txb
          open UTxOEnv Γ renaming (pparams to pp)
          open UTxOState s
          p2Scripts = collectP2ScriptsWithContext pp tx utxo
      in
        ∙ evalP2Scripts p2Scripts ≡ isValid
        ∙ isValid ≡ false
          ────────────────────────────────
          Γ ⊢ s ⇀⦇ tx ,UTXOS⦈  ⟦ utxo ∣ collateralInputs ᶜ
                              , fees + L.cbalance (utxo ∣ collateralInputs)
                              , deposits
                              , donations
                              ⟧

unquoteDecl Scripts-Yes-premises = genPremises Scripts-Yes-premises (quote Scripts-Yes)
unquoteDecl Scripts-No-premises  = genPremises Scripts-No-premises  (quote Scripts-No)

data _⊢_⇀⦇_,UTXO⦈_ : UTxOEnv → UTxOState → Tx → UTxOState → Type where

  UTXO-inductive :
    let open Tx tx renaming (body to txb); open TxBody txb; open TxWitnesses wits
        open UTxOEnv Γ renaming (pparams to pp)
        open UTxOState s
        txOutsʰ = (mapValues txOutHash txOuts)
        overhead = 160
    in
    ∙ txIns ≢ ∅                              ∙ txIns ∪ refInputs ⊆ dom utxo
    ∙ txIns ∩ refInputs ≡ ∅                  ∙ L.inInterval slot txVldt
    ∙ L.minfee pp utxo tx ≤ txFee            ∙ (txrdmrs ˢ ≢ ∅ → L.collateralCheck pp tx utxo)
    ∙ consumed pp s txb ≡ produced pp s txb  ∙ coin mint ≡ 0
    ∙ (¬ (∅ᵐ ≡ᵐ txrdmrs) × nothing ≢ proj₂ txVldt →
         (do s ← proj₂ txVldt
             epochInfoSlotToUTCTime s) ≢ nothing
      )
    ∙ txsize ≤ maxTxSize pp
    ∙ L.refScriptsSize utxo tx ≤ pp .maxRefScriptSizePerTx

    ∙ ∀[ (_ , txout) ∈ ∣ txOutsʰ ∣ ]
        inject ((overhead + L.utxoEntrySize txout) * coinsPerUTxOByte pp) ≤ᵗ getValueʰ txout
    ∙ ∀[ (_ , txout) ∈ ∣ txOutsʰ ∣ ]
        serSize (getValueʰ txout) ≤ maxValSize pp
    ∙ ∀[ (a , _) ∈ range txOutsʰ ]
        Sum.All (const ⊤) (λ a → a .BootstrapAddr.attrsSize ≤ 64) a
    ∙ ∀[ (a , _) ∈ range txOutsʰ ]  netId a         ≡ NetworkId
    ∙ ∀[ a ∈ dom txWithdrawals ]    NetworkIdOf a   ≡ NetworkId
    ∙ txNetworkId ~ just NetworkId
    ∙ currentTreasury ~ just treasury
    ∙ Γ ⊢ s ⇀⦇ tx ,UTXOS⦈ s'
      ────────────────────────────────
      Γ ⊢ s ⇀⦇ tx ,UTXO⦈ s'

pattern UTXO-inductive⋯ tx Γ s x y z w k l m c d v j n o p q r t u h
      = UTXO-inductive {tx}{Γ}{s} (x , y , z , w , k , l , m , c , d , v , j , n , o , p , q , r , t , u , h)
unquoteDecl UTXO-premises = genPremises UTXO-premises (quote UTXO-inductive)
