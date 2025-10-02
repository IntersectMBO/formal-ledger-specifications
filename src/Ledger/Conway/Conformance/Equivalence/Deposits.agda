{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Conway.Specification.Abstract
open import Ledger.Conway.Specification.Transaction using (TransactionStructure)

open import Data.Unit using (⊤)
open import Data.Product using (_×_; _,_)
open import Data.Product.Relation.Binary.Pointwise.NonDependent using (Pointwise)
open import Relation.Binary.PropositionalEquality
import Relation.Binary.Reasoning.Setoid as SetoidReasoning
open import Relation.Binary using (Setoid; IsEquivalence)
import Algebra.Structures as AlgStruct

module Ledger.Conway.Conformance.Equivalence.Deposits
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where
 
private
  module L where
    open import Ledger.Conway.Specification.Ledger txs abs public
    open import Ledger.Conway.Specification.Utxo txs abs public
    open import Ledger.Conway.Specification.Certs govStructure public
  
  module C where
    open import Ledger.Conway.Conformance.Ledger txs abs public
    open import Ledger.Conway.Conformance.Utxo txs abs public
    open import Ledger.Conway.Conformance.Certs govStructure public

open Tx
open import Ledger.Conway.Conformance.Equivalence.Map
open import Ledger.Conway.Conformance.Equivalence.Certs txs abs
open import Axiom.Set.Properties th using (≡ᵉ-Setoid; ≡ᵉ-isEquivalence)

-- TODO: some hoop-jumping required since the Map proofs needs the
-- stdlib IsCommutativeSemigroup for Coin.
open AlgStruct {A = Coin} _≡_ using (IsCommutativeSemigroup)
open import Data.Nat.Properties using (+-isCommutativeSemigroup)
instance
  Coin-Semigroup : IsCommutativeSemigroup _+_
  Coin-Semigroup = +-isCommutativeSemigroup

-- TODO: The proofs in this module are kind of a mess! They've grown organically based on
--       the specific needs of the equivalence proof and could really use some cleaning up.
--       Both when it comes to naming and when it comes to not proving the same thing several
--       times.

updateDDep : PParams → L.DCert → L.Deposits → L.Deposits
updateDDep pp cert@(L.delegate _ _ _ _) deps = C.updateCertDeposit pp cert deps
updateDDep pp cert@(L.dereg _ _)        deps = C.updateCertDeposit pp cert deps
updateDDep pp cert@(L.reg _ _)          deps = C.updateCertDeposit pp cert deps
updateDDep pp cert                      deps = deps

updateDDeps : PParams → List L.DCert → L.Deposits → L.Deposits
updateDDeps pp []             deps = deps
updateDDeps pp (cert ∷ certs) deps = updateDDeps pp certs (updateDDep pp cert deps)

updateGDep : PParams → L.DCert → L.Deposits → L.Deposits
updateGDep pp cert@(L.regdrep _ _ _) deps = C.updateCertDeposit pp cert deps
updateGDep pp cert@(L.deregdrep _ _) deps = C.updateCertDeposit pp cert deps
updateGDep pp cert                   deps = deps

updateGDeps : PParams → List L.DCert → L.Deposits → L.Deposits
updateGDeps pp []             deps = deps
updateGDeps pp (cert ∷ certs) deps = updateGDeps pp certs (updateGDep pp cert deps)

updateLedgerDeps : PParams → Tx → L.Deposits × L.Deposits → L.Deposits × L.Deposits
updateLedgerDeps pp tx deps@(ddeps , gdeps) = updateDDeps pp certs ddeps , updateGDeps pp certs gdeps
  where
    certs = DCertsOf tx

data DPurpose : L.DepositPurpose → Set where
  CredentialDeposit : ∀ {c} → DPurpose (L.CredentialDeposit c)

data GPurpose : L.DepositPurpose → Set where
  DRepDeposit : ∀ {c} → GPurpose (L.DRepDeposit c)

instance
  Dec-DPurpose? : ∀ {p} → DPurpose p ⁇
  Dec-DPurpose? {L.CredentialDeposit _} = ⁇ yes CredentialDeposit
  Dec-DPurpose? {L.PoolDeposit       _} = ⁇ no λ ()
  Dec-DPurpose? {L.DRepDeposit       _} = ⁇ no λ ()
  Dec-DPurpose? {L.GovActionDeposit  _} = ⁇ no λ ()

  Dec-GPurpose? : ∀ {p} → GPurpose p ⁇
  Dec-GPurpose? {L.CredentialDeposit _} = ⁇ no λ ()
  Dec-GPurpose? {L.PoolDeposit       _} = ⁇ no λ ()
  Dec-GPurpose? {L.DRepDeposit       _} = ⁇ yes DRepDeposit
  Dec-GPurpose? {L.GovActionDeposit  _} = ⁇ no λ ()

-- Compute DDeps for the CertState from full Deposits
certDDeps : L.Deposits → L.Deposits
certDDeps deps = filterᵐ (λ (k , _) → DPurpose k) deps

-- Compute GDeps for the CertState from full Deposits
certGDeps : L.Deposits → L.Deposits
certGDeps deps = filterᵐ (λ (k , _) → GPurpose k) deps

cong-updateCertDeposit : ∀ pp cert {deps₁ deps₂}
                       → deps₁ ≡ᵐ deps₂
                       → C.updateCertDeposit pp cert deps₁ ≡ᵐ C.updateCertDeposit pp cert deps₂
cong-updateCertDeposit pp (L.delegate c kh del v)            eq = ∪⁺-cong-r eq
cong-updateCertDeposit pp (L.dereg x x₁) {deps₁} {deps₂}     eq = restrict-cong deps₁ deps₂ eq
cong-updateCertDeposit pp (L.regpool x x₁)                   eq = ∪⁺-cong-r eq
cong-updateCertDeposit pp (L.retirepool x x₁)                eq = eq
cong-updateCertDeposit pp (L.regdrep x x₁ x₂)                eq = ∪⁺-cong-r eq
cong-updateCertDeposit pp (L.deregdrep x x₁) {deps₁} {deps₂} eq = restrict-cong deps₁ deps₂ eq
cong-updateCertDeposit pp (L.ccreghot x x₁)                  eq = eq
cong-updateCertDeposit pp (L.reg x x₁)                       eq = ∪⁺-cong-r eq

cong-certDDeps : ∀ deps₁ deps₂ → deps₁ ≡ᵐ deps₂ → certDDeps deps₁ ≡ᵐ certDDeps deps₂
cong-certDDeps = cong-filterᵐ

cong-certGDeps : ∀ deps₁ deps₂ → deps₁ ≡ᵐ deps₂ → certGDeps deps₁ ≡ᵐ certGDeps deps₂
cong-certGDeps = cong-filterᵐ

castValidDepsᵈ : ∀ {pp deps₁ deps₂ certs} → deps₁ ≡ᵐ deps₂ → ValidDepsᵈ pp deps₁ certs → ValidDepsᵈ pp deps₂ certs
castValidDepsᵈ                         eq [] = []
castValidDepsᵈ {pp} {certs = cert ∷ _} eq (delegate   deps) = delegate           (castValidDepsᵈ (cong-updateCertDeposit pp cert eq) deps)
castValidDepsᵈ {pp} {deps₁} {deps₂} {certs = cert ∷ _} eq (dereg h h' deps) = 
  dereg (proj₁ eq h) h' 
        (castValidDepsᵈ (cong-updateCertDeposit pp cert {deps₁} {deps₂} eq) deps)
--castValidDepsᵈ {pp} {deps₁} {deps₂}
--                    {certs = cert ∷ _} eq (dereg h    deps) = dereg (map₂ (proj₁ eq) h) (castValidDepsᵈ (cong-updateCertDeposit
--                                                                                                    pp cert {deps₁} {deps₂} eq) deps)
castValidDepsᵈ {pp} {certs = cert ∷ _} eq (reg        deps) = reg (castValidDepsᵈ (cong-updateCertDeposit pp cert eq) deps)
castValidDepsᵈ                         eq (regdrep    deps) = regdrep            (castValidDepsᵈ eq deps)
castValidDepsᵈ                         eq (deregdrep  deps) = deregdrep          (castValidDepsᵈ eq deps)
castValidDepsᵈ                         eq (regpool    deps) = regpool            (castValidDepsᵈ eq deps)
castValidDepsᵈ                         eq (retirepool deps) = retirepool         (castValidDepsᵈ eq deps)
castValidDepsᵈ                         eq (ccreghot   deps) = ccreghot           (castValidDepsᵈ eq deps)

castValidDepsᵍ : ∀ {pp deps₁ deps₂ certs} → deps₁ ≡ᵐ deps₂ → ValidDepsᵍ pp deps₁ certs → ValidDepsᵍ pp deps₂ certs
castValidDepsᵍ   eq [] = []
castValidDepsᵍ   eq (delegate    deps) = delegate   (castValidDepsᵍ eq deps)
castValidDepsᵍ   eq (dereg       deps) = dereg      (castValidDepsᵍ eq deps)
castValidDepsᵍ {pp} {certs = cert ∷ _}
                 eq (regdrep     deps) = regdrep    (castValidDepsᵍ (cong-updateCertDeposit pp cert eq) deps)
castValidDepsᵍ {pp} {deps₁} {deps₂} {certs = cert ∷ _}
  eq (deregdrep h deps) = deregdrep (proj₁ eq h)    (castValidDepsᵍ (cong-updateCertDeposit pp cert {deps₁} {deps₂} eq) deps)
castValidDepsᵍ   eq (regpool     deps) = regpool    (castValidDepsᵍ eq deps)
castValidDepsᵍ   eq (retirepool  deps) = retirepool (castValidDepsᵍ eq deps)
castValidDepsᵍ   eq (ccreghot    deps) = ccreghot   (castValidDepsᵍ eq deps)
castValidDepsᵍ   eq (reg         deps) = reg        (castValidDepsᵍ eq deps)

validDDeps : ∀ {pp certs deps} → L.ValidCertDeposits pp deps certs → ValidDepsᵈ pp (certDDeps deps) certs
validDDeps                L.[]             = []
validDDeps               (L.delegate    v) = delegate   (castValidDepsᵈ (lem-add-included CredentialDeposit) (validDDeps v))
validDDeps               (L.regpool     v) = regpool    (castValidDepsᵈ (lem-add-excluded λ ()) (validDDeps v))
validDDeps               (L.regdrep     v) = regdrep    (castValidDepsᵈ (lem-add-excluded λ ()) (validDDeps v))
validDDeps {deps = deps} (L.dereg h h'  v) = dereg      (filterᵐ-∈ deps CredentialDeposit h) h'
                                                        (castValidDepsᵈ (filterᵐ-restrict deps) (validDDeps v))
validDDeps {deps = deps} (L.deregdrep _ v) = deregdrep  (castValidDepsᵈ (lem-del-excluded deps λ ()) (validDDeps v))
validDDeps               (L.ccreghot    v) = ccreghot   (validDDeps v)
validDDeps               (L.retirepool  v) = retirepool (validDDeps v)
validDDeps {deps = deps} (L.reg         v) = reg (castValidDepsᵈ (lem-add-included CredentialDeposit) (validDDeps v))

validGDeps : ∀ {pp certs deps} → L.ValidCertDeposits pp deps certs → ValidDepsᵍ pp (certGDeps deps) certs
validGDeps                L.[]             = []
validGDeps               (L.delegate    v) = delegate   (castValidDepsᵍ (lem-add-excluded λ ()) (validGDeps v))
validGDeps               (L.regpool     v) = regpool    (castValidDepsᵍ (lem-add-excluded λ ()) (validGDeps v))
validGDeps               (L.regdrep     v) = regdrep    (castValidDepsᵍ (lem-add-included DRepDeposit) (validGDeps v))
validGDeps {deps = deps} (L.dereg _ _   v) = dereg      (castValidDepsᵍ (lem-del-excluded deps λ ()) (validGDeps v))
validGDeps {deps = deps} (L.deregdrep h v) = deregdrep  (filterᵐ-∈ deps DRepDeposit h)
                                                        (castValidDepsᵍ (filterᵐ-restrict deps) (validGDeps v))
validGDeps               (L.ccreghot    v) = ccreghot   (validGDeps v)
validGDeps               (L.retirepool  v) = retirepool (validGDeps v)
validGDeps               (L.reg         v) = reg (castValidDepsᵍ (lem-add-excluded λ ()) (validGDeps v))

lem-upd-prop-ddeps : ∀ {txid} {gaDep} props deps
                   → certDDeps deps ≡ᵐ certDDeps (L.updateProposalDeposits props txid gaDep deps)
lem-upd-prop-ddeps [] deps = id , id
lem-upd-prop-ddeps {txid} {gaDep} (_ ∷ props) deps = begin
    certDDeps deps ˢ
      ≈⟨ lem-upd-prop-ddeps props deps ⟩
    certDDeps (L.updateProposalDeposits props txid gaDep deps) ˢ
      ≈⟨ lem-add-excluded (λ ()) ⟨
    certDDeps (L.updateProposalDeposits props txid gaDep deps ∪⁺ ❴ L.GovActionDeposit _ , _ ❵) ˢ
      ∎
  where
    open module R {A} = SetoidReasoning (≡ᵉ-Setoid {A = A})

lem-upd-prop-gdeps : ∀ {txid} {gaDep} props deps
                   → certGDeps deps ≡ᵐ certGDeps (L.updateProposalDeposits props txid gaDep deps)
lem-upd-prop-gdeps [] deps = id , id
lem-upd-prop-gdeps {txid} {gaDep} (_ ∷ props) deps = begin
    certGDeps deps ˢ
      ≈⟨ lem-upd-prop-gdeps props deps ⟩
    certGDeps (L.updateProposalDeposits props txid gaDep deps) ˢ
      ≈⟨ lem-add-excluded (λ ()) ⟨
    certGDeps (L.updateProposalDeposits props txid gaDep deps ∪⁺ ❴ L.GovActionDeposit _ , _ ❵) ˢ
      ∎
  where
    open module R {A} = SetoidReasoning (≡ᵉ-Setoid {A = A})

lem-ddeps : ∀ {pp certs} (deposits : CertDeps* pp certs)
          → updateCertDeps* certs deposits .CertDeps*.depsᵈ ≡ updateDDeps pp certs (deposits .CertDeps*.depsᵈ)
lem-ddeps {certs = []} _ = refl
lem-ddeps (delegate*    ddeps gdeps) rewrite lem-ddeps ⟦ _ , _ , ddeps , gdeps ⟧* = refl
lem-ddeps (dereg* v v'  ddeps gdeps) rewrite lem-ddeps ⟦ _ , _ , ddeps , gdeps ⟧* = refl
lem-ddeps (regpool*     ddeps gdeps) rewrite lem-ddeps ⟦ _ , _ , ddeps , gdeps ⟧* = refl
lem-ddeps (retirepool*  ddeps gdeps) rewrite lem-ddeps ⟦ _ , _ , ddeps , gdeps ⟧* = refl
lem-ddeps (regdrep*     ddeps gdeps) rewrite lem-ddeps ⟦ _ , _ , ddeps , gdeps ⟧* = refl
lem-ddeps (deregdrep* v ddeps gdeps) rewrite lem-ddeps ⟦ _ , _ , ddeps , gdeps ⟧* = refl
lem-ddeps (ccreghot*    ddeps gdeps) rewrite lem-ddeps ⟦ _ , _ , ddeps , gdeps ⟧* = refl
lem-ddeps (reg*         ddeps gdeps) rewrite lem-ddeps ⟦ _ , _ , ddeps , gdeps ⟧* = refl

lem-gdeps : ∀ {pp certs} (deposits : CertDeps* pp certs)
          → updateCertDeps* certs deposits .CertDeps*.depsᵍ ≡ updateGDeps pp certs (deposits .CertDeps*.depsᵍ)
lem-gdeps {certs = []} _ = refl
lem-gdeps (delegate*    ddeps gdeps) rewrite lem-gdeps ⟦ _ , _ , ddeps , gdeps ⟧* = refl
lem-gdeps (dereg* v v'  ddeps gdeps) rewrite lem-gdeps ⟦ _ , _ , ddeps , gdeps ⟧* = refl
lem-gdeps (regpool*     ddeps gdeps) rewrite lem-gdeps ⟦ _ , _ , ddeps , gdeps ⟧* = refl
lem-gdeps (retirepool*  ddeps gdeps) rewrite lem-gdeps ⟦ _ , _ , ddeps , gdeps ⟧* = refl
lem-gdeps (regdrep*     ddeps gdeps) rewrite lem-gdeps ⟦ _ , _ , ddeps , gdeps ⟧* = refl
lem-gdeps (deregdrep* v ddeps gdeps) rewrite lem-gdeps ⟦ _ , _ , ddeps , gdeps ⟧* = refl
lem-gdeps (ccreghot*    ddeps gdeps) rewrite lem-gdeps ⟦ _ , _ , ddeps , gdeps ⟧* = refl
lem-gdeps (reg*         ddeps gdeps) rewrite lem-gdeps ⟦ _ , _ , ddeps , gdeps ⟧* = refl

certDeposits : L.LState → L.Deposits × L.Deposits
certDeposits s = certDDeps deps , certGDeps deps
  where deps = s .L.LState.utxoSt .L.UTxOState.deposits

_≡ᵈ_ : (x y : L.Deposits × L.Deposits) → Type
_≡ᵈ_ = Pointwise _≡ᵐ_ _≡ᵐ_
{-# INJECTIVE_FOR_INFERENCE _≡ᵈ_ #-}

≡ᵈ-isEquivalence : IsEquivalence _≡ᵈ_
≡ᵈ-isEquivalence .IsEquivalence.refl = (id , id) , (id , id)
≡ᵈ-isEquivalence .IsEquivalence.sym (deq , geq) = ≡ᵉ-isEquivalence .IsEquivalence.sym deq , ≡ᵉ-isEquivalence .IsEquivalence.sym geq
≡ᵈ-isEquivalence .IsEquivalence.trans (deq₁ , geq₁) (deq₂ , geq₂) =
  ≡ᵉ-isEquivalence .IsEquivalence.trans deq₁ deq₂ ,
  ≡ᵉ-isEquivalence .IsEquivalence.trans geq₁ geq₂

cong-updateDDep : ∀ {pp} cert {deps₁ deps₂}
                → deps₁ ≡ᵐ deps₂
                → updateDDep pp cert deps₁ ≡ᵐ updateDDep pp cert deps₂
cong-updateDDep {pp} cert@(L.delegate c del kh v)
                                        eq = cong-updateCertDeposit pp cert eq
cong-updateDDep {pp} cert@(L.dereg c v) {deps₁} {deps₂}
                                        eq = cong-updateCertDeposit pp cert {deps₁} {deps₂} eq
cong-updateDDep {pp} cert@(L.reg c v)   eq = cong-updateCertDeposit pp cert eq
cong-updateDDep      (L.regpool _ _)    eq = eq
cong-updateDDep      (L.regdrep _ _ _)  eq = eq
cong-updateDDep      (L.deregdrep _ _)  eq = eq
cong-updateDDep      (L.retirepool _ _) eq = eq
cong-updateDDep      (L.ccreghot _ _)   eq = eq

cong-updateDDeps : ∀ {pp} certs {deps₁ deps₂}
                 → deps₁ ≡ᵐ deps₂
                 → updateDDeps pp certs deps₁ ≡ᵐ updateDDeps pp certs deps₂
cong-updateDDeps []             eq = eq
cong-updateDDeps (cert ∷ certs) eq = cong-updateDDeps certs (cong-updateDDep cert eq)

cong-updateGDep : ∀ {pp} cert {deps₁ deps₂}
                → deps₁ ≡ᵐ deps₂
                → updateGDep pp cert deps₁ ≡ᵐ updateGDep pp cert deps₂
cong-updateGDep      (L.delegate _ _ _ _)   eq = eq
cong-updateGDep      (L.dereg _ _)          eq = eq
cong-updateGDep      (L.reg _ _)            eq = eq
cong-updateGDep      (L.regpool _ _)        eq = eq
cong-updateGDep {pp} cert@(L.regdrep _ _ _) eq = cong-updateCertDeposit pp cert eq
cong-updateGDep {pp} cert@(L.deregdrep _ _) {deps₁} {deps₂}
                                            eq = cong-updateCertDeposit pp cert {deps₁} {deps₂} eq
cong-updateGDep      (L.retirepool _ _)     eq = eq
cong-updateGDep      (L.ccreghot _ _  )     eq = eq

cong-updateGDeps : ∀ {pp} certs {deps₁ deps₂}
                 → deps₁ ≡ᵐ deps₂
                 → updateGDeps pp certs deps₁ ≡ᵐ updateGDeps pp certs deps₂
cong-updateGDeps []             eq = eq
cong-updateGDeps (cert ∷ certs) eq = cong-updateGDeps certs (cong-updateGDep cert eq)

private open module S {A} = Setoid (≡ᵉ-Setoid {A = A}) using () renaming (sym to ≈-sym; trans to _⟨≈⟩_)

-- This proof takes quite a long time to check. Way longer if we tried to use nice equational reasoning.
-- I suspect making filterᵐ and _∪⁺_ opaque would speed things up a million times.
lem-upd-cert-ddeps : ∀ {pp} deps certs
                  → updateDDeps pp certs (certDDeps deps) ≡ᵐ certDDeps (L.updateCertDeposits pp certs deps)
lem-upd-cert-ddeps deps [] = id , id
lem-upd-cert-ddeps {pp} deps (L.delegate c del kh v ∷ certs) =
  ≈-sym (cong-updateDDeps certs (lem-add-included CredentialDeposit)) ⟨≈⟩
  lem-upd-cert-ddeps (deps ∪⁺ dep) certs
  where dep = ❴ L.CredentialDeposit c , v ❵
lem-upd-cert-ddeps {pp} deps (L.dereg c v ∷ certs) =
  ≈-sym (cong-updateDDeps certs (filterᵐ-restrict deps)) ⟨≈⟩
  lem-upd-cert-ddeps (deps ∣ cs ᶜ) certs
  where cs = ❴ L.CredentialDeposit c ❵
lem-upd-cert-ddeps {pp} deps (L.reg c v ∷ certs) =
  ≈-sym (cong-updateDDeps certs (lem-add-included CredentialDeposit)) ⟨≈⟩
  lem-upd-cert-ddeps (deps ∪⁺ dep) certs
  where dep = ❴ L.CredentialDeposit c , pp .PParams.keyDeposit ❵
lem-upd-cert-ddeps {pp} deps (L.regpool kh p ∷ certs) =
  ≈-sym (cong-updateDDeps certs (lem-add-excluded λ ())) ⟨≈⟩
  lem-upd-cert-ddeps (deps ∪⁺ dep) certs
  where dep = ❴ L.PoolDeposit kh , pp .PParams.poolDeposit ❵
lem-upd-cert-ddeps {pp} deps (L.regdrep c v a ∷ certs) =
  ≈-sym (cong-updateDDeps certs (lem-add-excluded λ ())) ⟨≈⟩
  lem-upd-cert-ddeps (deps ∪⁺ dep) certs
  where dep = ❴ L.DRepDeposit c , v ❵
lem-upd-cert-ddeps {pp} deps (L.deregdrep c v ∷ certs) =
  ≈-sym (cong-updateDDeps certs (lem-del-excluded deps λ ())) ⟨≈⟩
  lem-upd-cert-ddeps (deps ∣ cs ᶜ) certs
  where cs = ❴ L.DRepDeposit c ❵
lem-upd-cert-ddeps deps (L.retirepool _ _ ∷ certs) = lem-upd-cert-ddeps deps certs
lem-upd-cert-ddeps deps (L.ccreghot _ _ ∷ certs) = lem-upd-cert-ddeps deps certs

lem-upd-cert-gdeps : ∀ {pp} deps certs
                  → updateGDeps pp certs (certGDeps deps) ≡ᵐ certGDeps (L.updateCertDeposits pp certs deps)
lem-upd-cert-gdeps deps [] = id , id
lem-upd-cert-gdeps {pp} deps (L.delegate c del kh v ∷ certs) =
  ≈-sym (cong-updateGDeps certs (lem-add-excluded λ ())) ⟨≈⟩
  lem-upd-cert-gdeps (deps ∪⁺ dep) certs
  where dep = ❴ L.CredentialDeposit c , v ❵
lem-upd-cert-gdeps {pp} deps (L.dereg c v ∷ certs) =
  ≈-sym (cong-updateGDeps certs (lem-del-excluded deps λ ())) ⟨≈⟩
  lem-upd-cert-gdeps (deps ∣ cs ᶜ) certs
  where cs = ❴ L.CredentialDeposit c ❵
lem-upd-cert-gdeps {pp} deps (L.reg c v ∷ certs) =
  ≈-sym (cong-updateGDeps certs (lem-add-excluded λ ())) ⟨≈⟩
  lem-upd-cert-gdeps (deps ∪⁺ dep) certs
  where dep = ❴ L.CredentialDeposit c , pp .PParams.keyDeposit ❵
lem-upd-cert-gdeps {pp} deps (L.regpool kh p ∷ certs) =
  ≈-sym (cong-updateGDeps certs (lem-add-excluded λ ())) ⟨≈⟩
  lem-upd-cert-gdeps (deps ∪⁺ dep) certs
  where dep = ❴ L.PoolDeposit kh , pp .PParams.poolDeposit ❵
lem-upd-cert-gdeps {pp} deps (L.regdrep c v a ∷ certs) =
  ≈-sym (cong-updateGDeps certs (lem-add-included DRepDeposit)) ⟨≈⟩
  lem-upd-cert-gdeps (deps ∪⁺ dep) certs
  where dep = ❴ L.DRepDeposit c , v ❵
lem-upd-cert-gdeps {pp} deps (L.deregdrep c v ∷ certs) =
  ≈-sym (cong-updateGDeps certs (filterᵐ-restrict deps)) ⟨≈⟩
  lem-upd-cert-gdeps (deps ∣ cs ᶜ) certs
  where cs = ❴ L.DRepDeposit c ❵
lem-upd-cert-gdeps deps (L.retirepool _ _ ∷ certs) = lem-upd-cert-gdeps deps certs
lem-upd-cert-gdeps deps (L.ccreghot _ _ ∷ certs) = lem-upd-cert-gdeps deps certs

lem-upd-ddeps : ∀ pparams deps tx (open TxBody (body tx) using (txCerts))
              → updateDDeps pparams txCerts (certDDeps deps) ≡ᵐ certDDeps (L.updateDeposits pparams (body tx) deps)
lem-upd-ddeps pparams deps tx = begin
    updateDDeps pparams txCerts (certDDeps deps) ˢ
      ≈⟨ cong-updateDDeps txCerts (lem-upd-prop-ddeps txGovProposals deps) ⟩
    updateDDeps pparams txCerts (certDDeps (updateProp deps)) ˢ
      ≈⟨ lem-upd-cert-ddeps (updateProp deps) txCerts ⟩
    certDDeps (L.updateDeposits pparams (body tx) deps) ˢ
      ∎
  where
    open TxBody (body tx)
    open module R {A} = SetoidReasoning (≡ᵉ-Setoid {A = A})
    updateCert = L.updateCertDeposits pparams txCerts
    updateProp = L.updateProposalDeposits txGovProposals txId (pparams .PParams.govActionDeposit)

lem-upd-gdeps  :   ∀ pparams deps tx (open TxBody (body tx) using (txCerts))
               →   updateGDeps pparams txCerts (certGDeps deps)
               ≡ᵐ  certGDeps (L.updateDeposits pparams (body tx) deps)
lem-upd-gdeps pparams deps tx = begin
    updateGDeps pparams txCerts (certGDeps deps) ˢ
      ≈⟨ cong-updateGDeps txCerts (lem-upd-prop-gdeps txGovProposals deps) ⟩
    updateGDeps pparams txCerts (certGDeps (updateProp deps)) ˢ
      ≈⟨ lem-upd-cert-gdeps (updateProp deps) txCerts ⟩
    certGDeps (L.updateDeposits pparams (body tx) deps) ˢ
      ∎
  where
    open TxBody (body tx)
    open module R {A} = SetoidReasoning (≡ᵉ-Setoid {A = A})
    updateCert = L.updateCertDeposits pparams txCerts
    updateProp = L.updateProposalDeposits txGovProposals txId (pparams .PParams.govActionDeposit)

lemUpdCert : ∀ pp ((ddeps , gdeps) : L.Deposits × L.Deposits) deps cert
           → (ddeps , gdeps) ≡ᵈ (certDDeps deps , certGDeps deps)
           → (updateDDep pp cert ddeps , updateGDep pp cert gdeps) ≡ᵈ
             (certDDeps (C.updateCertDeposit pp cert deps) , certGDeps (C.updateCertDeposit pp cert deps))
lemUpdCert pp (ddeps , gdeps) deps (L.delegate _ _ _ _) (deq , geq) = ∪⁺-cong-r deq
                                                                      ⟨≈⟩ ≈-sym (lem-add-included CredentialDeposit)
                                                                    , geq ⟨≈⟩ ≈-sym (lem-add-excluded λ ())
lemUpdCert pp (ddeps , gdeps) deps (L.dereg _ _)        (deq , geq) = restrict-cong ddeps (certDDeps deps) deq
                                                                      ⟨≈⟩ ≈-sym (filterᵐ-restrict deps)
                                                                    , geq ⟨≈⟩ ≈-sym (lem-del-excluded deps λ ())
lemUpdCert pp (ddeps , gdeps) deps (L.reg _ _)          (deq , geq) = (∪⁺-cong-r deq
                                                                      ⟨≈⟩ ≈-sym (lem-add-included CredentialDeposit))
                                                                    , geq ⟨≈⟩ ≈-sym (lem-add-excluded λ ())
lemUpdCert pp (ddeps , gdeps) deps (L.regpool x x₁)     (deq , geq) = deq ⟨≈⟩ ≈-sym (lem-add-excluded λ ())
                                                                    , geq ⟨≈⟩ ≈-sym (lem-add-excluded λ ())
lemUpdCert pp (ddeps , gdeps) deps (L.regdrep _ _ _)    (deq , geq) = deq ⟨≈⟩ ≈-sym (lem-add-excluded λ ())
                                                                    , ∪⁺-cong-r geq
                                                                      ⟨≈⟩ ≈-sym (lem-add-included DRepDeposit)
lemUpdCert pp (ddeps , gdeps) deps (L.deregdrep _ _)    (deq , geq) = deq ⟨≈⟩ ≈-sym (lem-del-excluded deps λ ())
                                                                    , (restrict-cong gdeps (certGDeps deps) geq
                                                                      ⟨≈⟩ ≈-sym (filterᵐ-restrict deps))
lemUpdCert pp (ddeps , gdeps) deps (L.retirepool _ _)   (deq , geq) = deq , geq
lemUpdCert pp (ddeps , gdeps) deps (L.ccreghot _ _)     (deq , geq) = deq , geq
