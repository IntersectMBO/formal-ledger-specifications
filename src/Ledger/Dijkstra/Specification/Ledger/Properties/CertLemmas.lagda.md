---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Ledger/Properties/CertLemmas.lagda.md
---

# Certificate-state lemmas for Dijkstra reordering {#sec:dijkstra-cert-lemmas}

A functional model of the certificate-state effect of a top-level
transaction, extracted from the rules, and the fields of `_≈ᶜ_` that follow
from it by key-locality.  No postulates.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Transaction
open import Ledger.Dijkstra.Specification.Abstract

module Ledger.Dijkstra.Specification.Ledger.Properties.CertLemmas
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Prelude
open import Ledger.Dijkstra.Specification.Certs govStructure
open import Ledger.Dijkstra.Specification.Ledger txs abs
open import Ledger.Dijkstra.Specification.Entities txs
open import Ledger.Dijkstra.Specification.Ledger.Properties.ReorderLemmas txs abs
  using (certOf; subTxs; isDRepCert; GovDomStable; Indep; Indep-sym; certCreds)
open import Data.List.Properties using (foldl-++)
import Data.List.Relation.Unary.All as Allᴸ
open Allᴸ using ([]; _∷_)

private variable
  Γ : LedgerEnv
  s s′ : LedgerState
  tx : TopLevelTx
```
-->

## One certificate

```agda
-- an update driven only by `delegate` and `dereg` certificates
dOp : {M : Type} → (Credential → Maybe VDeleg → Maybe KeyHash → Coin → M → M) → (Credential → M → M) → M → DCert → M
dOp f g m (delegate c mvd mkh d) = f c mvd mkh d m
dOp f g m (dereg c _)            = g c m
dOp f g m _                      = m

-- the per-field updates of `delegate` and `dereg`
vdF : Credential → Maybe VDeleg → Maybe KeyHash → Coin → VoteDelegs → VoteDelegs
vdF c mvd _ _ m = insertIfJust c mvd m

sdF : Credential → Maybe VDeleg → Maybe KeyHash → Coin → StakeDelegs → StakeDelegs
sdF c _ mkh _ m = insertIfJust c mkh m

rwF : Credential → Maybe VDeleg → Maybe KeyHash → Coin → Rewards → Rewards
rwF c _ _ _ m = m ∪ˡ ❴ c , 0 ❵

ddF : Credential → Maybe VDeleg → Maybe KeyHash → Coin → (Credential ⇀ Coin) → (Credential ⇀ Coin)
ddF c _ _ d m = m ∪⁺ ❴ c , d ❵

resF : ∀ {B : Type} → Credential → (Credential ⇀ B) → (Credential ⇀ B)
resF c m = m ∣ ❴ c ❵ ᶜ

-- vote delegations: also dropped when their DRep deregisters
vdOp : VoteDelegs → DCert → VoteDelegs
vdOp m (deregdrep c _) = m ∣^ ❴ vDelegCredential c ❵ ᶜ
vdOp m c               = dOp vdF resF m c

sdOp : StakeDelegs → DCert → StakeDelegs
sdOp = dOp sdF resF

rwOp : Rewards → DCert → Rewards
rwOp = dOp rwF resF

ddOp : (Credential ⇀ Coin) → DCert → (Credential ⇀ Coin)
ddOp = dOp ddF resF

drOp : Epoch → PParams → DReps → DCert → DReps
drOp e pp m (regdrep c _ _) = ❴ c , e + PParams.drepActivity pp ❵ ∪ˡ m
drOp e pp m (deregdrep c _) = resF c m
drOp e pp m _               = m

ccOp : CCHotKeys → DCert → CCHotKeys
ccOp m (ccreghot c mc) = ❴ c , mc ❵ ∪ˡ m
ccOp m _               = m

gdOp : (Credential ⇀ Coin) → DCert → (Credential ⇀ Coin)
gdOp m (regdrep c d _) = ddF c nothing nothing d m
gdOp m (deregdrep c _) = resF c m
gdOp m _               = m

