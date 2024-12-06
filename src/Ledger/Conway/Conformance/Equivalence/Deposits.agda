
open import Ledger.Prelude
open import Ledger.Abstract
open import Ledger.Transaction using (TransactionStructure)

open import Data.Unit using (⊤)
open import Data.Product using (_×_; _,_)
open import Relation.Binary.PropositionalEquality

module Ledger.Conway.Conformance.Equivalence.Deposits
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Conway.Conformance.Equivalence.Map

open import Ledger.Conway.Conformance.Equivalence.Base txs abs
open import Ledger.Conway.Conformance.Equivalence.Certs txs abs

updateDDeps : PParams → List L.DCert → L.Deposits → L.Deposits
updateDDeps _ []                                   deps = deps
updateDDeps pp (cert@(L.delegate _ _ _ _) ∷ certs) deps = updateDDeps pp certs (C.updateCertDeposit pp cert deps)
updateDDeps pp (cert@(L.dereg _ _)        ∷ certs) deps = updateDDeps pp certs (C.updateCertDeposit pp cert deps)
updateDDeps pp (_                         ∷ certs) deps = updateDDeps pp certs deps

updateGDeps : PParams → List L.DCert → L.Deposits → L.Deposits
updateGDeps _ []                                deps = deps
updateGDeps pp (cert@(L.regdrep _ _ _) ∷ certs) deps = updateGDeps pp certs (C.updateCertDeposit pp cert deps)
updateGDeps pp (cert@(L.deregdrep _ _) ∷ certs) deps = updateGDeps pp certs (C.updateCertDeposit pp cert deps)
updateGDeps pp (_                      ∷ certs) deps = updateGDeps pp certs deps

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

cong-updateCertDeposit : ∀ pp cert {deps₁ deps₂} → deps₁ ≡ᵐ deps₂ → C.updateCertDeposit pp cert deps₁ ≡ᵐ C.updateCertDeposit pp cert deps₂
cong-updateCertDeposit pp (L.delegate c kh del v)            eq = ∪⁺-cong-r _ _ _ eq
cong-updateCertDeposit pp (L.dereg x x₁) {deps₁} {deps₂}     eq = restrict-cong deps₁ deps₂ _ eq
cong-updateCertDeposit pp (L.regpool x x₁)                   eq = ∪⁺-cong-r _ _ _ eq
cong-updateCertDeposit pp (L.retirepool x x₁)                eq = eq
cong-updateCertDeposit pp (L.regdrep x x₁ x₂)                eq = ∪⁺-cong-r _ _ _ eq
cong-updateCertDeposit pp (L.deregdrep x x₁) {deps₁} {deps₂} eq = restrict-cong deps₁ deps₂ _ eq
cong-updateCertDeposit pp (L.ccreghot x x₁)                  eq = eq
cong-updateCertDeposit pp (L.reg x x₁)                       eq = ∪⁺-cong-r _ _ _ eq

castValidDepsᵈ : ∀ {pp deps₁ deps₂ certs} → deps₁ ≡ᵐ deps₂ → ValidDepsᵈ pp deps₁ certs → ValidDepsᵈ pp deps₂ certs
castValidDepsᵈ                         eq [] = []
castValidDepsᵈ {pp} {certs = cert ∷ _} eq (delegate   deps) = delegate           (castValidDepsᵈ (cong-updateCertDeposit pp cert eq) deps)
castValidDepsᵈ {pp} {deps₁} {deps₂}
                    {certs = cert ∷ _} eq (dereg h    deps) = dereg (proj₁ eq h) (castValidDepsᵈ (cong-updateCertDeposit
                                                                                                    pp cert {deps₁} {deps₂} eq) deps)
castValidDepsᵈ                         eq (regdrep    deps) = regdrep            (castValidDepsᵈ eq deps)
castValidDepsᵈ                         eq (deregdrep  deps) = deregdrep          (castValidDepsᵈ eq deps)
castValidDepsᵈ                         eq (regpool    deps) = regpool            (castValidDepsᵈ eq deps)
castValidDepsᵈ                         eq (retirepool deps) = retirepool         (castValidDepsᵈ eq deps)
castValidDepsᵈ                         eq (ccreghot   deps) = ccreghot           (castValidDepsᵈ eq deps)

