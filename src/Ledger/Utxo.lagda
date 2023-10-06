\section{UTxO}
\label{sec:utxo}

\subsection{Accounting}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Algebra              using (CommutativeMonoid)
open import Data.Integer.Ext     using (posPart; negPart)
open import Data.Nat.Properties  using (+-0-monoid; +-0-commutativeMonoid)
open import Tactic.Derive.DecEq

open import Ledger.Prelude
open import Ledger.Transaction

module Ledger.Utxo (txs : _) (open TransactionStructure txs) where

instance
  _ = TokenAlgebra.Value-CommutativeMonoid tokenAlgebra
  _ = +-0-monoid
  _ = +-0-commutativeMonoid

  HasCoin-Map : ∀ {A} → ⦃ DecEq A ⦄ → HasCoin (A ⇀ Coin)
  HasCoin-Map .getCoin s = Σᵐᵛ[ x ← s ᶠᵐ ] x

-- utxoEntrySizeWithoutVal = 27 words (8 bytes)
utxoEntrySizeWithoutVal : MemoryEstimate
utxoEntrySizeWithoutVal = 8

utxoEntrySize : TxOut → MemoryEstimate
utxoEntrySize (fst , v) = utxoEntrySizeWithoutVal + size v

-- TODO: fix this
serSize : Value → MemoryEstimate
serSize = λ _ → zero

open PParams
\end{code}

Figure~\ref{fig:functions:utxo} defines functions needed for the UTxO transition system.
Figure~\ref{fig:ts-types:utxo-shelley} defines the types needed for the UTxO transition system.
The UTxO transition system is given in Figure~\ref{fig:rules:utxo-shelley}.

\begin{itemize}

  \item
    The function $\fun{outs}$ creates the unspent outputs generated by a transaction.
    It maps the transaction id and output index to the output.

  \item
    The $\fun{balance}$ function calculates sum total of all the coin in a given UTxO.
\end{itemize}

\AgdaTarget{outs, minfee, inInterval, balance}
\begin{figure*}[h]
\begin{code}[hide]
module _ (open TxBody) where
\end{code}
\begin{code}
  outs : TxBody → UTxO
  outs tx = mapKeys (tx .txid ,_) (tx .txouts)

  balance : UTxO → Value
  balance utxo = Σᵐᵛ[ x ← utxo ᶠᵐ ] getValue x

  cbalance : UTxO → Coin
  cbalance utxo = coin (balance utxo)

  minfee : PParams → TxBody → Coin
  minfee pp tx = pp .a * tx .txsize + pp .b

  data DepositPurpose : Set where
    CredentialDeposit  : Credential   → DepositPurpose
    PoolDeposit        : Credential   → DepositPurpose
    DRepDeposit        : Credential   → DepositPurpose
    GovActionDeposit   : GovActionID  → DepositPurpose

  certDeposit : PParams → DCert → Maybe (DepositPurpose × Coin)
  certDeposit _   (delegate c _ _ v)  = just (CredentialDeposit c , v)
  certDeposit pp  (regpool c _)       = just (PoolDeposit       c , pp .poolDeposit)
  certDeposit _   (regdrep c v _)     = just (DRepDeposit       c , v)
  certDeposit _   _                   = nothing

  certDepositᵐ : PParams → DCert → DepositPurpose ⇀ Coin
  certDepositᵐ pp cert = case certDeposit pp cert of λ where
    (just (p , v))  → ❴ p , v ❵ᵐ
    nothing         → ∅ᵐ

  propDepositᵐ : PParams → GovActionID → GovProposal → DepositPurpose ⇀ Coin
  propDepositᵐ pp gaid record { returnAddr = record { stake = c } }
    = ❴ GovActionDeposit gaid , pp .govActionDeposit ❵ᵐ

  certRefund : DCert → Maybe DepositPurpose
  certRefund (delegate c nothing nothing x)  = just (CredentialDeposit c)
  certRefund (deregdrep c)                   = just (DRepDeposit       c)
  certRefund _                               = nothing

  certRefundˢ : DCert → ℙ DepositPurpose
  certRefundˢ = partialToSet certRefund

  -- this has to be a type definition for inference to work
  data inInterval (slot : Slot) : (Maybe Slot × Maybe Slot) → Set where
    both   : ∀ {l r}  → l ≤ slot × slot ≤ r  →  inInterval slot (just l   , just r)
    lower  : ∀ {l}    → l ≤ slot             →  inInterval slot (just l   , nothing)
    upper  : ∀ {r}    → slot ≤ r             →  inInterval slot (nothing  , just r)
    none   :                                    inInterval slot (nothing  , nothing)

