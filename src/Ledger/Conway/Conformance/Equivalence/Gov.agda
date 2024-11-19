open import Ledger.Prelude
open import Ledger.Abstract
open import Ledger.Transaction using (TransactionStructure)

open import Ledger.Conway.Conformance.Equivalence.Convert

module Ledger.Conway.Conformance.Equivalence.Gov
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Conway.Conformance.Equivalence.Base txs abs
open import Ledger.Conway.Conformance.Equivalence.Certs txs abs

instance
  GovEnvToConf : L.Deposits × L.Deposits ⊢ L.GovEnv ⭆ C.GovEnv
  GovEnvToConf .convⁱ deposits L.⟦ txid , epoch , pp , policy , enactState , certState ⟧ᵍ =
    C.⟦ txid , epoch , pp , policy , enactState , deposits ⊢conv certState ⟧ᵍ

  opaque
    unfolding L.isRegistered C.isRegistered

    isRegisteredToConf : ∀ {Γ voter} → L.Deposits × L.Deposits ⊢ L.isRegistered Γ voter ⭆ⁱ λ deposits _ →
                                                                 C.isRegistered (deposits ⊢conv Γ) voter
    isRegisteredToConf {voter = CC   , c} .convⁱ _ h = h
    isRegisteredToConf {voter = DRep , c} .convⁱ _ h = h
    isRegisteredToConf {voter = SPO  , c} .convⁱ _ h = h

  GOV'ToConf : ∀ {Γ s votes s' n}
            → L.Deposits × L.Deposits
              ⊢ (Γ , n) L.⊢ s ⇀⦇ votes ,GOV'⦈ s' ⭆ⁱ λ deposits _ →
                (deposits ⊢conv Γ , n) C.⊢ s ⇀⦇ votes ,GOV'⦈ s'
  GOV'ToConf .convⁱ deposits (L.GOV-Vote (a , b , c)) = C.GOV-Vote (a , b , deposits ⊢conv c)
  GOV'ToConf .convⁱ deposits (L.GOV-Propose h) = C.GOV-Propose h

  GOVToConf : ∀ {Γ s votes s' n}
            → L.Deposits × L.Deposits
              ⊢ _⊢_⇀⟦_⟧ᵢ*'_ IdSTS L._⊢_⇀⦇_,GOV'⦈_ (Γ , n) s votes s' ⭆ⁱ λ deposits _ →
                _⊢_⇀⟦_⟧ᵢ*'_ IdSTS C._⊢_⇀⦇_,GOV'⦈_ (deposits ⊢conv Γ , n) s votes s'
  GOVToConf .convⁱ deposits (BS-base Id-nop) = BS-base Id-nop
  GOVToConf .convⁱ deposits (BS-ind r rs)     = BS-ind (deposits ⊢conv r) (deposits ⊢conv rs)
