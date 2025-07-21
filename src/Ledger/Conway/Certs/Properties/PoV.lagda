\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Conway.Gov.Base

module Ledger.Conway.Certs.Properties.PoV (gs : _) (open GovStructure gs) where

\end{code}
% If the module name changes, change the following macro to match!
\newcommand{\CertsPoV}{Conway/Certs/Properties/PoV}

\begin{code}[hide]
open import Ledger.Conway.Certs gs
open import Ledger.Conway.Certs.Properties.PoVLemmas gs
open import Ledger.Conway.Gov.Actions gs hiding (yes; no)
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

module _  ( indexedSumᵛ'-∪' :  {A : Type} ⦃ _ : DecEq A ⦄ (m m' : A ⇀ Coin)
                              → disjoint (dom m) (dom m')
                              → getCoin (m ∪ˡ m') ≡ getCoin m + getCoin m' )
    -- TODO: prove some or all of the following assumptions, used in roof of `CERTBASE-pov`.
    ( sumConstZero'    :  {A : Type} ⦃ _ : DecEq A ⦄ {X : ℙ A} → getCoin (constMap X 0) ≡ 0 )
    ( res-decomp'      :  {A : Type} ⦃ _ : DecEq A ⦄ (m m' : A ⇀ Coin)
                         → (m ∪ˡ m')ˢ ≡ᵉ (m ∪ˡ (m' ∣ dom (m ˢ) ᶜ))ˢ )
    ( getCoin-cong'    :  {A : Type} ⦃ _ : DecEq A ⦄ (s : A ⇀ Coin) (s' : ℙ (A × Coin)) → s ˢ ≡ᵉ s'
                         → indexedSum' proj₂ (s ˢ) ≡ indexedSum' proj₂ s' )
    ( ≡ᵉ-getCoinˢ'     :  {A A' : Type} ⦃ _ : DecEq A ⦄ ⦃ _ : DecEq A' ⦄ (s : ℙ (A × Coin)) {f : A → A'}
                         → InjectiveOn (dom s) f → getCoin (mapˢ (map₁ f) s) ≡ getCoin s )
    where
    open CERTSpov indexedSumᵛ'-∪' sumConstZero' res-decomp' getCoin-cong' ≡ᵉ-getCoinˢ'     
\end{code}

\begin{theorem}[%
  \LedgerMod{\CertsPoV.lagda}{\AgdaModule{\CertsPoV{}}}:
  \CERTS{} rule preserves value%
  ]\label{thm:CERTS-PoV}
  \begin{itemize}
    \item \textit{Informally}.
      Let \AgdaBound{l} be a list of \DCert{}s, and let \AgdaBound{s₁}, \AgdaBound{sₙ} be \CertState{}s
      such that \AgdaBound{s₁}~\AgdaDatatype{⇀⦇}~\AgdaBound{l}~\AgdaDatatype{,CERTS⦈}~\AgdaBound{sₙ}.
      Then, the value of \AgdaBound{s₁} is equal to the value of \AgdaBound{sₙ} plus
      the value of the withdrawals in \AgdaBound{Γ}.
    \item \textit{Formally}.
\begin{code}
    CERTS-pov :  {Γ : CertEnv} {s₁ sₙ  : CertState}
      → ∀[ a ∈ dom (CertEnv.wdrls Γ) ] NetworkIdOf a ≡ NetworkId
      →  Γ ⊢ s₁ ⇀⦇ l ,CERTS⦈ sₙ 
      → getCoin s₁ ≡ getCoin sₙ + getCoin (wdrlsOf Γ)
\end{code}
    \item \textit{Proof}. See the
      \LedgerMod{\CertsPoV.lagda}{\AgdaModule{\CertsPoV{}}}
      module in the \href{\repourl}{formal ledger repository}.
\begin{code}[hide]
    -- Proof.
    CERTS-pov validNetId (RTC {s' = s'} {s'' = sₙ} (bsts , BS-base Id-nop)) = CERTBASE-pov validNetId bsts
    CERTS-pov {Γ = Γ} validNetId (RTC (bsts , BS-ind x sts)) =
      trans  (CERTBASE-pov validNetId bsts)
             (cong  (_+ getCoin (CertEnv.wdrls Γ))
             (trans (CERT-pov indexedSumᵛ'-∪' x) (sts-pov sts)))
\end{code}
  \end{itemize}
\end{theorem}