\end{code}
\begin{code}[hide]
instance
  unquoteDecl DecEq-DepositPurpose = derive-DecEq
    ((quote DepositPurpose , DecEq-DepositPurpose) ∷ [])

  HasCoin-UTxO : HasCoin UTxO
  HasCoin-UTxO .getCoin = cbalance
\end{code}

\caption{Functions used in UTxO rules}
\label{fig:functions:utxo}
\end{figure*}

\AgdaTarget{UTxOEnv, UTxOState, \_⊢\_⇀⦇\_,UTXO⦈\_}
\begin{figure*}[h]
\emph{Derived types}
\begin{code}
Deposits = DepositPurpose ⇀ Coin
\end{code}
\emph{UTxO environment}
\begin{code}
record UTxOEnv : Set where
  field slot     : Slot
        ppolicy  : Maybe ScriptHash
        pparams  : PParams
\end{code}
\emph{UTxO states}
\begin{code}
record UTxOState : Set where
  constructor ⟦_,_,_,_⟧ᵘ
  field utxo       : UTxO
        fees       : Coin
        deposits   : Deposits
        donations  : Coin
\end{code}
\emph{UTxO transitions}

\begin{code}[hide]
⟦_⟧ : {A : Set} → A → A
⟦_⟧ = id

instance
  netId? : ∀ {A : Set} {networkId : Network} {f : A → Network}
    → Dec₁ (λ a → f a ≡ networkId)
  netId? {_} {networkId} {f} .Dec₁.P? a = f a ≟ networkId

  Dec-inInterval : {slot : Slot} {I : Maybe Slot × Maybe Slot} → Dec (inInterval slot I)
  Dec-inInterval {slot} {just x  , just y } with x ≤? slot | slot ≤? y
  ... | no ¬p₁ | _      = no λ where (both (h₁ , h₂)) → ¬p₁ h₁
  ... | yes p₁ | no ¬p₂ = no λ where (both (h₁ , h₂)) → ¬p₂ h₂
  ... | yes p₁ | yes p₂ = yes (both (p₁ , p₂))
  Dec-inInterval {slot} {just x  , nothing} with x ≤? slot
  ... | no ¬p = no  (λ where (lower h) → ¬p h)
  ... | yes p = yes (lower p)
  Dec-inInterval {slot} {nothing , just x } with slot ≤? x
  ... | no ¬p = no  (λ where (upper h) → ¬p h)
  ... | yes p = yes (upper p)
  Dec-inInterval {slot} {nothing , nothing} = yes none

  HasCoin-UTxOState : HasCoin UTxOState
  HasCoin-UTxOState .getCoin s = getCoin (UTxOState.utxo s)
                               + (UTxOState.fees s)
                               + getCoin (UTxOState.deposits s)
                               + UTxOState.donations s
data
\end{code}
\begin{code}
  _⊢_⇀⦇_,UTXO⦈_ : UTxOEnv → UTxOState → TxBody → UTxOState → Set
\end{code}
\caption{UTxO transition-system types}
\label{fig:ts-types:utxo-shelley}
\end{figure*}

