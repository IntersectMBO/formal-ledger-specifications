\section{Addresses}
\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Prelude

open import Tactic.Derive.DecEq
open import Tactic.Derive.Show
import Data.Sum.Relation.Unary.All as Sum

module Ledger.Address (
\end{code}

We define credentials and various types of addresses here. A
credential contains a hash, either of a verifying (public) key
(\isVKey) or of a (\isScript).

\begin{figure*}[h!]
\begin{AgdaMultiCode}
\emph{Abstract types}
\begin{code}
  Network
  KeyHash
  ScriptHash
\end{code}
\begin{code}[hide]
  : Type)  ⦃ _ : DecEq Network ⦄ ⦃ _ : DecEq KeyHash ⦄ ⦃ _ : DecEq ScriptHash ⦄ where
\end{code}
\emph{Derived types}
\AgdaTarget{Credential, BaseAddr, BootstrapAddr, RwdAddr, net, pay, stake, Addr,
VKeyBaseAddr, VKeyBoostrapAddr, ScriptBaseAddr, ScriptBootstrapAddr, VKeyAddr, ScriptAddr}
\begin{code}
data Credential : Type where
  KeyHashObj : KeyHash → Credential
  ScriptObj  : ScriptHash → Credential
\end{code}
\begin{code}[hide]
isKeyHashObj : Credential → Maybe KeyHash
isKeyHashObj (KeyHashObj h) = just h
isKeyHashObj (ScriptObj _)  = nothing

isKeyHashObjᵇ : Credential → Bool
isKeyHashObjᵇ (KeyHashObj _) = true
isKeyHashObjᵇ _ = false

isKeyHash : Credential → Type
isKeyHash x = isKeyHashObjᵇ x ≡ true

isScriptObj : Credential → Maybe ScriptHash
isScriptObj (KeyHashObj _) = nothing
isScriptObj (ScriptObj h)  = just h

data isVKey : Credential → Type where
  VKeyisVKey : (kh : KeyHash) → isVKey (KeyHashObj kh)
data isScript : Credential → Type where
  SHisScript : (sh : ScriptHash) → isScript (ScriptObj sh)
\end{code}
\begin{code}

record BaseAddr : Type where
  field net    : Network
        pay    : Credential
        stake  : Credential

record EnterpriseAddr : Type where
  field net    : Network
        pay    : Credential

record BootstrapAddr : Type where
  field net        : Network
        pay        : Credential
        attrsSize  : ℕ

record RwdAddr : Type where
  field net    : Network
        stake  : Credential
\end{code}
\begin{code}[hide]
open BaseAddr; open EnterpriseAddr; open BootstrapAddr
open BootstrapAddr using (attrsSize) public
\end{code}
\begin{code}

VKeyBaseAddr          = Σ[ addr ∈ BaseAddr        ] isVKey    (addr .pay)
VKeyEnterpriseAddr    = Σ[ addr ∈ EnterpriseAddr  ] isVKey    (addr .pay)
VKeyBootstrapAddr     = Σ[ addr ∈ BootstrapAddr   ] isVKey    (addr .pay)
ScriptBaseAddr        = Σ[ addr ∈ BaseAddr        ] isScript  (addr .pay)
ScriptEnterpriseAddr  = Σ[ addr ∈ EnterpriseAddr  ] isScript  (addr .pay)
ScriptBootstrapAddr   = Σ[ addr ∈ BootstrapAddr   ] isScript  (addr .pay)

Addr        = BaseAddr        ⊎ EnterpriseAddr        ⊎ BootstrapAddr
VKeyAddr    = VKeyBaseAddr    ⊎ VKeyEnterpriseAddr    ⊎ VKeyBootstrapAddr
ScriptAddr  = ScriptBaseAddr  ⊎ ScriptEnterpriseAddr  ⊎ ScriptBootstrapAddr
\end{code}
\\
\emph{Helper functions}
\AgdaTarget{payCred, isVKeyAddr}
\begin{code}
payCred       : Addr → Credential
stakeCred     : Addr → Maybe Credential
netId         : Addr → Network
isVKeyAddr    : Addr → Type
isScriptAddr  : Addr → Type

