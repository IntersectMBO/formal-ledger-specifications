\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Transaction
open import Ledger.Conway.Specification.Abstract

module Ledger.Conway.Specification.Epoch.Properties.GovDepsMatch
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where
\end{code}
% If the module name changes, change the following macro to match!
\newcommand{\EpochPropGov}{Conway/Epoch/Properties/GovDepsMatch}

\begin{code}[hide]
open import Ledger.Conway.Specification.Certs govStructure
open import Ledger.Conway.Specification.Epoch txs abs
open import Ledger.Conway.Specification.Ledger txs abs
open import Ledger.Conway.Specification.Ledger.Properties txs abs
open import Ledger.Prelude renaming (map to map'; mapˢ to map)
open import Ledger.Conway.Specification.Ratify txs hiding (vote)
open import Ledger.Conway.Specification.Utxo txs abs

open import Axiom.Set.Properties th

open import Data.List.Base using (filter)
open import Data.List.Membership.Propositional.Properties using (∈-filter⁺; map-∈↔)
open import stdlib.Data.List.Subpermutations using (∈ˡ-map-filter)
open import Data.Product.Function.NonDependent.Propositional using (_×-cong_)
open import Data.Product.Properties using (×-≡,≡←≡)
open import Data.Product.Properties.Ext using (×-⇔-swap)

open import Relation.Unary using (Decidable)

open Equivalence

import Function.Related.Propositional as R
import Relation.Binary.Reasoning.Setoid as SetoidReasoning

module EPOCH-Body (eps : EpochState) where
  open EpochState eps hiding (es) renaming (ls to epsLState; fut to epsRState) public
  open RatifyState renaming (es to ensRState) public
  open LState epsLState public
  open GovActionState public
  open UTxOState public

  ens      = record (epsRState .ensRState) { withdrawals = ∅ }
  tmpGovSt = filter (λ x → ¿ proj₁ x ∉ map proj₁ (epsRState .removed) ¿) govSt
  orphans  = fromList $ getOrphans ens tmpGovSt
  removed' : ℙ (GovActionID × GovActionState)
  removed' = (epsRState .removed) ∪ orphans
  removedGovActions = flip concatMapˢ removed' λ (gaid , gaSt) →
    map (returnAddr gaSt ,_) ((deposits utxoSt ∣ ❴ GovActionDeposit gaid ❵) ˢ)

module EPOCH-PROPS {eps : EpochState} where
  open EPOCH-Body eps
  open EpochState
\end{code}

\begin{lemma}[%
  \LedgerMod{\EpochPropGov.lagda}{\AgdaModule{\EpochPropGov{}}}:
  \AgdaFunction{govDepsMatch} is invariant of \EPOCH{} rule%
  ]
  \label{lem:EpochGovDepsMatch}

  \begin{itemize}
    \item \textit{Informally}.
      Let \AgdaBound{eps}, \AgdaBound{eps'}~:~\EpochState{} be two epoch states and let
      \AgdaBound{e}~:~\Epoch{} be an epoch.  Recall, \AgdaBound{eps}~\AgdaField{.ls} denotes the
      ledger state of \AgdaBound{eps}.  If \AgdaBound{eps}~\AgdaDatatype{⇀⦇}~\AgdaBound{e}~\AgdaDatatype{,EPOCH⦈}~\AgdaBound{eps'}, then
      (under a certain special condition) \govDepsMatch{}~(\AgdaBound{eps}~\AgdaField{.ls})
      implies \govDepsMatch{}~(\AgdaBound{eps'}~\AgdaField{.ls}).
    \\[4pt]
    The special condition under which the property holds is the same as the one in \cref{thm:ChainGovDepsMatch}:
    let \AgdaFunction{removed'} be the union of the governance actions in the \AgdaField{removed} field of the ratify
    state of \AgdaBound{eps} and the orphaned governance actions in the \GovState{} of \AgdaBound{eps}.
    Let $\mathcal{G}$ be the set
    $\{\mbox{\GovActionDeposit{}~\AgdaBound{id}} : \mbox{\AgdaBound{id}} ∈ \mbox{proj}₁~\mbox{\AgdaFunction{removed'}}\}$.
    Assume: $\mathcal{G}$ is a subset of the set of deposits
    of (the governance state of) \AgdaBound{eps}.
    \item \textit{Formally}.
\begin{code}
  EPOCH-govDepsMatch :  {eps' : EpochState} {e : Epoch}
    → map (GovActionDeposit ∘ proj₁) removed' ⊆ dom (DepositsOf eps)
    → _ ⊢ eps ⇀⦇ e ,EPOCH⦈ eps'
    → govDepsMatch (eps .ls) → govDepsMatch (eps' .ls)
\end{code}
    \item \textit{Proof}. \revealproofbutton{}
\begin{code}[hide]
  EPOCH-govDepsMatch ratify-removed (EPOCH x _) =
      ≡ᵉ.trans (filter-pres-≡ᵉ $ dom-cong (res-comp-cong $ ≡ᵉ.sym ΔΠ'≡ΔΠ))
      ∘ from ≡ᵉ⇔≡ᵉ' ∘ main-invariance-lemma ∘ to ≡ᵉ⇔≡ᵉ'
    where

    -- the combinator used in the EPOCH rule
    ΔΠ : ℙ DepositPurpose
    ΔΠ = map (proj₁ ∘ proj₂) removedGovActions

    -- a simpler combinator that suffices here;
    ΔΠ' : ℙ DepositPurpose
    ΔΠ' = map (GovActionDeposit ∘ proj₁) removed'
    -- Below we prove ΔΠ and ΔΠ' are essentially equivalent.

    P : GovActionID × GovActionState → Type
    P = λ u → proj₁ u ∉ map proj₁ removed'

    P? : Decidable P
    P? = λ u → ¿ P u ¿

    utxoDeps : Deposits
    utxoDeps = UTxOState.deposits (LState.utxoSt epsLState)

    -- utxo deposits restricted to new form of set used in EPOCH rule
    utxoDeps' : Deposits
    utxoDeps' = utxoDeps ∣ ΔΠ' ᶜ

    ΔΠ'≡ΔΠ : ΔΠ' ≡ᵉ ΔΠ
    ΔΠ'≡ΔΠ = ΔΠ'⊆ΔΠ , ΔΠ⊆ΔΠ'
      where
      ΔΠ'⊆ΔΠ : ΔΠ' ⊆ ΔΠ
      ΔΠ'⊆ΔΠ {a} x with from ∈-map x
      ... | (gaid , gast) , refl , gaidgast∈rem with from ∈-map (ratify-removed x)
      ... | (dp , c) , refl , dpc∈utxoDeps = let gadc = (GovActionDeposit gaid , c) in
        to ∈-map ((returnAddr {txs} gast , gadc)
                 , refl
                 , to ∈-concatMapˢ ((gaid , gast)
                                   , gaidgast∈rem
                                   , to ∈-map (gadc , refl , res-singleton⁺ {m = utxoDeps} dpc∈utxoDeps)))
      ΔΠ⊆ΔΠ' : ΔΠ ⊆ ΔΠ'
      ΔΠ⊆ΔΠ' {a} x with from ∈-map x
      ... | (rwa , dp , c) , refl , rwa-dp-c∈ with (from ∈-concatMapˢ rwa-dp-c∈)
      ... | (gaid , gast) , gaid-gast-∈-removed , rwa-dp-c-∈-map with (from ∈-map rwa-dp-c-∈-map)
      ... | (_ , _) , refl , q∈ =
        to ∈-map ((gaid , gast)
                 , proj₁ (×-≡,≡←≡ (proj₂ (res-singleton'' {m = utxoDeps} q∈)))
                 , gaid-gast-∈-removed)

    map-filter-decomp : ∀ a → (a ∉ ΔΠ' × a ∈ˡ map' (GovActionDeposit ∘ proj₁) govSt)
                               ⇔ (a ∈ˡ map' (GovActionDeposit ∘ proj₁)(filter P? govSt))
    map-filter-decomp a = mk⇔ i (λ h → ii h , iii h)
      where
      i : ((a ∉ ΔΠ') × (a ∈ˡ map' (GovActionDeposit ∘ proj₁) govSt))
          → a ∈ˡ map' (GovActionDeposit ∘ proj₁) (filter P? govSt)
      i (a∉ΔΠ' , a∈) with Inverse.from (map-∈↔ (GovActionDeposit ∘ proj₁)) a∈
      ... | b , b∈ , refl = Inverse.to (map-∈↔ (GovActionDeposit ∘ proj₁))
                                       (b , ∈-filter⁺ P? b∈ (a∉ΔΠ' ∘ ∈-map⁺-∘) , refl)

      ii : a ∈ˡ map' (GovActionDeposit ∘ proj₁) (filter P? govSt) → a ∉ ΔΠ'
      ii a∈ a∈ΔΠ' with from (∈ˡ-map-filter {l = govSt} {P? = P?}) a∈
      ... | _ , _ , refl , Pb with ∈-map⁻' a∈ΔΠ'
      ... | q , refl , q∈rem = Pb (to ∈-map (q , refl , q∈rem))

      iii : a ∈ˡ map' (GovActionDeposit ∘ proj₁) (filter P? govSt)
            → a ∈ˡ map' (GovActionDeposit ∘ proj₁) govSt
      iii a∈ with from (∈ˡ-map-filter {l = govSt} {P? = P?}) a∈
      ... | b , b∈ , refl , Pb = Inverse.to (map-∈↔ (GovActionDeposit ∘ proj₁)) (b , (b∈ , refl))


    main-invariance-lemma :
        filterˢ isGADeposit (dom utxoDeps) ≡ᵉ' fromList (map' (GovActionDeposit ∘ proj₁) govSt)
        ---------------------------------------------------------------------------------------------------
      → filterˢ isGADeposit (dom utxoDeps') ≡ᵉ' fromList (map' (GovActionDeposit ∘ proj₁) (filter P? govSt))

    main-invariance-lemma HYP a = let open R.EquationalReasoning in
      a ∈ filterˢ isGADeposit (dom utxoDeps')                          ∼⟨ R.SK-sym ∈-filter ⟩
      (isGADeposit a × a ∈ dom utxoDeps')                              ∼⟨ R.K-refl ×-cong ∈-resᶜ-dom ⟩
      (isGADeposit a × a ∉ ΔΠ' × ∃[ q ] (a , q) ∈ utxoDeps)             ∼⟨ ×-⇔-swap ⟩
      (a ∉ ΔΠ' × isGADeposit a × ∃[ q ] (a , q) ∈ utxoDeps)             ∼⟨ R.K-refl ×-cong (R.K-refl ×-cong dom∈)⟩
      (a ∉ ΔΠ' × isGADeposit a × a ∈ dom utxoDeps)                      ∼⟨ R.K-refl ×-cong ∈-filter ⟩
      (a ∉ ΔΠ' × a ∈ filterˢ isGADeposit (dom utxoDeps))                ∼⟨ R.K-refl ×-cong (HYP a) ⟩
      (a ∉ ΔΠ' × a ∈ fromList (map' (GovActionDeposit ∘ proj₁) govSt))  ∼⟨ R.K-refl ×-cong (R.SK-sym ∈-fromList)⟩
      (a ∉ ΔΠ' × a ∈ˡ map' (GovActionDeposit ∘ proj₁) govSt)            ∼⟨ map-filter-decomp a ⟩
      a ∈ˡ map' (GovActionDeposit ∘ proj₁) (filter P? govSt)           ∼⟨ ∈-fromList ⟩
      a ∈ fromList (map' (GovActionDeposit ∘ proj₁) (filter P? govSt)) ∎
\end{code}
  \end{itemize}
\end{lemma}
