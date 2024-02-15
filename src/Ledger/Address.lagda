\section{Addresses}
\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Prelude

open import Tactic.Derive.DecEq

module Ledger.Address (
\end{code}

We define credentials and various types of addresses here. A
credential contains a hash, either of a verifying (public) key
(\isVKey) or of a (\isScript).

\begin{figure*}[h!]
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
\end{code}
\begin{code}[hide]
open BaseAddr; open BootstrapAddr; open BaseAddr; open BootstrapAddr
private variable
  a b : Level
  A : Set a
Σ-syntax' : (A : Set a) → (A → Set b) → Set _
Σ-syntax' = Σ
syntax Σ-syntax' A (λ x → B) = x ∈ A ﹐ B
\end{code}
\begin{code}

VKeyBaseAddr         = addr ∈ BaseAddr      ﹐ isVKey   (addr .pay)
VKeyBootstrapAddr    = addr ∈ BootstrapAddr ﹐ isVKey   (addr .pay)
ScriptBaseAddr       = addr ∈ BaseAddr      ﹐ isScript (addr .pay)
ScriptBootstrapAddr  = addr ∈ BootstrapAddr ﹐ isScript (addr .pay)

Addr        = BaseAddr        ⊎ BootstrapAddr
VKeyAddr    = VKeyBaseAddr    ⊎ VKeyBootstrapAddr
ScriptAddr  = ScriptBaseAddr  ⊎ ScriptBootstrapAddr
\end{code}
\end{AgdaSuppressSpace} \\
\emph{Helper functions}
\AgdaTarget{payCred, isVKeyAddr}
\begin{code}
payCred       : Addr → Credential
netId         : Addr → Network
isVKeyAddr    : Addr → Set
isScriptAddr  : Addr → Set

isVKeyAddr       = isVKey ∘ payCred
isScriptAddr     = isScript ∘ payCred
isScriptRwdAddr  = isScript ∘ RwdAddr.stake
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

instance
  Dec-isVKey : isVKey ⁇¹
  Dec-isVKey {x = c} .dec with c
  ... | inj₁ h = yes (VKeyisVKey h)
  ... | inj₂ _ = no  λ ()

  Dec-isScript : isScript ⁇¹
  Dec-isScript {x = x} .dec with x
  ... | inj₁ _ = no λ ()
  ... | inj₂ y = yes (SHisScript y)

_ = isVKey ⁇¹ ∋ it
_ = isVKeyAddr ⁇¹ ∋ it
_ = isScript ⁇¹ ∋ it
_ = isScriptAddr ⁇¹ ∋ it
_ = isScriptRwdAddr ⁇¹ ∋ it

getScriptHash : ∀ a → isScriptAddr a → ScriptHash
getScriptHash (inj₁ _) (SHisScript sh) = sh
getScriptHash (inj₂ _) (SHisScript sh) = sh

instance abstract
  unquoteDecl DecEq-BaseAddr DecEq-BootstrapAddr DecEq-RwdAddr = derive-DecEq
    ( (quote BaseAddr      , DecEq-BaseAddr)
    ∷ (quote BootstrapAddr , DecEq-BootstrapAddr)
    ∷ (quote RwdAddr       , DecEq-RwdAddr)
    ∷ [] )
\end{code}
