\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Prelude
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
  open EpochState eps hiding (es) public
  open RatifyState fut using (removed) renaming (es to esW) public
  open LState ls public
  open GovActionState public
  open UTxOState public

  es       = record esW { withdrawals = ∅ }
  tmpGovSt = filter (λ x → ¿ proj₁ x ∉ mapˢ proj₁ removed ¿) govSt
  orphans  = fromList $ getOrphans es tmpGovSt
  removed' = removed ∪ orphans
  removedGovActions = flip concatMapˢ removed' λ (gaid , gaSt) →
    mapˢ (returnAddr gaSt ,_) ((utxoSt .deposits ∣ ❴ GovActionDeposit gaid ❵) ˢ)
  govActionReturns = aggregate₊ (mapˢ (λ (a , _ , d) → a , d) removedGovActions ᶠˢ)

module EPOCH-PROPS {eps : EpochState} where
  open EPOCH-Body eps

  -- GA Deposits Invariance Property for EPOCH STS -----------------------------------------------
  EPOCH-govDepsMatch :
\end{code}

\begin{property}[%
  \LedgerMod{Epoch/Properties/EPOCHgovDepsMatch.lagda}{\AgdaModule{EPOCHgovDepsMatch}}:
  \AgdaFunction{govDepsMatch} is an epoch invariant;
  \textbf{proved}%
]\

\noindent Assume
\begin{AgdaMultiCode}
\begin{code}
    {ratify-removed : mapˢ (GovActionDeposit ∘ proj₁) removed' ⊆ mapˢ proj₁ (UTxOState.deposits utxoSt ˢ)}
    {eps' : EpochState}
    {e : Epoch}
\end{code}
\begin{code}[hide]
    →
\end{code}
\\[4pt]
and
\begin{code}[inline]
    _ ⊢ eps ⇀⦇ e ,EPOCH⦈ eps'
\end{code}
\begin{code}[hide]
    →
\end{code}
\\[4pt]
If 
\begin{code}[inline]
    govDepsMatch (EpochState.ls eps)
\end{code}
\begin{code}[hide]
    →
\end{code}
then
\begin{code}[inline]
    govDepsMatch (EpochState.ls eps')
\end{code}
.
\begin{code}[hide]
  EPOCH-govDepsMatch {ratify-removed} (EPOCH x _) =
      ≡ᵉ.trans (filter-pres-≡ᵉ $ dom-cong (res-comp-cong $ ≡ᵉ.sym χ'≡χ))
      ∘ from ≡ᵉ⇔≡ᵉ' ∘ main-invariance-lemma ∘ to ≡ᵉ⇔≡ᵉ'
    where

    -- the combinator used in the EPOCH rule
    χ : ℙ DepositPurpose
    χ = mapˢ (proj₁ ∘ proj₂) removedGovActions

    -- a simpler combinator that suffices here;
    χ' : ℙ DepositPurpose
    χ' = mapˢ (GovActionDeposit ∘ proj₁) removed'
    -- Below we prove χ and χ' are essentially equivalent.

    P : GovActionID × GovActionState → Type
    P = λ u → proj₁ u ∉ mapˢ proj₁ removed'

    P? : Decidable P
    P? = λ u → ¿ P u ¿

    utxoDeps : Deposits
    utxoDeps = UTxOState.deposits utxoSt

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


    map-filter-decomp : ∀ a → (a ∉ χ' × a ∈ˡ map (GovActionDeposit ∘ proj₁) govSt)
                               ⇔ (a ∈ˡ map (GovActionDeposit ∘ proj₁)(filter P? govSt))
    map-filter-decomp a = mk⇔ i (λ h → ii h , iii h)
      where
      i : ((a ∉ χ') × (a ∈ˡ map (GovActionDeposit ∘ proj₁) govSt))
          → a ∈ˡ map (GovActionDeposit ∘ proj₁) (filter P? govSt)
      i (a∉χ' , a∈) with Inverse.from (map-∈↔ (GovActionDeposit ∘ proj₁)) a∈
      ... | b , b∈ , refl = Inverse.to (map-∈↔ (GovActionDeposit ∘ proj₁))
                                       (b , ∈-filter⁺ P? b∈ (a∉χ' ∘ ∈-map⁺-∘) , refl)

      ii : a ∈ˡ map (GovActionDeposit ∘ proj₁) (filter P? govSt) → a ∉ χ'
      ii a∈ a∈χ' with from (∈ˡ-map-filter {l = govSt} {P? = P?}) a∈
      ... | _ , _ , refl , Pb with ∈-map⁻' a∈χ'
      ... | q , refl , q∈rem = Pb (to ∈-map (q , refl , q∈rem))

      iii : a ∈ˡ map (GovActionDeposit ∘ proj₁) (filter P? govSt)
            → a ∈ˡ map (GovActionDeposit ∘ proj₁) govSt
      iii a∈ with from (∈ˡ-map-filter {l = govSt} {P? = P?}) a∈
      ... | b , b∈ , refl , Pb = Inverse.to (map-∈↔ (GovActionDeposit ∘ proj₁)) (b , (b∈ , refl))


    main-invariance-lemma :
        filterˢ isGADeposit (dom utxoDeps) ≡ᵉ' fromList (map (GovActionDeposit ∘ proj₁) govSt)
        ---------------------------------------------------------------------------------------------------
      → filterˢ isGADeposit (dom utxoDeps') ≡ᵉ' fromList (map (GovActionDeposit ∘ proj₁) (filter P? govSt))

    main-invariance-lemma HYP a = let open R.EquationalReasoning in
      a ∈ filterˢ isGADeposit (dom utxoDeps')                         ∼⟨ R.SK-sym ∈-filter ⟩
      (isGADeposit a × a ∈ dom utxoDeps')                             ∼⟨ R.K-refl ×-cong ∈-resᶜ-dom ⟩
      (isGADeposit a × a ∉ χ' × ∃[ q ] (a , q) ∈ utxoDeps)            ∼⟨ ×-⇔-swap ⟩
      (a ∉ χ' × isGADeposit a × ∃[ q ] (a , q) ∈ utxoDeps)            ∼⟨ R.K-refl ×-cong (R.K-refl ×-cong dom∈)⟩
      (a ∉ χ' × isGADeposit a × a ∈ dom utxoDeps)                     ∼⟨ R.K-refl ×-cong ∈-filter ⟩
      (a ∉ χ' × a ∈ filterˢ isGADeposit (dom utxoDeps))               ∼⟨ R.K-refl ×-cong (HYP a) ⟩
      (a ∉ χ' × a ∈ fromList (map (GovActionDeposit ∘ proj₁) govSt))  ∼⟨ R.K-refl ×-cong (R.SK-sym ∈-fromList)⟩
      (a ∉ χ' × a ∈ˡ map (GovActionDeposit ∘ proj₁) govSt)            ∼⟨ map-filter-decomp a ⟩
      a ∈ˡ map (GovActionDeposit ∘ proj₁) (filter P? govSt)           ∼⟨ ∈-fromList ⟩
      a ∈ fromList (map (GovActionDeposit ∘ proj₁) (filter P? govSt)) ∎
