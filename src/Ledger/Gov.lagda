\section{Governance}

\begin{code}[hide]
{-# OPTIONS --safe #-}

import Data.List.Membership.Propositional as P
open import Data.List.Membership.Propositional.Properties
-- open import Data.List.Relation.Unary.Any renaming (map to mapᵘ)

open import Ledger.Prelude -- hiding (Any; any?)
open import Ledger.GovStructure

-- open import Ledger.Prelude hiding (yes; no)
-- open import Ledger.GovStructure

module Ledger.Gov (gs : _) (open GovStructure gs hiding (epoch)) where

-- open import Ledger.Gov gs
open import Ledger.GovernanceActions gs hiding (yes; no)

open Computational ⦃...⦄
open Equivalence
-- open GovActionState
open Inverse


-- open import Ledger.GovernanceActions gs hiding (yes; no)
open import Data.Fin hiding (_<_ ; _≟_)
open import Relation.Nullary.Reflects using (invert)
open import Relation.Nullary.Decidable.Core using (From-no; fromWitnessFalse; yes; no )
open Computational ⦃...⦄
open _⁇
\end{code}
\begin{figure*}[h]
\emph{Derived types}
\begin{code}
record GovActionState : Set where
  field votes       : (GovRole × Credential) ⇀ Vote
        returnAddr  : RwdAddr
        expiresIn   : Epoch
        action      : GovAction
        prevAction  : NeedsHash action

GovState : Set
GovState = List (GovActionID × GovActionState)

record GovEnv : Set where
  constructor ⟦_,_,_⟧ᵗ
  field txid     : TxId
        epoch    : Epoch
        pparams  : PParams

{- original definitions (by @WhatisRT)

connects : List (GovActionID × GovActionID) → GovActionID → GovActionID → Set
connects [] aid₁ aid₂ = aid₁ ≡ aid₂
connects ((a₁ , a₂) ∷ s) aid₁ aid₂ = connects s aid₁ a₁ × a₂ ≡ aid₂

enactable : EnactState → GovActionID × GovActionState → ℙ (GovActionID × GovActionID) → Set
enactable e (aid , as) s = case getHashES e (GovActionState.action as) of λ where
  nothing → ⊤
  (just aid') → ∃[ t ] (fromList t ⊆ s × connects t aid' aid)

allEnactable : EnactState → GovState → Set
allEnactable e s = ∀[ p ∈ fromList s ] enactable e p s'
  where
    s' : ℙ (GovActionID × GovActionID)
    s' = mapPartial (λ (aid , as) → (aid ,_) <$> getHash (GovActionState.prevAction as)) $ fromList s

allEnactable? : ∀ e s → Dec (allEnactable e s)
allEnactable? e s = {!!}
-}

{- verbose definitions and scratch work (by @williamdemeo) ---------------------------------}

connects : List (GovActionID × GovActionID) → GovActionID → GovActionID → Set
connects [] aid₁ aid₂ = aid₁ ≡ aid₂
connects ((a₁ , a₂) ∷ s) aid₁ aid₂ = connects s aid₁ a₁ × a₂ ≡ aid₂

connects? : (l : List (GovActionID × GovActionID))(aid aid' : GovActionID) → Dec(connects l aid aid')
connects? [] aid₁ aid₂ = (aid₁ ≟ aid₂)
connects? ((a₁ , a₂) ∷ s) aid₁ aid₂ with (a₂ ≟ aid₂) | connects? s aid₁ a₁
...| yes p | yes q = true because ofʸ (q , p)
...| _ | no ¬q = false because ofⁿ λ (q , _) → ¬q q
...| no ¬p | _ = false because ofⁿ λ (_ , p) → ¬p p

enactable : EnactState → GovActionID → GovActionState → ℙ (GovActionID × GovActionID) → Set
enactable eState aid (record { action = actn }) aidPairs =
  case getHashES eState actn of λ where
  nothing      → ⊤
  (just aid')  → ∃[ aidPairList ] (fromList aidPairList ⊆ aidPairs) × (connects aidPairList aid' aid)
  -- example: the proof ([] , p , refl) works if aid' ≡ aid)

-- aidPairSet takes a list of (aid, aState) : (GovActionID × GovActionState) pairs and converts it
-- to a set of hashes of the corresponding pairs (aid, prevAction aState).
aidPairSet : GovState → ℙ (GovActionID × GovActionID)
aidPairSet aid×stateList = let open GovActionState in

  mapPartial ( λ ((aid , aState) : GovActionID × GovActionState)
               →     (λ (s : GovActionID) → (aid , s)) <$> getHash (prevAction aState) )

             ( fromList aid×stateList )  -- : ℙ (GovActionID × GovActionState)

  --     f : GovActionID → GovActionID²   getHash prevActionId
  --    ------------------------------------------------------- <$>    S = GovActionState
  --         getHash (aid , (prevAction aState))

enactable? : ∀ eState aid aState aidPairs → Dec(enactable eState aid aState aidPairs)
enactable? eState aid aState aidPairs with getHashES eState (GovActionState.action aState)
...| nothing = true because ofʸ tt
...| (just aid') with any? (λ aidPairList → goal aidPairList ×-dec (connects? aidPairList aid' aid)) {!!}
  where
  goal : (aidPairList : List (GovActionID × GovActionID)) → Dec ({a : Σ (Σ TxId (λ x → ℕ)) (λ x → Σ TxId (λ x₁ → ℕ))} →
         (a ∈ (proj₁ (listing aidPairList))) → (a ∈ aidPairs))
  goal aidPairList = all? (_∈? aidPairs)
