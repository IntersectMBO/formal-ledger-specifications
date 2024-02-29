\subsection{UTxO}
\label{sec:utxo-properties}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Algebra                     using (CommutativeMonoid ; Monoid)
open import Algebra.Morphism            using (module MonoidMorphisms; IsMagmaHomomorphism)
import Algebra.Morphism.Definitions as Morphs
import Data.Nat as ℕ
open import Data.Nat.Properties         hiding (_≟_) -- using (+-0-monoid)
open import Data.Sign                   using (Sign)
open import Data.Integer as ℤ           using (ℤ ; 0ℤ)
open import Data.Integer.Ext            using (posPart; negPart; ℤtoSignedℕ; ≥0→negPart≡0)
import Data.Integer.Properties as ℤ
open import Data.String.Base            renaming (_++_ to _+ˢ_) using ()
open import Relation.Binary             using (IsEquivalence)

open import Prelude; open Equivalence

open import Tactic.Cong                 using (cong!)
open import Tactic.EquationalReasoning  using (module ≡-Reasoning)
open import Tactic.MonoidSolver.NonNormalising using (solve-macro)
open Tactic.EquationalReasoning.≡-Reasoning {A = ℕ} (solve-macro (quoteTerm +-0-monoid))

open import Ledger.Prelude; open Properties
open import Ledger.Abstract
open import Ledger.Transaction
open import Interface.ComputationalRelation

module Ledger.Utxo.Properties
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Utxo txs abs
open import Ledger.ScriptValidation txs abs

instance
  _ = TokenAlgebra.Value-CommutativeMonoid tokenAlgebra
  _ = +-0-monoid
  _ = Functor-ComputationResult

open import Data.Bool.Properties using ()
open import Relation.Nullary.Decidable using ()

instance
  Computational-UTXOS : Computational _⊢_⇀⦇_,UTXOS⦈_ String
  Computational-UTXOS = record {go} where
    module go Γ s tx
      (let H-Yes , ⁇ H-Yes? = Scripts-Yes-premises {Γ} {s} {tx})
      (let H-No  , ⁇ H-No?  = Scripts-No-premises {Γ} {s} {tx}) where
      open Tx tx renaming (body to txb); open TxBody txb
      open UTxOEnv Γ renaming (pparams to pp)
      open UTxOState s
      sLst = collectPhaseTwoScriptInputs pp tx utxo

      computeProof =
        case H-Yes? ,′ H-No? of λ where
          (yes p , no _ ) → success (_ , (Scripts-Yes p))
          (no _  , yes p) → success (_ , (Scripts-No p))
          (_     , _    ) → failure "isValid check failed"

      completeness : ∀ s' → Γ ⊢ s ⇀⦇ tx ,UTXOS⦈ s' → map proj₁ computeProof ≡ success s'
      completeness _ (Scripts-Yes p) with H-No? | H-Yes?
      ... | yes (_ , refl) | _     = case proj₂ p of λ ()
      ... | no _           | yes _ = refl
      ... | no _           | no ¬p = case ¬p p of λ ()
      completeness _ (Scripts-No p) with H-Yes? | H-No?
      ... | yes (_ , refl) | _     = case proj₂ p of λ ()
      ... | no _           | yes _ = refl
      ... | no _           | no ¬p = case ¬p p of λ ()

