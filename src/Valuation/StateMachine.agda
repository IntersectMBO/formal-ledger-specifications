{-# OPTIONS --safe #-}

module Valuation.StateMachine where

open import Prelude hiding (T)
open import Algebra
open import Algebra.Morphism
open import Algebra.Construct.Zero

record StateMachine : Set₁ where
  field S T : Set
        _⇀⦅_⦆_ : S → T → S → Set

record DirectedGraph : Set₁ where
  field V : Set
        E : V → V → Set

toDirectedGraph : StateMachine → DirectedGraph
toDirectedGraph sm = let open StateMachine sm in
  record { V = S ; E = λ s s' → ∃ (s ⇀⦅_⦆ s') }

record CoChainComplex : Set₁ where
  field C : ℕ → AbelianGroup 0ℓ 0ℓ

  C' : ℕ → Set
  C' n = AbelianGroup.Carrier (C n)

  Cʳ : ℕ → RawGroup 0ℓ 0ℓ
  Cʳ n = AbelianGroup.rawGroup (C n)

  field d : {n : ℕ} → C' n → C' (1 + n)
        d-morphism : {n : ℕ}
                   → IsGroupHomomorphism (Cʳ n) (Cʳ (1 + n)) d
        law : ∀ {n x} → let open AbelianGroup (C (2 + n)) in d (d {n} x) ≈ ε

  -- cocycles
  Z : ℕ → Set
  Z n = let open AbelianGroup (C (1 + n)) in Σ[ c ∈ C' n ] d c ≈ ε

  -- coboundaries
  B : ℕ → Set
  B 0 = ⊥
  B (suc n) = let open AbelianGroup (C (1 + n)) in Σ[ c ∈ C' (1 + n) ] Σ[ c' ∈ C' n ] c ≈ d c'

module GraphComplex (A : AbelianGroup 0ℓ 0ℓ) (Γ : DirectedGraph) where
  open AbelianGroup A renaming (refl to ≈-refl; sym to ≈-sym; trans to ≈-trans; monoid to A-monoid)
  open DirectedGraph Γ
  open import Algebra.Properties.AbelianGroup A
  open import Relation.Binary.Reasoning.Setoid setoid
  open import Tactic.MonoidSolver

  homGroup : Set → AbelianGroup 0ℓ 0ℓ
  homGroup T = record
    { Carrier = T → Carrier
    ; _≈_ = λ f g → ∀ {x} → f x ≈ g x
    ; _∙_ = λ f g x → f x ∙ g x
    ; ε = λ _ → ε
    ; _⁻¹ = λ f x → f x ⁻¹
    ; isAbelianGroup = record
      { isGroup = record
        { isMonoid = record
          { isSemigroup = record
            { isMagma = record
              { isEquivalence = record { refl = ≈-refl ; sym = λ h → ≈-sym h ; trans = λ h h' → ≈-trans h h' }
              ; ∙-cong = λ h h' → ∙-cong h h' }
              ; assoc = λ _ _ _ → assoc _ _ _ }
            ; identity = (λ _ → identityˡ _) , (λ _ → identityʳ _) }
          ; inverse = (λ _ → inverseˡ _) , (λ _ → inverseʳ _)
          ; ⁻¹-cong = λ x → ⁻¹-cong x }
        ; comm = λ _ _ → comm _ _ }}

  Chains : ℕ → AbelianGroup 0ℓ 0ℓ
  Chains 0 = homGroup V
  Chains 1 = homGroup (∃₂ E)
  Chains (suc (suc _)) = abelianGroup

  Cʳ : ℕ → RawGroup 0ℓ 0ℓ
  Cʳ n = AbelianGroup.rawGroup (Chains n)

  d : (n : ℕ) → AbelianGroup.Carrier (Chains n) → AbelianGroup.Carrier (Chains (1 + n))
  d 0 f = λ where (v , v' , _) → f v' ∙ f v ⁻¹
  d (suc _) _ = _

  d-morphism : {n : ℕ} → IsGroupHomomorphism (Cʳ n) (Cʳ (1 + n)) (d n)
  d-morphism {0} = record
    { isMonoidHomomorphism = record
      { isMagmaHomomorphism = record
        { isRelHomomorphism = record { cong = λ where x {v , v' , _} → ∙-cong x (⁻¹-cong x) }
        ; homo = λ { f g {v , v' , _} → begin
            f v' ∙ g v' ∙ (f v ∙ g v) ⁻¹    ≈⟨ ∙-cong ≈-refl (≈-sym (⁻¹-∙-comm _ _)) ⟩
            f v' ∙ g v' ∙ (f v ⁻¹ ∙ g v ⁻¹) ≈⟨ solve A-monoid ⟩
            f v' ∙ (g v' ∙ f v ⁻¹) ∙ g v ⁻¹ ≈⟨ ∙-cong (∙-cong ≈-refl (comm _ _)) ≈-refl ⟩
            f v' ∙ (f v ⁻¹ ∙ g v') ∙ g v ⁻¹ ≈⟨ solve A-monoid ⟩
            f v' ∙ f v ⁻¹ ∙ (g v' ∙ g v ⁻¹) ∎ } }
      ; ε-homo = inverseʳ _ }
    ; ⁻¹-homo = λ where f {v , v' , _} → ⁻¹-∙-comm _ _ }
  d-morphism {suc _} = record { isMonoidHomomorphism = _ ; ⁻¹-homo = λ _ → _ }

  simplicial : CoChainComplex
  simplicial = record { C = Chains ; d = λ {n} → d n ; d-morphism = λ {n} → d-morphism {n} ; law = _ }

module LedgerValuation (A : AbelianGroup 0ℓ 0ℓ) (sm : StateMachine) where
  open AbelianGroup A renaming (refl to ≈-refl)
  open StateMachine sm
  open CoChainComplex (GraphComplex.simplicial A (toDirectedGraph sm)) public
  open AbelianGroup (C 1) using () renaming (_∙_ to _∙₁_; ε to ε₁; _⁻¹ to _⁻¹₁)

  isConstant : C' 1 → Set
  isConstant f = Σ[ g ∈ (T → Carrier) ] ∀ {s s' t h} → f (s , s' , t , h) ≈ g t

  -- constant 1-cochains form a subgroup
  ∙-isConstant : ∀ {f g} → isConstant f → isConstant g → isConstant (f ∙₁ g)
  ∙-isConstant (_ , hf) (_ , hg) = (_ , ∙-cong hf hg)

  ε-isConstant : isConstant ε₁
  ε-isConstant = (_ , ≈-refl)

  ⁻¹-isConstant : ∀ {f} → isConstant f → isConstant (f ⁻¹₁)
  ⁻¹-isConstant (_ , h) = (_ , ⁻¹-cong h)

  isAffine : C' 0 → Set
  isAffine f = isConstant (d {0} f)

stsToStateMachine : {C S Sig : Set} → (C → S → Sig → S → Set) → StateMachine
stsToStateMachine {C} {S} {Sig} STS =
  record { S = S ; T = C × Sig ; _⇀⦅_⦆_ = λ where s (c , sig) s' → STS c s sig s' }

open import Ledger.Transaction

module UTxOValuation (txs : TransactionStructure) where
  open import Ledger.Utxo txs
  open TransactionStructure txs
  open TxBody
  open import Ledger.Prelude
  open import Data.Integer as Z using (+_; -_)
  open import Data.Integer.Properties

  -- An alteranive version of the UTxO rule that checks for hash
  -- collisions. It has the property that preservation of value is
  -- always true.
  data _⊢_⇀⦇_,UTXO'⦈_ : UTxOEnv → UTxOState → TxBody → UTxOState → Set where
    UTXO' : ∀ {Γ s tx s'}
        → txid tx ∉ map proj₁ (dom (UTxOState.utxo s))
        → Γ ⊢ s ⇀⦇ tx ,UTXO⦈ s'
        ────────────────────────────────
        Γ ⊢ s ⇀⦇ tx ,UTXO'⦈ s'

  open LedgerValuation +-0-abelianGroup (stsToStateMachine _⊢_⇀⦇_,UTXO'⦈_)

  value : C' 0
  value st = let open UTxOState st in + (balance utxo + fees)

  open AbelianGroup +-0-abelianGroup renaming (refl to ≈-refl; trans to ≈-trans)
  open AbelianGroup (C 1) using () renaming (_∙_ to _∙₁_; ε to ε₁; _⁻¹ to _⁻¹₁; _≈_ to _≈₁_)

  d-value≈ε : d {0} value ≈₁ ε₁
  d-value≈ε {s , s' , _ , UTXO' h h'} = begin
    value s' Z.- value s  ≈⟨ cong (λ x → value s' Z.- (+ x)) (pov h h') ⟩
    value s' Z.- value s' ≈⟨ inverseʳ (value s') ⟩
    (+ 0) ∎
    where open import Relation.Binary.Reasoning.Setoid setoid