\begin{figure*}
\begin{code}[hide]
module _ (let open UTxOState; open TxBody) where
\end{code}
\begin{code}
  updateCertDeposits : PParams → List DCert → DepositPurpose ⇀ Coin
    → DepositPurpose ⇀ Coin
  updateCertDeposits pp [] deposits = deposits
  updateCertDeposits pp (cert ∷ certs) deposits
    =  updateCertDeposits pp certs deposits ∪⁺ certDepositᵐ pp cert
    ∣  certRefundˢ cert ᶜ

  updateProposalDeposits : PParams → TxId → List GovProposal → DepositPurpose ⇀ Coin
    → DepositPurpose ⇀ Coin
  updateProposalDeposits pp txid [] deposits = deposits
  updateProposalDeposits pp txid (prop ∷ props) deposits
    =   updateProposalDeposits pp txid props deposits
    ∪⁺  propDepositᵐ pp (txid , length props) prop

  updateDeposits : PParams → TxBody → DepositPurpose ⇀ Coin → DepositPurpose ⇀ Coin
  updateDeposits pp txb
    =  updateCertDeposits pp (txb .txcerts)
    ∘  updateProposalDeposits pp (txb .txid) (txb .txprop)

  depositsChange : PParams → TxBody → DepositPurpose ⇀ Coin → ℤ
  depositsChange pp txb deposits
    =  getCoin (updateDeposits pp txb deposits)
    ⊖  getCoin deposits

  depositRefunds : PParams → UTxOState → TxBody → Coin
  depositRefunds pp st txb = negPart (depositsChange pp txb (st .deposits))

  newDeposits : PParams → UTxOState → TxBody → Coin
  newDeposits pp st txb = posPart (depositsChange pp txb (st .deposits))

  consumed : PParams → UTxOState → TxBody → Value
  consumed pp st txb
    =  balance (st .utxo ∣ txb .txins)
    +  txb .mint
    +  inject (depositRefunds pp st txb)

  produced : PParams → UTxOState → TxBody → Value
  produced pp st txb
    =  balance (outs txb)
    +  inject (txb .txfee)
    +  inject (newDeposits pp st txb)
    +  inject (txb .txdonation)
\end{code}
\caption{Functions used in UTxO rules, continued}
\label{fig:functions:utxo-2}
\end{figure*}

\begin{figure*}[h]
\begin{code}[hide]
open PParams

private variable
  Γ : UTxOEnv
  s : UTxOState
  tx : TxBody

data _⊢_⇀⦇_,UTXO⦈_ where
\end{code}
\begin{code}
  UTXO-inductive :
    let open TxBody tx
        open UTxOEnv Γ renaming (pparams to pp)
        open UTxOState s
      in
       txins ≢ ∅                            → txins ⊆ dom utxo
    →  inInterval slot txvldt               → minfee pp tx ≤ txfee
    →  consumed pp s tx ≡ produced pp s tx  → coin mint ≡ 0
    →  txsize ≤ maxTxSize pp
       ────────────────────────────────
       Γ ⊢ s ⇀⦇ tx ,UTXO⦈  ⟦ (utxo ∣ txins ᶜ) ∪ᵐˡ (outs tx)
                           , fees + txfee
                           , updateDeposits pp tx deposits
                           , donations + txdonation
                           ⟧ᵘ
\end{code}
\begin{code}[hide]
instance
  Computational-UTXO : Computational _⊢_⇀⦇_,UTXO⦈_
  Computational-UTXO = record {go} where module go Γ s tx where
    open TxBody tx
    open UTxOEnv Γ renaming (pparams to pp)
    open UTxOState s

    UTXO-premises : Set
    UTXO-premises
      = txins ≢ ∅
      × txins ⊆ dom utxo
      × inInterval slot txvldt
      × minfee pp tx ≤ txfee
      × consumed pp s tx ≡ produced pp s tx
      × coin mint ≡ 0
      × txsize ≤ maxTxSize pp

    UTXO-premises? : Dec UTXO-premises
    UTXO-premises? = ¿ UTXO-premises ¿

    computeProof =
      case UTXO-premises? of λ where
        (yes (p₀ , p₁ , p₂ , p₃ , p₄ , p₅ , p₆)) →
          just (_ , UTXO-inductive p₀ p₁ p₂ p₃ p₄ p₅ p₆)
        (no _) → nothing

    completeness : ∀ s' → Γ ⊢ s ⇀⦇ tx ,UTXO⦈ s' → _
    completeness s' h@(UTXO-inductive q₀ q₁ q₂ q₃ q₄ q₅ q₆) = QED
      where
      QED : map proj₁ computeProof ≡ just s'
      QED with UTXO-premises?
      ... | yes (p₀ , p₁ , p₂ , p₃ , p₄ , p₅ , p₆) = refl
      ... | no q = ⊥-elim (q (q₀ , q₁ , q₂ , q₃ , q₄ , q₅ , q₆))
\end{code}
\caption{UTXO inference rules}
\label{fig:rules:utxo-shelley}
\end{figure*}