dStep : DCert → DState → DState
dStep c ds = ⟦ vdOp (DState.voteDelegs ds) c , sdOp (DState.stakeDelegs ds) c
             , rwOp (DState.rewards ds) c , ddOp (DState.deposits ds) c ⟧ᵈ

gStep : Epoch → PParams → DCert → GState → GState
gStep e pp c gs = ⟦ drOp e pp (GState.dreps gs) c , ccOp (GState.ccHotKeys gs) c , gdOp (GState.deposits gs) c ⟧ᵛ

-- pool (re-)registration and retirement
poolReg : Epoch → PParams → KeyHash → StakePoolParams → PState → PState
poolReg e pp kh p ps = record ps { pools = PState.pools ps ∪ˡ ❴ kh , mkStakePoolState e p ❵ ; deposits = PState.deposits ps ∪ˡ ❴ kh , PParams.poolDeposit pp ❵ }

poolRereg : KeyHash → StakePoolParams → PState → PState
poolRereg kh p ps = record ps { fPools = ❴ kh , p ❵ ∪ˡ PState.fPools ps ; retiring = PState.retiring ps ∣ ❴ kh ❵ ᶜ }

poolRetire : KeyHash → Epoch → PState → PState
poolRetire kh e ps = record ps { retiring = ❴ kh , e ❵ ∪ˡ PState.retiring ps }

pStep : Epoch → PParams → DCert → PState → PState
pStep e pp (regpool kh p)     ps = if kh ∈ dom (PState.pools ps) then poolRereg kh p ps else poolReg e pp kh p ps
pStep _ _  (retirepool kh e′) ps = poolRetire kh e′ ps
pStep _ _ _ ps = ps

certStep : Epoch → PParams → CertState → DCert → CertState
certStep e pp cs c = ⟦ dStep c (CertState.dState cs) , pStep e pp c (CertState.pState cs) , gStep e pp c (CertState.gState cs) ⟧ᶜˢ

if-yes : ∀ {P : Type} ⦃ _ : P ⁇ ⦄ {A : Type} {x y : A} → P → (if P then x else y) ≡ x
if-yes {P} p with ¿ P ¿
... | yes _ = refl
... | no ¬p = ⊥-elim (¬p p)

if-no : ∀ {P : Type} ⦃ _ : P ⁇ ⦄ {A : Type} {x y : A} → ¬ P → (if P then x else y) ≡ y
if-no {P} ¬p with ¿ P ¿
... | yes p = ⊥-elim (¬p p)
... | no _  = refl

pStep-yes : ∀ {e pp kh p ps} → kh ∈ dom (PState.pools ps) → pStep e pp (regpool kh p) ps ≡ poolRereg kh p ps
pStep-yes = if-yes

pStep-no : ∀ {e pp kh p ps} → kh ∉ dom (PState.pools ps) → pStep e pp (regpool kh p) ps ≡ poolReg e pp kh p ps
pStep-no = if-no

private
  POOL⇒step : ∀ {Γᵖ : PoolEnv} {ps ps′ c} → Γᵖ ⊢ ps ⇀⦇ c ,POOL⦈ ps′ → ps′ ≡ pStep (PoolEnv.epoch Γᵖ) (PoolEnv.pp Γᵖ) c ps
  POOL⇒step (POOL-reg (¬r , _))  = sym (if-no ¬r)
  POOL⇒step (POOL-rereg (r , _)) = sym (if-yes r)
  POOL⇒step (POOL-retirepool _)  = refl

