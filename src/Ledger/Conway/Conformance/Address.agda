
{-# OPTIONS --safe #-}

open import Ledger.Prelude

open import Tactic.Derive.DecEq
open import Tactic.Derive.Show

module Ledger.Conway.Conformance.Address (

  Network
  KeyHash
  ScriptHash

  : Type)  ⦃ _ : DecEq Network ⦄ ⦃ _ : DecEq KeyHash ⦄ ⦃ _ : DecEq ScriptHash ⦄ where

data Credential : Type where
  KeyHashObj : KeyHash → Credential
  ScriptObj  : ScriptHash → Credential

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


record BaseAddr : Type where
  field net    : Network
        pay    : Credential
        stake  : Credential

record BootstrapAddr : Type where
  field net        : Network
        pay        : Credential
        attrsSize  : ℕ

record RwdAddr : Type where
  field net    : Network
        stake  : Credential

open BaseAddr; open BootstrapAddr; open BaseAddr; open BootstrapAddr


VKeyBaseAddr         = Σ[ addr ∈ BaseAddr       ] isVKey    (addr .pay)
VKeyBootstrapAddr    = Σ[ addr ∈ BootstrapAddr  ] isVKey    (addr .pay)
ScriptBaseAddr       = Σ[ addr ∈ BaseAddr       ] isScript  (addr .pay)
ScriptBootstrapAddr  = Σ[ addr ∈ BootstrapAddr  ] isScript  (addr .pay)

Addr        = BaseAddr        ⊎ BootstrapAddr
VKeyAddr    = VKeyBaseAddr    ⊎ VKeyBootstrapAddr
ScriptAddr  = ScriptBaseAddr  ⊎ ScriptBootstrapAddr

payCred       : Addr → Credential
stakeCred     : Addr → Maybe Credential
netId         : Addr → Network
isVKeyAddr    : Addr → Type
isScriptAddr  : Addr → Type

isVKeyAddr       = isVKey ∘ payCred
isScriptAddr     = isScript ∘ payCred
isScriptRwdAddr  = isScript ∘ RwdAddr.stake

payCred (inj₁ record {pay = pay}) = pay
payCred (inj₂ record {pay = pay}) = pay

stakeCred (inj₁ record {stake = stake}) = just stake
stakeCred (inj₂ _) = nothing

netId (inj₁ record {net = net}) = net
netId (inj₂ record {net = net}) = net

data isBootstrapAddr : Addr → Set where
 IsBootstrapAddr : ∀ a → isBootstrapAddr (inj₂ a)

instance
  isBootstrapAddr? : ∀ {a} → isBootstrapAddr a ⁇
  isBootstrapAddr? {inj₁ _} = ⁇ no λ ()
  isBootstrapAddr? {inj₂ a} = ⁇ yes (IsBootstrapAddr a)

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
getScriptHash (inj₂ _) (SHisScript sh) = sh

instance abstract
  unquoteDecl DecEq-BaseAddr DecEq-BootstrapAddr DecEq-RwdAddr = derive-DecEq
    ( (quote BaseAddr      , DecEq-BaseAddr)
    ∷ (quote BootstrapAddr , DecEq-BootstrapAddr)
    ∷ (quote RwdAddr       , DecEq-RwdAddr)
    ∷ [] )

module _ ⦃ _ : Show Network  ⦄ ⦃ _ : Show KeyHash  ⦄ ⦃ _ : Show ScriptHash  ⦄ where
  instance
    unquoteDecl Show-Credential = derive-Show [ (quote Credential , Show-Credential) ]
    unquoteDecl Show-RwdAddr = derive-Show [ (quote RwdAddr , Show-RwdAddr) ]
    Show-Credential×Coin : Show (Credential × Coin)
    Show-Credential×Coin = Show-×

