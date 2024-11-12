
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
    convⁱ : (i : I) (l : L) → C i l

open _⊢_⭆ⁱ_

_⊢conv_ : ∀ {I L C} → ⦃ I ⊢ L ⭆ⁱ C ⦄ → ∀ i l → C i l
Γ ⊢conv l = it .convⁱ Γ l

_⊢_⭆_ : (I L C : Set) → Set
I ⊢ L ⭆ C = I ⊢ L ⭆ⁱ λ _ _ → C

_⭆_ : (L C : Set) → Set
L ⭆ C = ⊤ ⊢ L ⭆ C

conv : ⦃ L ⭆ C ⦄ → L → C
conv l = _ ⊢conv l

instance

  DStateToConf : L.Deposits ⊢ L.DState ⭆ C.DState
  DStateToConf .convⁱ deposits L.⟦ voteDelegs , stakeDelegs , rewards ⟧ᵈ =
    C.⟦ voteDelegs , stakeDelegs , rewards , deposits ⟧ᵈ

  DStateFromConf : C.DState ⭆ L.DState
  DStateFromConf .convⁱ _ C.⟦ voteDelegs , stakeDelegs , rewards , _ ⟧ᵈ =
    L.⟦ voteDelegs , stakeDelegs , rewards ⟧ᵈ

  GStateToConf : L.Deposits ⊢ L.GState ⭆ C.GState
  GStateToConf .convⁱ deposits L.⟦ dreps , ccHotKeys ⟧ᵛ =
    C.⟦ dreps , ccHotKeys , deposits ⟧ᵛ

  GStateFromConf : C.GState ⭆ L.GState
  GStateFromConf .convⁱ deposits C.⟦ dreps , ccHotKeys , _ ⟧ᵛ =
    L.⟦ dreps , ccHotKeys ⟧ᵛ

-- UTXO ----------------------------------

setDeposits : L.Deposits → L.UTxOState → L.UTxOState
setDeposits deposits L.⟦ utxo , fees , _ , donations ⟧ᵘ = L.⟦ utxo , fees , deposits , donations ⟧ᵘ