CERT⇒step : ∀ {Γᶜ : CertEnv} {cs cs′ c} → Γᶜ ⊢ cs ⇀⦇ c ,CERT⦈ cs′ → cs′ ≡ certStep (CertEnv.epoch Γᶜ) (CertEnv.pp Γᶜ) cs c
CERT⇒step (CERT-deleg (DELEG-delegate _))      = refl
CERT⇒step (CERT-deleg (DELEG-dereg _))         = refl
CERT⇒step {cs = ⟦ d , _ , g ⟧ᶜˢ} (CERT-pool p@(POOL-reg _))   = cong (λ ps → ⟦ d , ps , g ⟧ᶜˢ) (POOL⇒step p)
CERT⇒step {cs = ⟦ d , _ , g ⟧ᶜˢ} (CERT-pool p@(POOL-rereg _)) = cong (λ ps → ⟦ d , ps , g ⟧ᶜˢ) (POOL⇒step p)
CERT⇒step {cs = ⟦ d , _ , g ⟧ᶜˢ} (CERT-pool p@(POOL-retirepool _)) = cong (λ ps → ⟦ d , ps , g ⟧ᶜˢ) (POOL⇒step p)
CERT⇒step (CERT-gov (GOVCERT-regdrep _))       = refl
CERT⇒step (CERT-gov (GOVCERT-deregdrep _))     = refl
CERT⇒step (CERT-gov (GOVCERT-ccreghot _))      = refl

CERTS⇒fold : ∀ {Γᶜ : CertEnv} {cs cs′ cts} → Γᶜ ⊢ cs ⇀⦇ cts ,CERTS⦈ cs′
  → cs′ ≡ foldl (certStep (CertEnv.epoch Γᶜ) (CertEnv.pp Γᶜ)) cs cts
CERTS⇒fold (BS-base Id-nop) = refl
CERTS⇒fold {cts = c ∷ cts} (BS-ind st rest) =
  trans (CERTS⇒fold rest) (cong (λ x → foldl (certStep _ _) x cts) (CERT⇒step st))
```

## One batch member, one top-level transaction

```agda
-- withdrawals and the DRep activity refresh, before the certificates
entPre : ∀ {ℓ} → Epoch → PParams → Tx ℓ → CertState → CertState
entPre e pp x cs =
  ⟦ record (CertState.dState cs) { rewards = applyWithdrawals (WithdrawalsOf x) (DState.rewards (CertState.dState cs)) }
  , CertState.pState cs
  , record (CertState.gState cs)
      { dreps = mapValueRestricted (const (e + PParams.drepActivity pp)) (GState.dreps (CertState.gState cs))
                  (mapPartial (isGovVoterDRep ∘ GovVote.voter) (fromList (ListOfGovVotesOf x))) } ⟧ᶜˢ

-- direct deposits, after the certificates
entPost : ∀ {ℓ} → Tx ℓ → CertState → CertState
entPost x cs =
  ⟦ record (CertState.dState cs)
      { rewards    = applyDirectDeposits (DirectDepositsOf x) (DState.rewards (CertState.dState cs)) }
  , CertState.pState cs , CertState.gState cs ⟧ᶜˢ

-- opaque, so that comparing two applications compares the arguments
opaque
  entOp : ∀ {ℓ} → Epoch → PParams → Tx ℓ → CertState → CertState
  entOp e pp x cs = entPost x (foldl (certStep e pp) (entPre e pp x cs) (DCertsOf x))

opaque
  unfolding entOp

  entOp≡ : ∀ {ℓ} e pp (x : Tx ℓ) cs → entOp e pp x cs ≡ entPost x (foldl (certStep e pp) (entPre e pp x cs) (DCertsOf x))
  entOp≡ _ _ _ _ = refl

SUBENTITIES⇒ : ∀ {Γᵉ : SubEntitiesEnv} {cs cs′ x} → Γᵉ ⊢ cs ⇀⦇ x ,SUBENTITIES⦈ cs′
  → cs′ ≡ entOp (SubEntitiesEnv.epoch Γᵉ) (SubEntitiesEnv.pp Γᵉ) x cs
SUBENTITIES⇒ {cs = cs} {x = x} (SUBENTITIES (_ , _ , _ , _ , _ , certs , _ , _)) =
  trans (cong (entPost x) (CERTS⇒fold certs)) (sym (entOp≡ _ _ x cs))

ENTITIES⇒ : ∀ {Γᵉ : EntitiesEnv} {cs cs′ x} → Γᵉ ⊢ cs ⇀⦇ x ,ENTITIES⦈ cs′
  → cs′ ≡ entOp (EntitiesEnv.epoch Γᵉ) (EntitiesEnv.pp Γᵉ) x cs
