
-- Proof that the rules under Ledger.Conway.Conformance are equivalent
-- to the rules under Ledger.

open import Ledger.Prelude
open import Ledger.Abstract
open import Ledger.Transaction using (TransactionStructure)

open import Data.Unit using (⊤)
open import Data.Product using (_×_; _,_)
open import Function.Bundles using (_⇔_; mk⇔; Equivalence)
open import Relation.Binary.PropositionalEquality
open ≡-Reasoning

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
  open import Ledger.Conway.Conformance.Utxo txs abs public hiding (module L)
  open import Ledger.Conway.Conformance.Utxow txs abs public
  open import Ledger.Conway.Conformance.Certs govStructure public

open Tx

-- Translation functions

private variable
  L C I : Set

infixr 1 _⊢_⭆ⁱ_ _⊢_⭆_ _⭆_
record _⊢_⭆ⁱ_ (I L : Set) (C : I → L → Set) : Set where
  field
    _⊢conv_ : (i : I) (l : L) → C i l

open _⊢_⭆ⁱ_ ⦃ ... ⦄

_⊢_⭆_ : (I L C : Set) → Set
I ⊢ L ⭆ C = I ⊢ L ⭆ⁱ λ _ _ → C

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

setDeposits : L.Deposits → L.UTxOState → L.UTxOState
setDeposits deposits L.⟦ utxo , fees , _ , donations ⟧ᵘ = L.⟦ utxo , fees , deposits , donations ⟧ᵘ

withDepositsFrom : L.UTxOState → L.UTxOState → L.UTxOState
withDepositsFrom L.⟦ _ , _ , deposits , _ ⟧ᵘ = setDeposits deposits

