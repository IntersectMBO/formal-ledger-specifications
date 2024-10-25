
-- Proof that the rules under Ledger.Conway.Conformance are equivalent
-- to the rules under Ledger.

open import Ledger.Prelude
open import Ledger.Abstract
open import Ledger.Transaction using (TransactionStructure)

open import Data.Unit using (⊤)
open import Data.Product using (_×_; _,_)
open import Function.Bundles using (_⇔_; mk⇔; Equivalence)
open import Relation.Binary.PropositionalEquality

module Ledger.Conway.Conformance.Equivalence
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

module L where
  open import Ledger.Ledger txs abs public
  open import Ledger.Utxo txs abs public
  open import Ledger.Utxow txs abs public
  open import Ledger.Certs govStructure public

module C where
  open import Ledger.Conway.Conformance.Ledger txs abs public
  open import Ledger.Conway.Conformance.Utxo txs abs public
  open import Ledger.Conway.Conformance.Utxow txs abs public
  open import Ledger.Conway.Conformance.Certs govStructure public

open Tx

-- Translation functions

private variable
  L C I : Set

infixr 1 _⊢_⭆ⁱ_ _⭆_
record _⊢_⭆ⁱ_ (I L : Set) (C : I → Set) : Set where
  field
    _⊢conv_ : (i : I) → L → C i

open _⊢_⭆ⁱ_ ⦃ ... ⦄

_⊢_⭆_ : (I L C : Set) → Set
I ⊢ L ⭆ C = I ⊢ L ⭆ⁱ λ _ → C

_⭆_ : (L C : Set) → Set
L ⭆ C = ⊤ ⊢ L ⭆ C

conv : ⦃ L ⭆ C ⦄ → L → C
conv l = _ ⊢conv l

instance

  DStateToConf : L.Deposits ⊢ L.DState ⭆ C.DState
  DStateToConf ._⊢conv_ deposits L.⟦ voteDelegs , stakeDelegs , rewards ⟧ᵈ =
    C.⟦ voteDelegs , stakeDelegs , rewards , deposits ⟧ᵈ

  GStateToConf : L.Deposits ⊢ L.GState ⭆ C.GState
  GStateToConf ._⊢conv_ deposits L.⟦ dreps , ccHotKeys ⟧ᵛ =
    C.⟦ dreps , ccHotKeys , deposits ⟧ᵛ

  CertStToConf : L.Deposits ⊢ L.CertState ⭆ C.CertState
  CertStToConf ._⊢conv_ deposits L.⟦ dState , pState , gState ⟧ᶜˢ =
    C.⟦ deposits ⊢conv dState , pState , deposits ⊢conv gState ⟧ᶜˢ

  LStateToConf : L.LState ⭆ C.LState
  LStateToConf ._⊢conv_ _ L.⟦ utxoSt , govSt , certState ⟧ˡ =
    C.⟦ utxoSt , govSt , L.UTxOState.deposits utxoSt ⊢conv certState ⟧ˡ

  UTXOWToConf : ∀ {Γ s tx s'} → Γ L.⊢ s ⇀⦇ tx ,UTXOW⦈ s' ⭆ Γ C.⊢ s ⇀⦇ tx ,UTXOW⦈ s'
  UTXOWToConf ._⊢conv_ _ r = {!!}

  UTXOWFromConf : ∀ {Γ s tx s'} → Γ C.⊢ s ⇀⦇ tx ,UTXOW⦈ s' ⭆ Γ L.⊢ s ⇀⦇ tx ,UTXOW⦈ s'
  UTXOWFromConf ._⊢conv_ _ r = {!!}

  CERTSToConf : ∀ {Γ s dcerts s'}
              → L.Deposits ⊢ Γ L.⊢ s ⇀⦇ dcerts ,CERTS⦈ s' ⭆ⁱ λ deposits
              → Γ C.⊢ (deposits ⊢conv s) ⇀⦇ dcerts ,CERTS⦈ (deposits ⊢conv s')
  CERTSToConf ._⊢conv_ deposits r = {!!}

infixl 9 _$≡_ _*≡_
_$≡_ : ∀ {A B : Set} {x y} (f : A → B) → x ≡ y → f x ≡ f y
f $≡ refl = refl

_*≡_ : ∀ {A B : Set} {f g : A → B} {x y} → f ≡ g → x ≡ y → f x ≡ g y
refl *≡ refl = refl

-- Invalid transactions don't change the deposits
lemInvalidUtxow : ∀ {Γ utxoSt utxoSt' tx}
                → isValid tx ≡ false
                → Γ L.⊢ utxoSt ⇀⦇ tx ,UTXOW⦈ utxoSt'
                → L.UTxOState.deposits utxoSt' ≡ L.UTxOState.deposits utxoSt
lemInvalidUtxow refl (L.UTXOW-inductive⋯ _ _ _ _ _ _ _ _
                          (L.UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
                            (L.Scripts-No _))) = refl

instance
  LEDGERToConf : ∀ {Γ s tx s'} → Γ L.⊢ s ⇀⦇ tx ,LEDGER⦈ s' ⭆ Γ C.⊢ conv s ⇀⦇ tx ,LEDGER⦈ conv s'
  LEDGERToConf ._⊢conv_ _ (L.LEDGER-V⋯ valid utxow certs gov) = {!!}
  LEDGERToConf {Γ = Γ} {s} {tx} {s'} ._⊢conv_ _ (L.LEDGER-I⋯ invalid utxow)
    rewrite lemInvalidUtxow invalid utxow = C.LEDGER-I⋯ invalid (conv utxow)

  LEDGERFromConf : ∀ {Γ s tx s'} → Γ C.⊢ conv s ⇀⦇ tx ,LEDGER⦈ conv s' ⭆ Γ L.⊢ s ⇀⦇ tx ,LEDGER⦈ s'
  LEDGERFromConf ._⊢conv_ _ (C.LEDGER-V⋯ valid utxow certs gov) = {!!}
  LEDGERFromConf ._⊢conv_ _ (C.LEDGER-I⋯ invalid utxow) = L.LEDGER-I⋯ invalid (conv utxow)
