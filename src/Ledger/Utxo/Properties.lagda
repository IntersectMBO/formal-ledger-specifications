\subsection{UTxO}
\label{sec:utxo-properties}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Algebra.Morphism            using (module MonoidMorphisms; IsMagmaHomomorphism)
import Data.Nat as ℕ
open import Data.Nat.Properties         hiding (_≟_)
open import Data.Product                using (swap)
open import Data.Sign                   using (Sign)
open import Data.Integer as ℤ           using (ℤ)
open import Data.Integer.Ext            using (posPart; negPart; ∸≡posPart⊖)
import Data.Integer.Properties as ℤ
open import Data.String.Base            renaming (_++_ to _+ˢ_) using ()
open import Relation.Binary             using (IsEquivalence)

open import Data.List.Relation.Unary.All  using (All)
open import Data.List.Relation.Unary.Any  using (Any); open Any

open import Prelude; open Equivalence

open import Tactic.Cong                 using (cong!)
open import Tactic.Defaults
open import Tactic.EquationalReasoning  using (module ≡-Reasoning)
open import Tactic.GenError
open import Tactic.MonoidSolver.NonNormalising using (solve-macro)

open import Ledger.Prelude hiding (≤-trans; ≤-antisym; All); open Properties
open import Ledger.Abstract
open import Ledger.Transaction
open import Interface.ComputationalRelation

module Ledger.Utxo.Properties
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Utxo txs abs
open import Ledger.ScriptValidation txs abs
open import Algebra.Definitions.RawMagma +-rawMagma using () renaming (_,_ to _,≤_)