instance
  Computational-UTXO' : Computational _⊢_⇀⦇_,UTXO⦈_ String
  Computational-UTXO' = record {Go}
    where
      module Go Γ s tx (let H , ⁇ H? = UTXO-premises {tx}{Γ}{s}) where

        open Computational Computational-UTXOS
          renaming (computeProof to computeProof'; completeness to completeness')

        abstract
          genErr : ¬ H → String
          genErr  ¬p = case dec-de-morgan ¬p of λ where
            (inj₁ a) → "¬ TxBody.txins (Tx.body tx) ≢ ∅"
            (inj₂ b) → case dec-de-morgan b of λ where
              (inj₁ a₁) → "¬ TxBody.txins (Tx.body tx) ⊆ dom (UTxOState.utxo s)"
              (inj₂ b₁) → case dec-de-morgan b₁ of λ where
                  (inj₁ a₂) → "¬ inInterval (UTxOEnv.slot Γ) (txvldt (Tx.body tx))"
                  (inj₂ b₂) → case dec-de-morgan b₂ of λ where
                    (inj₁ a₃) → "¬(minfee (UTxOEnv.pparams Γ) tx ≤ txfee (Tx.body tx))"
                    (inj₂ b₃) → case dec-de-morgan b₃ of λ where
                        (inj₁ a₄) →
                          let
                            pp = UTxOEnv.pparams Γ
                            txb = Tx.body tx
                            con = consumed pp s txb
                            prod = produced pp s txb
                            showValue = show ∘ coin
                          in
                            ( "¬consumed (UTxOEnv.pparams Γ) s (Tx.body tx) ≡ produced (UTxOEnv.pparams Γ) s (Tx.body tx)"
                            +ˢ "\n  consumed =\t\t" +ˢ showValue con
                            +ˢ "\n    ins  =\t\t" +ˢ showValue (balance (s .UTxOState.utxo ∣ txb .TxBody.txins))
                            +ˢ "\n    mint =\t\t" +ˢ showValue (TxBody.mint txb)
                            +ˢ "\n    depositRefunds =\t" +ˢ showValue (inject (depositRefunds pp s txb))
                            +ˢ "\n  produced =\t\t" +ˢ showValue prod
                            +ˢ "\n    outs =\t\t" +ˢ showValue (balance $ outs txb)
                            +ˢ "\n    fee  =\t\t" +ˢ show (txb .TxBody.txfee)
                            +ˢ "\n    newDeposits  =\t" +ˢ show (newDeposits pp s txb)
                            +ˢ "\n    donation  =\t\t" +ˢ show (txb .TxBody.txdonation)
                            )
                        (inj₂ b₄) → case dec-de-morgan b₄ of λ where
                          (inj₁ a₅) → "¬ coin (TxBody.mint (Tx.body tx)) ≡ 0"
                          (inj₂ b₅) → case dec-de-morgan b₅ of λ where
                              (inj₁ a₆) → "¬(TxBody.txsize (Tx.body tx) Data.Nat.Base.≤ maxTxSize (UTxOEnv.pparams Γ))"
                              (inj₂ b₆) → case dec-de-morgan b₆ of λ where
                                (inj₁ a₇) → "∀[ (_ , txout) ∈ txouts .proj₁ ] inject (utxoEntrySize txout * minUTxOValue pp) ≤ᵗ getValue txout"
                                (inj₂ b₇) → case dec-de-morgan b₇ of λ where
                                    (inj₁ a₈) → "∀[ (_ , txout) ∈ txouts .proj₁ ] serSize (getValue txout) ≤ maxValSize pp"
                                    (inj₂ b₈) → case dec-de-morgan b₈ of λ where
                                      (inj₁ a₉) → "∀[ (a , _) ∈ range txouts ] Sum.All (const ⊤) (λ a → a .BootstrapAddr.attrsSize ≤ 64) a"
                                      (inj₂ _) → "something else broke"

        computeProofH : Dec H → ComputationResult String (∃[ s' ] Γ ⊢ s ⇀⦇ tx ,UTXO⦈ s')
        computeProofH (yes (x , y , z , e , k , l , m , n , o , p , q , r)) =
            map₂′ (UTXO-inductive⋯ _ _ _ x y z e k l m n o p q r) <$> computeProof' Γ s tx
        computeProofH (no ¬p) = failure $ genErr ¬p

        computeProof : ComputationResult String (∃[ s' ] Γ ⊢ s ⇀⦇ tx ,UTXO⦈ s')
        computeProof = computeProofH H?

        completeness : ∀ s' → Γ ⊢ s ⇀⦇ tx ,UTXO⦈ s' → map proj₁ computeProof ≡ success s'
        completeness s' (UTXO-inductive⋯ _ _ _ x y z w k l m n o p q r h) with H?
        ... | no ¬p = ⊥-elim $ ¬p (x , y , z , w , k , l , m , n , o , p , q , r)
        ... | yes _ with computeProof' Γ s tx | completeness' _ _ _ _ h
        ... | success _ | refl = refl

open Computational ⦃...⦄

abstract
  Computational-UTXO : Computational _⊢_⇀⦇_,UTXO⦈_ String
  Computational-UTXO = Computational-UTXO'

private variable
  tx                               : Tx
  utxo utxo'                       : UTxO
  Γ                                : UTxOEnv
  utxoState utxoState'             : UTxOState
  fees fees' donations donations'  : Coin
  deposits deposits'               : DepositPurpose ⇀ Coin

open MonoidMorphisms.IsMonoidHomomorphism
private
  ∙-homo-Coin = IsMagmaHomomorphism.homo (isMagmaHomomorphism coinIsMonoidHomomorphism)

opaque
  unfolding balance
  balance-cong : proj₁ utxo ≡ᵉ proj₁ utxo' → balance utxo ≈ balance utxo'
  balance-cong {utxo} {utxo'} = indexedSumᵐ-cong {x = utxo ᶠᵐ} {utxo' ᶠᵐ}

  balance-cong-coin : proj₁ utxo ≡ᵉ proj₁ utxo' → cbalance utxo ≡ cbalance utxo'
  balance-cong-coin {utxo} {utxo'} x =
    coinIsMonoidHomomorphism .⟦⟧-cong (balance-cong {utxo} {utxo'} x)
    where open MonoidMorphisms.IsMonoidHomomorphism

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

module _ {txb : _} (open TxBody txb) where opaque
  unfolding outs

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

posPart-negPart≡x : {x : ℤ} → posPart x - negPart x ≡ x
posPart-negPart≡x {ℤ.+_ n}     = refl
posPart-negPart≡x {ℤ.negsuc n} = refl

module DepositHelpers
  {utxo utxo' : UTxO}
  {fees fees' : Coin}
  {deposits deposits' : DepositPurpose ⇀ Coin}
  {donations donations' : Coin}
  {tx : Tx} (let open Tx tx renaming (body to txb); open TxBody txb)
  {Γ : UTxOEnv}
  (step  : Γ ⊢ ⟦ utxo  , fees  , deposits  , donations ⟧ᵘ ⇀⦇ tx ,UTXO⦈
               ⟦ utxo' , fees' , deposits' , donations' ⟧ᵘ)
  (h' : txid ∉ mapˢ proj₁ (dom utxo))
  where

  private
    stepS : Γ ⊢ ⟦ utxo  , fees  , deposits  , donations  ⟧ᵘ ⇀⦇ tx ,UTXOS⦈
                ⟦ utxo' , fees' , deposits' , donations' ⟧ᵘ
    stepS = case step of λ where
      (UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ h) → h

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
    newBal' (UTXO-inductive⋯ _ _ _ _ _ _ _ x _ _ _ _ _ _ _ _) = x
    newBal : consumed pp utxoSt txb ≡ produced pp utxoSt txb
    newBal = newBal' step
    noMintAda' : Γ ⊢ ⟦ utxo , fees , deposits , donations ⟧ᵘ ⇀⦇ tx ,UTXO⦈
                     ⟦ utxo' , fees' , deposits' , donations' ⟧ᵘ
               → coin (mint) ≡ 0
    noMintAda' (UTXO-inductive⋯ _ _ _ _ _ _ _ _ x _ _ _ _ _ _ _) = x
    noMintAda : coin mint ≡ 0
    noMintAda = noMintAda' step
    remDepTot : Coin
    remDepTot = getCoin deposits - ref

  deposits-change' : Δdep ≡ tot - ref
  deposits-change' = sym posPart-negPart≡x

  dep-ref : tot ≡ 0 → uDep + ref ≡ dep
  dep-ref tot≡0 = ℤ.+-injective $ begin
    ℤ.+_ (uDep + ref)          ≡⟨ ℤ.pos-+ uDep ref ⟩
    ℤ.+_ uDep ℤ.+ (ref - 0)    ≡˘⟨ cong (λ u → ℤ.+_ uDep ℤ.+ (ref - u)) tot≡0 ⟩
    ℤ.+_ uDep ℤ.+ (ref - tot)  ≡⟨ cong ((ℤ.+ uDep) +_) (ℤ.⊖-swap ref tot) ⟩
    ℤ.+_ uDep ℤ.- (tot - ref)  ≡˘⟨ cong (λ u →  ℤ.+_ uDep ℤ.- u) deposits-change' ⟩
    ℤ.+_ uDep ℤ.- Δdep         ≡˘⟨ cong ((ℤ.+ uDep) +_) (ℤ.⊖-swap dep uDep) ⟩
    ℤ.+_ uDep + (dep - uDep)   ≡⟨ ℤ.distribʳ-⊖-+-pos uDep dep uDep ⟩
    (uDep + dep) - uDep        ≡⟨ cong (_- uDep) (+-comm uDep dep) ⟩
    (dep + uDep) - uDep        ≡˘⟨ ℤ.distribʳ-⊖-+-pos dep uDep uDep ⟩
    ℤ.+_ dep ℤ.+ (uDep - uDep) ≡⟨ cong (λ u → ℤ.+_ dep ℤ.+ u) (ℤ.n⊖n≡0 uDep) ⟩
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
    (ℤ.+_ dep) ℤ.+ (tot - ref)                ≡⟨ ℤ.distribʳ-⊖-+-pos dep tot ref ⟩
    (dep + tot) - ref                         ≡⟨ ℤ.⊖-≥ (m≤n⇒m≤n+o tot ref≤dep) ⟩
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
           (ref txfee txdonation tot : Coin)
           (splitUtxo : balanceUtxo ≡ balanceNoIns + balanceIns)
           (splitUtxo' : balanceUtxo' ≡ balanceNoIns + balanceOuts)
           (balanced : balanceIns + ref ≡ balanceOuts + txfee + tot + txdonation) where

    utxo-ref-prop-worker :
      balanceUtxo + ref ≡ balanceUtxo' + txfee + txdonation + tot
    utxo-ref-prop-worker = begin
      balanceUtxo + ref
        ≡⟨ cong (_+ ref) splitUtxo ⟩
      balanceNoIns ℕ.+ balanceIns ℕ.+ ref
        ≡t⟨⟩
      balanceNoIns ℕ.+ (balanceIns ℕ.+ ref)
        ≡⟨ cong (balanceNoIns +_) balanced ⟩
      balanceNoIns ℕ.+ (balanceOuts ℕ.+ txfee ℕ.+ tot ℕ.+ txdonation)
        ≡t⟨⟩
      (balanceNoIns ℕ.+ balanceOuts ℕ.+ txfee) ℕ.+ tot ℕ.+ txdonation
        ≡˘⟨ cong (λ x → (x + txfee) + tot + txdonation) splitUtxo' ⟩
      (balanceUtxo' ℕ.+ txfee) ℕ.+ tot ℕ.+ txdonation
        ≡t⟨⟩
      balanceUtxo' ℕ.+ txfee ℕ.+ (tot ℕ.+ txdonation)
        ≡⟨ cong (balanceUtxo' + txfee +_) $ +-comm tot txdonation ⟩
      balanceUtxo' ℕ.+ txfee ℕ.+ (txdonation ℕ.+ tot)
        ≡t⟨⟩
      (balanceUtxo' ℕ.+ txfee) ℕ.+ txdonation ℕ.+ tot
        ∎

  utxo-ref-prop :
    cbalance utxo + ref ≡
    cbalance ((utxo ∣ txins ᶜ) ∪ˡ outs txb) + txfee + txdonation + tot
  utxo-ref-prop = utxo-ref-prop-worker
                    (cbalance utxo)
                    (cbalance (utxo ∣ txins))
                    (cbalance (utxo ∣ txins ᶜ))
                    (cbalance (outs txb))
                    (cbalance ((utxo ∣ txins ᶜ) ∪ˡ outs txb))
                    ref txfee txdonation tot
                    (split-balance txins)
                    (balance-∪ {utxo ∣ txins ᶜ} {outs txb} h)
                    (balValueToCoin {txb} {utxoSt} {UTxOEnv.pparams Γ} noMintAda newBal)

  rearrange0 :
      (bal : ℕ)
    → deposits' ≡ updateDeposits pp txb deposits
    → bal + txfee + txdonation + tot + (remDepTot + fees)
    ≡ bal + (fees + txfee + getCoin deposits' + txdonation)
  rearrange0 bal h = begin
    bal ℕ.+ txfee ℕ.+ txdonation ℕ.+ tot ℕ.+ (remDepTot ℕ.+ fees)
      ≡t⟨⟩
    bal ℕ.+ (txfee ℕ.+ txdonation ℕ.+ (tot ℕ.+ remDepTot) ℕ.+ fees)
      ≡⟨ cong (bal +_) $ begin
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
                  uDep              ≡⟨ cong getCoin $ sym h ⟩
                  getCoin deposits' ∎ ⟩
        (fees + txfee) + getCoin deposits' + txdonation
          ∎ ⟩
    bal + ((fees + txfee) + getCoin deposits' + txdonation)
      ∎

  module _ (balanceUtxo balanceUtxo' : Coin)
           (ref-prop : balanceUtxo + ref ≡ balanceUtxo' + txfee + txdonation + tot)
           (h : deposits' ≡ updateDeposits pp txb deposits)
           where

    pov-scripts-worker : balanceUtxo + fees + dep + donations ≡
                         balanceUtxo' + (fees + txfee) + getCoin deposits' + (donations + txdonation)
    pov-scripts-worker = begin
      balanceUtxo + fees + dep + donations
        ≡⟨ cong (_+ donations)
        $ begin
            balanceUtxo ℕ.+ fees ℕ.+ dep
              ≡tˡ⟨ cong (balanceUtxo ℕ.+_) $ +-comm fees dep ⟩
            balanceUtxo ℕ.+ (dep ℕ.+ fees)
              ≡˘⟨ cong (λ x → balanceUtxo + (x + fees)) $ m+[n∸m]≡n ref≤dep ⟩
            balanceUtxo ℕ.+ ((ref ℕ.+ remDepTot) ℕ.+ fees)
              ≡t⟨⟩
            balanceUtxo ℕ.+ ref ℕ.+ (remDepTot ℕ.+ fees)
              ≡⟨ cong (_+ (remDepTot + fees)) ref-prop ⟩
            (balanceUtxo' ℕ.+ txfee) ℕ.+ txdonation ℕ.+ tot ℕ.+ (remDepTot ℕ.+ fees)
              ≡⟨ rearrange0 (balanceUtxo') h ⟩
            balanceUtxo' + (fees + txfee + getCoin deposits' + txdonation)
              ∎ ⟩
      balanceUtxo' ℕ.+ (fees + txfee ℕ.+ getCoin deposits' ℕ.+ txdonation) ℕ.+ donations
        ≡t⟨⟩
      balanceUtxo' ℕ.+ (fees + txfee) ℕ.+ getCoin deposits' ℕ.+ (txdonation ℕ.+ donations)
        ≡⟨ cong (balanceUtxo' + (fees + txfee) + getCoin deposits' ℕ.+_)
         $ +-comm txdonation donations ⟩
      balanceUtxo' + (fees + txfee) + getCoin deposits' + (donations + txdonation)
        ∎

  pov-scripts : deposits' ≡ updateDeposits pp txb deposits
              → cbalance utxo + fees + dep + donations
                 ≡ cbalance ((utxo ∣ txins ᶜ) ∪ˡ outs txb)
                   + (fees + txfee) + getCoin deposits' + (donations + txdonation)
  pov-scripts h = pov-scripts-worker (cbalance utxo) (cbalance ((utxo ∣ txins ᶜ) ∪ˡ outs txb))
                                     utxo-ref-prop h

  pov-no-scripts : cbalance utxo + fees + dep + donations ≡
                   cbalance (utxo ∣ collateral ᶜ) + (fees + cbalance (utxo ∣ collateral)) + dep + donations
  pov-no-scripts = cong (λ x → x + dep + donations) $ begin
    cbalance utxo ℕ.+ fees
      ≡⟨ cong (_+ fees) (split-balance collateral) ⟩
    cbalance (utxo ∣ collateral ᶜ) ℕ.+ cbalance (utxo ∣ collateral) ℕ.+ fees
      ≡t⟨⟩
    cbalance (utxo ∣ collateral ᶜ) ℕ.+ (cbalance (utxo ∣ collateral) ℕ.+ fees)
      ≡⟨ cong (cbalance (utxo ∣ collateral ᶜ) +_) (+-comm _ fees) ⟩
    cbalance (utxo ∣ collateral ᶜ) ℕ.+ (fees ℕ.+ cbalance (utxo ∣ collateral))
      ∎
\end{code}

Here, we state the fact that the UTxO relation is computable.

\begin{figure*}[h]
\begin{code}
UTXO-step : UTxOEnv → UTxOState → Tx → ComputationResult String UTxOState
UTXO-step = compute ⦃ Computational-UTXO ⦄

UTXO-step-computes-UTXO  :  UTXO-step Γ utxoState tx ≡ success utxoState'
                         ⇔  Γ ⊢ utxoState ⇀⦇ tx ,UTXO⦈ utxoState'
UTXO-step-computes-UTXO = ≡-success⇔STS ⦃ Computational-UTXO ⦄
\end{code}
\caption{Computing the UTXO transition system}
\end{figure*}

\begin{property}[\textbf{Preserve Balance}]~\\
\noindent
For all \AgdaBound{Γ} \∈ \UTxOEnv, \AgdaBound{utxo}, \AgdaBound{utxo'} \∈ \UTxO,
\AgdaBound{fees}, \AgdaBound{fees'} \∈ \Coin and \AgdaBound{tx} \∈ \Tx,

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
    step@(UTXO-inductive⋯ _ Γ _ _ _ _ _ newBal noMintAda _ _ _ _ _ _ (Scripts-Yes _)) =
  DepositHelpers.pov-scripts step h' refl

pov {tx}{utxo}{_}{fees}{deposits}{donations} h'
    step@(UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ (Scripts-No _)) =
  DepositHelpers.pov-no-scripts step h'
\end{code}

\end{property}

\begin{property}[\textbf{Minimum Spending Condition}]~\\
\begin{code}[hide]
module _ {Γ : UTxOEnv} {utxoSt : UTxOState} {txb : TxBody} where

  open TxBody; open UTxOEnv Γ; open PParams pparams
  open UTxOState utxoSt renaming (deposits to deps; utxo to stUtxo)

  depsPreserved→depsChange≥0 : ((txb , pp) : TxBody × PParams) {deps : DepositPurpose ⇀ Coin}
    → (txb , pp) preservesDeposits deps → depositsChange pp txb deps ≥ 0ℤ
  depsPreserved→depsChange≥0 (txb , pp) {deps} depsUnch = a≤b→b⊖a≥0{getCoin deps} (a≤b→b-a≥0 μ)
    where
    a≤b→b-a≥0 : ∀ {a b : ℕ} → a ≤ b → b - a ≥ 0
    a≤b→b-a≥0 {.zero} {b} z≤n = z≤n
    a≤b→b-a≥0 {.(suc _)} {.(suc _)} (s≤s a≤b) = a≤b→b-a≥0 a≤b

    a≤b→b⊖a≥0 : ∀ {a b : ℕ} → b - a ≥ 0 → b ℤ.⊖ a ≥ 0ℤ
    a≤b→b⊖a≥0 = {!!}

    ξ : ∀ {d : DepositPurpose ⇀ Coin} → getCoin d ≥ 0
    ξ = z≤n
    γ : ∀ {d d' : DepositPurpose ⇀ Coin} → proj₁ d ⊆ proj₁ d' → getCoin d ≤ getCoin d'
    γ {d} {d'} d⊆d' = goal
      where
      goal : indexedSumᵛ' id d ≤ indexedSumᵛ' id d'
      goal = {!!}


    μ : getCoin (updateDeposits pp txb deps) ≥ getCoin deps
    μ = γ{deps}{updateDeposits pp txb deps} depsUnch


  msc :
\end{code}
\noindent
For all
\AG{utxo}    \∈ \UTxO,
\AG{pparams} \∈ \PParams,
\AG{utxoSt}  \∈ \UTxOState,
\AG{txb}     \∈ \TxBody,

if
\begin{code}[inline]
    (txb , pparams) preservesDeposits deps
\end{code}
then
\begin{code}[hide]
    →
\end{code}
\begin{code}

    coin (consumed pparams utxoSt txb) ≥ length (txprop txb) * govActionDeposit
\end{code}
\begin{code}[hide}
  msc tx = subst (λ x → x ≥ length (txprop txb) * govActionDeposit) (sym ξ) goal
    where
    μ : (txb , pparams) preservesDeposits deps → depositsChange pparams txb deps ≥ 0ℤ
    μ = depsPreserved→depsChange≥0 (txb , pparams)
         --
    ν : negPart (depositsChange pparams txb deps) ≡ 0
    ν = ≥0→negPart≡0 (μ tx)

    open CommutativeMonoid Value-CommutativeMonoid renaming (ε to 0ᵛ) hiding (sym)
    coinInj : ∀{v} → coin v ≡ 0 → v ≡ 0ᵛ
    coinInj h = {!!}
    mono : inject 0 ≡ 0ᵛ
    mono = coinInj (property 0)

    ξ : coin (balance (stUtxo ∣ txb .txins) + txb .mint + inject (depositRefunds pparams utxoSt txb))
      ≡ coin (balance (stUtxo ∣ txb .txins) + txb .mint)
    ξ = begin
      coin (balance (stUtxo ∣ txb .txins) + txb .mint + inject (depositRefunds pparams utxoSt txb)) ≡⟨ cong (λ x → coin (balance (stUtxo ∣ txb .txins) + txb .mint + inject x)) ν ⟩
      coin (balance (stUtxo ∣ txb .txins) + txb .mint + inject 0) ≡⟨ cong (λ x → coin (balance (stUtxo ∣ txb .txins) + txb .mint + x)) mono ⟩
      coin (balance (stUtxo ∣ txb .txins) + txb .mint + 0ᵛ) ≡⟨ homo coinIsMonoidHomomorphism (balance (stUtxo ∣ txb .txins) + txb .mint) 0ᵛ ⟩
      coin (balance (stUtxo ∣ txb .txins) + txb .mint) + coin 0ᵛ ≡⟨ cong (coin (balance (stUtxo ∣ txb .txins) + txb .mint) +_) (ε-homo coinIsMonoidHomomorphism) ⟩
      coin (balance (stUtxo ∣ txb .txins) + txb .mint) + 0 ≡⟨ +-identityʳ (coin (balance (stUtxo ∣ txb .txins) + txb .mint)) ⟩
      coin (balance (stUtxo ∣ txb .txins) + txb .mint)      ∎

    goal : coin (balance (stUtxo ∣ txb .txins) + txb .mint) ≥ length (txprop txb) * govActionDeposit
    goal = {!!}

  -- The inequality above is equivalent to:
  --
  --  coin (balance (utxoSt .utxo ∣ txb .txins) +  txb .mint
  --     +  inject (depositRefunds pparams utxoSt txb)) ≥ length (txprop txb) * govActionDeposit
  --
  -- and since
  --
  --   depositRefunds pp st txb = negPart (depositsChange pp txb (st .deposits))
  --
  -- and
  --
  --   depositsChange pp txb (st .deposits) ≡ ℤ.0ℤ
  --
  -- it is also equivalent to
  --
  --   coin (balance (utxoSt .utxo ∣ txb .txins) + txb .mint) ≥ length (txprop txb) * govActionDeposit
  -- or
  --   coin (∑[ x ← (utxoSt .utxo ∣ txb .txins) ] getValue x + txb .mint) ≥ length (txprop txb) * govActionDeposit
  --
  -- where ∑ is indexedSumᵛ' which is essentially of type (B → C) → A ⇀ B → C, and
  --
  -- Note: syntax indexedSumᵛ' (λ a → x) m = ∑[ a ← m ] x
  --
  -- In the present case, A = TxIn, B = TxOut, C = Value, so
  --
  -- ∑ : (TxOut → Value) → TxIn ⇀ TxOut → Value, so
  --
  -- ∑[ x ← (utxoSt .utxo ∣ txb .txins) ] getValue x  means
  --
  -- indexedSumᵛ' getValue (utxoSt .utxo ∣ txb .txins)
  --
  -- where getValue is a function of type TxOut → Value

\end{code}

\end{property}
