\section{Addresses}
\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Prelude

module Ledger.Address (
\end{code}
We define credentials and various types of addresses here.
\begin{figure*}[h]
\begin{AgdaAlign}
\emph{Abstract types}
\begin{code}
  Network
  KeyHash
  ScriptHash
\end{code}
\begin{code}[hide]
  : Set) ⦃ _ : DecEq Network ⦄ ⦃ _ : DecEq KeyHash ⦄ ⦃ _ : DecEq ScriptHash ⦄ where
\end{code}
\emph{Derived types}
\AgdaTarget{Credential, BaseAddr, BootstrapAddr, RwdAddr, net, pay, stake, Addr, VKeyBaseAddr, VKeyBoostrapAddr, ScriptBaseAddr, ScriptBootstrapAddr, VKeyAddr, ScriptAddr}
\begin{AgdaSuppressSpace}
\begin{code}
Credential = KeyHash ⊎ ScriptHash
\end{code}
\begin{code}[hide]
data isVKey : Credential → Set where
  VKeyisVKey : (kh : KeyHash) → isVKey (inj₁ kh)
data isScript : Credential → Set where
  SHisScript : (sh : ScriptHash) → isScript (inj₂ sh)
\end{code}
\begin{code}

record BaseAddr : Set where
  field net   : Network
        pay   : Credential
        stake : Credential

record BootstrapAddr : Set where
  field net       : Network
        pay       : Credential
        attrsSize : ℕ

record RwdAddr : Set where
  field net   : Network
        stake : Credential

Addr = BaseAddr ⊎ BootstrapAddr

VKeyBaseAddr        = Σ[ addr ∈ BaseAddr       ] isVKey   (BaseAddr.pay       addr)
VKeyBootstrapAddr   = Σ[ addr ∈ BootstrapAddr  ] isVKey   (BootstrapAddr.pay  addr)

ScriptBaseAddr      = Σ[ addr ∈ BaseAddr       ] isScript (BaseAddr.pay       addr)
ScriptBootstrapAddr = Σ[ addr ∈ BootstrapAddr  ] isScript (BootstrapAddr.pay  addr)

VKeyAddr   = VKeyBaseAddr   ⊎ VKeyBootstrapAddr
ScriptAddr = ScriptBaseAddr ⊎ ScriptBootstrapAddr
\end{code}
\end{AgdaSuppressSpace}
\emph{Helper functions}
\AgdaTarget{payCred, isVKeyAddr}
\begin{code}
payCred     : Addr → Credential
netId       : Addr → Network
isVKeyAddr  : Addr → Set
\end{code}
\end{AgdaAlign}
\caption{Definitions used in Addresses}
\label{fig:defs:addresses}
\end{figure*}
\begin{code}[hide]
payCred (inj₁ record {pay = pay}) = pay
payCred (inj₂ record {pay = pay}) = pay

netId (inj₁ record {net = net}) = net
netId (inj₂ record {net = net}) = net

isVKeyAddr = isVKey ∘ payCred

isVKey? : ∀ c → Dec (isVKey c)
isVKey? (inj₁ h) = yes (VKeyisVKey h)
isVKey? (inj₂ _) = no  (λ ())

isVKeyAddr? : ∀ a → Dec (isVKeyAddr a)
isVKeyAddr? = isVKey? ∘ payCred

instance
  abstract
    -- DecEq-BaseAddr : DecEq BaseAddr
    -- DecEq-BaseAddr ._≟_
    --   record { net = net₁ ; pay = pay₁ ; stake = stake₁ }
    --   record { net = net₂ ; pay = pay₂ ; stake = stake₂ } with net₁ ≟ net₂ | pay₁ ≟ pay₂ | stake₁ ≟ stake₂
    -- ... | yes refl  | yes refl  | yes refl    = yes refl
    -- ... | yes _     | yes _     | no ¬stakeeq = no (λ where refl → ¬stakeeq refl)
    -- ... | yes _     | no ¬payeq | _           = no (λ where refl → ¬payeq   refl)
    -- ... | no ¬neteq | _         | _           = no (λ where refl → ¬neteq   refl)

    DecEq-BaseAddr : DecEq BaseAddr
    DecEq-BaseAddr = ↔-DecEq (record
      { to        = λ where (net , pay , stake) → record { net = net ; pay = pay ; stake = stake }
      ; from      = λ where record { net = net ; pay = pay ; stake = stake } → (net , pay , stake)
      ; to-cong   = λ where refl → refl
      ; from-cong = λ where refl → refl
      ; inverse   = (λ _ → refl) , (λ _ → refl) }) DecEq-Product

    DecEq-BootstrapAddr : DecEq BootstrapAddr
    DecEq-BootstrapAddr = ↔-DecEq (record
      { to        = λ where (net , pay , attrsSize) → record { net = net ; pay = pay ; attrsSize = attrsSize }
      ; from      = λ where record { net = net ; pay = pay ; attrsSize = attrsSize } → (net , pay , attrsSize)
      ; to-cong   = λ where refl → refl
      ; from-cong = λ where refl → refl
      ; inverse   = (λ _ → refl) , (λ _ → refl) }) DecEq-Product

    DecEq-RwdAddr : DecEq RwdAddr
    DecEq-RwdAddr = ↔-DecEq (record
      { to        = λ where (net , stake) → record { net = net ; stake = stake }
      ; from      = λ where record { net = net ; stake = stake } → (net , stake)
      ; to-cong   = λ where refl → refl
      ; from-cong = λ where refl → refl
      ; inverse   = (λ _ → refl) , (λ _ → refl) }) DecEq-Product
\end{code}
