\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Gov.Base

module Ledger.Conway.Specification.Certs.Properties.PoVLemmas (gs : _) (open GovStructure gs) where

\end{code}
% If the module name changes, change the following macro to match!
\newcommand{\CertsPoVL}{Conway/Specifications/Certs/Properties/PoVLemmas}

\begin{code}[hide]
open import Ledger.Conway.Specification.Certs gs
open import Ledger.Conway.Specification.Gov.Actions gs hiding (yes; no)
open import Ledger.Prelude

open import Axiom.Set.Properties th

open import Algebra using (CommutativeMonoid)
open import Data.Maybe.Properties
open import Data.Nat.Properties using (+-0-monoid; +-0-commutativeMonoid; +-identityʳ; +-identityˡ)
open import Relation.Binary using (IsEquivalence)
open import Relation.Nullary.Decidable
open import Tactic.ReduceDec

open Computational ⦃...⦄

open import stdlib-meta.Tactic.GenError using (genErrors)

open CertState

private variable
  dCert : DCert
  l : List DCert
  A A' B : Type
instance
  _ = +-0-monoid

getCoin-singleton : ⦃ _ : DecEq A ⦄ {(a , c) : A × Coin} → indexedSumᵛ' id ❴ (a , c) ❵ ≡ c
getCoin-singleton = indexedSum-singleton' {M = Coin} (finiteness _)

∪ˡsingleton∈dom :  ⦃ _ : DecEq A ⦄ (m : A ⇀ Coin) {(a , c) : A × Coin}
                → a ∈ dom m → getCoin (m ∪ˡ ❴ (a , c) ❵ᵐ) ≡ getCoin m
∪ˡsingleton∈dom m {(a , c)} a∈dom = ≡ᵉ-getCoin (m ∪ˡ ❴ (a , c) ❵) m (singleton-∈-∪ˡ {m = m} a∈dom)

