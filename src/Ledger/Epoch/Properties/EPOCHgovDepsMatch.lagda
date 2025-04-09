\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Prelude renaming (map to map'; mapˢ to map)
open import Ledger.Transaction
open import Ledger.Abstract

module Ledger.Epoch.Properties.EPOCHgovDepsMatch
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Axiom.Set.Properties th
open import Ledger.Epoch txs abs
open import Ledger.Ledger txs abs
open import Ledger.Ledger.Properties txs abs
open import Ledger.Utxo txs abs
open import Ledger.Certs govStructure
open import Ledger.Ratify txs hiding (vote)

open import Data.List.Base using (filter)
open import Data.List.Membership.Propositional.Properties using (∈-filter⁺; map-∈↔)
open import Data.List.Subpermutations using (∈ˡ-map-filter)
open import Data.Product.Function.NonDependent.Propositional using (_×-cong_)
open import Data.Product.Properties using (×-≡,≡←≡)
open import Data.Product.Properties.Ext using (×-⇔-swap)

open import Relation.Unary using (Decidable)

open Equivalence

import Function.Related.Propositional as R
import Relation.Binary.Reasoning.Setoid as SetoidReasoning

module EPOCH-Body (eps : EpochState) where
  open EpochState eps hiding (es) renaming (ls to epsLState; fut to epsRState) public
  open RatifyState renaming (es to ensRState) public -- -- fut using (removed) 
  open LState epsLState public
  open GovActionState public
  open UTxOState public

  ens       = record (epsRState .ensRState) { withdrawals = ∅ }
  tmpGovSt = filter (λ x → ¿ proj₁ x ∉ map proj₁ (epsRState .removed) ¿) govSt
  orphans  = fromList $ getOrphans ens tmpGovSt
  removed' = (epsRState .removed) ∪ orphans
  removedGovActions = flip concatMapˢ removed' λ (gaid , gaSt) →
    map (returnAddr gaSt ,_) ((deposits utxoSt ∣ ❴ GovActionDeposit gaid ❵) ˢ)

module EPOCH-PROPS {eps : EpochState} where
  open EPOCH-Body eps
  open EpochState
\end{code}

\begin{property}[%
  \LedgerMod{Epoch/Properties/EPOCHgovDepsMatch.lagda}{\AgdaModule{EPOCHgovDepsMatch}}:
  \AgdaFunction{govDepsMatch} is an epoch invariant;
  \textbf{proved}%
  ]\

  \textit{Preliminary remarks}.
  \begin{itemize}
    \item For the purpose of this property, we fix an epoch state
    \ab{eps}~:~\EpochState{}. Recall, the \EpochState{} record type has five fields; the three 
      relevant here are \ab{ls}~:~\LState{}, \ab{es}~:~\EnactState{}, and \ab{fut}~:~\RatifyState{}.
      For clarity, let us give the \LState{} of \ab{eps} the new name \ab{epsLState}, and let us rename the
      \RatifyState{} of \ab{eps} from \ab{fut} to \ab{epsRState}.
    \item As an inhabitant of \LState{}, \ab{epsLState} has three fields; the two
      relevant here are \ab{utxoSt}~:~\UTxOState{} and \ab{govSt}~:~\GovState{}.
    \item As an inhabitant of \RatifyState{}, \ab{epsRState} has three fields; the two
      relevant here are \ab{es}~:~\EnactState{} and \ab{removed}~:~$ℙ$(\GovActionID{}~×~\GovActionState{}).
    \item The present property asserts that (under a certain condition, described below),
      the \AgdaDatatype{EPOCH} rule preserves a certain relation between
      the \ab{utxoSt} and \ab{govSt} fields of \ab{epsLState}.
    \item Let
        $\mathcal{G}$ be the set \{\GovActionDeposit{}~\ab{id}\}, 
        where \ab{id} ranges over \GovActionID{}s of elements in \ab{epsRState .removed}, 
        the \ab{removed} field of the \RatifyState{} of \ab{eps}.
        The condition under which the property holds is that $\mathcal{G}$ is a subset
        of the set of (first projections of elements in) \ab{deposits utxoSt}, the deposits
        of the \UTxOState{} of \ab{epsLState}.
  \end{itemize}
  \textit{Property}.
  \begin{itemize}
    \item \textit{Informally}.
      Assume the condition described above holds and suppose
      \ab{eps}~\AgdaDatatype{⇀⦇}~\ab{e}~\AgdaDatatype{,EPOCH⦈}~\ab{eps'}.
      Let \ab{utxoSt} and \ab{utxoSt'} be the \UTxOState{}s of the ledger states of \ab{eps} and \ab{eps'}, respectively.
      Let \ab{govSt} and \ab{govSt'} be the \GovState{}s of the respective ledger states.
      If the governance action deposits of \ab{utxoSt} are the same as those
      of \ab{govSt}, then the same holds for \ab{utxoSt'} and \ab{govSt'}.
      In other terms, \{govDepsMatch}~(\ab{eps}~.\AgdaField{ls}) implies \govDepsMatch{}~(\ab{eps'}~.\AgdaField{ls}).
    \item \textit{Formally}.
\begin{code}
  EPOCH-govDepsMatch :  {ratify-removed :  map (GovActionDeposit ∘ proj₁) removed'
                                           ⊆ map proj₁ (deposits utxoSt ˢ)}
                        {eps' : EpochState}
                        {e : Epoch}
                        → tt ⊢ eps ⇀⦇ e ,EPOCH⦈ eps'
                        → govDepsMatch (eps .ls) → govDepsMatch (eps' .ls)
\end{code}
  \end{itemize}
  \textit{Proof}. See the
    \LedgerMod{Epoch/Properties/EPOCHgovDepsMatch.lagda}{\AgdaModule{EPOCHgovDepsMatch}} module
    in our GitHub repository.
\begin{code}[hide]
  EPOCH-govDepsMatch {ratify-removed} (EPOCH x _) =
      ≡ᵉ.trans (filter-pres-≡ᵉ $ dom-cong (res-comp-cong $ ≡ᵉ.sym χ'≡χ))
      ∘ from ≡ᵉ⇔≡ᵉ' ∘ main-invariance-lemma ∘ to ≡ᵉ⇔≡ᵉ'
    where

    -- the combinator used in the EPOCH rule
    χ : ℙ DepositPurpose
    χ = map (proj₁ ∘ proj₂) removedGovActions

    -- a simpler combinator that suffices here;
    χ' : ℙ DepositPurpose
    χ' = map (GovActionDeposit ∘ proj₁) removed'
    -- Below we prove χ and χ' are essentially equivalent.

    P : GovActionID × GovActionState → Type
    P = λ u → proj₁ u ∉ map proj₁ removed'

    P? : Decidable P
    P? = λ u → ¿ P u ¿

    utxoDeps : Deposits
    utxoDeps = UTxOState.deposits (LState.utxoSt epsLState)

    -- utxo deposits restricted to new form of set used in EPOCH rule
    utxoDeps' : Deposits
    utxoDeps' = utxoDeps ∣ χ' ᶜ

    χ'≡χ : χ' ≡ᵉ χ
    χ'≡χ = χ'⊆χ , χ⊆χ'
      where
      χ'⊆χ : χ' ⊆ χ
      χ'⊆χ {a} x with from ∈-map x
      ... | (gaid , gast) , refl , gaidgast∈rem with from ∈-map (ratify-removed x)
      ... | (dp , c) , refl , dpc∈utxoDeps = let gadc = (GovActionDeposit gaid , c) in
        to ∈-map ((returnAddr {txs} gast , gadc)
                 , refl
                 , to ∈-concatMapˢ ((gaid , gast)
                                   , gaidgast∈rem
                                   , to ∈-map (gadc , refl , res-singleton⁺ {m = utxoDeps} dpc∈utxoDeps)))
      χ⊆χ' : χ ⊆ χ'
      χ⊆χ' {a} x with from ∈-map x
      ... | (rwa , dp , c) , refl , rwa-dp-c∈ with (from ∈-concatMapˢ rwa-dp-c∈)
      ... | (gaid , gast) , gaid-gast-∈-removed , rwa-dp-c-∈-map with (from ∈-map rwa-dp-c-∈-map)
      ... | (_ , _) , refl , q∈ =
        to ∈-map ((gaid , gast)
                 , proj₁ (×-≡,≡←≡ (proj₂ (res-singleton'' {m = utxoDeps} q∈)))
                 , gaid-gast-∈-removed)

    map-filter-decomp : ∀ a → (a ∉ χ' × a ∈ˡ map' (GovActionDeposit ∘ proj₁) govSt)
                               ⇔ (a ∈ˡ map' (GovActionDeposit ∘ proj₁)(filter P? govSt))
    map-filter-decomp a = mk⇔ i (λ h → ii h , iii h)
      where
      i : ((a ∉ χ') × (a ∈ˡ map' (GovActionDeposit ∘ proj₁) govSt))
          → a ∈ˡ map' (GovActionDeposit ∘ proj₁) (filter P? govSt)
      i (a∉χ' , a∈) with Inverse.from (map-∈↔ (GovActionDeposit ∘ proj₁)) a∈
      ... | b , b∈ , refl = Inverse.to (map-∈↔ (GovActionDeposit ∘ proj₁))
                                       (b , ∈-filter⁺ P? b∈ (a∉χ' ∘ ∈-map⁺-∘) , refl)

      ii : a ∈ˡ map' (GovActionDeposit ∘ proj₁) (filter P? govSt) → a ∉ χ'
      ii a∈ a∈χ' with from (∈ˡ-map-filter {l = govSt} {P? = P?}) a∈
      ... | _ , _ , refl , Pb with ∈-map⁻' a∈χ'
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
      (isGADeposit a × a ∉ χ' × ∃[ q ] (a , q) ∈ utxoDeps)             ∼⟨ ×-⇔-swap ⟩
      (a ∉ χ' × isGADeposit a × ∃[ q ] (a , q) ∈ utxoDeps)             ∼⟨ R.K-refl ×-cong (R.K-refl ×-cong dom∈)⟩
      (a ∉ χ' × isGADeposit a × a ∈ dom utxoDeps)                      ∼⟨ R.K-refl ×-cong ∈-filter ⟩
      (a ∉ χ' × a ∈ filterˢ isGADeposit (dom utxoDeps))                ∼⟨ R.K-refl ×-cong (HYP a) ⟩
      (a ∉ χ' × a ∈ fromList (map' (GovActionDeposit ∘ proj₁) govSt))  ∼⟨ R.K-refl ×-cong (R.SK-sym ∈-fromList)⟩
      (a ∉ χ' × a ∈ˡ map' (GovActionDeposit ∘ proj₁) govSt)            ∼⟨ map-filter-decomp a ⟩
      a ∈ˡ map' (GovActionDeposit ∘ proj₁) (filter P? govSt)           ∼⟨ ∈-fromList ⟩
      a ∈ fromList (map' (GovActionDeposit ∘ proj₁) (filter P? govSt)) ∎
\end{code}
\end{property}