... | yes (pairs , _ , pairsConnected) = true because (ofʸ (pairs , pairsConnected))
... | no ¬p = false because (ofⁿ (λ (x , v , y) → ¬p (x , {!v!} , v , y) ))

allEnactable : EnactState → GovState → Set
allEnactable eState aid×stateList = ∀[ (aid , aState) ∈ fromList aid×stateList ]
                                    enactable eState aid aState (aidPairSet aid×stateList)

allEnactable? : ∀ eState aid×stateList → Dec (allEnactable eState aid×stateList)
allEnactable? eState aid×stateList = {!!}
{------------------------------------------------------------------------------------}


\end{code}
\emph{Transition relation types}
\begin{code}[hide]
data
\end{code}
\begin{code}
  _⊢_⇀⦇_,GOV'⦈_ : GovEnv × ℕ → GovState → GovVote ⊎ GovProposal → GovState → Set

_⊢_⇀⦇_,GOV⦈_ : GovEnv → GovState → List (GovVote ⊎ GovProposal) → GovState → Set
\end{code}
\begin{code}[hide]
open GovActionState

private variable
  Γ : GovEnv
  s s' : GovState
  aid : GovActionID
  role : GovRole
  cred : Credential
  v : Vote
  c d : Coin
  addr : RwdAddr
  a : GovAction
  prev : NeedsHash a
  k : ℕ

