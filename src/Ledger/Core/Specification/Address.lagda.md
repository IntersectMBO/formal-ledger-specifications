---
source_branch: master
source_path: src/Ledger/Core/Specification/Address.lagda.md
---

# Addresses {#sec:addresses}

This section defines credentials and various address types.

A credential contains a hash, either of a verifying (public) key
(`isVKey`{.AgdaDatatype}) or of a script (`isScript`{.AgdaDatatype}).

N.B. in the Shelley era the type of the `stake`{.AgdaField} field of the
`BaseAddr`{.AgdaRecord} record was `CredentialType`{.AgdaDatatype} (see
[CVG19, ](#shelley-ledger-spec)); to specify an address with no stake, we would use
an “enterprise” address. In contrast, the type of `stake`{.AgdaField} in the Conway
era is `Maybe`{.AgdaDatatype} `CredentialType`{.AgdaDatatype}, so we now use
`BaseAddr`{.AgdaRecord} to specify an address with no stake by setting
`stake`{.AgdaField} to `nothing`{.AgdaInductiveConstructor}.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Prelude

open import Tactic.Derive.Show

module Ledger.Core.Specification.Address (
```
-->

## Address Definitions

*Abstract types*
```agda
  Network
  KeyHash
  ScriptHash
```
<!--
```agda
  : Type)  ⦃ _ : DecEq Network ⦄ ⦃ _ : DecEq KeyHash ⦄ ⦃ _ : DecEq ScriptHash ⦄ where
```
-->
 *Derived types*
```agda
data Credential : Type where
  KeyHashObj : KeyHash → Credential
  ScriptObj  : ScriptHash → Credential
```
<!--
```agda
record HasCredential {a} (A : Type a) : Type a where
  field CredentialOf : A → Credential
open HasCredential ⦃...⦄ public

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
```
-->

```agda
record BaseAddr : Type where
  field
    net    : Network
    pay    : Credential
    stake  : Maybe Credential

record BootstrapAddr : Type where
  field
    net        : Network
    pay        : Credential
    attrsSize  : ℕ

record RwdAddr : Type where
  field
    net    : Network
    stake  : Credential

Withdrawals : Type
Withdrawals = RwdAddr ⇀ Coin
```

<!--
```agda
open BaseAddr; open BootstrapAddr; open BaseAddr; open BootstrapAddr

record HasNetworkId {a} (A : Type a) : Type a where
  field NetworkIdOf : A → Network
open HasNetworkId ⦃...⦄ public

record HasWithdrawals {a} (A : Type a) : Type a where
  field WithdrawalsOf : A → Withdrawals
open HasWithdrawals ⦃...⦄ public

instance
  HasNetworkId-BaseAddr : HasNetworkId BaseAddr
  HasNetworkId-BaseAddr .NetworkIdOf = BaseAddr.net

  HasNetworkId-BootstrapAddr : HasNetworkId BootstrapAddr
  HasNetworkId-BootstrapAddr .NetworkIdOf = BootstrapAddr.net

  HasNetworkId-RwdAddr : HasNetworkId RwdAddr
  HasNetworkId-RwdAddr .NetworkIdOf = RwdAddr.net

  HasCredential-RwdAddr : HasCredential RwdAddr
  HasCredential-RwdAddr .CredentialOf = RwdAddr.stake
```
-->

```agda
VKeyBaseAddr         = Σ[ addr ∈ BaseAddr       ] isVKey    (addr .pay)
VKeyBootstrapAddr    = Σ[ addr ∈ BootstrapAddr  ] isVKey    (addr .pay)
ScriptBaseAddr       = Σ[ addr ∈ BaseAddr       ] isScript  (addr .pay)
ScriptBootstrapAddr  = Σ[ addr ∈ BootstrapAddr  ] isScript  (addr .pay)

Addr        = BaseAddr        ⊎ BootstrapAddr
VKeyAddr    = VKeyBaseAddr    ⊎ VKeyBootstrapAddr
ScriptAddr  = ScriptBaseAddr  ⊎ ScriptBootstrapAddr
```

*Helper functions*
```agda
payCred       : Addr → Credential
stakeCred     : Addr → Maybe Credential
netId         : Addr → Network
isVKeyAddr    : Addr → Type
isScriptAddr  : Addr → Type

isVKeyAddr       = isVKey ∘ payCred
isScriptAddr     = isScript ∘ payCred
isScriptRwdAddr  = isScript ∘ CredentialOf
```

<!--
```agda
payCred (inj₁ record {pay = pay}) = pay
payCred (inj₂ record {pay = pay}) = pay

stakeCred (inj₁ record {stake = stake}) = stake
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
```
-->

# References {#references .unnumbered}

**\[CVG19\]** <span id="shelley-ledger-spec"
label="shelley-ledger-spec"></span> Jared Corduan and Polina Vinogradova
and Matthias Güdemann. *A Formal Specification of the Cardano Ledger*.
2019.
