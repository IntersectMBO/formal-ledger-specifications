\section{Blockchain Layer}
\label{sec:blockchain-layer}
\modulenote{\LedgerModule{Chain}}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Algebra
open import Data.Nat.Properties using (+-0-monoid)

open import Ledger.Prelude; open Equivalence
open import Ledger.Transaction
open import Ledger.Abstract

module Ledger.Chain
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Enact govStructure
open import Ledger.Interface.HasDowncast.Instance txs govStructure
open import Ledger.Ledger txs abs
open import Ledger.Ratify txs
open import Ledger.Utxo txs abs
open import Ledger.Epoch txs abs
open import Ledger.Certs govStructure
\end{code}
\begin{figure*}[h]
\begin{AgdaMultiCode}
\begin{code}
record ChainState : Type where
  field
    newEpochState  : NewEpochState

record Block : Type where
  field
    ts    : List Tx
    slot  : Slot
\end{code}
\end{AgdaMultiCode}
\caption{Definitions CHAIN transition system}
\end{figure*}
\begin{code}[hide]
instance
  HasNewEpochState-ChainState : HasNewEpochState ChainState
  HasNewEpochState-ChainState .NewEpochStateOf = ChainState.newEpochState

  HasEpochState-ChainState : HasEpochState ChainState 
  HasEpochState-ChainState .EpochStateOf = EpochStateOf ∘ NewEpochStateOf

  HasEnactState-ChainState : HasEnactState ChainState 
  HasEnactState-ChainState .EnactStateOf = EnactStateOf ∘ EpochStateOf

  HasLState-ChainState : HasLState ChainState
  HasLState-ChainState .LStateOf = LStateOf ∘ EpochStateOf

  HasUTxOState-ChainState : HasUTxOState ChainState
  HasUTxOState-ChainState .UTxOStateOf = UTxOStateOf ∘ LStateOf

  HasCertState-ChainState : HasCertState ChainState
  HasCertState-ChainState .CertStateOf = CertStateOf ∘ LStateOf

  HasDeposits-ChainState : HasDeposits ChainState
  HasDeposits-ChainState .DepositsOf = DepositsOf ∘ UTxOStateOf

  HasRewards-ChainState : HasRewards ChainState
  HasRewards-ChainState .RewardsOf = RewardsOf ∘ CertStateOf

  HasPParams-ChainState : HasPParams ChainState
  HasPParams-ChainState .PParamsOf = PParamsOf ∘ EnactStateOf

instance _ = +-0-monoid

-- TODO: do we still need this for anything?
maybePurpose : DepositPurpose → (DepositPurpose × Credential) → Coin → Maybe Coin
maybePurpose prps (prps' , _) c with prps ≟ prps'
... | yes _ = just c
... | no _ = nothing

maybePurpose-prop : ∀ {prps} {x} {y}
  → (m : (DepositPurpose × Credential) ⇀ Coin)
  → (x , y) ∈ dom ((mapMaybeWithKeyᵐ (maybePurpose prps) m) ˢ)
  → x ≡ prps
maybePurpose-prop {prps = prps} {x} {y} _ xy∈dom with from dom∈ xy∈dom
... | z , ∈mmwk with prps ≟ x | ∈-mapMaybeWithKey {f = maybePurpose prps} ∈mmwk
... | yes refl | _ = refl

filterPurpose : DepositPurpose → (DepositPurpose × Credential) ⇀ Coin → Credential ⇀ Coin
filterPurpose prps m = mapKeys proj₂ (mapMaybeWithKeyᵐ (maybePurpose prps) m)
  {λ where x∈dom y∈dom refl → cong (_, _)
                            $ trans (maybePurpose-prop {prps = prps} m x∈dom)
                            $ sym   (maybePurpose-prop {prps = prps} m y∈dom)}

govActionDeposits : LState → VDeleg ⇀ Coin
govActionDeposits ls =
  let open LState ls; open CertState certState; open PState pState
      open UTxOState utxoSt; open DState dState
   in foldl _∪⁺_ ∅ $ setToList $
    mapPartial
      (λ where (gaid , record { returnAddr = record {stake = c} }) → do
        vd ← lookupᵐ? voteDelegs c
        dep ← lookupᵐ? deposits (GovActionDeposit gaid)
        just ❴ vd , dep ❵ )
      (fromList govSt)

calculateStakeDistrs : LState → StakeDistrs
calculateStakeDistrs ls =
  let open LState ls; open CertState certState; open PState pState
      open UTxOState utxoSt; open DState dState
      spoDelegs = ∅ -- TODO
      drepDelegs = ∅ -- TODO
  in
  record
    { stakeDistr = govActionDeposits ls
    }

totalRefScriptsSize : LState → List Tx → ℕ
totalRefScriptsSize lst txs = sum $ map (refScriptsSize utxo) txs
  where open UTxOState (LState.utxoSt lst)

private variable
  ls' : LState 
data
\end{code}
\begin{figure*}[h]
\begin{AgdaSuppressSpace}
\begin{code}
  _⊢_⇀⦇_,CHAIN⦈_ : ⊤ → ChainState → Block → ChainState → Type
\end{code}
\end{AgdaSuppressSpace}
\caption{Type of the CHAIN transition system}
\end{figure*}
\begin{code}[hide]
  where
\end{code}
\begin{figure*}[h]
\begin{AgdaSuppressSpace}
\begin{code}
  CHAIN : {b : Block} {nes : NewEpochState} {cs : ChainState}
\end{code}
\begin{code}[hide]
    (let open ChainState cs; open Block b; open NewEpochState nes
         open EpochState epochState; open EnactState es renaming (pparams to pp)
         open PParams ∣ pp ∣ using (maxRefScriptSizePerBlock))
\end{code}
\begin{code}
    ( let  cs'  = record cs  {  newEpochState
                                = record nes  {  epochState
                                                 = record epochState {ls = ls'}
                                              }
                             }
           Γ    = ⟦ slot , ∣ constitution ∣ , ∣ pp ∣ , es , treasuryOf nes ⟧
    )
    → totalRefScriptsSize ls ts ≤ maxRefScriptSizePerBlock
    →  _ ⊢ newEpochState ⇀⦇ epoch slot ,NEWEPOCH⦈ nes
    →  Γ ⊢ ls ⇀⦇ ts ,LEDGERS⦈ ls'
    ────────────────────────────────
    _ ⊢ cs ⇀⦇ b ,CHAIN⦈ cs'
\end{code}
\end{AgdaSuppressSpace}
\caption{CHAIN transition system}
\end{figure*}