withDepositsFrom : L.UTxOState → L.UTxOState → L.UTxOState
withDepositsFrom L.⟦ _ , _ , deposits , _ ⟧ᵘ = setDeposits deposits

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
  UTXOSFromConf .convⁱ (inj₁ refl)       (C.Scripts-Yes (eval , ()))
  UTXOSFromConf .convⁱ (inj₂ validCerts) (C.Scripts-Yes (eval , txValid)) = L.Scripts-Yes (validCerts , eval , txValid)
  UTXOSFromConf .convⁱ _ (C.Scripts-No h) = L.Scripts-No h

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
  UTXOToConf {s = s} {tx = tx} .convⁱ _ (L.UTXO-inductive (a , b , c , d , e , f , g , h , i , j , k , l , m , n , o , p , utxo)) =
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
  UTXOFromConf {s = s} {tx = tx} .convⁱ validCerts (C.UTXO-inductive (a , b , c , d , e , f , g , h , i , j , k , l , m , n , o , p , utxo)) =
    let f' = begin
             L.consumed _ s (body tx) ≡⟨ lemConsumed _ s (body tx) ⟩
             C.consumed _ s (body tx) ≡⟨ f ⟩
             C.produced _ s (body tx) ≡⟨ lemProduced _ s _ ⟨
             L.produced _ s (body tx) ∎ in
    L.UTXO-inductive (a , b , c , d , e , f' , g , h , i , j , k , l , m , n , o , p , (validCerts ⊢conv utxo))

  UTXOWToConf : ∀ {Γ s tx s'} → Γ L.⊢ s ⇀⦇ tx ,UTXOW⦈ s' ⭆ Γ C.⊢ s ⇀⦇ tx ,UTXOW⦈ (withDepositsFrom s s')
  UTXOWToConf .convⁱ _ (L.UTXOW-inductive⋯ a b c d e f g h utxo) =
    C.UTXOW-inductive⋯ a b c d e f g h (conv utxo)

  UTXOWFromConf : ∀ {Γ s tx s'}
                    (let open L.UTxOEnv Γ using () renaming (pparams to pp)
                         open L.UTxOState s using (deposits)
                         open Tx tx renaming (body to txb)
                         open TxBody txb using (txcerts))
                → (isValid tx ≡ false ⊎ L.ValidCertDeposits pp deposits txcerts)
                  ⊢ Γ C.⊢ s ⇀⦇ tx ,UTXOW⦈ s' ⭆ⁱ λ _ h →
                    Γ L.⊢ s ⇀⦇ tx ,UTXOW⦈ (setDeposits (utxowDeposits h) s')
  UTXOWFromConf .convⁱ validCerts (C.UTXOW-inductive⋯ a b c d e f g h utxo) =
    L.UTXOW-inductive⋯ a b c d e f g h (validCerts ⊢conv utxo)

-- CERT ----------------------------------

data ValidCertDeposit (pp : PParams) (deps : L.Deposits) : L.DCert → Set where
  delegate   : ∀ {c del kh b} → ValidCertDeposit pp deps (L.delegate c del kh b)
  regpool    : ∀ {kh p} → ValidCertDeposit pp deps (L.regpool kh p)
  regdrep    : ∀ {c v a} → ValidCertDeposit pp deps (L.regdrep c v a)
  dereg      : ∀ {c d} → (L.CredentialDeposit c , d) ∈ deps → ValidCertDeposit pp deps (L.dereg c d)
  deregdrep  : ∀ {c d} → (L.DRepDeposit c , d) ∈ deps → ValidCertDeposit pp deps (L.deregdrep c d)
  ccreghot   : ∀ {c v} → ValidCertDeposit pp deps (L.ccreghot c v)
  retirepool : ∀ {kh e} → ValidCertDeposit pp deps (L.retirepool kh e)

ValidDeposit : (pp : PParams) → L.DCert → Set
ValidDeposit pp cert = Σ L.Deposits λ deps → ValidCertDeposit pp deps cert

ValidDeposits : (pp : PParams) → List L.DCert → Set
ValidDeposits pp certs = Σ L.Deposits λ deps → L.ValidCertDeposits pp deps certs

unconsValidDeposits : ∀ {pp deposits cert certs}
                    → L.ValidCertDeposits pp deposits (cert ∷ certs)
                    → ValidCertDeposit pp deposits cert × L.ValidCertDeposits pp (C.updateCertDeposit pp cert deposits) certs
unconsValidDeposits (L.delegate v)    = delegate , v
unconsValidDeposits (L.regpool v)     = regpool , v
unconsValidDeposits (L.regdrep v)     = regdrep , v
unconsValidDeposits (L.dereg h v)     = dereg h , v
unconsValidDeposits (L.deregdrep h v) = deregdrep h , v
unconsValidDeposits (L.ccreghot v)    = ccreghot , v
unconsValidDeposits (L.retirepool v)  = retirepool , v

updateCertDeposits : PParams → List L.DCert → L.Deposits → L.Deposits
updateCertDeposits pp [] deposits = deposits
updateCertDeposits pp (cert ∷ certs) deposits = updateCertDeposits pp certs (C.updateCertDeposit pp cert deposits)

record CertDeps (pp : PParams) (dcert : L.DCert) : Set where
  field
    depsᵈ : L.Deposits
    depsᵍ : L.Deposits
    -- Invariants
    validᵈ : ValidCertDeposit pp depsᵈ dcert
    validᵍ : ValidCertDeposit pp depsᵍ dcert

instance

  CertStToConf : L.Deposits ⊢ L.CertState ⭆ C.CertState
  CertStToConf .convⁱ deposits L.⟦ dState , pState , gState ⟧ᶜˢ =
    C.⟦ deposits ⊢conv dState , pState , deposits ⊢conv gState ⟧ᶜˢ

  CertStFromConf : C.CertState ⭆ L.CertState
  CertStFromConf .convⁱ _ C.⟦ dState , pState , gState ⟧ᶜˢ =
    L.⟦ conv dState , pState , conv gState ⟧ᶜˢ

  CERTBASEToConf : ∀ {Γ s s'}
                 → L.Deposits ⊢ Γ L.⊢ s ⇀⦇ _ ,CERTBASE⦈ s' ⭆ⁱ λ deposits _ →
                                Γ C.⊢ (deposits ⊢conv s) ⇀⦇ _ ,CERTBASE⦈ (deposits ⊢conv s')
  CERTBASEToConf .convⁱ deposits (L.CERT-base h) = C.CERT-base h

  CERTBASEFromConf : ∀ {Γ s s'}
                   → Γ C.⊢ s ⇀⦇ _ ,CERTBASE⦈ s' ⭆
                     Γ L.⊢ (conv s) ⇀⦇ _ ,CERTBASE⦈ (conv s')
  CERTBASEFromConf .convⁱ _ (C.CERT-base h) = L.CERT-base h

  DELEGToConf : ∀ {Γ s dcert s'}
              → Σ PParams (λ pp → ValidDeposit pp dcert) ⊢
                 Γ L.⊢ s ⇀⦇ dcert ,DELEG⦈ s' ⭆ⁱ λ (pp , deposits , _) _ →
                 Γ C.⊢ (deposits ⊢conv s) ⇀⦇ dcert ,DELEG⦈ (C.updateCertDeposit pp dcert deposits ⊢conv s')
  DELEGToConf .convⁱ _ (L.DELEG-delegate h) = C.DELEG-delegate h
  DELEGToConf .convⁱ (pp , deposits , dereg v) (L.DELEG-dereg h) = C.DELEG-dereg (h , v)

  CERTToConf : ∀ {Γ s dcert s'}
             → Σ PParams (λ pp → ValidDeposit pp dcert) ⊢
                Γ L.⊢ s ⇀⦇ dcert ,CERT⦈ s' ⭆ⁱ λ (pp , deposits , _) _ →
                Γ C.⊢ (deposits ⊢conv s) ⇀⦇ dcert ,CERT⦈ (C.updateCertDeposit pp dcert deposits ⊢conv s')
  CERTToConf {Γ} {s@(L.⟦ stᵈ , stᵖ , stᵍ ⟧ᶜˢ)} {dcert} {s'@(L.⟦ stᵈ' , stᵖ , stᵍ ⟧ᶜˢ)} .convⁱ i@(pp , deposits , _) (L.CERT-deleg deleg) =
    let cert' : Γ C.⊢ deposits ⊢conv s ⇀⦇ dcert ,CERT⦈ C.⟦ C.updateCertDeposit pp dcert deposits ⊢conv stᵈ'
                                                         , stᵖ
                                                         , deposits ⊢conv stᵍ   -- This is wild! The GState has different deposits now!
                                                         ⟧ᶜˢ                     -- Meaning this isn't actually true!
        cert' = C.CERT-deleg (i ⊢conv deleg)
    in
    {!!}
  CERTToConf .convⁱ deposits (L.CERT-pool x) = {!!}
  CERTToConf .convⁱ deposits (L.CERT-vdel x) = {!!}

--   CERTSToConf : ∀ {Γ s dcerts s'} (let open L.CertEnv Γ)
--               → ValidDeposits pp dcerts
--                 ⊢ Γ L.⊢ s ⇀⦇ dcerts ,CERTS⦈ s' ⭆ⁱ λ (deposits , _) _ →
--                   Γ C.⊢ (deposits ⊢conv s) ⇀⦇ dcerts ,CERTS⦈ (updateCertDeposits pp dcerts deposits ⊢conv s')
--   CERTSToConf .convⁱ (deposits , _) (BS-base certBase)  = BS-base (deposits ⊢conv certBase)
--   CERTSToConf {Γ = Γ} .convⁱ (deposits , valid) (BS-ind cert certs) with unconsValidDeposits valid
--   ... | valid₁ , valids = BS-ind ((L.CertEnv.pp Γ , deposits , valid₁) ⊢conv cert)
--                                  ((_ , valids) ⊢conv certs)

--   CERTSFromConf : ∀ {Γ s dcerts s'}
--                 → Γ C.⊢ s ⇀⦇ dcerts ,CERTS⦈ s' ⭆
--                   Γ L.⊢ conv s ⇀⦇ dcerts ,CERTS⦈ conv s'
--   CERTSFromConf .convⁱ deposits (BS-base certBase)  = BS-base (conv certBase)
--   CERTSFromConf .convⁱ deposits (BS-ind cert certs) = {!!}

-- -- Invalid transactions don't change the deposits
-- lemInvalidDepositsL : ∀ {Γ utxoSt utxoSt' tx}
--                     → isValid tx ≡ false
--                     → Γ L.⊢ utxoSt ⇀⦇ tx ,UTXOW⦈ utxoSt'
--                     → L.UTxOState.deposits utxoSt ≡ L.UTxOState.deposits utxoSt'
-- lemInvalidDepositsL refl (L.UTXOW-inductive⋯ _ _ _ _ _ _ _ _
--                           (L.UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
--                             (L.Scripts-No _))) = refl

-- lemInvalidDepositsC : ∀ {Γ utxoSt utxoSt' tx}
--                     → isValid tx ≡ false
--                     → (h : Γ C.⊢ utxoSt ⇀⦇ tx ,UTXOW⦈ utxoSt')
--                     → utxowDeposits h ≡ L.UTxOState.deposits utxoSt
-- lemInvalidDepositsC refl (C.UTXOW-inductive⋯ _ _ _ _ _ _ _ _
--                           (C.UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
--                             (C.Scripts-No _))) = refl

-- validCertDeposits : ∀ {Γ s tx s'}
--                     (let open TxBody (Tx.body tx)
--                          open L.UTxOEnv Γ
--                          open L.UTxOState s)
--                   → isValid tx ≡ true
--                   → Γ L.⊢ s ⇀⦇ tx ,UTXOW⦈ s'
--                   → L.ValidCertDeposits pparams deposits txcerts
-- validCertDeposits refl (L.UTXOW-inductive⋯ _ _ _ _ _ _ _ _
--                           (L.UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
--                             (L.Scripts-Yes (valid , _)))) = valid

-- -- TODO: this isn't true!
-- lemUpdateCertDeposits : ∀ {pp deposits} certs → C.updateCertDepositsUtxo pp certs deposits ≡ L.updateCertDeposits pp certs deposits
-- lemUpdateCertDeposits certs = {!!}

-- lemUpdateDeposits : ∀ {Γ s tx s'} (open L.UTxOEnv Γ)
--                   → isValid tx ≡ true
--                   → Γ L.⊢ s ⇀⦇ tx ,UTXOW⦈ s'
--                   → C.updateDeposits pparams (body tx) (L.UTxOState.deposits s) ≡ L.UTxOState.deposits s'
-- lemUpdateDeposits {tx = tx} refl
--   (L.UTXOW-inductive⋯ _ _ _ _ _ _ _ _
--     (L.UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
--       (L.Scripts-Yes (valid , _)))) = lemUpdateCertDeposits (TxBody.txcerts (body tx))

-- -- Also not true?
-- lemUpdateDeposits' : ∀ {Γ s tx s'} (open L.UTxOEnv Γ)
--                    → isValid tx ≡ true
--                    → Γ L.⊢ s ⇀⦇ tx ,UTXOW⦈ s'
--                    → updateCertDeposits pparams (TxBody.txcerts (body tx)) (L.UTxOState.deposits s) ≡ L.UTxOState.deposits s'
-- lemUpdateDeposits' = {!!}

-- instance
--   LStateToConf : L.LState ⭆ C.LState
--   LStateToConf .convⁱ _ L.⟦ utxoSt , govSt , certState ⟧ˡ =
--     C.⟦ utxoSt , govSt , L.UTxOState.deposits utxoSt ⊢conv certState ⟧ˡ

--   LEDGERToConf : ∀ {Γ s tx s'} → Γ L.⊢ s ⇀⦇ tx ,LEDGER⦈ s' ⭆ Γ C.⊢ conv s ⇀⦇ tx ,LEDGER⦈ conv s'
--   LEDGERToConf {Γ} {s} {tx} {s'} .convⁱ _ (L.LEDGER-V⋯ valid utxow certs gov) =
--     let open L.LEnv Γ
--         open L.LState s
--         open L.LState s' renaming (utxoSt to utxoSt'; certState to certState'; govSt to govSt')
--         open TxBody (body tx) using (txcerts)
--         deposits = L.UTxOState.deposits utxoSt
--         utxow' : _ C.⊢ utxoSt ⇀⦇ tx ,UTXOW⦈ setDeposits deposits utxoSt'
--         utxow' = conv utxow
--         utxoStC'    = setDeposits (C.updateDeposits pparams (body tx) deposits) utxoSt'
--         certStateC' = updateCertDeposits pparams txcerts deposits ⊢conv certState'
--         certs' : _ C.⊢ (deposits ⊢conv certState) ⇀⦇ txcerts ,CERTS⦈ certStateC'
--         certs' = (deposits , validCertDeposits valid utxow) ⊢conv certs
--         ledger' : Γ C.⊢ conv s ⇀⦇ tx ,LEDGER⦈ C.⟦ utxoStC' , govSt' , certStateC' ⟧ˡ
--         ledger' = C.LEDGER-V⋯ valid utxow' certs' gov
--         utxoEq  : utxoStC' ≡ utxoSt'
--         utxoEq  = cong (λ • → L.⟦ _ , _ , • , _ ⟧ᵘ)
--                        (lemUpdateDeposits valid utxow)
--         certsEq : certStateC' ≡ L.UTxOState.deposits utxoSt' ⊢conv certState'
--         certsEq = cong (λ • → C.⟦ C.⟦ _ , _ , _ , • ⟧ᵈ , _ , C.⟦ _ , _ , • ⟧ᵛ ⟧ᶜˢ)
--                        (lemUpdateDeposits' valid utxow)
--     in
--     subst₂ (λ • ◆ → Γ C.⊢ conv s ⇀⦇ tx ,LEDGER⦈ C.⟦ • , _ , ◆ ⟧ˡ) utxoEq certsEq ledger'
--   LEDGERToConf .convⁱ _ (L.LEDGER-I⋯ invalid utxow) with conv utxow
--   ... | utxow' rewrite lemInvalidDepositsL invalid utxow = C.LEDGER-I⋯ invalid utxow'

--   LEDGERFromConf : ∀ {Γ s tx s'} → Γ C.⊢ conv s ⇀⦇ tx ,LEDGER⦈ conv s' ⭆ Γ L.⊢ s ⇀⦇ tx ,LEDGER⦈ s'
--   LEDGERFromConf .convⁱ _ (C.LEDGER-V⋯ valid utxow certs gov) = {!!}
--   LEDGERFromConf .convⁱ _ (C.LEDGER-I⋯ invalid utxow) with inj₁ invalid ⊢conv utxow
--   ... | utxow' rewrite lemInvalidDepositsC invalid utxow = L.LEDGER-I⋯ invalid utxow'