-- could be implemented using a function of type:
--   ∀ {a} {A : Set a} → (A → Maybe A) → List A → List A
modifyMatch : ∀ {a} {A : Set a} → (A → Bool) → (A → A) → List A → List A
modifyMatch P f = map (λ x → if P x then f x else x)
\end{code}
\emph{Functions used in the GOV rules}
\begin{code}
addVote : GovState → GovActionID → GovRole → Credential → Vote → GovState
addVote s aid r kh v =
  modifyMatch
    (λ (x , _) → aid ≡ᵇ x)
    (λ (gid , s') → gid , record s' { votes = insert (votes s') (r , kh) v }) s

addAction : GovState
          → Epoch → GovActionID → RwdAddr → (a : GovAction) → NeedsHash a
          → GovState
addAction s e aid addr a prev = s ∷ʳ (aid , record
  { votes = ∅ ; returnAddr = addr ; expiresIn = e ; action = a ; prevAction = prev })
\end{code}
\caption{Types and functions used in the GOV transition system\protect\footnotemark}
\label{defs:gov-defs}
\end{figure*}
\footnotetext{\AgdaBound{l}~\AgdaFunction{∷ʳ}~\AgdaBound{x} appends element \AgdaBound{x} to list \AgdaBound{l}.}
\begin{figure*}
\begin{code}[hide]
data _⊢_⇀⦇_,GOV'⦈_ where
\end{code}
\begin{code}
  GOV-Vote : ∀ {x ast} →  let  open GovEnv Γ
                               sig = inj₁ record  { gid = aid ; role = role
                                                  ; credential = cred
                                                  ; vote = v ; anchor = x }
                          in
    (aid , ast) ∈ fromList s
    → canVote pparams (action ast) role
    ───────────────────────────────────────
    (Γ , k) ⊢ s ⇀⦇ sig ,GOV'⦈ addVote s aid role cred v

  GOV-Propose : ∀ {x} →  let  open GovEnv Γ
                              open PParams pparams hiding (a)
                              sig = inj₂ record  { returnAddr = addr ; action = a
                                                 ; anchor = x ; deposit = d
                                                 ; prevAction = prev }
                              s' = addAction  s (govActionLifetime +ᵉ epoch)
                                              (txid , k) addr a prev
                         in
       actionWellFormed a ≡ true
    →  d ≡ govActionDeposit
    →  (∀ {new rem q} → a ≡ NewCommittee new rem q
        → ∀[ e ∈ range new ]  epoch < e  ×  dom new ∩ rem ≡ᵉ ∅)
    ───────────────────────────────────────
    (Γ , k) ⊢ s ⇀⦇ sig ,GOV'⦈ s'

_⊢_⇀⦇_,GOV⦈_ = ReflexiveTransitiveClosureᵢ _⊢_⇀⦇_,GOV'⦈_
\end{code}
\caption{Rules for the GOV transition system}
\label{defs:gov-rules}
\end{figure*}




Π : (ℕ → Bool) → ℕ → Bool
Π P zero = P 0
Π P (suc n) = P (suc n) ∧ Π P n

-- If we can decide A and B then we can decide their product
-- infixr 2 _×-reflects_
-- _×-reflects_ : ∀ {a b} → Reflects A a → Reflects B b →
--                Reflects (A × B) (a ∧ b)
-- ofʸ  a ×-reflects ofʸ  b = ofʸ (a , b)
-- ofʸ  a ×-reflects ofⁿ ¬b = ofⁿ (¬b ∘ proj₂)
-- ofⁿ ¬a ×-reflects _      = ofⁿ (¬a ∘ proj₁)

-- Π-reflects : (P : ℕ → Bool) → ((n : ℕ)(a : Bool) → Reflects (P n) a) → (a : Bool) → Reflects (∀ n → P n) a
-- Π-reflects = ?

-- lemma1 : ∀ {ℓ : Level} (P : Pred ℕ ℓ) → (∀ x → Dec(P x)) → (N : ℕ) → Dec(∀ n → n < N → P n)
-- does  (lemma1 P ∀xPx? N) = Π (λ n → does (∀xPx? n)) N
-- proof (lemma1 P ∀xPx? N) = proof ((Π (λ n → does (∀xPx? n)) N) because proof (lemma1 P ∀xPx? N))

lemma1 : ∀ {ℓ : Level} (P : Pred ℕ ℓ) → (∀ n → Dec(P n)) → (n : ℕ) → Dec(P n)
lemma1 P ∀nDecP = ∀nDecP

lemma01 : ∀ {ℓ : Level} (P : Pred ℕ ℓ) → (∀ n → Dec(P n)) → Dec(P 0 × P 1)
lemma01 P ∀nDecP = (∀nDecP 0) ×-dec (∀nDecP 1)
-- does  (lemma1 P ∀xPx? n) = does (∀xPx? n)
-- proof (lemma1 P ∀xPx? n) = proof (∀xPx? n)

-- _×-dec_ : Dec A → Dec B → Dec (A × B)
-- does  (a? ×-dec b?) = does a? ∧ does b?
-- proof (a? ×-dec b?) = proof a? ×-reflects proof b?
-- open Fin renaming (zero to 0Fin)
-- X-dec : (n : ℕ)(𝒜 : Fin n → Set) → (∀ k → Dec(𝒜 k)) → Dec(∀ k → 𝒜 k)
-- does (X-dec 0 𝒜 x) = does (x {!0Fin!})
-- does (X-dec (suc n) 𝒜 x) = {!!}
-- proof (X-dec n 𝒜 x) = {!!}

-- lemma2 : ∀ {ℓ : Level} {A : Set ℓ}{P : Pred A ℓ} → Dec(∀ x → P x) → (∀ x → Dec(P x))
-- lemma2 (false because ofⁿ ¬p) = {!!}
-- lemma2 (true because p) x = true because ofʸ ((invert p) x)




-- mapPartial : (A → Maybe B) → ℙ A → ℙ B
--
-- If  A = GovActionID × GovActionState and
--     B = GovActionID × GovActionID,
--
-- then mapPartial takes
-- -  1. a function from GovActionID × GovActionState to Maybe (GovActionID × GovActionID),
-- -  2. a subset of GovActionID × GovActionState, namely, (fromList aid×stateListpair),
-- and returns a subset of GovActionID × GovActionID.
