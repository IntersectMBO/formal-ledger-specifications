\section{Addresses}
\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Interface.DecEq.Ext
open import Tactic.Derive.DecEq

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
\AgdaTarget{Credential, BaseAddr, BootstrapAddr, RwdAddr, net, pay, stake, Addr,
VKeyBaseAddr, VKeyBoostrapAddr, ScriptBaseAddr, ScriptBootstrapAddr, VKeyAddr, ScriptAddr}
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
  field net    : Network
        pay    : Credential
        stake  : Credential

record BootstrapAddr : Set where
  field net        : Network
        pay        : Credential
        attrsSize  : ℕ

record RwdAddr : Set where
  field net    : Network
        stake  : Credential

VKeyBaseAddr         = ∃ (isVKey    ∘ BaseAddr.pay)
VKeyBootstrapAddr    = ∃ (isVKey    ∘ BootstrapAddr.pay)
ScriptBaseAddr       = ∃ (isScript  ∘ BaseAddr.pay)
ScriptBootstrapAddr  = ∃ (isScript  ∘ BootstrapAddr.pay)

Addr        = BaseAddr        ⊎ BootstrapAddr
VKeyAddr    = VKeyBaseAddr    ⊎ VKeyBootstrapAddr
ScriptAddr  = ScriptBaseAddr  ⊎ ScriptBootstrapAddr
\end{code}
\end{AgdaSuppressSpace} \\
\emph{Helper functions}
\AgdaTarget{payCred, isVKeyAddr}
\begin{code}
payCred     : Addr → Credential
netId       : Addr → Network
isVKeyAddr  : Addr → Set
isVKeyAddr  = isVKey ∘ payCred
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

isVKey? : ∀ c → Dec (isVKey c)
isVKey? (inj₁ h) = yes (VKeyisVKey h)
isVKey? (inj₂ _) = no  (λ ())

isVKeyAddr? : ∀ a → Dec (isVKeyAddr a)
isVKeyAddr? = isVKey? ∘ payCred

instance abstract
  unquoteDecl DecEq-BaseAddr DecEq-BootstrapAddr DecEq-RwdAddr = derive-DecEq
    ((quote BaseAddr     , DecEq-BaseAddr) ∷
    (quote BootstrapAddr , DecEq-BootstrapAddr) ∷
    (quote RwdAddr       , DecEq-RwdAddr) ∷ [])
\end{code}
