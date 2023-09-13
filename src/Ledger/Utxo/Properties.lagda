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
open import Tactic.MonoidSolver         using (solve-macro)
open Tactic.EquationalReasoning.≡-Reasoning {A = ℕ} (solve-macro (quoteTerm +-0-monoid))

open import Ledger.Prelude; open Properties; open Computational
open import Ledger.Transaction

module Ledger.Utxo.Properties (⋯ : _) (open TransactionStructure ⋯) where

open TxBody
open import Ledger.Utxo ⋯ renaming (Computational-UTXO to Computational-UTXO')

instance
  _ = TokenAlgebra.Value-CommutativeMonoid tokenAlgebra
  _ = +-0-monoid

private variable
  tx                               : TxBody
  utxo utxo'                       : UTxO
  Γ                                : UTxOEnv
  utxoState utxoState'             : UTxOState
  fees fees' donations donations'  : Coin
  deposits deposits'               : DepositPurpose ⇀ Coin

abstract
  Computational-UTXO : Computational _⊢_⇀⦇_,UTXO⦈_
  Computational-UTXO = Computational-UTXO'

balance-cong : proj₁ utxo ≡ᵉ proj₁ utxo' → balance utxo ≈ balance utxo'
balance-cong {utxo} {utxo'} = indexedSumᵐ-cong {x = utxo ᶠᵐ} {utxo' ᶠᵐ}

balance-cong-coin : proj₁ utxo ≡ᵉ proj₁ utxo' → cbalance utxo ≡ cbalance utxo'
balance-cong-coin {utxo} {utxo'} x =
  coinIsMonoidHomomorphism .⟦⟧-cong (balance-cong {utxo} {utxo'} x)
  where open MonoidMorphisms.IsMonoidHomomorphism

open MonoidMorphisms.IsMonoidHomomorphism
private
  ∙-homo-Coin = IsMagmaHomomorphism.homo (isMagmaHomomorphism coinIsMonoidHomomorphism)

balance-∪ : disjoint (dom (utxo ˢ)) (dom (utxo' ˢ))
                     → cbalance (utxo ∪ᵐˡ utxo') ≡ cbalance utxo + cbalance utxo'
balance-∪ {utxo} {utxo'} h = begin
  cbalance (utxo ∪ᵐˡ utxo')
    ≡⟨ ⟦⟧-cong coinIsMonoidHomomorphism
    $ indexedSumᵐ-cong {x = (utxo ∪ᵐˡ utxo') ᶠᵐ} {(utxo ᶠᵐ) ∪ᵐˡᶠ (utxo' ᶠᵐ)} (id , id)
    ⟩
  coin (indexedSumᵐ _ ((utxo ᶠᵐ) ∪ᵐˡᶠ (utxo' ᶠᵐ)))
    ≡⟨ ⟦⟧-cong coinIsMonoidHomomorphism
    $ indexedSumᵐ-∪ {X = utxo ᶠᵐ} {utxo' ᶠᵐ} h
    ⟩
  coin (balance utxo + balance utxo')
    ≡⟨ ∙-homo-Coin  _ _ ⟩
  cbalance utxo + cbalance utxo'
    ∎

newTxid⇒disj : txid tx ∉ map proj₁ (dom (utxo ˢ))
             → disjoint' (dom (utxo ˢ)) (dom ((outs tx) ˢ))
newTxid⇒disj id∉utxo = disjoint⇒disjoint' λ h h' → id∉utxo $ to ∈-map
  (-, (case from ∈-map h' of λ where
        (_ , refl , h'') → case from ∈-map h'' of λ where (_ , refl , _) → refl) , h)

consumedCoinEquality : ∀ {pp}
  → coin (mint tx) ≡ 0
  → coin (consumed pp utxoState tx)
  ≡ cbalance ((UTxOState.utxo utxoState) ∣ txins tx) + depositRefunds pp utxoState tx
consumedCoinEquality {tx} {utxoState} {pp} h = let utxo = UTxOState.utxo utxoState in
    begin
  coin (balance (utxo ∣ txins tx) + mint tx + inject (depositRefunds pp utxoState tx))
    ≡⟨ ∙-homo-Coin _ _ ⟩
  coin (balance (utxo ∣ txins tx) + mint tx) + coin (inject $ depositRefunds pp utxoState tx)
    ≡⟨ cong (coin (balance (utxo ∣ txins tx) + mint tx) +_) (property _) ⟩
  coin (balance (utxo ∣ txins tx) +ᵛ mint tx) ℕ.+ depositRefunds pp utxoState tx
    ≡⟨ cong! (∙-homo-Coin _ _) ⟩
  coin (balance (utxo ∣ txins tx)) ℕ.+ coin (mint tx) ℕ.+ depositRefunds pp utxoState tx
    ≡⟨ cong (λ x → cbalance (utxo ∣ txins tx) + x + depositRefunds pp utxoState tx) h ⟩
  cbalance (utxo ∣ txins tx) ℕ.+ 0 ℕ.+ depositRefunds pp utxoState tx
    ≡⟨ cong! (+-identityʳ (cbalance (utxo ∣ txins tx))) ⟩
  cbalance (utxo ∣ txins tx) ℕ.+ depositRefunds pp utxoState tx
    ∎

producedCoinEquality : ∀ {pp}
  → coin (produced pp utxoState tx)
  ≡ cbalance (outs tx) + (txfee tx) + newDeposits pp utxoState tx + txdonation tx
producedCoinEquality {utxoState} {tx} {pp} = begin
  coin (balance (outs tx) + inject (txfee tx)
    + inject (newDeposits pp utxoState tx) + inject (txdonation tx))
    ≡⟨ ∙-homo-Coin _ _ ⟩
  coin (balance (outs tx) + inject (txfee tx)
    + inject (newDeposits pp utxoState tx)) + coin (inject (txdonation tx))
    ≡⟨ cong (_+ coin (inject (txdonation tx))) (begin
      coin (balance (outs tx) + inject (txfee tx)
        + inject (newDeposits pp utxoState tx))
        ≡⟨ ∙-homo-Coin _ _ ⟩
      coin (balance (outs tx) +ᵛ inject (txfee tx))
        ℕ.+ coin (inject (newDeposits pp utxoState tx))
        ≡⟨ cong! (property _) ⟩
      coin (balance (outs tx) +ᵛ inject (txfee tx))
        ℕ.+ newDeposits pp utxoState tx
        ≡⟨ cong! (∙-homo-Coin _ _) ⟩
      coin (balance (outs tx)) ℕ.+ coin (inject (txfee tx))
        ℕ.+ newDeposits pp utxoState tx
        ≡⟨ cong (λ x → cbalance (outs tx) + x + newDeposits pp utxoState tx)
              $ property (txfee tx) ⟩
      cbalance (outs tx) + (txfee tx) + newDeposits pp utxoState tx
        ∎
    )⟩
  cbalance (outs tx) + (txfee tx)
    + newDeposits pp utxoState tx + coin (inject (txdonation tx))
    ≡⟨ cong (cbalance (outs tx) + (txfee tx) + newDeposits pp utxoState tx +_)
          $ property _ ⟩
  cbalance (outs tx) + (txfee tx) + newDeposits pp utxoState tx + txdonation tx
    ∎

balValueToCoin : ∀ {pp}
  → coin (mint tx) ≡ 0
  → consumed pp utxoState tx ≡ produced pp utxoState tx
  → cbalance ((UTxOState.utxo utxoState) ∣ txins tx) + depositRefunds pp utxoState tx
  ≡ cbalance (outs tx) + (txfee tx) + newDeposits pp utxoState tx + txdonation tx
balValueToCoin {tx} {utxoState} {pp} h h' = begin
  cbalance ((UTxOState.utxo utxoState) ∣ txins tx) + depositRefunds pp utxoState tx
    ≡˘⟨ consumedCoinEquality {tx} {utxoState} {pp} h ⟩
  coin (consumed pp utxoState tx)
    ≡⟨ cong! h' ⟩
  coin (produced pp utxoState tx)
    ≡⟨ producedCoinEquality {utxoState} {tx} {pp} ⟩
  cbalance (outs tx) + (txfee tx) + newDeposits pp utxoState tx + txdonation tx
    ∎

posPart-negPart≡x : ∀ {x} → posPart x ⊖ negPart x ≡ x
posPart-negPart≡x {ℤ.+_ n}     = refl
posPart-negPart≡x {ℤ.negsuc n} = refl

module DepositHelpers
  {utxo utxo' : UTxO}
  {fees fees' : Coin}
  {deposits deposits' : DepositPurpose ⇀ Coin}
  {donations donations' : Coin}
  {tx : TxBody}
  {Γ : UTxOEnv}
  (step : Γ ⊢ ⟦ utxo , fees , deposits , donations ⟧ᵘ ⇀⦇ tx ,UTXO⦈
              ⟦ utxo' , fees' , deposits' , donations' ⟧ᵘ)
  (h' : txid tx ∉ map proj₁ (dom (utxo ˢ)))
  where

  private
    pp : PParams
    pp = UTxOEnv.pparams Γ
    dep : Coin
    dep = getCoin deposits
    uDep : Coin
    uDep = getCoin (updateDeposits pp tx deposits)
    Δdep : ℤ
    Δdep = depositsChange pp tx deposits
    utxoSt : UTxOState
    utxoSt = ⟦ utxo , fees , deposits , donations ⟧ᵘ
    ref : Coin
    ref = depositRefunds pp utxoSt tx
    tot : Coin
    tot = newDeposits    pp utxoSt tx
    h : disjoint (dom ((utxo ∣ txins tx ᶜ) ˢ)) (dom (outs tx ˢ))
    h = λ h₁ h₂ → ∉-∅ $ proj₁ (newTxid⇒disj {tx = tx} {utxo} h')
                      $ to ∈-∩ (res-comp-domᵐ h₁ , h₂)
    newBal' : Γ ⊢ ⟦ utxo , fees , deposits , donations ⟧ᵘ ⇀⦇ tx ,UTXO⦈
                  ⟦ utxo' , fees' , deposits' , donations' ⟧ᵘ
            → consumed pp utxoSt tx ≡ produced pp utxoSt tx
    newBal' (UTXO-inductive _ _ _ _ x _ _) = x
    newBal : consumed pp utxoSt tx ≡ produced pp utxoSt tx
    newBal = newBal' step
    noMintAda' : Γ ⊢ ⟦ utxo , fees , deposits , donations ⟧ᵘ ⇀⦇ tx ,UTXO⦈
                     ⟦ utxo' , fees' , deposits' , donations' ⟧ᵘ
               → coin (mint tx) ≡ 0
    noMintAda' (UTXO-inductive _ _ _ _ _ x _) = x
    noMintAda : coin (mint tx) ≡ 0
    noMintAda = noMintAda' step
    remDepTot : Coin
    remDepTot = getCoin deposits - ref

  uDep≡ : Γ ⊢ ⟦ utxo , fees , deposits , donations ⟧ᵘ ⇀⦇ tx ,UTXO⦈
              ⟦ utxo' , fees' , deposits' , donations' ⟧ᵘ
        → deposits' ≡ updateDeposits pp tx deposits
  uDep≡ (UTXO-inductive _ _ _ _ _ _ _) = refl

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

  ref≤dep : ref ℕ.≤ dep
  ref≤dep with ref ≟ 0
  ... | no ¬p = ≤″⇒≤ $ less-than-or-equal $ begin
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
    (cbalance ((utxo ∣ txins tx ᶜ) ∪ᵐˡ outs tx) + txfee tx) + txdonation tx + tot
  utxo-ref-prop = begin
    cbalance utxo + ref
      ≡˘⟨ cong (_+ ref)
        $ balance-cong-coin {utxo = (utxo ∣ txins tx ᶜ) ∪ᵐˡ (utxo ∣ txins tx)}{utxo}
        $    disjoint-∪ᵐˡ-∪ (disjoint-sym res-ex-disjoint)
        ≡ᵉ-∘ ∪-sym
        ≡ᵉ-∘ res-ex-∪ (_∈? txins tx) ⟩
    cbalance ((utxo ∣ txins tx ᶜ) ∪ᵐˡ (utxo ∣ txins tx)) + ref
      ≡⟨ cong (_+ ref)
       $ balance-∪ {utxo ∣ txins tx ᶜ} {utxo ∣ txins tx}
          $ flip res-ex-disjoint ⟩
    cbalance (utxo ∣ txins tx ᶜ) ℕ.+ cbalance (utxo ∣ txins tx) ℕ.+ ref
      ≡t⟨⟩
    cbalance (utxo ∣ txins tx ᶜ) ℕ.+ (cbalance (utxo ∣ txins tx) ℕ.+ ref)
      ≡⟨ cong (cbalance (utxo ∣ txins tx ᶜ) +_)
       $ balValueToCoin {tx} {utxoSt} {UTxOEnv.pparams Γ} noMintAda newBal ⟩
    cbalance (utxo ∣ txins tx ᶜ) ℕ.+ (cbalance (outs tx)
      ℕ.+ txfee tx ℕ.+ tot ℕ.+ txdonation tx)
      ≡t⟨⟩
    (cbalance (utxo ∣ txins tx ᶜ) ℕ.+ cbalance (outs tx) ℕ.+ txfee tx)
      ℕ.+ tot ℕ.+ txdonation tx
      ≡˘⟨ cong (λ x → (x + txfee tx) + tot + txdonation tx)
        $ balance-∪ {utxo ∣ txins tx ᶜ} {outs tx} h ⟩
    (cbalance ((utxo ∣ txins tx ᶜ) ∪ᵐˡ outs tx) ℕ.+ txfee tx)
      ℕ.+ tot ℕ.+ txdonation tx
      ≡t⟨⟩
    (cbalance ((utxo ∣ txins tx ᶜ) ∪ᵐˡ outs tx) ℕ.+ txfee tx)
      ℕ.+ (tot ℕ.+ txdonation tx)
      ≡⟨ cong ((cbalance ((utxo ∣ txins tx ᶜ) ∪ᵐˡ outs tx) + txfee tx) +_)
       $ +-comm tot (txdonation tx) ⟩
    (cbalance ((utxo ∣ txins tx ᶜ) ∪ᵐˡ outs tx) ℕ.+ txfee tx)
      ℕ.+ (txdonation tx ℕ.+ tot)
      ≡t⟨⟩
    (cbalance ((utxo ∣ txins tx ᶜ) ∪ᵐˡ outs tx) ℕ.+ txfee tx)
      ℕ.+ txdonation tx ℕ.+ tot
      ∎ where open IsEquivalence ≡ᵉ-isEquivalence renaming (trans to infixl 4 _≡ᵉ-∘_)

  rearrange0 : txfee tx + txdonation tx + (tot + remDepTot) + fees
             ≡ fees + txfee tx + getCoin deposits' + txdonation tx
  rearrange0 = begin
    txfee tx + txdonation tx + (tot + remDepTot) + fees
      ≡⟨ +-comm (txfee tx + txdonation tx + (tot + remDepTot)) fees ⟩
    fees ℕ.+ (txfee tx ℕ.+ txdonation tx ℕ.+ (tot ℕ.+ remDepTot)) ≡t⟨⟩
    (fees ℕ.+ txfee tx) ℕ.+ (txdonation tx ℕ.+ (tot ℕ.+ remDepTot))
      ≡⟨ cong ((fees + txfee tx) +_) $ +-comm (txdonation tx) (tot + remDepTot) ⟩
    (fees + txfee tx) ℕ.+ ((tot + remDepTot) ℕ.+ txdonation tx)
      ≡t⟨⟩
    (fees + txfee tx) ℕ.+ (tot + remDepTot) ℕ.+ txdonation tx
      ≡⟨ cong (λ x → (fees + txfee tx) + x + txdonation tx)
       $ begin tot + (dep - ref) ≡˘⟨ +-∸-assoc tot ref≤dep ⟩
               (tot + dep) - ref ≡⟨ cong (_- ref) $ +-comm tot dep ⟩
               (dep + tot) - ref ≡˘⟨ deposits-change ⟩
               uDep              ≡⟨ cong getCoin $ sym $ uDep≡ step ⟩
               getCoin deposits' ∎ ⟩
    (fees + txfee tx) + getCoin deposits' + txdonation tx
      ∎
\end{code}

Here, we state the fact that the UTxO relation is computable. This
just follows from our automation.

\begin{figure*}[h]
\begin{code}
UTXO-step : UTxOEnv → UTxOState → TxBody → Maybe UTxOState
UTXO-step = compute Computational-UTXO

UTXO-step-computes-UTXO  :  UTXO-step Γ utxoState tx ≡ just utxoState'
                         ⇔  Γ ⊢ utxoState ⇀⦇ tx ,UTXO⦈ utxoState'
UTXO-step-computes-UTXO = ≡-just⇔STS Computational-UTXO
\end{code}
\caption{Computing the UTXO transition system}
\end{figure*}

\begin{property}[\textbf{Preserve Balance}]~\\
\noindent
For all $\var{env}\in$ \UTxOEnv, $\var{utxo},\var{utxo'}\in$ \UTxO,
$\var{fees},\var{fees'}\in$ \Coin and $\var{tx}\in$ \TxBody,

if
\begin{code}[hide]
pov :
\end{code}
\begin{code}
  txid tx ∉ map proj₁ (dom (utxo ˢ))
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
    {deposits' = deposits'} h' step@(UTXO-inductive {Γ} _ _ _ _ newBal noMintAda _) =
  let h : disjoint (dom ((utxo ∣ txins tx ᶜ) ˢ)) (dom (outs tx ˢ))
      h = λ h₁ h₂ → ∉-∅ $ proj₁ (newTxid⇒disj {tx = tx} {utxo} h') $ to ∈-∩ (res-comp-domᵐ h₁ , h₂)
      utxoSt = ⟦ utxo , fees , deposits , donations ⟧ᵘ
      pp = UTxOEnv.pparams Γ
      ref = depositRefunds pp utxoSt tx
      tot = newDeposits pp utxoSt tx
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
          (cbalance ((utxo ∣ txins tx ᶜ) ∪ᵐˡ outs tx) ℕ.+ txfee tx)
            ℕ.+ txdonation tx ℕ.+ tot ℕ.+ (remDepTot ℕ.+ fees)
            ≡t⟨⟩
          cbalance ((utxo ∣ txins tx ᶜ) ∪ᵐˡ outs tx)
            ℕ.+ (txfee tx ℕ.+ txdonation tx ℕ.+ (tot ℕ.+ remDepTot) ℕ.+ fees)
            ≡⟨ cong (cbalance ((utxo ∣ txins tx ᶜ) ∪ᵐˡ outs tx) +_) rearrange0 ⟩
          cbalance ((utxo ∣ txins tx ᶜ) ∪ᵐˡ outs tx)
            + ((fees + txfee tx) + getCoin deposits' + txdonation tx)
            ∎ ⟩
    cbalance ((utxo ∣ txins tx ᶜ) ∪ᵐˡ outs tx)
      ℕ.+ ((fees + txfee tx) ℕ.+ getCoin deposits' ℕ.+ txdonation tx) ℕ.+ donations
      ≡t⟨⟩
    cbalance ((utxo ∣ txins tx ᶜ) ∪ᵐˡ outs tx)
      ℕ.+ (fees + txfee tx) ℕ.+ getCoin deposits' ℕ.+ (txdonation tx ℕ.+ donations)
      ≡⟨ cong (cbalance ((utxo ∣ txins tx ᶜ) ∪ᵐˡ outs tx)
                + (fees + txfee tx) + getCoin deposits' ℕ.+_)
       $ +-comm (txdonation tx) donations ⟩
    cbalance ((utxo ∣ txins tx ᶜ) ∪ᵐˡ outs tx)
      + (fees + txfee tx) + getCoin deposits' + (donations + txdonation tx)
      ∎
\end{code}

\end{property}