castValidDepsᵍ : ∀ {pp deps₁ deps₂ certs} → deps₁ ≡ᵐ deps₂ → ValidDepsᵍ pp deps₁ certs → ValidDepsᵍ pp deps₂ certs
castValidDepsᵍ                         eq [] = []
castValidDepsᵍ                         eq (delegate    deps) = delegate               (castValidDepsᵍ eq deps)
castValidDepsᵍ                         eq (dereg       deps) = dereg                  (castValidDepsᵍ eq deps)
castValidDepsᵍ {pp} {certs = cert ∷ _} eq (regdrep     deps) = regdrep                (castValidDepsᵍ (cong-updateCertDeposit pp cert eq) deps)
castValidDepsᵍ {pp} {deps₁} {deps₂}
               {certs = cert ∷ _} eq (deregdrep h deps) = deregdrep (proj₁ eq h) (castValidDepsᵍ (cong-updateCertDeposit
                                                                                                    pp cert {deps₁} {deps₂} eq) deps)
castValidDepsᵍ                         eq (regpool     deps) = regpool                (castValidDepsᵍ eq deps)
castValidDepsᵍ                         eq (retirepool  deps) = retirepool             (castValidDepsᵍ eq deps)
castValidDepsᵍ                         eq (ccreghot    deps) = ccreghot               (castValidDepsᵍ eq deps)

validDDeps : ∀ {pp certs deps} → L.ValidCertDeposits pp deps certs → ValidDepsᵈ pp (certDDeps deps) certs
validDDeps                L.[]             = []
validDDeps               (L.delegate    v) = delegate   (castValidDepsᵈ (lem-add-included CredentialDeposit) (validDDeps v))
validDDeps               (L.regpool     v) = regpool    (castValidDepsᵈ (lem-add-excluded λ ()) (validDDeps v))
validDDeps               (L.regdrep     v) = regdrep    (castValidDepsᵈ (lem-add-excluded λ ()) (validDDeps v))
validDDeps {deps = deps} (L.dereg h     v) = dereg      (filterᵐ-∈ deps CredentialDeposit h)
                                                        (castValidDepsᵈ (filterᵐ-restrict deps) (validDDeps v))
validDDeps {deps = deps} (L.deregdrep _ v) = deregdrep  (castValidDepsᵈ (lem-del-excluded deps λ ()) (validDDeps v))
validDDeps               (L.ccreghot    v) = ccreghot   (validDDeps v)
validDDeps               (L.retirepool  v) = retirepool (validDDeps v)
validDDeps               (L.reg         v) = {!!} -- reg        (castValidDepsᵈ (lem-add-excluded λ ()) (validDDeps v))

validGDeps : ∀ {pp certs deps} → L.ValidCertDeposits pp deps certs → ValidDepsᵍ pp (certGDeps deps) certs
validGDeps                L.[]             = []
validGDeps               (L.delegate    v) = delegate   (castValidDepsᵍ (lem-add-excluded λ ()) (validGDeps v))
validGDeps               (L.regpool     v) = regpool    (castValidDepsᵍ (lem-add-excluded λ ()) (validGDeps v))
validGDeps               (L.regdrep     v) = regdrep    (castValidDepsᵍ (lem-add-included DRepDeposit) (validGDeps v))
validGDeps {deps = deps} (L.dereg _     v) = dereg      (castValidDepsᵍ (lem-del-excluded deps λ ()) (validGDeps v))
validGDeps {deps = deps} (L.deregdrep h v) = deregdrep  (filterᵐ-∈ deps DRepDeposit h)
                                                        (castValidDepsᵍ (filterᵐ-restrict deps) (validGDeps v))
validGDeps               (L.ccreghot    v) = ccreghot   (validGDeps v)
validGDeps               (L.retirepool  v) = retirepool (validGDeps v)
validGDeps (L.reg x) = {!!}