instance
  _ = TokenAlgebra.Value-CommutativeMonoid tokenAlgebra
  _ = +-0-monoid
  _ = Functor-ComputationResult

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

        genErr : ¬ H → String
        genErr  ¬p = case dec-de-morgan ¬p of λ where
          (inj₁ a) → "¬ TxBody.txins (Tx.body tx) ≢ ∅"
          (inj₂ b) → case dec-de-morgan b of λ where
            (inj₁ a₁) → "¬ TxBody.txins (Tx.body tx) ⊆ dom (UTxOState.utxo s)"
            (inj₂ b₁) → case dec-de-morgan b₁ of λ where
                (inj₁ a₁') → "¬ refInputs ⊆ dom utxo "
                (inj₂ b₂') → case dec-de-morgan b₂' of λ where
                  (inj₁ a₂) → "¬ inInterval (UTxOEnv.slot Γ) (txvldt (Tx.body tx))"
                  (inj₂ b₂) → case dec-de-morgan b₂ of λ where
                    (inj₁ a₃) → "¬ feesOK pp tx utxo ≡ true"
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
                                (inj₁ a₇) → "∀[ (_ , txout) ∈ txouts .proj₁ ] inject (utxoEntrySize txout * coinsPerUTxOByte pp) ≤ᵗ getValue txout"
                                (inj₂ b₇) → case dec-de-morgan b₇ of λ where
                                    (inj₁ a₈) → "∀[ (_ , txout) ∈ txouts .proj₁ ] serSize (getValue txout) ≤ maxValSize pp"
                                    (inj₂ b₈) → case dec-de-morgan b₈ of λ where
                                      (inj₁ a₉) → "∀[ (a , _) ∈ range txouts ] Sum.All (const ⊤) (λ a → a .BootstrapAddr.attrsSize ≤ 64) a"
                                      (inj₂ _) → "something else broke"

        computeProofH : Dec H → ComputationResult String (∃[ s' ] Γ ⊢ s ⇀⦇ tx ,UTXO⦈ s')
        computeProofH (yes (x , y , z , e , k , l , m , v , j , n , o , p , q , r , t , u)) =
            map₂′ (UTXO-inductive⋯ _ _ _ x y z e k l m v j n o p q r t u) <$> computeProof' Γ s tx
        computeProofH (no ¬p) = failure $ genErr ¬p

        computeProof : ComputationResult String (∃[ s' ] Γ ⊢ s ⇀⦇ tx ,UTXO⦈ s')
        computeProof = computeProofH H?

        completeness : ∀ s' → Γ ⊢ s ⇀⦇ tx ,UTXO⦈ s' → map proj₁ computeProof ≡ success s'
        completeness s' (UTXO-inductive⋯ _ _ _ x y z w k l m v j n o p q r t u h) with H?
        ... | no ¬p = ⊥-elim $ ¬p (x , y , z , w , k , l , m , v , j , n , o , p , q , r , t , u)
        ... | yes _ with computeProof' Γ s tx | completeness' _ _ _ _ h
        ... | success _ | refl = refl

open Computational ⦃...⦄

opaque
  unfolding List-Model
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
  balance-cong {utxo} {utxo'} eq = indexedSumᵐ-cong {M = Value} {x = (mapValues txOutHash utxo) ᶠᵐ} {(mapValues txOutHash utxo') ᶠᵐ} (map-≡ᵉ eq)

  balance-cong-coin : proj₁ utxo ≡ᵉ proj₁ utxo' → cbalance utxo ≡ cbalance utxo'
  balance-cong-coin {utxo} {utxo'} x =
    coinIsMonoidHomomorphism .⟦⟧-cong (balance-cong {utxo} {utxo'} x)
    where open MonoidMorphisms.IsMonoidHomomorphism

  balance-∪ : disjoint (dom utxo) (dom utxo')
                       → cbalance (utxo ∪ˡ utxo') ≡ cbalance utxo + cbalance utxo'
  balance-∪ {utxo} {utxo'} h = begin
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

module _ {txb : _} (open TxBody txb) where opaque
  unfolding outs
  open Tactic.EquationalReasoning.≡-Reasoning {A = ℕ} (solve-macro (quoteTerm +-0-monoid))

  newTxid⇒disj : txid ∉ mapˢ proj₁ (dom utxo)
              → disjoint' (dom utxo) (dom (outs txb))
  newTxid⇒disj id∉utxo = disjoint⇒disjoint' λ h h' → id∉utxo $ to ∈-map
    (-, (case from ∈-map h' of λ where
          (_ , refl , h'') → case from ∈-map h'' of λ where (_ , refl , _) → refl) , h)

  consumedCoinEquality : ∀ {pp}
    → coin mint ≡ 0
    → coin (consumed pp utxoState txb)
    ≡ cbalance ((UTxOState.utxo utxoState) ∣ txins) + depositRefunds pp utxoState txb + getCoin txwdrls
  consumedCoinEquality {utxoState} {pp} h =
    let  utxo = UTxOState.utxo utxoState
         dRefs = depositRefunds pp utxoState txb
         sWdls = getCoin txwdrls
    in begin
    coin (balance (utxo ∣ txins) + mint + inject dRefs + inject sWdls)
      ≡⟨ ∙-homo-Coin _ _ ⟩
    coin (balance (utxo ∣ txins) + mint + inject dRefs) + coin (inject $ sWdls)
      ≡⟨ cong (coin (balance (utxo ∣ txins) + mint + inject dRefs) +_) (property _) ⟩
    coin (balance (utxo ∣ txins) + mint + inject dRefs) + sWdls
      ≡⟨ cong (_+ sWdls) (∙-homo-Coin _ _) ⟩
    coin (balance (utxo ∣ txins) + mint) + coin (inject $ dRefs) + sWdls
      ≡⟨ cong (λ u → coin (balance (utxo ∣ txins) + mint) + u + sWdls) (property _) ⟩
    coin (balance (utxo ∣ txins) + mint) + dRefs + sWdls
      ≡⟨ cong (λ u → u + dRefs + sWdls) (∙-homo-Coin _ _) ⟩
    cbalance (utxo ∣ txins) + coin mint + dRefs + sWdls
      ≡⟨ cong (λ x → cbalance (utxo ∣ txins) + x + dRefs + sWdls) h ⟩
    cbalance (utxo ∣ txins) + 0 + dRefs + sWdls
      ≡⟨ cong (λ x → x + dRefs + sWdls) (+-identityʳ (cbalance (utxo ∣ txins))) ⟩
    cbalance (utxo ∣ txins) + dRefs + sWdls
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
    + depositRefunds pp utxoState txb + getCoin txwdrls
    ≡ cbalance (outs txb) + txfee + newDeposits pp utxoState txb + txdonation
  balValueToCoin {utxoState} {pp} h h' = begin
    cbalance ((UTxOState.utxo utxoState) ∣ txins) + depositRefunds pp utxoState txb + getCoin txwdrls
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

φ : ℕ × Bool → ℕ
φ (n , true) = n
φ (n , false) = 0

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
  open Tactic.EquationalReasoning.≡-Reasoning {A = ℕ} (solve-macro (quoteTerm +-0-monoid))

  private
    stepS : Γ ⊢ ⟦ utxo  , fees  , deposits  , donations  ⟧ᵘ ⇀⦇ tx ,UTXOS⦈
                ⟦ utxo' , fees' , deposits' , donations' ⟧ᵘ
    stepS = case step of λ where
      (UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ h) → h

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
    wdls = getCoin txwdrls
    tot = newDeposits    pp utxoSt txb
    h : disjoint (dom (utxo ∣ txins ᶜ)) (dom (outs txb))
    h = λ h₁ h₂ → ∉-∅ $ proj₁ (newTxid⇒disj {txb} {utxo} h')
                      $ to ∈-∩ (res-comp-domᵐ h₁ , h₂)
    newBal' : Γ ⊢ ⟦ utxo , fees , deposits , donations ⟧ᵘ ⇀⦇ tx ,UTXO⦈
                  ⟦ utxo' , fees' , deposits' , donations' ⟧ᵘ
            → consumed pp utxoSt txb ≡ produced pp utxoSt txb
    newBal' (UTXO-inductive⋯ _ _ _ _ _ _ _ _ x _ _ _ _ _ _ _ _ _ _ _) = x
    newBal : consumed pp utxoSt txb ≡ produced pp utxoSt txb
    newBal = newBal' step
    noMintAda' : Γ ⊢ ⟦ utxo , fees , deposits , donations ⟧ᵘ ⇀⦇ tx ,UTXO⦈
                     ⟦ utxo' , fees' , deposits' , donations' ⟧ᵘ
               → coin (mint) ≡ 0
    noMintAda' (UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ x _ _ _ _ _ _ _ _ _ _) = x
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
  ... | no ¬p = ≤″⇒≤ $ _ ,≤_ $ begin
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
           (balanced : balanceIns + ref + wdls ≡ balanceOuts + txfee + tot + txdonation) where

    utxo-ref-prop-worker :
      balanceUtxo + ref + wdls ≡ balanceUtxo' + txfee + txdonation + tot
    utxo-ref-prop-worker = begin
      balanceUtxo + ref + wdls
        ≡⟨ cong (λ u → u + ref + wdls) splitUtxo ⟩
      balanceNoIns ℕ.+ balanceIns ℕ.+ ref ℕ.+ wdls
        ≡t⟨⟩
      balanceNoIns ℕ.+ (balanceIns ℕ.+ ref ℕ.+ wdls)
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
    cbalance utxo + ref + wdls ≡
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
           (ref-prop : balanceUtxo + ref + wdls ≡ balanceUtxo' + txfee + txdonation + tot)
           (h : deposits' ≡ updateDeposits pp txb deposits)
           where

    pov-scripts-worker :  isValid ≡ true
                          →  balanceUtxo + fees + getCoin deposits + donations + φ(wdls , isValid)
                             ≡ balanceUtxo' + (fees + txfee) + getCoin deposits' + (donations + txdonation)
    pov-scripts-worker valid = begin
      balanceUtxo + fees + getCoin deposits + donations + φ(wdls , isValid)
        ≡⟨ cong (λ x → balanceUtxo + fees + getCoin deposits + donations + φ(wdls , x)) valid ⟩
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
            balanceUtxo' + txfee + txdonation + tot + (remDepTot + fees)
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

  pov-scripts :  deposits' ≡ updateDeposits pp txb deposits
                 →  isValid ≡ true
                 →  cbalance utxo + fees + dep + donations + φ(wdls , isValid)
                    ≡  cbalance ((utxo ∣ txins ᶜ) ∪ˡ outs txb)
                       + (fees + txfee) + getCoin deposits' + (donations + txdonation)
  pov-scripts h valid = pov-scripts-worker (cbalance utxo) (cbalance ((utxo ∣ txins ᶜ) ∪ˡ outs txb)) utxo-ref-prop h valid

  pov-no-scripts :  isValid ≡ false
                    →  cbalance utxo + fees + dep + donations + φ(wdls , isValid)
                       ≡ cbalance (utxo ∣ collateral ᶜ) + (fees + cbalance (utxo ∣ collateral)) + dep + donations
  pov-no-scripts invalid = begin
    cbalance utxo + fees + dep + donations + φ(wdls , isValid) ≡⟨ cong (λ x → cbalance utxo + fees + dep + donations + φ(wdls , x)) invalid ⟩
    cbalance utxo + fees + dep + donations + 0 ≡⟨ +-identityʳ _ ⟩
    cbalance utxo + fees + dep + donations ≡⟨ cong (λ x → x + dep + donations) $ begin
      cbalance utxo ℕ.+ fees ≡⟨ cong (_+ fees) (split-balance collateral) ⟩
      cbalance (utxo ∣ collateral ᶜ) ℕ.+ cbalance (utxo ∣ collateral) ℕ.+ fees ≡t⟨⟩
      cbalance (utxo ∣ collateral ᶜ) ℕ.+ (cbalance (utxo ∣ collateral) ℕ.+ fees) ≡⟨ cong (cbalance (utxo ∣ collateral ᶜ) +_) (+-comm _ fees) ⟩
      cbalance (utxo ∣ collateral ᶜ) ℕ.+ (fees ℕ.+ cbalance (utxo ∣ collateral)) ∎ ⟩
    cbalance (utxo ∣ collateral ᶜ) + (fees + cbalance (utxo ∣ collateral)) + dep + donations
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
pov : let open Tx tx; open TxBody body in
\end{code}
\begin{code}
  txid ∉ mapˢ proj₁ (dom utxo)
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
  getCoin ⟦ utxo , fees , deposits , donations ⟧ᵘ + φ(getCoin txwdrls , isValid)
  ≡ getCoin ⟦ utxo' , fees' , deposits' , donations' ⟧ᵘ
\end{code}
\begin{code}[hide]
pov {deposits' = deposits'} h'
    step@(UTXO-inductive⋯ _ Γ _ _ _ _ _ _ newBal noMintAda _ _ _ _ _ _ _ _ _ (Scripts-Yes (_ , valid))) =
    DepositHelpers.pov-scripts step h' refl valid

pov h' step@(UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ (Scripts-No (_ , invalid))) =
  DepositHelpers.pov-no-scripts step h' invalid
\end{code}

\end{property}

\begin{property}[\textbf{General Minimum Spending Condition}]~\\

\begin{code}[hide]
isRefundCert : DCert → Bool
isRefundCert (dereg c _) = true
isRefundCert (deregdrep c _) = true
isRefundCert _ = false

noRefundCert : List DCert → Type _
noRefundCert l = All (λ cert → isRefundCert cert ≡ false) l

opaque
  unfolding List-Model
  unfolding finiteness
  fin∘list[] : {A : Type} → proj₁ (finiteness{A = A} ∅) ≡ []
  fin∘list[] = refl
  fin∘list∷[] : {A : Type} {a : A} → proj₁ (finiteness ❴ a ❵) ≡ [ a ]
  fin∘list∷[] = refl

coin∅ : getCoin{A = DepositPurpose ⇀ Coin} ∅ ≡ 0
coin∅ = begin
  foldr (λ x → (proj₂ x) +_) 0 (deduplicate _≟_ (proj₁ (finiteness ∅)))
    ≡⟨ cong (λ u → (foldr (λ x → (proj₂ x) +_) 0 (deduplicate _≟_ u))) fin∘list[] ⟩
  foldr (λ (x : DepositPurpose × Coin) → (proj₂ x) +_) 0 (deduplicate _≟_ [])
    ≡⟨ cong (λ u → (foldr (λ (x : DepositPurpose × Coin) → (proj₂ x) +_) 0  u))
            {x = deduplicate _≟_ []} {y = []} refl ⟩
  foldr (λ (x : DepositPurpose × Coin) → (proj₂ x) +_) 0 []
    ≡⟨ refl ⟩
  0 ∎
  where open Prelude.≡-Reasoning

getCoin-singleton : ((dp , c) : DepositPurpose × Coin) → indexedSumᵛ' id ❴ (dp , c) ❵ ≡ c
getCoin-singleton _ = indexedSum-singleton' {A = DepositPurpose × Coin} {f = proj₂} (finiteness _)

module _
  -- ASSUMPTION --
  {- 1 -} {gc-hom : (d₁ d₂ : DepositPurpose ⇀ Coin) → getCoin (d₁ ∪⁺ d₂) ≡ getCoin d₁ + getCoin d₂}
  {- 2 -} {getCoin-⊆ : (d d' : DepositPurpose ⇀ Coin) → d ˢ ⊆ d' ˢ → getCoin d ≤ getCoin d'}
  where
  getCoin∪⁺∅≡id : ∀ {d} → getCoin d ≡ getCoin (d ∪⁺ ∅ᵐ)
  getCoin∪⁺∅≡id {d} = begin
    getCoin d
      ≡⟨ sym (+-identityʳ (getCoin d)) ⟩
    getCoin d + 0
      ≡⟨ cong (getCoin d +_) (sym coin∅) ⟩
    getCoin d + getCoin{A = DepositPurpose ⇀ Coin} ∅
      ≡⟨ sym (gc-hom d ∅) ⟩
    getCoin (d ∪⁺ ∅ᵐ)
      ∎
    where open Prelude.≡-Reasoning

  getCoin∣∅≡id : {d : DepositPurpose ⇀ Coin} → getCoin d ≡ getCoin (d ∣ ∅ ᶜ)
  getCoin∣∅≡id {d} = ≤-antisym (getCoin-⊆ d (d ∣ ∅ ᶜ) $ proj₁ (swap $ resᵐ-∅ᶜ {M = d}))
                        (getCoin-⊆ (d ∣ ∅ ᶜ) d $ proj₂ (swap $ resᵐ-∅ᶜ {M = d}))

  getCoin∪⁺∅∣∅id : {d : DepositPurpose ⇀ Coin} → getCoin d ≡ getCoin ((d ∪⁺ ∅) ∣ ∅ ᶜ)
  getCoin∪⁺∅∣∅id {d} = trans getCoin∪⁺∅≡id (getCoin∣∅≡id {d ∪⁺ ∅})

  ∪⁺singleton≡ : {deps : DepositPurpose ⇀ Coin} {(dp , c) : DepositPurpose × Coin}
                 → getCoin (deps ∪⁺ ❴ (dp , c) ❵ᵐ) ≡ getCoin deps + c
  ∪⁺singleton≡ {deps} {(dp , c)} = begin
    getCoin (deps ∪⁺ ❴ (dp , c) ❵)
      ≡⟨ gc-hom deps ❴ (dp , c) ❵ ⟩
    getCoin deps + getCoin{A = DepositPurpose ⇀ Coin} ❴ (dp , c) ❵
      ≡⟨ cong (getCoin deps +_) (getCoin-singleton (dp , c)) ⟩
    getCoin deps + c
      ∎
    where open Prelude.≡-Reasoning

  module _ {deposits : DepositPurpose ⇀ Coin} {txid : TxId} {gaDep : Coin} where

    ≤updatePropDeps : (props : List GovProposal)
      → getCoin deposits ≤ getCoin (updateProposalDeposits props txid gaDep deposits)
    ≤updatePropDeps [] = ≤-reflexive refl
    ≤updatePropDeps (x ∷ props) = ≤-trans (≤updatePropDeps props)
                                          (≤-trans (m≤m+n _ _)
                                                   (≤-reflexive $ sym $ ∪⁺singleton≡))
    updatePropDeps≡ : (ps : List GovProposal)
      → getCoin (updateProposalDeposits ps txid gaDep deposits) - getCoin deposits ≡ (length ps) * gaDep
    updatePropDeps≡ [] = n∸n≡0 (getCoin deposits)
    updatePropDeps≡ (_ ∷ ps) = let
      upD = updateProposalDeposits ps txid gaDep deposits in
      begin
        getCoin (upD ∪⁺ ❴ GovActionDeposit (txid , length ps) , gaDep ❵ᵐ) ∸ getCoin deposits
          ≡⟨ cong (_∸ getCoin deposits) ∪⁺singleton≡ ⟩
        getCoin upD + gaDep ∸ getCoin deposits
          ≡⟨ +-∸-comm _ (≤updatePropDeps ps) ⟩
        (getCoin upD ∸ getCoin deposits) + gaDep
          ≡⟨ cong (_+ gaDep) (updatePropDeps≡ ps) ⟩
        (length ps) * gaDep + gaDep
          ≡⟨ +-comm ((length ps) * gaDep) gaDep ⟩
        gaDep + (length ps) * gaDep
          ∎
        where open Prelude.≡-Reasoning

  ≤certDeps  :  (certs : List DCert)
                {d : DepositPurpose ⇀ Coin} {(dp , c) : DepositPurpose × Coin}
             →  getCoin d ≤ getCoin ((d ∪⁺ ❴ (dp , c) ❵) ∣ ∅ ᶜ )

  ≤certDeps certs {d} = begin
    getCoin d                      ≤⟨ m≤m+n (getCoin d) _ ⟩
    getCoin d + _                  ≡⟨ sym ∪⁺singleton≡ ⟩
    getCoin (d ∪⁺ ❴ _ ❵)           ≡⟨ getCoin∣∅≡id  {d ∪⁺ ❴ _ ❵} ⟩
    getCoin ((d ∪⁺ ❴ _ ❵) ∣ ∅ ᶜ )  ∎
    where open ≤-Reasoning

  ≤updateCertDeps : (cs : List DCert) {pp : PParams} {deposits :  DepositPurpose ⇀ Coin}
    → noRefundCert cs → getCoin deposits ≤ getCoin (updateCertDeposits pp cs deposits)
  ≤updateCertDeps [] nrf = ≤-reflexive refl
  ≤updateCertDeps (delegate _ _ _ _ ∷ cs)  (_ All.∷ nrf) = ≤-trans (≤updateCertDeps cs nrf) (≤certDeps cs)
  ≤updateCertDeps (regpool _ _ ∷ cs)       (_ All.∷ nrf) = ≤-trans (≤updateCertDeps cs nrf) (≤certDeps cs)
  ≤updateCertDeps (retirepool _ _ ∷ cs)    (_ All.∷ nrf) = ≤-trans (≤updateCertDeps cs nrf) (≤-reflexive getCoin∪⁺∅∣∅id)
  ≤updateCertDeps (regdrep _ _ _ ∷ cs)     (_ All.∷ nrf) = ≤-trans (≤updateCertDeps cs nrf) (≤certDeps cs)
  ≤updateCertDeps (ccreghot _ _ ∷ cs)      (_ All.∷ nrf) = ≤-trans (≤updateCertDeps cs nrf) (≤-reflexive getCoin∪⁺∅∣∅id)

  -- Main Theorem: General Minimum Spending Condition --
  gmsc :  let open Tx tx renaming (body to txb); open TxBody txb
              pp = UTxOEnv.pparams Γ; open PParams pp
              open UTxOState utxoState
                renaming (utxo to st; fees to fs; deposits to deps; donations to dons)
          in
    Γ ⊢  ⟦ st   , fs   , deps   , dons   ⟧ᵘ ⇀⦇ tx ,UTXO⦈
         ⟦ utxo'  , fees'  , deposits'  , donations'  ⟧ᵘ

    → noRefundCert txcerts -- FINAL ASSUMPTION --

       -------------------------------------------------------------------
    →  coin (consumed pp utxoState txb) ≥ length txprop * govActionDeposit

  gmsc step@(UTXO-inductive⋯ tx Γ utxoState _ _ _ _ _ c≡p cmint≡0 _ _ _ _ _ _ _ _ _ _) nrf =
    begin
    length txprop * govActionDeposit
      ≡˘⟨ updatePropDeps≡ txprop ⟩
    getCoin (updateProposalDeposits txprop txid govActionDeposit deps) ∸ getCoin deps
      ≤⟨ ∸-monoˡ-≤ (getCoin deps) (≤updateCertDeps txcerts nrf) ⟩
    getCoin (updateDeposits pp txb deps) - getCoin deps
      ≡⟨ ∸≡posPart⊖ {getCoin (updateDeposits pp txb deps)} {getCoin deps} ⟩
    newDeps
      ≤⟨ m≤n+m newDeps (coin balOut + txfee + txdonation) ⟩
    coin balOut + txfee + txdonation + newDeps
      ≡⟨ +-assoc (coin balOut + txfee) txdonation newDeps ⟩
    coin balOut + txfee + (txdonation + newDeps)
      ≡⟨ cong (coin balOut + txfee +_) (+-comm txdonation newDeps) ⟩
    coin balOut + txfee + (newDeps + txdonation)
      ≡˘⟨ +-assoc (coin balOut + txfee) newDeps txdonation ⟩
    coin balOut + txfee + newDeps + txdonation
      ≡˘⟨ cong (λ x → x + newDeps + txdonation) coin-inject-lemma ⟩
    coin (balOut + inject txfee) + newDeps + txdonation
      ≡˘⟨ cong (_+ txdonation) coin-inject-lemma ⟩
    coin (balOut + inject txfee + inject newDeps) + txdonation
      ≡˘⟨ coin-inject-lemma ⟩
    coin (balOut + inject txfee + inject newDeps + inject txdonation)
      ≡˘⟨ cong coin c≡p ⟩
    coin (balIn + mint + inject refunds + inject wdrls) ∎
    where
    open ≤-Reasoning
    pp : PParams
    pp = UTxOEnv.pparams Γ; open PParams pp
    open Tx tx renaming (body to txb); open TxBody txb
    open UTxOState utxoState renaming (utxo to st; fees to fs; deposits to deps; donations to dons)

    newDeps refunds wdrls : Coin
    newDeps = newDeposits pp utxoState txb
    refunds = depositRefunds pp utxoState txb
    wdrls = getCoin txwdrls

    balIn balOut : Value
    balIn = balance (st ∣ txins)
    balOut = balance (outs txb)
\end{code}
\end{property}
