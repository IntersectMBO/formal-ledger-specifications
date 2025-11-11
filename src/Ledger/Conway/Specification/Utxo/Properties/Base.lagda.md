---
source_branch: master
source_path: src/Ledger/Conway/Specification/Utxo/Properties/Base.lagda.md
---

```agda
{-# OPTIONS --safe #-}

open import Ledger.Core.Specification.Abstract
open import Ledger.Core.Specification.Transaction

module Ledger.Conway.Specification.Utxo.Properties.Base
  (txs : TransactionStructure) (open TransactionStructure txs)
  (abs : AbstractFunctions txs)
  where

open import Prelude

open import Ledger.Prelude hiding (≤-trans; ≤-antisym; All); open Properties

open import Ledger.Conway.Specification.Certs govStructure
open import Ledger.Conway.Specification.Transaction txs abs
open import Ledger.Conway.Specification.Utxo txs abs

open import Tactic.EquationalReasoning using (module ≡-Reasoning)
open import Tactic.Cong using (cong!)
open import stdlib-meta.Tactic.MonoidSolver.NonNormalising using (solve-macro)

open import Data.Nat.Properties hiding (_≟_)
import Data.Nat as ℕ
import Data.Integer as ℤ
open import Data.Integer.Properties as Int
  using ( +-injective; n⊖n≡0; distribʳ-⊖-+-pos; ⊖-swap; pos-+; ⊖-≥
        ; m-n≡m⊖n; +-inverseˡ)

open import Relation.Binary             using (IsEquivalence)

open import Algebra.Morphism              using (module MonoidMorphisms; IsMagmaHomomorphism)
open import Algebra.Definitions.RawMagma +-rawMagma using () renaming (_,_ to _,≤_)

open Equivalence

posPart-negPart≡x : {x : ℤ} → posPart x - negPart x ≡ x
posPart-negPart≡x {ℤ.+_ n}     = refl
posPart-negPart≡x {ℤ.negsuc n} = refl

χ : Bool → ℕ
χ false  = 0
χ true   = 1

open MonoidMorphisms.IsMonoidHomomorphism
private
  ∙-homo-Coin = IsMagmaHomomorphism.homo (isMagmaHomomorphism coinIsMonoidHomomorphism)

module _
  {txb : _} (open TxBody txb)
  {utxo : UTxO}
  where
  opaque
    unfolding outs
    open Tactic.EquationalReasoning.≡-Reasoning {A = ℕ} (solve-macro (quoteTerm +-0-monoid))

    newTxid⇒disj : txId ∉ mapˢ proj₁ (dom utxo)
                → disjoint' (dom utxo) (dom (outs txb))
    newTxid⇒disj id∉utxo = disjoint⇒disjoint' λ h h' → id∉utxo $ to ∈-map
      (-, (case from ∈-map h' of λ where
            (_ , refl , h'') → case from ∈-map h'' of λ where (_ , refl , _) → refl) , h)

    consumedCoinEquality : ∀ {utxoState} {pp}
      → coin mint ≡ 0
      → coin (consumed pp utxoState txb)
      ≡ cbalance ((UTxOState.utxo utxoState) ∣ txIns) + depositRefunds pp utxoState txb + getCoin txWithdrawals
    consumedCoinEquality {utxoState} {pp} h =
      let  utxo = UTxOState.utxo utxoState
           dRefs = depositRefunds pp utxoState txb
           sWdls = getCoin txWithdrawals
      in begin
      coin (balance (utxo ∣ txIns) + mint + inject dRefs + inject sWdls)
        ≡⟨ ∙-homo-Coin _ _ ⟩
      coin (balance (utxo ∣ txIns) + mint + inject dRefs) + coin (inject $ sWdls)
        ≡⟨ cong (coin (balance (utxo ∣ txIns) + mint + inject dRefs) +_) (coin∘inject≗id _) ⟩
      coin (balance (utxo ∣ txIns) + mint + inject dRefs) + sWdls
        ≡⟨ cong (_+ sWdls) (∙-homo-Coin _ _) ⟩
      coin (balance (utxo ∣ txIns) + mint) + coin (inject $ dRefs) + sWdls
        ≡⟨ cong (λ u → coin (balance (utxo ∣ txIns) + mint) + u + sWdls) (coin∘inject≗id _) ⟩
      coin (balance (utxo ∣ txIns) + mint) + dRefs + sWdls
        ≡⟨ cong (λ u → u + dRefs + sWdls) (∙-homo-Coin _ _) ⟩
      cbalance (utxo ∣ txIns) + coin mint + dRefs + sWdls
        ≡⟨ cong (λ x → cbalance (utxo ∣ txIns) + x + dRefs + sWdls) h ⟩
      cbalance (utxo ∣ txIns) + 0 + dRefs + sWdls
        ≡⟨ cong (λ x → x + dRefs + sWdls) (+-identityʳ (cbalance (utxo ∣ txIns))) ⟩
      cbalance (utxo ∣ txIns) + dRefs + sWdls
        ∎

    producedCoinEquality : ∀ {utxoState} {pp}
      → coin (produced pp utxoState txb)
      ≡ cbalance (outs txb) + txFee + newDeposits pp utxoState txb + txDonation
    producedCoinEquality {utxoState} {pp} =
        begin
      coin (balance (outs txb) + inject txFee
        + inject (newDeposits pp utxoState txb) + inject txDonation)
        ≡⟨ ∙-homo-Coin _ _ ⟩
      coin (balance (outs txb) + inject txFee
        + inject (newDeposits pp utxoState txb)) + coin (inject txDonation)
        ≡⟨ cong (_+ coin (inject txDonation)) (begin
          coin (balance (outs txb) + inject txFee
            + inject (newDeposits pp utxoState txb))
            ≡⟨ ∙-homo-Coin _ _ ⟩
          coin (balance (outs txb) +ᵛ inject txFee)
            ℕ.+ coin (inject (newDeposits pp utxoState txb))
            ≡⟨ cong! (coin∘inject≗id _) ⟩
          coin (balance (outs txb) +ᵛ inject txFee)
            ℕ.+ newDeposits pp utxoState txb
            ≡⟨ cong! (∙-homo-Coin _ _) ⟩
          coin (balance (outs txb)) ℕ.+ coin (inject txFee)
            ℕ.+ newDeposits pp utxoState txb
            ≡⟨ cong (λ x → cbalance (outs txb) + x + newDeposits pp utxoState txb)
                  $ coin∘inject≗id txFee ⟩
          cbalance (outs txb) + txFee + newDeposits pp utxoState txb
            ∎
        )⟩
      cbalance (outs txb) + txFee
        + newDeposits pp utxoState txb + coin (inject txDonation)
        ≡⟨ cong (cbalance (outs txb) + txFee + newDeposits pp utxoState txb +_)
              $ coin∘inject≗id _ ⟩
      cbalance (outs txb) + txFee + newDeposits pp utxoState txb + txDonation
        ∎

    balValueToCoin : ∀ {utxoState} {pp}
      → coin mint ≡ 0
      → consumed pp utxoState txb ≡ produced pp utxoState txb
      → cbalance ((UTxOState.utxo utxoState) ∣ txIns)
      + depositRefunds pp utxoState txb + getCoin txWithdrawals
      ≡ cbalance (outs txb) + txFee + newDeposits pp utxoState txb + txDonation
    balValueToCoin {utxoState} {pp} h h' = begin
      cbalance ((UTxOState.utxo utxoState) ∣ txIns) + depositRefunds pp utxoState txb + getCoin txWithdrawals
        ≡˘⟨ consumedCoinEquality {utxoState} {pp} h ⟩
      coin (consumed pp utxoState txb)
        ≡⟨ cong! h' ⟩
      coin (produced pp utxoState txb)
        ≡⟨ producedCoinEquality {utxoState} {pp} ⟩
      cbalance (outs txb) + txFee + newDeposits pp utxoState txb + txDonation
        ∎

module _ {utxo utxo' : UTxO} where

  opaque
    unfolding balance
    balance-cong :  ∣ utxo ∣ ≡ᵉ ∣ utxo' ∣ → balance utxo ≈ balance utxo'
    balance-cong eq = indexedSumᵐ-cong {M = Value} {x = (mapValues txOutHash utxo) ᶠᵐ} {(mapValues txOutHash utxo') ᶠᵐ} (map-≡ᵉ eq)

    balance-cong-coin : ∣ utxo ∣ ≡ᵉ ∣ utxo' ∣ → cbalance utxo ≡ cbalance utxo'
    balance-cong-coin x =
      coinIsMonoidHomomorphism .⟦⟧-cong (balance-cong x)
      where open MonoidMorphisms.IsMonoidHomomorphism

    balance-∪ : disjoint (dom utxo) (dom utxo')
                         → cbalance (utxo ∪ˡ utxo') ≡ cbalance utxo + cbalance utxo'
    balance-∪ h = begin
      cbalance (utxo ∪ˡ utxo')
        ≡⟨ ⟦⟧-cong coinIsMonoidHomomorphism
        $ indexedSumᵐ-cong {f = getValueʰ ∘ proj₂} {x = (mapValues txOutHash (utxo ∪ˡ utxo')) ᶠᵐ} {((mapValues txOutHash utxo) ᶠᵐ) ∪ˡᶠ ((mapValues txOutHash utxo') ᶠᵐ)} (disjoint-∪ˡ-mapValues {M = utxo} {utxo'} _ h)
        ⟩
      coin (indexedSumᵐ _ (((mapValues txOutHash utxo) ᶠᵐ) ∪ˡᶠ ((mapValues txOutHash utxo') ᶠᵐ)))
        ≡⟨ ⟦⟧-cong coinIsMonoidHomomorphism
         $ indexedSumᵐ-∪ {M = Value} {X = (mapValues txOutHash utxo) ᶠᵐ} {(mapValues txOutHash utxo') ᶠᵐ}
         (λ x x₁ → h (dom-mapʳ⊆ x) (dom-mapʳ⊆ x₁))
         ⟩
      coin (balance utxo + balance utxo')
        ≡⟨ ∙-homo-Coin _ _ ⟩
      cbalance utxo + cbalance utxo'
        ∎
      where open Tactic.EquationalReasoning.≡-Reasoning {A = ℕ} (solve-macro (quoteTerm +-0-monoid))


module _
  {utxo utxo' : UTxO}
  {fees fees' : Fees}
  {deposits deposits' : Deposits}
  {donations donations' : Donations}
  {tx : Tx} (let open Tx tx renaming (body to txb); open TxBody txb)
  {Γ : UTxOEnv}
  (step  : Γ ⊢ ⟦ utxo  , fees  , deposits  , donations  ⟧ ⇀⦇ tx ,UTXO⦈
               ⟦ utxo' , fees' , deposits' , donations' ⟧)
  (h' : txId ∉ mapˢ proj₁ (dom utxo))
  where
  open Tactic.EquationalReasoning.≡-Reasoning {A = ℕ} (solve-macro (quoteTerm +-0-monoid))

  private
    stepS : Γ ⊢ ⟦ utxo  , fees  , deposits  , donations  ⟧ ⇀⦇ tx ,UTXOS⦈
                ⟦ utxo' , fees' , deposits' , donations' ⟧
    stepS = case step of λ where
      (UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ h) → h

    pp : PParams
    pp = UTxOEnv.pparams Γ
    dep : Coin
    dep = getCoin deposits
    uDep : Coin
    uDep = getCoin (updateDeposits pp txb deposits)
    Δdep : ℤ
    Δdep = depositsChange pp txb deposits
    utxoSt : UTxOState
    utxoSt = ⟦ utxo , fees , deposits , donations ⟧
    ref tot : Coin
    ref = depositRefunds pp utxoSt txb
    wdls = getCoin txWithdrawals
    tot = newDeposits    pp utxoSt txb
    h : disjoint (dom (utxo ∣ txIns ᶜ)) (dom (outs txb))
    h = λ h₁ h₂ → ∉-∅ $ proj₁ (newTxid⇒disj {txb} {utxo} h')
                      $ to ∈-∩ (res-comp-domᵐ h₁ , h₂)
    newBal' : Γ ⊢ ⟦ utxo  , fees  , deposits  , donations  ⟧ ⇀⦇ tx ,UTXO⦈
                  ⟦ utxo' , fees' , deposits' , donations' ⟧
            → consumed pp utxoSt txb ≡ produced pp utxoSt txb
    newBal' (UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ x _ _ _ _ _ _ _ _ _ _ _) = x
    newBal : consumed pp utxoSt txb ≡ produced pp utxoSt txb
    newBal = newBal' step
    noMintAda' : Γ ⊢ ⟦ utxo  , fees  , deposits  , donations  ⟧ ⇀⦇ tx ,UTXO⦈
                     ⟦ utxo' , fees' , deposits' , donations' ⟧
               → coin (mint) ≡ 0
    noMintAda' (UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ x _ _ _ _ _ _ _ _ _ _) = x
    noMintAda : coin mint ≡ 0
    noMintAda = noMintAda' step
    remDepTot : Coin
    remDepTot = getCoin deposits - ref

  deposits-change' : Δdep ≡ tot - ref
  deposits-change' = sym posPart-negPart≡x

  dep-ref : tot ≡ 0 → uDep + ref ≡ dep
  dep-ref tot≡0 = +-injective $ begin
    ℤ.+_ (uDep + ref)          ≡⟨ pos-+ uDep ref ⟩
    ℤ.+_ uDep ℤ.+ (ref - 0)    ≡˘⟨ cong (λ u → ℤ.+_ uDep ℤ.+ (ref - u)) tot≡0 ⟩
    ℤ.+_ uDep ℤ.+ (ref - tot)  ≡⟨ cong ((ℤ.+ uDep) +_) (⊖-swap ref tot) ⟩
    ℤ.+_ uDep ℤ.- (tot - ref)  ≡˘⟨ cong (λ u →  ℤ.+_ uDep ℤ.- u) deposits-change' ⟩
    ℤ.+_ uDep ℤ.- Δdep         ≡˘⟨ cong ((ℤ.+ uDep) +_) (⊖-swap dep uDep) ⟩
    ℤ.+_ uDep + (dep - uDep)   ≡⟨ Int.distribʳ-⊖-+-pos uDep dep uDep ⟩
    (uDep + dep) - uDep        ≡⟨ cong (_- uDep) (+-comm uDep dep) ⟩
    (dep + uDep) - uDep        ≡˘⟨ Int.distribʳ-⊖-+-pos dep uDep uDep ⟩
    ℤ.+_ dep ℤ.+ (uDep - uDep) ≡⟨ cong (λ u → ℤ.+_ dep ℤ.+ u) (n⊖n≡0 uDep) ⟩
    ℤ.+_ dep ℤ.+ ℤ.0ℤ          ≡⟨ Int.+-identityʳ _ ⟩
    ℤ.+_ dep ∎

  ref-tot-0 : ref ≢ 0 → tot ≡ 0
  ref-tot-0 ref≢0 with Δdep
  ... | ℤ.+_ n     = ⊥-elim (ref≢0 refl)
  ... | ℤ.negsuc n = refl

  ref≤dep : ref ≤ dep
  ref≤dep with ref ≟ 0
  ... | no ¬p = ≤″⇒≤ $ _ ,≤_ $ begin
    ref + uDep ≡⟨ +-comm ref uDep ⟩
    uDep + ref ≡⟨ dep-ref $ ref-tot-0 ¬p ⟩
    dep        ∎
  ... | yes p rewrite p = z≤n

  deposits-change : uDep ≡ dep + tot - ref
  deposits-change = +-injective $ begin
    ℤ.+_ uDep                                 ≡˘⟨ Int.+-identityʳ _ ⟩
    ℤ.+_ uDep ℤ.+ ℤ.0ℤ                        ≡˘⟨ cong! (+-inverseˡ (ℤ.+_ dep)) ⟩
    ℤ.+_ uDep ℤ.+ (ℤ.-_ (ℤ.+_ dep) ℤ.+ (ℤ.+_ dep))
      ≡˘⟨ Int.+-assoc (ℤ.+_ uDep) (ℤ.-_ (ℤ.+_ dep)) (ℤ.+_ dep) ⟩
    (ℤ.+_ uDep ℤ.- (ℤ.+_ dep)) ℤ.+ (ℤ.+_ dep) ≡⟨ cong! (m-n≡m⊖n uDep dep) ⟩
    Δdep ℤ.+ (ℤ.+_ dep)                       ≡⟨ Int.+-comm Δdep (ℤ.+_ dep) ⟩
    (ℤ.+_ dep) ℤ.+ Δdep                       ≡⟨ cong! deposits-change' ⟩
    (ℤ.+_ dep) ℤ.+ (tot - ref)                ≡⟨ distribʳ-⊖-+-pos dep tot ref ⟩
    (dep + tot) - ref                         ≡⟨ ⊖-≥ (m≤n⇒m≤n+o tot ref≤dep) ⟩
    ℤ.+_ (dep + tot - ref) ∎

  split-balance : ∀ keys → cbalance utxo ≡ cbalance (utxo ∣ keys ᶜ) + cbalance (utxo ∣ keys)
  split-balance keys = begin
                      cbalance utxo
                        ≡˘⟨ balance-cong-coin {utxo = (utxo ∣ keys ᶜ) ∪ˡ (utxo ∣ keys)}{utxo}
                          $ disjoint-∪ˡ-∪ (disjoint-sym res-ex-disjoint)
                          ≡ᵉ-∘ ∪-sym
                          ≡ᵉ-∘ res-ex-∪ (_∈? keys) ⟩
                      cbalance ((utxo ∣ keys ᶜ) ∪ˡ (utxo ∣ keys))
                        ≡⟨ balance-∪ {utxo ∣ keys ᶜ} {utxo ∣ keys} $ flip res-ex-disjoint ⟩
                      cbalance (utxo ∣ keys ᶜ) + cbalance (utxo ∣ keys)
                        ∎
    where open IsEquivalence ≡ᵉ-isEquivalence renaming (trans to infixl 4 _≡ᵉ-∘_)

  module _ (balanceUtxo balanceIns balanceNoIns balanceOuts balanceUtxo' : Coin)
           (ref txFee txDonation tot : Coin)
           (splitUtxo : balanceUtxo ≡ balanceNoIns + balanceIns)
           (splitUtxo' : balanceUtxo' ≡ balanceNoIns + balanceOuts)
           (balanced : balanceIns + ref + wdls ≡ balanceOuts + txFee + tot + txDonation) where

    utxo-ref-prop-worker :
      balanceUtxo + ref + wdls ≡ balanceUtxo' + txFee + txDonation + tot
    utxo-ref-prop-worker = begin
      balanceUtxo + ref + wdls
        ≡⟨ cong (λ u → u + ref + wdls) splitUtxo ⟩
      balanceNoIns ℕ.+ balanceIns ℕ.+ ref ℕ.+ wdls
        ≡t⟨⟩
      balanceNoIns ℕ.+ (balanceIns ℕ.+ ref ℕ.+ wdls)
        ≡⟨ cong (balanceNoIns +_) balanced ⟩
      balanceNoIns ℕ.+ (balanceOuts ℕ.+ txFee ℕ.+ tot ℕ.+ txDonation)
        ≡t⟨⟩
      (balanceNoIns ℕ.+ balanceOuts ℕ.+ txFee) ℕ.+ tot ℕ.+ txDonation
        ≡˘⟨ cong (λ x → (x + txFee) + tot + txDonation) splitUtxo' ⟩
      (balanceUtxo' ℕ.+ txFee) ℕ.+ tot ℕ.+ txDonation
        ≡t⟨⟩
      balanceUtxo' ℕ.+ txFee ℕ.+ (tot ℕ.+ txDonation)
        ≡⟨ cong (balanceUtxo' + txFee +_) $ +-comm tot txDonation ⟩
      balanceUtxo' ℕ.+ txFee ℕ.+ (txDonation ℕ.+ tot)
        ≡t⟨⟩
      (balanceUtxo' ℕ.+ txFee) ℕ.+ txDonation ℕ.+ tot
        ∎

  utxo-ref-prop :
    cbalance utxo + ref + wdls ≡
    cbalance ((utxo ∣ txIns ᶜ) ∪ˡ outs txb) + txFee + txDonation + tot
  utxo-ref-prop = utxo-ref-prop-worker
                    (cbalance utxo)
                    (cbalance (utxo ∣ txIns))
                    (cbalance (utxo ∣ txIns ᶜ))
                    (cbalance (outs txb))
                    (cbalance ((utxo ∣ txIns ᶜ) ∪ˡ outs txb))
                    ref txFee txDonation tot
                    (split-balance txIns)
                    (balance-∪ {utxo ∣ txIns ᶜ} {outs txb} h)
                    (balValueToCoin {utxo = utxo} {utxoSt} {UTxOEnv.pparams Γ} noMintAda newBal)

  rearrange0 :
      (bal : ℕ)
    → deposits' ≡ updateDeposits pp txb deposits
    → bal + txFee + txDonation + tot + (remDepTot + fees)
    ≡ bal + (fees + txFee + getCoin deposits' + txDonation)
  rearrange0 bal h = begin
    bal ℕ.+ txFee ℕ.+ txDonation ℕ.+ tot ℕ.+ (remDepTot ℕ.+ fees)
      ≡t⟨⟩
    bal ℕ.+ (txFee ℕ.+ txDonation ℕ.+ (tot ℕ.+ remDepTot) ℕ.+ fees)
      ≡⟨ cong (bal +_) $ begin
        txFee + txDonation + (tot + remDepTot) + fees
          ≡⟨ +-comm _ fees ⟩
        fees ℕ.+ (txFee ℕ.+ txDonation ℕ.+ (tot ℕ.+ remDepTot))
          ≡t⟨⟩
        (fees ℕ.+ txFee) ℕ.+ (txDonation ℕ.+ (tot ℕ.+ remDepTot))
          ≡⟨ cong ((fees + txFee) +_) $ +-comm txDonation (tot + remDepTot) ⟩
        (fees + txFee) ℕ.+ ((tot + remDepTot) ℕ.+ txDonation)
          ≡t⟨⟩
        (fees + txFee) ℕ.+ (tot + remDepTot) ℕ.+ txDonation
          ≡⟨ cong (λ x → (fees + txFee) + x + txDonation)
          $ begin tot + (dep - ref) ≡˘⟨ +-∸-assoc tot ref≤dep ⟩
                  (tot + dep) - ref ≡⟨ cong (_- ref) $ +-comm tot dep ⟩
                  (dep + tot) - ref ≡˘⟨ deposits-change ⟩
                  uDep              ≡⟨ cong getCoin $ sym h ⟩
                  getCoin deposits' ∎ ⟩
        (fees + txFee) + getCoin deposits' + txDonation
          ∎ ⟩
    bal + ((fees + txFee) + getCoin deposits' + txDonation)
      ∎

  module _ (balanceUtxo balanceUtxo' : Coin)
           (ref-prop : balanceUtxo + ref + wdls ≡ balanceUtxo' + txFee + txDonation + tot)
           (h : deposits' ≡ updateDeposits pp txb deposits)
           where

    pov-scripts-worker :  isValid ≡ true
                          →  balanceUtxo + fees + getCoin deposits + donations + wdls * χ(isValid)
                             ≡ balanceUtxo' + (fees + txFee) + getCoin deposits' + (donations + txDonation)
    pov-scripts-worker valid = begin
      balanceUtxo + fees + dep + donations + wdls * χ(isValid)
        ≡⟨ cong (λ x → balanceUtxo + fees + dep + donations + wdls * χ x) valid ⟩
      balanceUtxo + fees + dep + donations + wdls * 1
        ≡⟨ cong (balanceUtxo + fees + dep + donations +_) (*-identityʳ wdls) ⟩
      balanceUtxo + fees + dep + donations + wdls
        ≡⟨ +-assoc (balanceUtxo + fees + dep) donations wdls ⟩
      balanceUtxo + fees + dep + (donations + wdls)
        ≡⟨ cong (balanceUtxo + fees + dep +_) (+-comm donations wdls) ⟩
      balanceUtxo + fees + dep + (wdls + donations)
        ≡˘⟨ +-assoc (balanceUtxo + fees + dep) wdls donations  ⟩
      balanceUtxo + fees + dep + wdls + donations
        ≡⟨ cong (_+ donations)
        $ begin
            balanceUtxo + fees + dep + wdls
              ≡˘⟨ cong (λ x → balanceUtxo + fees + x + wdls) (m+[n∸m]≡n ref≤dep) ⟩
            balanceUtxo + fees + (ref + remDepTot) + wdls
              ≡⟨ cong (_+ wdls) (+-assoc balanceUtxo fees (ref + remDepTot)) ⟩
            balanceUtxo + (fees + (ref + remDepTot)) + wdls
              ≡⟨ cong (λ x → balanceUtxo + x + wdls) (+-comm fees (ref + remDepTot)) ⟩
            balanceUtxo + (ref + remDepTot + fees) + wdls
              ≡⟨ cong (λ x → balanceUtxo + x + wdls) (+-assoc ref remDepTot fees) ⟩ --
            balanceUtxo + (ref + (remDepTot + fees)) + wdls
              ≡⟨ +-assoc balanceUtxo (ref + (remDepTot + fees)) wdls ⟩ --
            balanceUtxo + (ref + (remDepTot + fees) + wdls)
              ≡⟨ cong (balanceUtxo +_) (+-assoc ref (remDepTot + fees) wdls) ⟩
            balanceUtxo + (ref + ((remDepTot + fees) + wdls))
              ≡⟨ cong (λ x → balanceUtxo + (ref + x)) (+-comm (remDepTot + fees) wdls) ⟩
            balanceUtxo + (ref + (wdls + (remDepTot + fees)))
              ≡˘⟨ +-assoc balanceUtxo ref (wdls + (remDepTot + fees)) ⟩
            balanceUtxo + ref + (wdls + (remDepTot + fees))
              ≡˘⟨ +-assoc (balanceUtxo + ref) wdls (remDepTot + fees) ⟩
            balanceUtxo + ref + wdls + (remDepTot + fees)
              ≡⟨ cong (_+ (remDepTot + fees)) ref-prop ⟩
            balanceUtxo' + txFee + txDonation + tot + (remDepTot + fees)
              ≡⟨ rearrange0 (balanceUtxo') h ⟩
            balanceUtxo' + (fees + txFee + getCoin deposits' + txDonation)
              ∎ ⟩
      balanceUtxo' ℕ.+ (fees + txFee ℕ.+ getCoin deposits' ℕ.+ txDonation) ℕ.+ donations
        ≡t⟨⟩
      balanceUtxo' ℕ.+ (fees + txFee) ℕ.+ getCoin deposits' ℕ.+ (txDonation ℕ.+ donations)
        ≡⟨ cong (balanceUtxo' + (fees + txFee) + getCoin deposits' ℕ.+_)
         $ +-comm txDonation donations ⟩
      balanceUtxo' + (fees + txFee) + getCoin deposits' + (donations + txDonation)
        ∎

  pov-scripts :  deposits' ≡ updateDeposits pp txb deposits
                 →  isValid ≡ true
                 →  cbalance utxo + fees + dep + donations + wdls * χ(isValid)
                    ≡  cbalance ((utxo ∣ txIns ᶜ) ∪ˡ outs txb)
                       + (fees + txFee) + getCoin deposits' + (donations + txDonation)
  pov-scripts h valid = pov-scripts-worker (cbalance utxo) (cbalance ((utxo ∣ txIns ᶜ) ∪ˡ outs txb)) utxo-ref-prop h valid

  pov-no-scripts :  isValid ≡ false
                    →  cbalance utxo + fees + dep + donations + wdls * χ(isValid)
                       ≡ cbalance (utxo ∣ collateralInputs ᶜ) + (fees + cbalance (utxo ∣ collateralInputs)) + dep + donations
  pov-no-scripts invalid = begin
    cbalance utxo + fees + dep + donations + wdls * χ(isValid) ≡⟨ cong (λ x → cbalance utxo + fees + dep + donations + wdls * χ x) invalid ⟩
    cbalance utxo + fees + dep + donations + wdls * 0 ≡⟨ cong (cbalance utxo + fees + dep + donations +_ ) (*-zeroʳ wdls) ⟩
    cbalance utxo + fees + dep + donations + 0 ≡⟨ +-identityʳ _ ⟩
    cbalance utxo + fees + dep + donations ≡⟨ cong (λ x → x + dep + donations) $ begin
      cbalance utxo ℕ.+ fees ≡⟨ cong (_+ fees) (split-balance collateralInputs) ⟩
      cbalance (utxo ∣ collateralInputs ᶜ) ℕ.+ cbalance (utxo ∣ collateralInputs) ℕ.+ fees ≡t⟨⟩
      cbalance (utxo ∣ collateralInputs ᶜ) ℕ.+ (cbalance (utxo ∣ collateralInputs) ℕ.+ fees) ≡⟨ cong (cbalance (utxo ∣ collateralInputs ᶜ) +_) (+-comm _ fees) ⟩
      cbalance (utxo ∣ collateralInputs ᶜ) ℕ.+ (fees ℕ.+ cbalance (utxo ∣ collateralInputs)) ∎ ⟩
    cbalance (utxo ∣ collateralInputs ᶜ) + (fees + cbalance (utxo ∣ collateralInputs)) + dep + donations
    ∎
```
