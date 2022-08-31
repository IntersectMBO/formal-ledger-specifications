\begin{document}
\begin{code}
open import DecEq
open import Relation.Nullary

module Ledger.Address (Network KeyHash ScriptHash : Set)
  ⦃ _ : DecEq Network ⦄ ⦃ _ : DecEq KeyHash ⦄ ⦃ _ : DecEq ScriptHash ⦄ where

open import Prelude

Credential = KeyHash ⊎ ScriptHash
data isVKey : Credential → Set where
  VKeyisVKey : (kh : KeyHash) → isVKey (inj₁ kh)
data isScript : Credential → Set where
  SHisScript : (sh : ScriptHash) → isScript (inj₂ sh)

record BaseAddr : Set where
  field net   : Network
        pay   : Credential
        stake : Credential

record BootstrapAddr : Set where
  field net   : Network
        pay   : Credential

record RwdAddr : Set where
  field net   : Network
        stake : Credential

Addr = BaseAddr ⊎ BootstrapAddr

VKeyBaseAddr        = Σ[ addr ∈ BaseAddr      ] isVKey   (BaseAddr.pay      addr)
VKeyBootstrapAddr   = Σ[ addr ∈ BootstrapAddr ] isVKey   (BootstrapAddr.pay addr)

ScriptBaseAddr      = Σ[ addr ∈ BaseAddr      ] isScript (BaseAddr.pay      addr)
ScriptBootstrapAddr = Σ[ addr ∈ BootstrapAddr ] isScript (BootstrapAddr.pay addr)

payCred : Addr → Credential
payCred (inj₁ record {pay = pay}) = pay
payCred (inj₂ record {pay = pay}) = pay

isVKeyAddr : Addr → Set
isVKeyAddr = isVKey ∘ payCred

isVKey? : ∀ c → Dec (isVKey c)
isVKey? (inj₁ h) = yes (VKeyisVKey h)
isVKey? (inj₂ _) = no (λ ())

isVKeyAddr? : ∀ a → Dec (isVKeyAddr a)
isVKeyAddr? = isVKey? ∘ payCred

VKeyAddr   = VKeyBaseAddr   ⊎ VKeyBootstrapAddr
ScriptAddr = ScriptBaseAddr ⊎ ScriptBootstrapAddr

instance
  abstract
    DecEq-BaseAddr : DecEq BaseAddr
    DecEq-BaseAddr = ↔-DecEq (record
      { to        = λ where (net , pay , stake) → record { net = net ; pay = pay ; stake = stake }
      ; from      = λ where record { net = net ; pay = pay ; stake = stake } → (net , pay , stake)
      ; to-cong   = λ where refl → refl
      ; from-cong = λ where refl → refl
      ; inverse   = (λ where record { net = net ; pay = pay ; stake = stake } → refl)
                    , (λ where (net , pay , stake) → refl) }) DecEq-Product

    DecEq-BootstrapAddr : DecEq BootstrapAddr
    DecEq-BootstrapAddr = ↔-DecEq (record
      { to        = λ where (net , pay) → record { net = net ; pay = pay }
      ; from      = λ where record { net = net ; pay = pay } → (net , pay)
      ; to-cong   = λ where refl → refl
      ; from-cong = λ where refl → refl
      ; inverse   = (λ where record { net = net ; pay = pay } → refl)
                    , (λ where (net , pay) → refl) }) DecEq-Product

    DecEq-RwdAddr : DecEq RwdAddr
    DecEq-RwdAddr = ↔-DecEq (record
      { to        = λ where (net , stake) → record { net = net ; stake = stake }
      ; from      = λ where record { net = net ; stake = stake } → (net , stake)
      ; to-cong   = λ where refl → refl
      ; from-cong = λ where refl → refl
      ; inverse   = (λ where record { net = net ; stake = stake } → refl)
                    , (λ where (net , stake) → refl) }) DecEq-Product

\end{code}
\end{document}
