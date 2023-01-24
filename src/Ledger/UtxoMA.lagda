\Section{utxo}
\label{sec:utxo}

\subsection{Accounting}

\begin{code}[hide]
{-# OPTIONS --safe #-}
{-# OPTIONS --overlapping-instances #-}

open import Ledger.Transaction

module Ledger.UtxoMA (txs : TransactionStructure) where

open import Ledger.Prelude hiding (Dec₁)

open import Data.Nat using (_≤?_; _≤_)
open import Data.Nat.Properties using (+-0-commutativeMonoid)
open import Interface.Decidable.Instance

open import MyDebugOptions
--open import Tactic.Defaults
open import Tactic.DeriveComp

open import Algebra.Structures
open import Algebra using (CommutativeMonoid)

open import Ledger.TokenAlgebra using (TokenAlgebra)

open TransactionStructure txs
open TxBody
open TxWitnesses
open Tx

instance
  _ = Decidable²⇒Dec _≤?_
  _ = TokenAlgebra.Value tokenAlgebra

open import Ledger.PParams Epoch
open import Ledger.Crypto
open import Ledger.PPUp

-- fix this
utxoEntrySize : TxOut → MemoryEstimate
utxoEntrySize = λ _ → zero

-- fix this
serSize : ValueC → MemoryEstimate
serSize = λ _ → zero

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
\begin{code}
outs : TxBody → UTxO
outs tx = mapKeys (txid tx ,_) (λ where refl → refl) $ txouts tx

--rename to balance
ubalance : UTxO → ValueC
ubalance utxo = Σᵐ[ x ← utxo ᶠᵐ ] proj₂ (proj₂ x)

cbalance : UTxO → Coin
cbalance utxo = coin (ubalance utxo)

minfee : PParams → TxBody → Coin
minfee pp tx = a * txsize tx + b
  where open PParams pp

-- need to add withdrawals to consumed
consumed : PParams → UTxO → TxBody → ValueC
consumed pp utxo txb = ubalance (utxo ∣ txins txb) +ᵛ mint txb
                     --+ inject (wbalance (txwdrls txb) + keyRefunds pp txb)

-- need to add deposits to produced
produced : PParams → UTxO → TxBody →  ValueC
produced pp utxo txb = ubalance (outs txb)
                     +ᵛ inject (txfee txb)
                     --+ totalDeposits pp stpools (txcerts txb))

-- this has to be a type definition for inference to work
data inInterval (slot : Slot) : (Maybe Slot × Maybe Slot) → Set where
  both  : ∀ {l r} → l ≤ˢ slot × slot ≤ˢ r  →  inInterval slot (just l  , just r)
  lower : ∀ {l}   → l ≤ˢ slot              →  inInterval slot (just l  , nothing)
  upper : ∀ {r}   → slot ≤ˢ r              →  inInterval slot (nothing , just r)
  none  :                                     inInterval slot (nothing , nothing)

\end{code}


\caption{Functions used in UTxO rules}
\label{fig:functions:utxo}
\end{figure*}

\AgdaTarget{UTxOEnv, UTxOState, \_⊢\_⇀⦇\_,UTXO⦈\_}
\begin{figure*}[h]
\emph{UTxO environment}
\begin{code}
record UTxOEnv : Set where
  field slot    : Slot
        pparams : PParams
\end{code}
\emph{UTxO states}
\begin{code}
record UTxOState : Set where
  constructor ⟦_,_⟧ᵘ
  field utxo : UTxO
        fees : Coin
\end{code}
\emph{UTxO transitions}

\begin{code}[hide]
private variable
  tx : TxBody
  utxo utxo' utxo1 utxo2 : UTxO
  fee fee' fees fees' : Coin
  utxoState utxoState' utxoState1 utxoState2 : UTxOState
  Γ : UTxOEnv
  s s' : UTxOState

⟦_⟧ : {A : Set} → A → A
⟦_⟧ = id

instance
  _ = ≟-∅

  ∈-inst : ∀ {A : Set} ⦃ _ : DecEq A ⦄ {s : ℙ A} → Dec₁ (_∈ s)
  ∈-inst {s = s} .Dec₁.P? = _∈? s

  all?' : ∀ {A : Set} {P : A → Set} ⦃ P? : Dec₁ P ⦄ ⦃ _ : DecEq A ⦄ {s : ℙ A} → Dec (All P s)
  all?' ⦃ P? = record { P? = P? } ⦄ {s} = all? P?

  netId? : ∀ {A : Set} {networkId : Network} {f : A → Network} → Dec₁ (λ a → f a ≡ networkId)
  netId? {_} {networkId} {f} .Dec₁.P? a = f a ≟ networkId

  Dec-inInterval : {slot : Slot} {I : Maybe Slot × Maybe Slot} → Dec (inInterval slot I)
  Dec-inInterval {slot} {just x  , just y } with x ≤ˢ? slot | slot ≤ˢ? y
  ... | no ¬p₁ | _      = no λ where (both (h₁ , h₂)) → ¬p₁ h₁
  ... | yes p₁ | no ¬p₂ = no λ where (both (h₁ , h₂)) → ¬p₂ h₂
  ... | yes p₁ | yes p₂ = yes (both (p₁ , p₂))
  Dec-inInterval {slot} {just x  , nothing} with x ≤ˢ? slot
  ... | no ¬p = no  (λ where (lower h) → ¬p h)
  ... | yes p = yes (lower p)
  Dec-inInterval {slot} {nothing , just x } with slot ≤ˢ? x
  ... | no ¬p = no  (λ where (upper h) → ¬p h)
  ... | yes p = yes (upper p)
  Dec-inInterval {slot} {nothing , nothing} = yes none

data
\end{code}
\begin{code}
  _⊢_⇀⦇_,UTXO⦈_ : UTxOEnv → UTxOState → TxBody → UTxOState → Set
\end{code}
\caption{UTxO transition-system types}
\label{fig:ts-types:utxo-shelley}
\end{figure*}

\begin{figure*}[h]
\begin{code}[hide]
data _⊢_⇀⦇_,UTXO⦈_ where
\end{code}
\begin{code}
  UTXO-inductive :
    ∀ {Γ} {s} {tx}
    → let slot = UTxOEnv.slot Γ
          pp   = UTxOEnv.pparams Γ
          utxo = UTxOState.utxo s
          fees = UTxOState.fees s
      in
    --  txins tx ≢ ∅
     inInterval slot (txvldt tx) -- ma
    -- → txins tx ⊆ dom utxo
    -- this is currently broken because of https://github.com/agda/agda/issues/5982
    → let f = txfee tx in minfee pp tx ≤ f
    → consumed pp utxo tx ≡ produced pp utxo tx
    → coin (mint tx) ≡ 0


    → ∀ txout → txout ∈ proj₁ (txouts tx)
              → (getValue (proj₂ txout)) ≥ᵗ (inject (utxoEntrySize (proj₂ txout) * PParams.minUtxOValue pp))

    → ∀ txout → txout ∈ proj₁ (txouts tx)
              → (serSize (getValue (proj₂ txout))) ≤ PParams.maxValSize pp


    -- PPUP
    -- these fail with some reduceDec error
    -- → All (λ { (inj₂ a , _) → BootstrapAddr.attrsSize a ≤ 64 ; _ → ⊤ }) (range ((txouts tx) ˢ))
    -- → All (λ a → netId (proj₁ a) ≡ networkId) (range ((txouts tx) ˢ))
    -- → All (λ a → RwdAddr.net a ≡ networkId) (dom ((txwdrls tx) ˢ))
    → txsize tx ≤ PParams.maxTxSize pp
    -- Add Deposits
    ────────────────────────────────
    Γ
      ⊢ s
      ⇀⦇ tx ,UTXO⦈
      ⟦ (utxo ∣ txins tx ᶜ) ∪ᵐˡ outs tx , fees + f ⟧ᵘ
\end{code}
\begin{figure*}[h]
\begin{code}[hide]
--unquoteDecl Computational-UTXO = deriveComputational (quote _⊢_⇀⦇_,UTXO⦈_) Computational-UTXO
\end{code}
