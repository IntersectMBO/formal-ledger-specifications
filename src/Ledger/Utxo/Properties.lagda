\subsection{UTxO}
\label{sec:utxo-properties}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Algebra.Morphism            using (module MonoidMorphisms; IsMagmaHomomorphism)
import Data.Nat as ℕ
open import Data.Nat.Properties         hiding (_≟_)
open import Data.Sign                   using (Sign)
open import Data.Integer as ℤ           using (ℤ; _⊖_)
open import Data.Integer.Ext            using (posPart; negPart)
import Data.Integer.Properties as ℤ
open import Relation.Binary             using (IsEquivalence)

open import Prelude; open Equivalence

open import Tactic.Cong                 using (cong!)
open import Tactic.EquationalReasoning  using (module ≡-Reasoning)
open import Tactic.MonoidSolver.NonNormalising using (solve-macro)
open Tactic.EquationalReasoning.≡-Reasoning {A = ℕ} (solve-macro (quoteTerm +-0-monoid))

open import Ledger.Prelude; open Properties; open Computational ⦃...⦄
open import Ledger.Abstract
open import Ledger.Transaction

module Ledger.Utxo.Properties
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Utxo txs abs renaming (Computational-UTXO to Computational-UTXO')

instance
  _ = TokenAlgebra.Value-CommutativeMonoid tokenAlgebra
  _ = +-0-monoid

abstract
  Computational-UTXO : Computational _⊢_⇀⦇_,UTXO⦈_
  Computational-UTXO = Computational-UTXO'

private variable
  tx                               : Tx
  utxo utxo'                       : UTxO
  Γ                                : UTxOEnv
  utxoState utxoState'             : UTxOState
  fees fees' donations donations'  : Coin
  deposits deposits'               : DepositPurpose ⇀ Coin

balance-cong : proj₁ utxo ≡ᵉ proj₁ utxo' → balance utxo ≈ balance utxo'
balance-cong {utxo} {utxo'} = indexedSumᵐ-cong {x = utxo ᶠᵐ} {utxo' ᶠᵐ}

balance-cong-coin : proj₁ utxo ≡ᵉ proj₁ utxo' → cbalance utxo ≡ cbalance utxo'
balance-cong-coin {utxo} {utxo'} x =
  coinIsMonoidHomomorphism .⟦⟧-cong (balance-cong {utxo} {utxo'} x)
  where open MonoidMorphisms.IsMonoidHomomorphism

open MonoidMorphisms.IsMonoidHomomorphism
private
  ∙-homo-Coin = IsMagmaHomomorphism.homo (isMagmaHomomorphism coinIsMonoidHomomorphism)

balance-∪ : disjoint (dom utxo) (dom utxo')
                     → cbalance (utxo ∪ˡ utxo') ≡ cbalance utxo + cbalance utxo'
balance-∪ {utxo} {utxo'} h = begin
  cbalance (utxo ∪ˡ utxo')
    ≡⟨ ⟦⟧-cong coinIsMonoidHomomorphism
    $ indexedSumᵐ-cong {x = (utxo ∪ˡ utxo') ᶠᵐ} {(utxo ᶠᵐ) ∪ˡᶠ (utxo' ᶠᵐ)} (id , id)
    ⟩
  coin (indexedSumᵐ _ ((utxo ᶠᵐ) ∪ˡᶠ (utxo' ᶠᵐ)))
    ≡⟨ ⟦⟧-cong coinIsMonoidHomomorphism
    $ indexedSumᵐ-∪ {X = utxo ᶠᵐ} {utxo' ᶠᵐ} h
    ⟩
  coin (balance utxo + balance utxo')
    ≡⟨ ∙-homo-Coin  _ _ ⟩
  cbalance utxo + cbalance utxo'
    ∎

module _ {txb : _} (open TxBody txb) where
  newTxid⇒disj : txid ∉ mapˢ proj₁ (dom utxo)
              → disjoint' (dom utxo) (dom (outs txb))
  newTxid⇒disj id∉utxo = disjoint⇒disjoint' λ h h' → id∉utxo $ to ∈-map
    (-, (case from ∈-map h' of λ where
          (_ , refl , h'') → case from ∈-map h'' of λ where (_ , refl , _) → refl) , h)

  consumedCoinEquality : ∀ {pp}
    → coin mint ≡ 0
    → coin (consumed pp utxoState txb)
    ≡ cbalance ((UTxOState.utxo utxoState) ∣ txins) + depositRefunds pp utxoState txb
  consumedCoinEquality {utxoState} {pp} h = let utxo = UTxOState.utxo utxoState in
      begin
    coin (balance (utxo ∣ txins) + mint + inject (depositRefunds pp utxoState txb))
      ≡⟨ ∙-homo-Coin _ _ ⟩
    coin (balance (utxo ∣ txins) + mint) + coin (inject $ depositRefunds pp utxoState txb)
      ≡⟨ cong (coin (balance (utxo ∣ txins) + mint) +_) (property _) ⟩
    coin (balance (utxo ∣ txins) +ᵛ mint) ℕ.+ depositRefunds pp utxoState txb
      ≡⟨ cong! (∙-homo-Coin _ _) ⟩
    coin (balance (utxo ∣ txins)) ℕ.+ coin (mint) ℕ.+ depositRefunds pp utxoState txb
      ≡⟨ cong (λ x → cbalance (utxo ∣ txins) + x + depositRefunds pp utxoState txb) h ⟩
    cbalance (utxo ∣ txins) ℕ.+ 0 ℕ.+ depositRefunds pp utxoState txb
      ≡⟨ cong! (+-identityʳ (cbalance (utxo ∣ txins))) ⟩
    cbalance (utxo ∣ txins) ℕ.+ depositRefunds pp utxoState txb
      ∎

  producedCoinEquality : ∀ {pp}
    → coin (produced pp utxoState txb)
    ≡ cbalance (outs txb) + txfee + newDeposits pp utxoState txb + txdonation
  producedCoinEquality {utxoState} {pp} =
      begin
    coin (balance (outs txb) + inject txfee
      + inject (newDeposits pp utxoState txb) + inject txdonation)
      ≡⟨ ∙-homo-Coin _ _ ⟩
    coin (balance (outs txb) + inject txfee
      + inject (newDeposits pp utxoState txb)) + coin (inject txdonation)
      ≡⟨ cong (_+ coin (inject txdonation)) (begin
        coin (balance (outs txb) + inject txfee
          + inject (newDeposits pp utxoState txb))
          ≡⟨ ∙-homo-Coin _ _ ⟩
        coin (balance (outs txb) +ᵛ inject txfee)
          ℕ.+ coin (inject (newDeposits pp utxoState txb))
          ≡⟨ cong! (property _) ⟩
        coin (balance (outs txb) +ᵛ inject txfee)
          ℕ.+ newDeposits pp utxoState txb
          ≡⟨ cong! (∙-homo-Coin _ _) ⟩
        coin (balance (outs txb)) ℕ.+ coin (inject txfee)
          ℕ.+ newDeposits pp utxoState txb
          ≡⟨ cong (λ x → cbalance (outs txb) + x + newDeposits pp utxoState txb)
                $ property txfee ⟩
        cbalance (outs txb) + txfee + newDeposits pp utxoState txb
          ∎
      )⟩
    cbalance (outs txb) + txfee
      + newDeposits pp utxoState txb + coin (inject txdonation)
      ≡⟨ cong (cbalance (outs txb) + txfee + newDeposits pp utxoState txb +_)
            $ property _ ⟩
    cbalance (outs txb) + txfee + newDeposits pp utxoState txb + txdonation
      ∎

  balValueToCoin : ∀ {pp}
    → coin mint ≡ 0
    → consumed pp utxoState txb ≡ produced pp utxoState txb
    → cbalance ((UTxOState.utxo utxoState) ∣ txins)
    + depositRefunds pp utxoState txb
    ≡ cbalance (outs txb) + txfee + newDeposits pp utxoState txb + txdonation
  balValueToCoin {utxoState} {pp} h h' = begin
    cbalance ((UTxOState.utxo utxoState) ∣ txins) + depositRefunds pp utxoState txb
      ≡˘⟨ consumedCoinEquality {utxoState} {pp} h ⟩
    coin (consumed pp utxoState txb)
      ≡⟨ cong! h' ⟩
    coin (produced pp utxoState txb)
      ≡⟨ producedCoinEquality {utxoState} {pp} ⟩
    cbalance (outs txb) + txfee + newDeposits pp utxoState txb + txdonation
      ∎

posPart-negPart≡x : ∀ {x} → posPart x ⊖ negPart x ≡ x
posPart-negPart≡x {ℤ.+_ n}     = refl
posPart-negPart≡x {ℤ.negsuc n} = refl

module DepositHelpers
  {utxo utxo' : UTxO}
  {fees fees' : Coin}
  {deposits deposits' : DepositPurpose ⇀ Coin}
  {donations donations' : Coin}
  {tx : Tx} (let open Tx tx renaming (body to txb); open TxBody txb)
  {Γ : UTxOEnv}
  (step : Γ ⊢ ⟦ utxo , fees , deposits , donations ⟧ᵘ ⇀⦇ tx ,UTXO⦈
              ⟦ utxo' , fees' , deposits' , donations' ⟧ᵘ)
  (h' : txid ∉ mapˢ proj₁ (dom utxo))
  where

  private
    pp : PParams
    pp = UTxOEnv.pparams Γ
    dep : Coin
    dep = getCoin deposits
    uDep : Coin
    uDep = getCoin (updateDeposits pp txb deposits)
    Δdep : ℤ
    Δdep = depositsChange pp txb deposits
    utxoSt : UTxOState
    utxoSt = ⟦ utxo , fees , deposits , donations ⟧ᵘ
    ref tot : Coin
    ref = depositRefunds pp utxoSt txb
    tot = newDeposits    pp utxoSt txb
    h : disjoint (dom (utxo ∣ txins ᶜ)) (dom (outs txb))
    h = λ h₁ h₂ → ∉-∅ $ proj₁ (newTxid⇒disj {txb} {utxo} h')
                      $ to ∈-∩ (res-comp-domᵐ h₁ , h₂)
    newBal' : Γ ⊢ ⟦ utxo , fees , deposits , donations ⟧ᵘ ⇀⦇ tx ,UTXO⦈
                  ⟦ utxo' , fees' , deposits' , donations' ⟧ᵘ
            → consumed pp utxoSt txb ≡ produced pp utxoSt txb
    newBal' (UTXO-inductive⋯ _ _ _ _ _ _ _ x _ _ _ _ _ _ _) = x
    newBal : consumed pp utxoSt txb ≡ produced pp utxoSt txb
    newBal = newBal' step
    noMintAda' : Γ ⊢ ⟦ utxo , fees , deposits , donations ⟧ᵘ ⇀⦇ tx ,UTXO⦈
                     ⟦ utxo' , fees' , deposits' , donations' ⟧ᵘ
               → coin (mint) ≡ 0
    noMintAda' (UTXO-inductive⋯ _ _ _ _ _ _ _ _ x _ _ _ _ _ _) = x
    noMintAda : coin mint ≡ 0
    noMintAda = noMintAda' step
    remDepTot : Coin
    remDepTot = getCoin deposits - ref

  uDep≡ : Γ ⊢ ⟦ utxo , fees , deposits , donations ⟧ᵘ ⇀⦇ tx ,UTXO⦈
              ⟦ utxo' , fees' , deposits' , donations' ⟧ᵘ
        → deposits' ≡ updateDeposits pp txb deposits
  uDep≡ (UTXO-inductive _) = refl

  deposits-change' : Δdep ≡ tot ⊖ ref
  deposits-change' = sym posPart-negPart≡x

  dep-ref : tot ≡ 0 → uDep + ref ≡ dep
  dep-ref tot≡0 = ℤ.+-injective $ begin
    ℤ.+_ (uDep + ref)          ≡⟨ ℤ.pos-+ uDep ref ⟩
    ℤ.+_ uDep ℤ.+ (ref ⊖ 0)    ≡˘⟨ cong! tot≡0 ⟩
    ℤ.+_ uDep ℤ.+ (ref ⊖ tot)  ≡⟨ cong ((ℤ.+ uDep) +_) (ℤ.⊖-swap ref tot) ⟩
    ℤ.+_ uDep ℤ.- (tot ⊖ ref)  ≡˘⟨ cong! deposits-change' ⟩
    ℤ.+_ uDep ℤ.- Δdep         ≡˘⟨ cong ((ℤ.+ uDep) +_) (ℤ.⊖-swap dep uDep) ⟩
    ℤ.+_ uDep + (dep ⊖ uDep)   ≡⟨ ℤ.distribʳ-⊖-+-pos uDep dep uDep ⟩
    (uDep + dep) ⊖ uDep        ≡⟨ cong (_⊖ uDep) (+-comm uDep dep) ⟩
    (dep + uDep) ⊖ uDep        ≡˘⟨ ℤ.distribʳ-⊖-+-pos dep uDep uDep ⟩
    ℤ.+_ dep ℤ.+ (uDep ⊖ uDep) ≡⟨ cong! (ℤ.n⊖n≡0 uDep) ⟩
    ℤ.+_ dep ℤ.+ ℤ.0ℤ          ≡⟨ ℤ.+-identityʳ _ ⟩
    ℤ.+_ dep ∎

  ref-tot-0 : ref ≢ 0 → tot ≡ 0
  ref-tot-0 ref≢0 with Δdep
  ... | ℤ.+_ n     = ⊥-elim (ref≢0 refl)
  ... | ℤ.negsuc n = refl

  ref≤dep : ref ≤ dep
  ref≤dep with ref ≟ 0
  ... | no ¬p = ≤″⇒≤ $ ℕ.less-than-or-equal $ begin
    ref + uDep ≡⟨ +-comm ref uDep ⟩
    uDep + ref ≡⟨ dep-ref $ ref-tot-0 ¬p ⟩
    dep        ∎
  ... | yes p rewrite p = z≤n

  deposits-change : uDep ≡ dep + tot - ref
  deposits-change = ℤ.+-injective $ begin
    ℤ.+_ uDep                                 ≡˘⟨ ℤ.+-identityʳ _ ⟩
    ℤ.+_ uDep ℤ.+ ℤ.0ℤ                        ≡˘⟨ cong! (ℤ.+-inverseˡ (ℤ.+_ dep)) ⟩
    ℤ.+_ uDep ℤ.+ (ℤ.-_ (ℤ.+_ dep) ℤ.+ (ℤ.+_ dep))
      ≡˘⟨ ℤ.+-assoc (ℤ.+_ uDep) (ℤ.-_ (ℤ.+_ dep)) (ℤ.+_ dep) ⟩
    (ℤ.+_ uDep ℤ.- (ℤ.+_ dep)) ℤ.+ (ℤ.+_ dep) ≡⟨ cong! (ℤ.m-n≡m⊖n uDep dep) ⟩
    Δdep ℤ.+ (ℤ.+_ dep)                       ≡⟨ ℤ.+-comm Δdep (ℤ.+_ dep) ⟩
    (ℤ.+_ dep) ℤ.+ Δdep                       ≡⟨ cong! deposits-change' ⟩
    (ℤ.+_ dep) ℤ.+ (tot ⊖ ref)                ≡⟨ ℤ.distribʳ-⊖-+-pos dep tot ref ⟩
    (dep + tot) ⊖ ref                         ≡⟨ ℤ.⊖-≥ (m≤n⇒m≤n+o tot ref≤dep) ⟩
    ℤ.+_ (dep + tot - ref) ∎

  utxo-ref-prop :
    cbalance utxo + ref ≡
    (cbalance ((utxo ∣ txins ᶜ) ∪ˡ outs txb) + txfee) + txdonation + tot
  utxo-ref-prop = begin
    cbalance utxo + ref
      ≡˘⟨ cong (_+ ref)
        $ balance-cong-coin {utxo = (utxo ∣ txins ᶜ) ∪ˡ (utxo ∣ txins)}{utxo}
        $    disjoint-∪ˡ-∪ (disjoint-sym res-ex-disjoint)
        ≡ᵉ-∘ ∪-sym
        ≡ᵉ-∘ res-ex-∪ (_∈? txins) ⟩
    cbalance ((utxo ∣ txins ᶜ) ∪ˡ (utxo ∣ txins)) + ref
      ≡⟨ cong (_+ ref)
       $ balance-∪ {utxo ∣ txins ᶜ} {utxo ∣ txins}
          $ flip res-ex-disjoint ⟩
    cbalance (utxo ∣ txins ᶜ) ℕ.+ cbalance (utxo ∣ txins) ℕ.+ ref
      ≡t⟨⟩
    cbalance (utxo ∣ txins ᶜ) ℕ.+ (cbalance (utxo ∣ txins) ℕ.+ ref)
      ≡⟨ cong (cbalance (utxo ∣ txins ᶜ) +_)
       $ balValueToCoin {txb} {utxoSt} {UTxOEnv.pparams Γ} noMintAda newBal ⟩
    cbalance (utxo ∣ txins ᶜ) ℕ.+ (cbalance (outs txb)
      ℕ.+ txfee ℕ.+ tot ℕ.+ txdonation)
      ≡t⟨⟩
    (cbalance (utxo ∣ txins ᶜ) ℕ.+ cbalance (outs txb) ℕ.+ txfee)
      ℕ.+ tot ℕ.+ txdonation
      ≡˘⟨ cong (λ x → (x + txfee) + tot + txdonation)
        $ balance-∪ {utxo ∣ txins ᶜ} {outs txb} h ⟩
    (cbalance ((utxo ∣ txins ᶜ) ∪ˡ outs txb) ℕ.+ txfee)
      ℕ.+ tot ℕ.+ txdonation
      ≡t⟨⟩
    (cbalance ((utxo ∣ txins ᶜ) ∪ˡ outs txb) ℕ.+ txfee)
      ℕ.+ (tot ℕ.+ txdonation)
      ≡⟨ cong ((cbalance ((utxo ∣ txins ᶜ) ∪ˡ outs txb) + txfee) +_)
       $ +-comm tot txdonation ⟩
    (cbalance ((utxo ∣ txins ᶜ) ∪ˡ outs txb) ℕ.+ txfee)
      ℕ.+ (txdonation ℕ.+ tot)
      ≡t⟨⟩
    (cbalance ((utxo ∣ txins ᶜ) ∪ˡ outs txb) ℕ.+ txfee)
      ℕ.+ txdonation ℕ.+ tot
      ∎ where open IsEquivalence ≡ᵉ-isEquivalence renaming (trans to infixl 4 _≡ᵉ-∘_)

  rearrange0 : txfee + txdonation + (tot + remDepTot) + fees
             ≡ fees + txfee + getCoin deposits' + txdonation
  rearrange0 = begin
    txfee + txdonation + (tot + remDepTot) + fees
      ≡⟨ +-comm _ fees ⟩
    fees ℕ.+ (txfee ℕ.+ txdonation ℕ.+ (tot ℕ.+ remDepTot))
      ≡t⟨⟩
    (fees ℕ.+ txfee) ℕ.+ (txdonation ℕ.+ (tot ℕ.+ remDepTot))
      ≡⟨ cong ((fees + txfee) +_) $ +-comm txdonation (tot + remDepTot) ⟩
    (fees + txfee) ℕ.+ ((tot + remDepTot) ℕ.+ txdonation)
      ≡t⟨⟩
    (fees + txfee) ℕ.+ (tot + remDepTot) ℕ.+ txdonation
      ≡⟨ cong (λ x → (fees + txfee) + x + txdonation)
       $ begin tot + (dep - ref) ≡˘⟨ +-∸-assoc tot ref≤dep ⟩
               (tot + dep) - ref ≡⟨ cong (_- ref) $ +-comm tot dep ⟩
               (dep + tot) - ref ≡˘⟨ deposits-change ⟩
               uDep              ≡⟨ cong getCoin $ sym $ uDep≡ step ⟩
               getCoin deposits' ∎ ⟩
    (fees + txfee) + getCoin deposits' + txdonation
      ∎
\end{code}

Here, we state the fact that the UTxO relation is computable.

\begin{figure*}[h]
\begin{code}
UTXO-step : UTxOEnv → UTxOState → Tx → Maybe UTxOState
UTXO-step = compute

UTXO-step-computes-UTXO  :  UTXO-step Γ utxoState tx ≡ just utxoState'
                         ⇔  Γ ⊢ utxoState ⇀⦇ tx ,UTXO⦈ utxoState'
UTXO-step-computes-UTXO = ≡-just⇔STS
\end{code}
\caption{Computing the UTXO transition system}
\end{figure*}

\begin{property}[\textbf{Preserve Balance}]~\\
\noindent
For all $\var{env}\in$ \UTxOEnv, $\var{utxo},\var{utxo'}\in$ \UTxO,
$\var{fees},\var{fees'}\in$ \Coin and $\var{tx}\in$ \Tx,

if
\begin{code}[hide]
pov : let open Tx; open TxBody in
\end{code}
\begin{code}
  tx .body .txid ∉ mapˢ proj₁ (dom utxo)
\end{code}

and
\begin{code}[hide]
  →
\end{code}
\begin{code}
  Γ ⊢  ⟦ utxo   , fees   , deposits   , donations   ⟧ᵘ ⇀⦇ tx ,UTXO⦈
       ⟦ utxo'  , fees'  , deposits'  , donations'  ⟧ᵘ
\end{code}

then
\begin{code}[hide]
  →
\end{code}
\begin{code}
         getCoin ⟦ utxo   , fees   , deposits   , donations   ⟧ᵘ
      ≡  getCoin ⟦ utxo'  , fees'  , deposits'  , donations'  ⟧ᵘ
\end{code}
\begin{code}[hide]
pov {tx}{utxo}{_}{fees}{deposits}{donations}
    {deposits' = deposits'} h'
    step@(UTXO-inductive⋯ _ Γ _ _ _ _ _ newBal noMintAda _ _ _ _ _ _) =
  let open Tx tx renaming (body to txb); open TxBody txb
      h : disjoint (dom (utxo ∣ txins ᶜ)) (dom (outs txb))
      h = λ h₁ h₂ → ∉-∅ $ proj₁ (newTxid⇒disj {txb = txb} {utxo} h')
                  $ to ∈-∩ (res-comp-domᵐ h₁ , h₂)
      utxoSt = ⟦ utxo , fees , deposits , donations ⟧ᵘ
      pp = UTxOEnv.pparams Γ
      ref = depositRefunds pp utxoSt txb
      tot = newDeposits pp utxoSt txb
      dep = getCoin deposits
      remDepTot = getCoin deposits - ref
      open DepositHelpers step h'
  in begin
    cbalance utxo + fees + dep + donations
      ≡⟨ cong (_+ donations)
       $ begin
          cbalance utxo ℕ.+ fees ℕ.+ dep
            ≡tˡ⟨ cong (cbalance utxo ℕ.+_) (+-comm fees dep) ⟩
          cbalance utxo + (dep + fees)
            ≡˘⟨ cong (λ x → cbalance utxo + (x + fees)) (m+[n∸m]≡n ref≤dep) ⟩
          cbalance utxo ℕ.+ ((ref ℕ.+ remDepTot) ℕ.+ fees)
            ≡t⟨⟩
          cbalance utxo ℕ.+ ref ℕ.+ (remDepTot ℕ.+ fees)
            ≡⟨ cong (_+ (remDepTot + fees)) utxo-ref-prop ⟩
          (cbalance ((utxo ∣ txins ᶜ) ∪ˡ outs txb) ℕ.+ txfee)
            ℕ.+ txdonation ℕ.+ tot ℕ.+ (remDepTot ℕ.+ fees)
            ≡t⟨⟩
          cbalance ((utxo ∣ txins ᶜ) ∪ˡ outs txb)
            ℕ.+ (txfee ℕ.+ txdonation ℕ.+ (tot ℕ.+ remDepTot) ℕ.+ fees)
            ≡⟨ cong (cbalance ((utxo ∣ txins ᶜ) ∪ˡ outs txb) +_) rearrange0 ⟩
          cbalance ((utxo ∣ txins ᶜ) ∪ˡ outs txb)
            + ((fees + txfee) + getCoin deposits' + txdonation)
            ∎ ⟩
    cbalance ((utxo ∣ txins ᶜ) ∪ˡ outs txb)
      ℕ.+ ((fees + txfee) ℕ.+ getCoin deposits' ℕ.+ txdonation) ℕ.+ donations
      ≡t⟨⟩
    cbalance ((utxo ∣ txins ᶜ) ∪ˡ outs txb)
      ℕ.+ (fees + txfee) ℕ.+ getCoin deposits' ℕ.+ (txdonation ℕ.+ donations)
      ≡⟨ cong (cbalance ((utxo ∣ txins ᶜ) ∪ˡ outs txb)
                + (fees + txfee) + getCoin deposits' ℕ.+_)
       $ +-comm txdonation donations ⟩
    cbalance ((utxo ∣ txins ᶜ) ∪ˡ outs txb)
      + (fees + txfee) + getCoin deposits' + (donations + txdonation)
      ∎
\end{code}

\end{property}