isVKeyAddr       = isVKey ∘ payCred
isScriptAddr     = isScript ∘ payCred
isScriptRwdAddr  = isScript ∘ RwdAddr.stake
\end{code}
\end{AgdaMultiCode}
\caption{Definitions used in Addresses}
\label{fig:defs:addresses}
\end{figure*}
\begin{code}[hide]
payCred (inj₁ record {pay = pay}) = pay
payCred (inj₂ (inj₁ record {pay = pay})) = pay
payCred (inj₂ (inj₂ record {pay = pay})) = pay

stakeCred (inj₁ record {stake = stake}) = just stake
stakeCred (inj₂ _) = nothing

netId (inj₁ record {net = net}) = net
netId (inj₂ (inj₁ record {net = net})) = net
netId (inj₂ (inj₂ record {net = net})) = net

data isBootstrapAddr : Addr → Set where
 IsBootstrapAddr : ∀ a → isBootstrapAddr (inj₂ a)

instance
  isBootstrapAddr? : ∀ {a} → isBootstrapAddr a ⁇
  isBootstrapAddr? {inj₁ _} = ⁇ no λ ()
  isBootstrapAddr? {inj₂ a} = ⁇ yes (IsBootstrapAddr a)

if_isBootstrapAddr_ : Addr → (BootstrapAddr → Set) → Set
if a isBootstrapAddr P = Sum.All (const ⊤) (Sum.All (const ⊤) P) a

instance
  unquoteDecl DecEq-Credential = derive-DecEq ((quote Credential , DecEq-Credential) ∷ [])

  Dec-isVKey : isVKey ⁇¹
  Dec-isVKey {x = c} .dec with c
  ... | KeyHashObj h = yes (VKeyisVKey h)
  ... | ScriptObj  _ = no  λ ()

  Dec-isScript : isScript ⁇¹
  Dec-isScript {x = x} .dec with x
  ... | KeyHashObj _ = no λ ()
  ... | ScriptObj  y = yes (SHisScript y)

_ = isVKey ⁇¹ ∋ it
_ = isVKeyAddr ⁇¹ ∋ it
_ = isScript ⁇¹ ∋ it
_ = isScriptAddr ⁇¹ ∋ it
_ = isScriptRwdAddr ⁇¹ ∋ it

getScriptHash : ∀ a → isScriptAddr a → ScriptHash
getScriptHash (inj₁ _) (SHisScript sh) = sh
getScriptHash (inj₂ (inj₁ _)) (SHisScript sh) = sh
getScriptHash (inj₂ (inj₂ _)) (SHisScript sh) = sh

instance abstract
  unquoteDecl DecEq-BaseAddr DecEq-EnterpriseAddr DecEq-BootstrapAddr DecEq-RwdAddr = derive-DecEq
    ( (quote BaseAddr       , DecEq-BaseAddr)
    ∷ (quote EnterpriseAddr , DecEq-EnterpriseAddr)
    ∷ (quote BootstrapAddr  , DecEq-BootstrapAddr)
    ∷ (quote RwdAddr        , DecEq-RwdAddr)
    ∷ [] )

module _ ⦃ _ : Show Network  ⦄ ⦃ _ : Show KeyHash  ⦄ ⦃ _ : Show ScriptHash  ⦄ where
  instance
    unquoteDecl Show-Credential = derive-Show [ (quote Credential , Show-Credential) ]
    unquoteDecl Show-RwdAddr = derive-Show [ (quote RwdAddr , Show-RwdAddr) ]
    Show-Credential×Coin : Show (Credential × Coin)
    Show-Credential×Coin = Show-×
\end{code}
