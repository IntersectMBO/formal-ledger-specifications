{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Conway.Specification.Abstract
open import Ledger.Conway.Specification.Transaction using (TransactionStructure)

open import Data.Unit using (⊤)
open import Data.Product using (_×_; _,_)
open import Function.Bundles using (_⇔_; mk⇔; Equivalence)
open import Relation.Binary.PropositionalEquality
open ≡-Reasoning

open import Ledger.Conway.Conformance.Equivalence.Convert

module Ledger.Conway.Conformance.Equivalence.Utxo
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

private
  module L where
    open import Ledger.Conway.Specification.Utxo txs abs public
    open import Ledger.Conway.Specification.Utxow txs abs public
    open import Ledger.Conway.Specification.Certs govStructure public

  module C where
    open import Ledger.Conway.Conformance.Utxo txs abs public
    open import Ledger.Conway.Conformance.Utxow txs abs public
    open import Ledger.Conway.Conformance.Certs govStructure public

open Tx

setDeposits : L.Deposits → L.UTxOState → L.UTxOState
setDeposits deposits utxoSt = record utxoSt { deposits = deposits }

withDepositsFrom : L.UTxOState → L.UTxOState → L.UTxOState
withDepositsFrom utxoSt = setDeposits (L.UTxOState.deposits utxoSt)

instance

  UTXOSToConf : ∀ {Γ s tx s'} → Γ L.⊢ s ⇀⦇ tx ,UTXOS⦈ s' ⭆ Γ C.⊢ s ⇀⦇ tx ,UTXOS⦈ (withDepositsFrom s s')
  UTXOSToConf .convⁱ _ (L.Scripts-Yes (certsValid , eval , txValid)) = C.Scripts-Yes (eval , txValid)
  UTXOSToConf .convⁱ _ (L.Scripts-No h)                              = C.Scripts-No h

module _ {Γ s tx s'} where
  open L.UTxOEnv Γ renaming (pparams to pp)
  open L.UTxOState s using (deposits)
  open Tx tx renaming (body to txb)

  utxoSDeposits : Γ C.⊢ s ⇀⦇ tx ,UTXOS⦈ s' → L.Deposits
  utxoSDeposits (C.Scripts-Yes _) = L.updateDeposits pp txb deposits
  utxoSDeposits (C.Scripts-No  _) = deposits

  utxoDeposits : Γ C.⊢ s ⇀⦇ tx ,UTXO⦈ s' → L.Deposits
  utxoDeposits (C.UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ h) = utxoSDeposits h

  utxowDeposits : Γ C.⊢ s ⇀⦇ tx ,UTXOW⦈ s' → L.Deposits
  utxowDeposits (C.UTXOW-inductive⋯ _ _ _ _ _ _ _ _ _ _ h) = utxoDeposits h

instance
  -- Here we pass in the ValidCertDeposits proof explicitly and
  -- override the deposits in s' with updateDeposits (in case of
  -- Scripts-Yes).
  UTXOSFromConf : ∀ {Γ s tx s'}
                    (let open L.UTxOEnv Γ using () renaming (pparams to pp)
                         open L.UTxOState s using (deposits)
                         open Tx tx renaming (body to txb)
                         open TxBody txb using (txCerts))
                → (isValid tx ≡ false ⊎ L.ValidCertDeposits pp deposits txCerts)
                  ⊢ Γ C.⊢ s ⇀⦇ tx ,UTXOS⦈ s' ⭆ⁱ λ _ h →
                    Γ L.⊢ s ⇀⦇ tx ,UTXOS⦈ (setDeposits (utxoSDeposits h) s')
  UTXOSFromConf .convⁱ (inj₁ refl)       (C.Scripts-Yes (eval , ()))
  UTXOSFromConf .convⁱ (inj₂ validCerts) (C.Scripts-Yes (eval , txValid)) = L.Scripts-Yes (validCerts , eval , txValid)
  UTXOSFromConf .convⁱ _ (C.Scripts-No h) = L.Scripts-No h

instance
  -- It's a little weird that UTXO still has a bunch of preconditions
  -- for consumed and produced (using updateDeposits) when the
  -- deposits don't change! Why are they even part of the UTxOState?
  -- In conformance the update happens in GOVCERT (under CERT).
  UTXOToConf : ∀ {Γ s tx s'} → Γ L.⊢ s ⇀⦇ tx ,UTXO⦈ s' ⭆ Γ C.⊢ s ⇀⦇ tx ,UTXO⦈ (withDepositsFrom s s')
  UTXOToConf {s = s} {tx = tx} .convⁱ _ (L.UTXO-inductive (a , b , c , d , e , f , g , r , h , i , j , k , l , m , n , o , p , q , utxo)) =
    C.UTXO-inductive (a , b , c , d , e , f , g , r , h , i , j , k , l , m , n , o , p , q , conv utxo)

  UTXOFromConf : ∀ {Γ s tx s'}
                   (let open L.UTxOEnv Γ using () renaming (pparams to pp)
                        open L.UTxOState s using (deposits)
                        open Tx tx renaming (body to txb)
                        open TxBody txb using (txCerts))
               → (isValid tx ≡ false ⊎ L.ValidCertDeposits pp deposits txCerts)
                 ⊢ Γ C.⊢ s ⇀⦇ tx ,UTXO⦈ s' ⭆ⁱ λ _ h →
                   Γ L.⊢ s ⇀⦇ tx ,UTXO⦈ (setDeposits (utxoDeposits h) s')
  UTXOFromConf {s = s} {tx = tx} .convⁱ validCerts (C.UTXO-inductive (a , b , c , d , e , f , g , r , h , i , j , k , l , m , n , o , p , q , utxo)) =
    L.UTXO-inductive (a , b , c , d , e , f , g , r , h , i , j , k , l , m , n , o , p , q , (validCerts ⊢conv utxo))

  UTXOWToConf : ∀ {Γ s tx s'} → Γ L.⊢ s ⇀⦇ tx ,UTXOW⦈ s' ⭆ Γ C.⊢ s ⇀⦇ tx ,UTXOW⦈ (withDepositsFrom s s')
  UTXOWToConf .convⁱ _ (L.UTXOW-inductive⋯ a b c d e f g h i j utxo) =
    C.UTXOW-inductive⋯ a b c d e f g h i j (conv utxo)

  UTXOWFromConf : ∀ {Γ s tx s'}
                    (let open L.UTxOEnv Γ using () renaming (pparams to pp)
                         open L.UTxOState s using (deposits)
                         open Tx tx renaming (body to txb)
                         open TxBody txb using (txCerts))
                → (isValid tx ≡ false ⊎ L.ValidCertDeposits pp deposits txCerts)
                  ⊢ Γ C.⊢ s ⇀⦇ tx ,UTXOW⦈ s' ⭆ⁱ λ _ h →
                    Γ L.⊢ s ⇀⦇ tx ,UTXOW⦈ (setDeposits (utxowDeposits h) s')  -- Conformance doesn't update deposits in UTXOW
  UTXOWFromConf .convⁱ validCerts (C.UTXOW-inductive⋯ a b c d e f g h i j utxo) =
    L.UTXOW-inductive⋯ a b c d e f g h i j (validCerts ⊢conv utxo)