instance

  UTXOSToConf : ∀ {Γ s tx s'} → Γ L.⊢ s ⇀⦇ tx ,UTXOS⦈ s' ⭆ Γ C.⊢ s ⇀⦇ tx ,UTXOS⦈ (withDepositsFrom s s')
  UTXOSToConf ._⊢conv_ _ (L.Scripts-Yes (certsValid , eval , txValid)) = C.Scripts-Yes (eval , txValid)
  UTXOSToConf ._⊢conv_ _ (L.Scripts-No h)                              = C.Scripts-No h

module _ {Γ s tx s'} where
  open L.UTxOEnv Γ renaming (pparams to pp)
  open L.UTxOState s using (deposits)
  open Tx tx renaming (body to txb)

  utxoSDeposits : Γ C.⊢ s ⇀⦇ tx ,UTXOS⦈ s' → L.Deposits
  utxoSDeposits (C.Scripts-Yes _) = L.updateDeposits pp txb deposits
  utxoSDeposits (C.Scripts-No  _) = deposits

  utxoDeposits : Γ C.⊢ s ⇀⦇ tx ,UTXO⦈ s' → L.Deposits
  utxoDeposits (C.UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ h) = utxoSDeposits h

  utxowDeposits : Γ C.⊢ s ⇀⦇ tx ,UTXOW⦈ s' → L.Deposits
  utxowDeposits (C.UTXOW-inductive⋯ _ _ _ _ _ _ _ _ h) = utxoDeposits h

instance
  -- Here we pass in the ValidCertDeposits proof explicitly and
  -- override the deposits in s' with updateDeposits (in case of
  -- Scripts-Yes).
  UTXOSFromConf : ∀ {Γ s tx s'}
                    (let open L.UTxOEnv Γ using () renaming (pparams to pp)
                         open L.UTxOState s using (deposits)
                         open Tx tx renaming (body to txb)
                         open TxBody txb using (txcerts))
                → (isValid tx ≡ false ⊎ L.ValidCertDeposits pp deposits txcerts)
                  ⊢ Γ C.⊢ s ⇀⦇ tx ,UTXOS⦈ s' ⭆ⁱ λ _ h →
                    Γ L.⊢ s ⇀⦇ tx ,UTXOS⦈ (setDeposits (utxoSDeposits h) s')
  UTXOSFromConf ._⊢conv_ (inj₁ refl)       (C.Scripts-Yes (eval , ()))
  UTXOSFromConf ._⊢conv_ (inj₂ validCerts) (C.Scripts-Yes (eval , txValid)) = L.Scripts-Yes (validCerts , eval , txValid)
  UTXOSFromConf ._⊢conv_ _ (C.Scripts-No h) = L.Scripts-No h

lemConsumed : ∀ pp s txb → L.consumed pp s txb ≡ C.consumed pp s txb
lemConsumed pp s txb = {!!}

lemProduced : ∀ pp s txb → L.produced pp s txb ≡ C.produced pp s txb
lemProduced pp s txb = {!!}

instance
  -- It's a little weird that UTXO still has a bunch of preconditions
  -- for consumed and produced (using updateDeposits) when the
  -- deposits don't change! Why are they even part of the UTxOState?
  -- In conformance the update happens in GOVCERT (under CERT).
  UTXOToConf : ∀ {Γ s tx s'} → Γ L.⊢ s ⇀⦇ tx ,UTXO⦈ s' ⭆ Γ C.⊢ s ⇀⦇ tx ,UTXO⦈ (withDepositsFrom s s')
  UTXOToConf {s = s} {tx = tx} ._⊢conv_ _ (L.UTXO-inductive (a , b , c , d , e , f , g , h , i , j , k , l , m , n , o , p , utxo)) =
    let f' = begin
             C.consumed _ s (body tx) ≡⟨ lemConsumed _ s (body tx) ⟨
             L.consumed _ s (body tx) ≡⟨ f ⟩
             L.produced _ s (body tx) ≡⟨ lemProduced _ s _ ⟩
             C.produced _ s (body tx) ∎ in
    C.UTXO-inductive (a , b , c , d , e , f' , g , h , i , j , k , l , m , n , o , p , conv utxo)

  UTXOFromConf : ∀ {Γ s tx s'}
                   (let open L.UTxOEnv Γ using () renaming (pparams to pp)
                        open L.UTxOState s using (deposits)
                        open Tx tx renaming (body to txb)
                        open TxBody txb using (txcerts))
               → (isValid tx ≡ false ⊎ L.ValidCertDeposits pp deposits txcerts)
                 ⊢ Γ C.⊢ s ⇀⦇ tx ,UTXO⦈ s' ⭆ⁱ λ _ h →
                   Γ L.⊢ s ⇀⦇ tx ,UTXO⦈ (setDeposits (utxoDeposits h) s')
  UTXOFromConf {s = s} {tx = tx} ._⊢conv_ validCerts (C.UTXO-inductive (a , b , c , d , e , f , g , h , i , j , k , l , m , n , o , p , utxo)) =
    let f' = begin
             L.consumed _ s (body tx) ≡⟨ lemConsumed _ s (body tx) ⟩
             C.consumed _ s (body tx) ≡⟨ f ⟩
             C.produced _ s (body tx) ≡⟨ lemProduced _ s _ ⟨
             L.produced _ s (body tx) ∎ in
    L.UTXO-inductive (a , b , c , d , e , f' , g , h , i , j , k , l , m , n , o , p , (validCerts ⊢conv utxo))

  UTXOWToConf : ∀ {Γ s tx s'} → Γ L.⊢ s ⇀⦇ tx ,UTXOW⦈ s' ⭆ Γ C.⊢ s ⇀⦇ tx ,UTXOW⦈ (withDepositsFrom s s')
  UTXOWToConf ._⊢conv_ _ (L.UTXOW-inductive⋯ a b c d e f g h utxo) =
    C.UTXOW-inductive⋯ a b c d e f g h (conv utxo)

  -- This is annoying! We should only require ValidCertDeposits for valid transactions!
  UTXOWFromConf : ∀ {Γ s tx s'}
                    (let open L.UTxOEnv Γ using () renaming (pparams to pp)
                         open L.UTxOState s using (deposits)
                         open Tx tx renaming (body to txb)
                         open TxBody txb using (txcerts))
                → (isValid tx ≡ false ⊎ L.ValidCertDeposits pp deposits txcerts)
                  ⊢ Γ C.⊢ s ⇀⦇ tx ,UTXOW⦈ s' ⭆ⁱ λ _ h →
                    Γ L.⊢ s ⇀⦇ tx ,UTXOW⦈ (setDeposits (utxowDeposits h) s')
  UTXOWFromConf ._⊢conv_ validCerts (C.UTXOW-inductive⋯ a b c d e f g h utxo) =
    L.UTXOW-inductive⋯ a b c d e f g h (validCerts ⊢conv utxo)

  CERTSToConf : ∀ {Γ s dcerts s'}
              → L.Deposits ⊢ Γ L.⊢ s ⇀⦇ dcerts ,CERTS⦈ s' ⭆ⁱ λ deposits _ →
                Γ C.⊢ (deposits ⊢conv s) ⇀⦇ dcerts ,CERTS⦈ (deposits ⊢conv s')
  CERTSToConf ._⊢conv_ deposits r = {!!}

-- Invalid transactions don't change the deposits
lemInvalidDepositsL : ∀ {Γ utxoSt utxoSt' tx}
                    → isValid tx ≡ false
                    → Γ L.⊢ utxoSt ⇀⦇ tx ,UTXOW⦈ utxoSt'
                    → L.UTxOState.deposits utxoSt ≡ L.UTxOState.deposits utxoSt'
lemInvalidDepositsL refl (L.UTXOW-inductive⋯ _ _ _ _ _ _ _ _
                          (L.UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
                            (L.Scripts-No _))) = refl

lemInvalidDepositsC : ∀ {Γ utxoSt utxoSt' tx}
                    → isValid tx ≡ false
                    → (h : Γ C.⊢ utxoSt ⇀⦇ tx ,UTXOW⦈ utxoSt')
                    → utxowDeposits h ≡ L.UTxOState.deposits utxoSt
lemInvalidDepositsC refl (C.UTXOW-inductive⋯ _ _ _ _ _ _ _ _
                          (C.UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
                            (C.Scripts-No _))) = refl

instance
  LEDGERToConf : ∀ {Γ s tx s'} → Γ L.⊢ s ⇀⦇ tx ,LEDGER⦈ s' ⭆ Γ C.⊢ conv s ⇀⦇ tx ,LEDGER⦈ conv s'
  LEDGERToConf ._⊢conv_ _ (L.LEDGER-V⋯ valid utxow certs gov) = {!!}
  LEDGERToConf {Γ = Γ} {s} {tx} {s'} ._⊢conv_ _ (L.LEDGER-I⋯ invalid utxow) with conv utxow
  ... | utxow' rewrite lemInvalidDepositsL invalid utxow = C.LEDGER-I⋯ invalid utxow'

  LEDGERFromConf : ∀ {Γ s tx s'} → Γ C.⊢ conv s ⇀⦇ tx ,LEDGER⦈ conv s' ⭆ Γ L.⊢ s ⇀⦇ tx ,LEDGER⦈ s'
  LEDGERFromConf ._⊢conv_ _ (C.LEDGER-V⋯ valid utxow certs gov) = {!!}
  LEDGERFromConf ._⊢conv_ _ (C.LEDGER-I⋯ invalid utxow) with inj₁ invalid ⊢conv utxow
  ... | utxow' rewrite lemInvalidDepositsC invalid utxow = L.LEDGER-I⋯ invalid utxow'