module _  ( indexedSumᵛ'-∪ :  {A : Type} ⦃ _ : DecEq A ⦄ (m m' : A ⇀ Coin)
                              → disjoint (dom m) (dom m')
                              → getCoin (m ∪ˡ m') ≡ getCoin m + getCoin m' )
  where
  open ≡-Reasoning
  open Equivalence

  ∪ˡsingleton∉dom :  ⦃ _ : DecEq A ⦄ (m : A ⇀ Coin) {(a , c) : A × Coin}
                   → a ∉ dom m → getCoin (m ∪ˡ ❴ (a , c) ❵ᵐ) ≡ getCoin m + c
  ∪ˡsingleton∉dom m {(a , c)} a∉dom = begin
    getCoin (m ∪ˡ ❴ a , c ❵ᵐ)
      ≡⟨ indexedSumᵛ'-∪ m ❴ a , c ❵ᵐ
         ( λ x y → a∉dom (subst (_∈ dom m) (from ∈-dom-singleton-pair y) x) ) ⟩
    getCoin m + getCoin ❴ a , c ❵ᵐ
      ≡⟨ cong (getCoin m +_) getCoin-singleton ⟩
    getCoin m + c
      ∎

  ∪ˡsingleton0≡ : ⦃ _ : DecEq A ⦄ → (m : A ⇀ Coin) {a : A} → getCoin (m ∪ˡ ❴ (a , 0) ❵ᵐ) ≡ getCoin m
  ∪ˡsingleton0≡ m {a} with a ∈? dom m
  ... | yes a∈dom = ∪ˡsingleton∈dom m a∈dom
  ... | no a∉dom = trans (∪ˡsingleton∉dom m a∉dom) (+-identityʳ (getCoin m))
\end{code}

\begin{lemma}[%
  \LedgerMod{\CertsPoVL.lagda}{\AgdaModule{\CertsPoVL{}}}: \CERT{} rule preserves value%
  ]
  \begin{itemize}
    \item \textit{Informally}.
      Let \ab{s}, \ab{s'} be \CertState{}s such that
      \ab{s}~\AgdaDatatype{⇀⦇}~\ab{dcert}~\AgdaDatatype{,CERT⦈}~\ab{s'}
      for some \ab{dcert}~:~\DCert{}.
      Then, \AgdaField{getCoin}~\ab{s} $≡$ \AgdaField{getCoin} \ab{s'}.
    \item \textit{Formally}.
\begin{code}
  CERT-pov : {Γ : CertEnv} {s s'  : CertState}
    → Γ ⊢ s ⇀⦇ dCert ,CERT⦈ s'
    → getCoin s ≡ getCoin s'
\end{code}
    \item \textit{Proof}. See the
      \LedgerMod{\CertsPoVL.lagda}{\AgdaModule{\CertsPoVL{}}}
      module in the \href{\repourl}{formal ledger repository}.
\begin{code}[hide]
  -- Proof.
  CERT-pov (CERT-deleg (DELEG-delegate {rwds = rwds} _)) = sym (∪ˡsingleton0≡ rwds)
  CERT-pov (CERT-deleg (DELEG-reg {rwds = rwds} _)) = sym (∪ˡsingleton0≡ rwds)
  CERT-pov {s = ⟦ _ , stᵖ , stᵍ ⟧ᶜˢ}{⟦ _ , stᵖ' , stᵍ' ⟧ᶜˢ}
    (CERT-deleg (DELEG-dereg {c = c} {rwds} {vDelegs = vDelegs}{sDelegs} x)) = begin
    getCoin ⟦ ⟦ vDelegs , sDelegs , rwds ⟧ , stᵖ , stᵍ ⟧
      ≡˘⟨ ≡ᵉ-getCoin rwds-∪ˡ-decomp rwds
          ( ≡ᵉ.trans rwds-∪ˡ-∪ (≡ᵉ.trans ∪-sym (res-ex-∪ Dec-∈-singleton)) ) ⟩
    getCoin rwds-∪ˡ-decomp
      ≡⟨ ≡ᵉ-getCoin rwds-∪ˡ-decomp ((rwds ∣ ❴ c ❵ ᶜ) ∪ˡ ❴ (c , 0) ❵ᵐ) rwds-∪ˡ≡sing-∪ˡ  ⟩
    getCoin ((rwds ∣ ❴ c ❵ ᶜ) ∪ˡ ❴ (c , 0) ❵ᵐ )
      ≡⟨ ∪ˡsingleton0≡ (rwds ∣ ❴ c ❵ ᶜ) ⟩
    getCoin ⟦ ⟦ vDelegs ∣ ❴ c ❵ ᶜ , sDelegs ∣ ❴ c ❵ ᶜ , rwds ∣ ❴ c ❵ ᶜ ⟧ , stᵖ' , stᵍ' ⟧
      ∎
    where
    module ≡ᵉ = IsEquivalence (≡ᵉ-isEquivalence {Credential × Coin})
    rwds-∪ˡ-decomp = (rwds ∣ ❴ c ❵ ᶜ) ∪ˡ (rwds ∣ ❴ c ❵ )

    rwds-∪ˡ-∪ : rwds-∪ˡ-decomp ˢ ≡ᵉ (rwds ∣ ❴ c ❵ ᶜ)ˢ ∪ (rwds ∣ ❴ c ❵)ˢ
    rwds-∪ˡ-∪ = disjoint-∪ˡ-∪ (disjoint-sym res-ex-disjoint)

    disj : disjoint (dom ((rwds ∣ ❴ c ❵ˢ ᶜ) ˢ)) (dom (❴ c , 0 ❵ᵐ ˢ))
    disj {a} a∈res a∈dom  = res-comp-dom a∈res (dom-single→single a∈dom)

    rwds-∪ˡ≡sing-∪ˡ : rwds-∪ˡ-decomp ˢ ≡ᵉ ((rwds ∣ ❴ c ❵ ᶜ) ∪ˡ ❴ (c , 0) ❵ᵐ )ˢ
    rwds-∪ˡ≡sing-∪ˡ = ≡ᵉ.trans rwds-∪ˡ-∪
                              ( ≡ᵉ.trans (∪-cong ≡ᵉ.refl (res-singleton'{m = rwds} x))
                                         (≡ᵉ.sym $ disjoint-∪ˡ-∪ disj) )
  CERT-pov (CERT-pool x) = refl
  CERT-pov (CERT-vdel x) = refl

  injOn : (wdls : RwdAddr ⇀ Coin)
          → ∀[ a ∈ dom (wdls ˢ) ] NetworkIdOf a ≡ NetworkId
          → InjectiveOn (dom (wdls ˢ)) RwdAddr.stake
  injOn _ h {record { stake = stakex }} {record { stake = stakey }} x∈ y∈ refl =
    cong (λ u → record { net = u ; stake = stakex }) (trans (h x∈) (sym (h y∈)))

  module CERTSpov
    -- TODO: prove some or all of the following assumptions, used in roof of `CERTBASE-pov`.
    ( sumConstZero    :  {A : Type} ⦃ _ : DecEq A ⦄ {X : ℙ A} → getCoin (constMap X 0) ≡ 0 )
    ( res-decomp      :  {A : Type} ⦃ _ : DecEq A ⦄ (m m' : A ⇀ Coin)
                         → (m ∪ˡ m')ˢ ≡ᵉ (m ∪ˡ (m' ∣ dom (m ˢ) ᶜ))ˢ )
    ( getCoin-cong    :  {A : Type} ⦃ _ : DecEq A ⦄ (s : A ⇀ Coin) (s' : ℙ (A × Coin)) → s ˢ ≡ᵉ s'
                         → indexedSum' proj₂ (s ˢ) ≡ indexedSum' proj₂ s' )
    ( ≡ᵉ-getCoinˢ     :  {A A' : Type} ⦃ _ : DecEq A ⦄ ⦃ _ : DecEq A' ⦄ (s : ℙ (A × Coin)) {f : A → A'}
                         → InjectiveOn (dom s) f → getCoin (mapˢ (map₁ f) s) ≡ getCoin s )
    where
\end{code}
  \end{itemize}
\end{lemma}


\begin{lemma}[%
  \LedgerMod{\CertsPoVL.lagda}{\AgdaModule{\CertsPoVL{}}}: \CERTBASE{} rule preserves value%
  ]
  \begin{itemize}
    \item \textit{Informally}.
      Let \ab{Γ}~:~\CertEnv{} be a certificate environment, and let
      \ab{s}, \ab{s'}~:~\CertState{} be certificate states such that
      \ab{s}~\AgdaDatatype{⇀⦇}~\_~\AgdaDatatype{,CERTBASE⦈}~\ab{s'}.
      Then, the value of \ab{s} is equal to the value of \ab{s'} plus the value of
      the withdrawals in \ab{Γ}.  In other terms,
      \\[4pt]
      \AgdaField{getCoin}~\ab{s} $≡$ \AgdaField{getCoin}~\ab{s'}
       + \AgdaField{getCoin}~(\ab{Γ} .\AgdaField{wdrls} ).
    \item \textit{Formally}.
\begin{code}
    CERTBASE-pov : {Γ : CertEnv} {s s' : CertState}
      → ∀[ a ∈ dom (CertEnv.wdrls Γ) ] NetworkIdOf a ≡ NetworkId
      → Γ ⊢ s ⇀⦇ _ ,CERTBASE⦈ s'
      → getCoin s ≡ getCoin s' + getCoin (CertEnv.wdrls Γ)
\end{code}
    \item \textit{Proof}. See the
      \LedgerMod{\CertsPoVL.lagda}{\AgdaModule{\CertsPoVL{}}}
      module in the \href{\repourl}{formal ledger repository}.
\begin{code}[hide]
    -- Proof.
    CERTBASE-pov  {Γ   = Γ}
                  {s   = cs}
                  {s'  = cs'}
                  validNetId
                  (CERT-base {pp}{vs}{e}{dreps}{wdrls} (_ , wdrlsCC⊆rwds)) =
      let
        open DState (dState cs )
        open DState (dState cs') renaming (rewards to rewards')
        module ≡ᵉ       = IsEquivalence (≡ᵉ-isEquivalence {Credential × Coin})
        wdrlsCC         = mapˢ (map₁ RwdAddr.stake) (wdrls ˢ)
        zeroMap         = constMap (mapˢ RwdAddr.stake (dom wdrls)) 0
        rwds-∪ˡ-decomp  = (rewards ∣ dom wdrlsCC ᶜ) ∪ˡ (rewards ∣ dom wdrlsCC)
      in
        begin
          getCoin rewards
            ≡˘⟨ ≡ᵉ-getCoin rwds-∪ˡ-decomp rewards
                ( ≡ᵉ.trans (disjoint-∪ˡ-∪ (disjoint-sym res-ex-disjoint))
                           (≡ᵉ.trans ∪-sym (res-ex-∪ (_∈? dom wdrlsCC))) ) ⟩
          getCoin rwds-∪ˡ-decomp
            ≡⟨ indexedSumᵛ'-∪ (rewards ∣ dom wdrlsCC ᶜ) (rewards ∣ dom wdrlsCC)
                              (disjoint-sym res-ex-disjoint) ⟩
          getCoin (rewards ∣ dom wdrlsCC ᶜ) + getCoin (rewards ∣ dom wdrlsCC )
            ≡⟨ cong (getCoin (rewards ∣ dom wdrlsCC ᶜ) +_)
               ( getCoin-cong (rewards ∣ dom wdrlsCC) wdrlsCC (res-subset{m = rewards} wdrlsCC⊆rwds) ) ⟩
          getCoin (rewards ∣ dom wdrlsCC ᶜ) + getCoin wdrlsCC
            ≡⟨ cong (getCoin (rewards ∣ dom wdrlsCC ᶜ) +_) (≡ᵉ-getCoinˢ (wdrls ˢ) (injOn wdrls validNetId)) ⟩
          getCoin (rewards ∣ dom wdrlsCC ᶜ) + getCoin wdrls
            ≡˘⟨ cong (_+ getCoin wdrls)
                ( begin
                  getCoin (zeroMap ∪ˡ rewards)
                    ≡⟨ ≡ᵉ-getCoin (zeroMap ∪ˡ rewards) (zeroMap ∪ˡ (rewards ∣ dom zeroMap ᶜ))
                                  (res-decomp zeroMap rewards) ⟩
                  getCoin (zeroMap ∪ˡ (rewards ∣ dom zeroMap ᶜ))
                    ≡⟨ indexedSumᵛ'-∪ zeroMap (rewards ∣ dom zeroMap ᶜ)
                                      (disjoint-sym res-comp-dom) ⟩
                  getCoin zeroMap + getCoin (rewards ∣ dom zeroMap ᶜ)
                    ≡⟨ cong (λ u → u + getCoin (rewards ∣ dom zeroMap ᶜ)) sumConstZero ⟩
                  0 + getCoin (rewards ∣ (dom zeroMap) ᶜ)
                    ≡⟨ +-identityˡ (getCoin (rewards ∣ dom zeroMap ᶜ)) ⟩
                  getCoin (rewards ∣ dom zeroMap ᶜ)
                    ≡⟨ ≡ᵉ-getCoin (rewards ∣ dom zeroMap ᶜ) (rewards ∣ dom wdrlsCC ᶜ)
                       ( res-comp-cong
                         ( ⊆-Transitive (proj₁ constMap-dom) (proj₂ dom-mapˡ≡map-dom)
                         , ⊆-Transitive (proj₁ dom-mapˡ≡map-dom) (proj₂ constMap-dom) ) ) ⟩
                  getCoin (rewards ∣ dom wdrlsCC ᶜ)
                    ∎ ) ⟩
          getCoin (zeroMap ∪ˡ rewards) + getCoin wdrls
            ∎
\end{code}
  \end{itemize}
\end{lemma}


\begin{lemma}[%
  \LedgerMod{\CertsPoVL.lagda}{\AgdaModule{\CertsPoVL{}}}: iteration of \CERT{} rule preserves value%
  ]
  \begin{itemize}
    \item \textit{Informally}.
      Let \ab{l} be a list of \DCert{}s, and let \ab{s₁}, \ab{sₙ} be \CertState{}s such
      that, starting with \ab{s₁} and successively applying the \CERT{} rule to
      with \DCert{}s from the list \ab{l}, we obtain \ab{sₙ}.
      Then, the value of \ab{s₁} is equal to the value of \ab{sₙ}.      
    \item \textit{Formally}.
\begin{code}
    sts-pov : {Γ : CertEnv} {s₁ sₙ : CertState}
      → ReflexiveTransitiveClosure {sts = _⊢_⇀⦇_,CERT⦈_} Γ s₁ l sₙ
      → getCoin s₁ ≡ getCoin sₙ
\end{code}
    \item \textit{Proof}. See the
      \LedgerMod{\CertsPoVL.lagda}{\AgdaModule{\CertsPoVL{}}}
      module in the \href{\repourl}{formal ledger repository}.
\begin{code}[hide]
    -- Proof.
    sts-pov (BS-base Id-nop) = refl
    sts-pov (BS-ind x xs) = trans (CERT-pov x) (sts-pov xs)
\end{code}
  \end{itemize}
\end{lemma}


