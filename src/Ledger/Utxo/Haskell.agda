{-# OPTIONS --safe #-}

open import Ledger.Abstract
open import Ledger.Transaction

module Ledger.Utxo.Haskell
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Prelude

open import Ledger.Utxo txs abs hiding (certDeposit; updateCertDeposits; updateProposalDeposits; updateDeposits; _⊢_⇀⦇_,UTXOS⦈_; _⊢_⇀⦇_,UTXO⦈_) public
open import Ledger.Fees txs abs using (scriptsTotalSize)

import Data.Sum.Relation.Unary.All as Sum

open PParams


certDepositUtxo : DCert → PParams → DepositPurpose ⇀ Coin
certDepositUtxo (regpool kh _)     pp  = ❴ PoolDeposit kh , pp .poolDeposit ❵
certDepositUtxo _                  _   = ∅
-- -- Handle the following two cases in Certs.Haskell module:
-- certDeposit (delegate c _ _ v) _   = ❴ CredentialDeposit c , v ❵
-- certDeposit (regdrep c v _)    _   = ❴ DRepDeposit c , v ❵

-- -- Handle refunds in Certs.Haskell module.
-- certRefund : DCert → ℙ DepositPurpose

updateCertDepositsUtxo  : PParams → List DCert → (DepositPurpose ⇀ Coin)
                        → DepositPurpose ⇀ Coin
updateCertDepositsUtxo _   []              deposits = deposits
updateCertDepositsUtxo pp  (cert ∷ certs)  deposits
  = updateCertDepositsUtxo pp certs deposits ∪⁺ certDepositUtxo cert pp

-- -- Unchanged/defined in Utxo module:
updateProposalDeposits : List GovProposal → TxId → Coin → Deposits → Deposits
updateProposalDeposits []        _     _      deposits  = deposits
updateProposalDeposits (_ ∷ ps)  txid  gaDep  deposits  =
  updateProposalDeposits ps txid gaDep deposits
  ∪⁺ ❴ GovActionDeposit (txid , length ps) , gaDep ❵

updateDeposits : PParams → TxBody → Deposits → Deposits
updateDeposits pp txb = updateCertDepositsUtxo pp txcerts
                        ∘ updateProposalDeposits txprop txid (pp .govActionDeposit)
  where open TxBody txb

open import Ledger.ScriptValidation txs abs

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
          Γ ⊢ s ⇀⦇ tx ,UTXOS⦈  ⟦ (utxo ∣ txins ᶜ) ∪ˡ (outs txb)
                              , fees + txfee
                              , updateDeposits pp txb deposits
                              , donations + txdonation
                              ⟧ᵘ

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
                              , fees + cbalance (utxo ∣ collateral)
                              , deposits
                              , donations
                              ⟧ᵘ

data _⊢_⇀⦇_,UTXO⦈_ : UTxOEnv → UTxOState → Tx → UTxOState → Type where

  UTXO-inductive :
    let open Tx tx renaming (body to txb); open TxBody txb
        open UTxOEnv Γ renaming (pparams to pp)
        open UTxOState s
        txoutsʰ = (mapValues txOutHash txouts)
    in
    ∙ txins ≢ ∅                              ∙ txins ∪ refInputs ⊆ dom utxo
    ∙ txins ∩ refInputs ≡ ∅                  ∙ inInterval slot txvldt
    ∙ feesOK pp tx utxo ≡ true               ∙ consumed pp s txb ≡ produced pp s txb
    ∙ coin mint ≡ 0                          ∙ txsize ≤ maxTxSize pp
    ∙ scriptsTotalSize utxo tx ≤ pp .maxRefScriptSizePerTx

    ∙ ∀[ (_ , txout) ∈ txoutsʰ .proj₁ ]
        inject (utxoEntrySize txout * minUTxOValue pp) ≤ᵗ getValueʰ txout
    ∙ ∀[ (_ , txout) ∈ txoutsʰ .proj₁ ]
        serSize (getValueʰ txout) ≤ maxValSize pp
    ∙ ∀[ (a , _) ∈ range txoutsʰ ]
        Sum.All (const ⊤) (λ a → a .BootstrapAddr.attrsSize ≤ 64) a
    ∙ ∀[ (a , _) ∈ range txoutsʰ ]  netId a         ≡ networkId
    ∙ ∀[ a ∈ dom txwdrls ]          a .RwdAddr.net  ≡ networkId
    ∙ txNetworkId ≡? networkId
    ∙ curTreasury ≡? treasury
    ∙ Γ ⊢ s ⇀⦇ tx ,UTXOS⦈ s'
      ────────────────────────────────
      Γ ⊢ s ⇀⦇ tx ,UTXO⦈ s'

pattern UTXO-inductive⋯ tx Γ s x y z w k l m v j n o p q r t u h
      = UTXO-inductive {tx}{Γ}{s} (x , y , z , w , k , l , m , v , j , n , o , p , q , r , t , u , h)