ENTITIES⇒ {cs = cs} {x = x} (ENTITIES (_ , _ , _ , _ , _ , _ , _ , _ , certs , _ , _)) =
  trans (cong (entPost x) (CERTS⇒fold certs)) (sym (entOp≡ _ _ x cs))

-- decide on the validity flag without disturbing the goal
byValidity : (t : TopLevelTx) {C : Type} → (IsValidFlagOf t ≡ true → C) → (IsValidFlagOf t ≡ false → C) → C
byValidity t f g with IsValidFlagOf t
... | true  = f refl
... | false = g refl

-- the certificate-state effect of a top-level transaction
certOpᵀ : Epoch → PParams → CertState → TopLevelTx → CertState
certOpᵀ e pp cs t =
  if IsValidFlagOf t then entOp e pp t (foldl (λ c x → entOp e pp x c) cs (subTxs t)) else cs

-- the subtransactions' effect, in order
memberFold : Epoch → PParams → CertState → List SubLevelTx → CertState
memberFold e pp = foldl (λ c x → entOp e pp x c)

memberFold-∷ : ∀ {e pp c x xs} → memberFold e pp c (x ∷ xs) ≡ memberFold e pp (entOp e pp x c) xs
memberFold-∷ = refl

SUBLEDGERS⇒cert : ∀ {Γˢ : SubLedgerEnv} {s s′ : LedgerState} {stxs}
  → SubLedgerEnv.isTopLevelValid Γˢ ≡ true → Γˢ ⊢ s ⇀⦇ stxs ,SUBLEDGERS⦈ s′
  → certOf s′ ≡ memberFold (epoch (SubLedgerEnv.slot Γˢ)) (SubLedgerEnv.pparams Γˢ) (certOf s) stxs
SUBLEDGERS⇒cert _ (BS-base Id-nop) = refl
SUBLEDGERS⇒cert {Γˢ} {s = s} {stxs = x ∷ xs} v (BS-ind (SUBLEDGER-V (refl , _ , ents , _)) rest) =
  trans (SUBLEDGERS⇒cert v rest)
    (trans (cong (λ c → memberFold e pp c xs) (SUBENTITIES⇒ ents))
           (sym (memberFold-∷ {e} {pp} {certOf s} {x} {xs})))
  where e = epoch (SubLedgerEnv.slot Γˢ) ; pp = SubLedgerEnv.pparams Γˢ
SUBLEDGERS⇒cert v (BS-ind (SUBLEDGER-I (i , _)) _) = ⊥-elim (case trans (sym v) i of λ ())

certOpᵀ-v : ∀ {e pp cs t} → IsValidFlagOf t ≡ true
  → certOpᵀ e pp cs t ≡ entOp e pp t (memberFold e pp cs (subTxs t))
certOpᵀ-v v rewrite v = refl

certOpᵀ-i : ∀ {e pp cs t} → IsValidFlagOf t ≡ false → certOpᵀ e pp cs t ≡ cs
certOpᵀ-i i rewrite i = refl

LEDGER⇒certΔ : Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s′
  → certOf s′ ≡ certOpᵀ (epoch (LedgerEnv.slot Γ)) (LedgerEnv.pparams Γ) (certOf s) tx
LEDGER⇒certΔ {Γ = Γ} {s = s} {tx = tx} (LEDGER-V (v , sub , ents , _ , _)) =
  trans (ENTITIES⇒ ents)
    (trans (cong (entOp e pp tx) (SUBLEDGERS⇒cert v sub)) (sym (certOpᵀ-v {e} {pp} {certOf s} {tx} v)))
  where e = epoch (LedgerEnv.slot Γ) ; pp = LedgerEnv.pparams Γ
LEDGER⇒certΔ {Γ = Γ} {s = s} {tx = tx} (LEDGER-I (i , _ , _)) =
  sym (certOpᵀ-i {epoch (LedgerEnv.slot Γ)} {LedgerEnv.pparams Γ} {certOf s} {tx} i)
```
