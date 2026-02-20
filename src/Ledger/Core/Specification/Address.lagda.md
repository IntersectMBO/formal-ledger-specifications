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
  : Type)
  ⦃ _ : DecEq Network ⦄
  ⦃ _ : DecEq KeyHash ⦄
  ⦃ _ : DecEq ScriptHash ⦄
  ⦃ _ : HasDecTotalOrder≡ {A = KeyHash} {0ℓ} {0ℓ} ⦄
  ⦃ _ : HasDecTotalOrder≡ {A = ScriptHash} {0ℓ} {0ℓ} ⦄
  where

open import Relation.Binary using (IsEquivalence; IsPreorder)
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


fromHasPreorder≡
  : {A B : Type}
    ⦃ _ : HasPreorder≡ {A = A} {0ℓ} {0ℓ} ⦄
  → A ↩ B
  → HasPreorder≡ {A = B} {0ℓ} {0ℓ}
fromHasPreorder≡ ⦃ pa ⦄ A↩B = record
    { _≤_ = λ x y -> from x ≤ from y
    ; _<_ = λ x y -> from x < from y
    ; ≤-isPreorder = record
        { isEquivalence = isEquivalence
        ; reflexive = λ {x = x} → λ where
            refl → IsPreorder.reflexive ≤-isPreorder {x = from x} refl
        ; trans = λ {i = x} → IsPreorder.trans ≤-isPreorder {i = from x}
        }
    ; <-irrefl = λ where refl → <-irrefl ⦃ pa ⦄ refl
    ; ≤⇔<∨≈ = λ {x = x} {y = y} → mk⇔
        (λ fromx≤fromy →
          case Equivalence.to ≤⇔<∨≈ fromx≤fromy of λ where
            (inj₁ fromx<fromy) → inj₁ fromx<fromy
            (inj₂ fromx≡fromy) → inj₂ $ begin
              x
                ≡⟨ sym $ inverseˡ {x = x} {y = from x} refl ⟩
              to (from x)
                ≡⟨ cong to fromx≡fromy ⟩
              to (from y)
                ≡⟨ inverseˡ {x = y} {y = from y} refl ⟩
              y
              ∎
        )
        (λ where
          (inj₁ fromx<fromy) → Equivalence.from (≤⇔<∨≈ ⦃ pa ⦄) (inj₁ fromx<fromy)
          (inj₂ refl) → IsPreorder.reflexive (≤-isPreorder ⦃ pa ⦄) refl
        )
    }
  where
    open LeftInverse A↩B
    open ≡-Reasoning





instance
  HasPreorder≡-Credential = fromHasPreorder≡ $ mk↩
    _ -- (λ y≡fromx )

-- Inverseˡ f g = ∀ {x y} → y ≈₁ g x → f y ≈₂ x

{-
⊎-<-
{A = Credential} {0ℓ} {0ℓ} ∋

    record
    { _≤_ = λ where
        (KeyHashObj kh0) → λ where
          (KeyHashObj kh1) → kh0 ≤ kh1
          _ → ⊤
        (ScriptObj sh0) →  λ where
          (ScriptObj sh1) → sh0 ≤ sh1
          _ → ⊥
    ; _<_ = λ where
        (KeyHashObj kh0) → λ where
          (KeyHashObj kh1) → kh0 < kh1
          _ → ⊤
        (ScriptObj sh0) →  λ where
          (ScriptObj sh1) → sh0 < sh1
          _ → ⊥
    }
-}
    {-
        _≤_           : Rel A ℓ″
        _<_           : Rel A ℓ‴
        ≤-isPreorder  : IsPreorder _≈_ _≤_
        <-irrefl      : Irreflexive _≈_ _<_
        ≤⇔<∨≈         : ∀ {x y : A} → x ≤ y ⇔ (x < y ⊎ x ≈ y)
-}

--  HasPartialOrder-Credential = HasPartialOrder≡ {A = Credential} ∋ record {}
--  HasTotalOrder-Credential = HasTotalOrder≡ {A = Credential} ∋ record {}
--  HasDecTotalOrder-Credential = HasDecTotalOrder≡ {A = Credential} ∋ record {}


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

record RewardAddress : Type where
  field
    net    : Network
    stake  : Credential

Withdrawals : Type
Withdrawals = RewardAddress ⇀ Coin
```

<!--
```agda
open BaseAddr; open BootstrapAddr; open BaseAddr; open BootstrapAddr

record HasRewardAddress {a} (A : Type a) : Type a where
  field RewardAddressOf : A → RewardAddress
open HasRewardAddress ⦃...⦄ public

record HasNetworkId {a} (A : Type a) : Type a where
  field NetworkIdOf : A → Network
open HasNetworkId ⦃...⦄ public

record HasMaybeNetworkId {a} (A : Type a) : Type a where
  field MaybeNetworkIdOf : A → Maybe Network
open HasMaybeNetworkId ⦃...⦄ public

record HasWithdrawals {a} (A : Type a) : Type a where
  field WithdrawalsOf : A → Withdrawals
open HasWithdrawals ⦃...⦄ public

record HasAttrSize {a} (A : Type a) : Type a where
  field AttrSizeOf : A → ℕ
open HasAttrSize ⦃...⦄ public

instance
  HasNetworkId-BaseAddr : HasNetworkId BaseAddr
  HasNetworkId-BaseAddr .NetworkIdOf = BaseAddr.net

  HasNetworkId-BootstrapAddr : HasNetworkId BootstrapAddr
  HasNetworkId-BootstrapAddr .NetworkIdOf = BootstrapAddr.net

  HasNetworkId-RewardAddress : HasNetworkId RewardAddress
  HasNetworkId-RewardAddress .NetworkIdOf = RewardAddress.net

  HasCredential-RewardAddress : HasCredential RewardAddress
  HasCredential-RewardAddress .CredentialOf = RewardAddress.stake

  HasAttrSize-BootstrapAddr : HasAttrSize BootstrapAddr
  HasAttrSize-BootstrapAddr .AttrSizeOf = BootstrapAddr.attrsSize
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
isScriptRewardAddress  = isScript ∘ CredentialOf
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
_ = isScriptRewardAddress ⁇¹ ∋ it

getScriptHash : ∀ a → isScriptAddr a → ScriptHash
getScriptHash (inj₁ _) (SHisScript sh) = sh
getScriptHash (inj₂ _) (SHisScript sh) = sh

instance abstract
  unquoteDecl DecEq-BaseAddr DecEq-BootstrapAddr DecEq-RewardAddress = derive-DecEq
    ( (quote BaseAddr       , DecEq-BaseAddr)
    ∷ (quote BootstrapAddr  , DecEq-BootstrapAddr)
    ∷ (quote RewardAddress  , DecEq-RewardAddress)
    ∷ [] )

module _ ⦃ _ : Show Network  ⦄ ⦃ _ : Show KeyHash  ⦄ ⦃ _ : Show ScriptHash  ⦄ where
  instance
    unquoteDecl Show-Credential = derive-Show [ (quote Credential , Show-Credential) ]
    unquoteDecl Show-RewardAddress = derive-Show [ (quote RewardAddress , Show-RewardAddress) ]
    Show-Credential×Coin : Show (Credential × Coin)
    Show-Credential×Coin = Show-×
```
-->

# References {#references .unnumbered}

**\[CVG19\]** <span id="shelley-ledger-spec"
label="shelley-ledger-spec"></span> Jared Corduan and Polina Vinogradova
and Matthias Güdemann. *A Formal Specification of the Cardano Ledger*.
2019.
