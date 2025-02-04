{-# OPTIONS --safe #-}

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
  GovEnvToConf .convⁱ deposits L.⟦ txid , epoch , pp , policy , enactState , certState , stakeDelegs ⟧ᵍ =
    C.⟦ txid , epoch , pp , policy , enactState , deposits ⊢conv certState , stakeDelegs ⟧ᵍ

  GovEnvFromConf : C.GovEnv ⭆ L.GovEnv
  GovEnvFromConf .convⁱ _ C.⟦ txid , epoch , pp , policy , enactState , certState , stakeDelegs ⟧ᵍ =
    L.⟦ txid , epoch , pp , policy , enactState , conv certState , stakeDelegs ⟧ᵍ

  opaque
    unfolding L.isRegistered C.isRegistered

    isRegisteredToConf : ∀ {Γ voter} → L.Deposits × L.Deposits ⊢ L.isRegistered Γ voter ⭆ⁱ λ deposits _ →
                                                                 C.isRegistered (deposits ⊢conv Γ) voter
    isRegisteredToConf {voter = CC   , c} .convⁱ _ h = h
    isRegisteredToConf {voter = DRep , c} .convⁱ _ h = h
    isRegisteredToConf {voter = SPO  , c} .convⁱ _ h = h

    isRegisteredFromConf : ∀ {Γ voter} → C.isRegistered Γ voter ⭆ L.isRegistered (conv Γ) voter
    isRegisteredFromConf {voter = CC   , c} .convⁱ _ h = h
    isRegisteredFromConf {voter = DRep , c} .convⁱ _ h = h
    isRegisteredFromConf {voter = SPO  , c} .convⁱ _ h = h

  GOV'ToConf : ∀ {Γ s votes s' n}
            → L.Deposits × L.Deposits
              ⊢ (Γ , n) L.⊢ s ⇀⦇ votes ,GOV'⦈ s' ⭆ⁱ λ deposits _ →
                (deposits ⊢conv Γ , n) C.⊢ s ⇀⦇ votes ,GOV'⦈ s'
  GOV'ToConf .convⁱ deposits (L.GOV-Vote (a , b , c)) = C.GOV-Vote (a , b , deposits ⊢conv c)
  GOV'ToConf .convⁱ deposits (L.GOV-Propose h) = C.GOV-Propose h

  GOVToConf : ∀ {Γ s votes s' n}
            → L.Deposits × L.Deposits
              ⊢ _⊢_⇀⟦_⟧ᵢ*'_ {_⊢_⇀⟦_⟧ᵇ_ = IdSTS} {_⊢_⇀⟦_⟧_ = L._⊢_⇀⦇_,GOV'⦈_} (Γ , n) s votes s' ⭆ⁱ λ deposits _ →
                _⊢_⇀⟦_⟧ᵢ*'_ {_⊢_⇀⟦_⟧ᵇ_ = IdSTS} {_⊢_⇀⟦_⟧_ = C._⊢_⇀⦇_,GOV'⦈_} (deposits ⊢conv Γ , n) s votes s'
  GOVToConf .convⁱ deposits (BS-base Id-nop) = BS-base Id-nop
  GOVToConf .convⁱ deposits (BS-ind r rs)     = BS-ind (deposits ⊢conv r) (deposits ⊢conv rs)

  GOV'FromConf : ∀ {Γ s votes s' n}
            → (Γ , n) C.⊢ s ⇀⦇ votes ,GOV'⦈ s' ⭆ (conv Γ , n) L.⊢ s ⇀⦇ votes ,GOV'⦈ s'
  GOV'FromConf .convⁱ _ (C.GOV-Vote (a , b , c)) = L.GOV-Vote (a , b , conv c)
  GOV'FromConf .convⁱ _ (C.GOV-Propose h)        = L.GOV-Propose h

  GOVFromConf : ∀ {Γ s votes s' n}
            → _⊢_⇀⟦_⟧ᵢ*'_ {_⊢_⇀⟦_⟧ᵇ_ = IdSTS} {_⊢_⇀⟦_⟧_ = C._⊢_⇀⦇_,GOV'⦈_} (Γ , n) s votes s' ⭆
              _⊢_⇀⟦_⟧ᵢ*'_ {_⊢_⇀⟦_⟧ᵇ_ = IdSTS} {_⊢_⇀⟦_⟧_ = L._⊢_⇀⦇_,GOV'⦈_} (conv Γ , n) s votes s'
  GOVFromConf .convⁱ _ (BS-base Id-nop) = BS-base Id-nop
  GOVFromConf .convⁱ _ (BS-ind r rs)    = BS-ind (conv r) (conv rs)
