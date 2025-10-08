\modulenote{\ConwayModule{Properties}} in which we define some types and functions
used to check the validity of transactions and blocks of the Cardano blockchain.

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Abstract
open import Ledger.Conway.Specification.Transaction

module Ledger.Conway.Specification.Properties
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where
open import Ledger.Conway.Specification.Certs govStructure
open import Ledger.Conway.Specification.Chain txs abs
open import Ledger.Conway.Specification.Enact govStructure
open import Ledger.Conway.Specification.Epoch txs abs
open import Ledger.Conway.Specification.Ledger txs abs
open import Ledger.Prelude
\end{code}

Transaction validity is complicated.  In the truest sense, a transaction is valid if
it is part of a valid block; i.e., \AgdaFunction{validTxIn₁} \AgdaBound{s}
\AgdaBound{tx}, where \AgdaBound{s} is a chain state and \AgdaBound{tx} is the
transaction in question.  However, a transaction can also be seen as valid if it
could be applied at a certain slot (with no knowledge of an actual block). This is
closer to how the mempool sees transaction validity and is expressed by
\AgdaFunction{validTxIn₂}.

Note that these two are not equivalent and in fact there is no
implication between the two in either direction.
Indeed, \AgdaFunction{validTxIn₂} => \AgdaFunction{validTxIn₁} would
require one to come up with a block, which we can't, while
\AgdaFunction{validTxIn₁} => \AgdaFunction{validTxIn₂}
may fail since the transaction might depend on a previous
transaction in the same block.\footnote{This could indicate that
  \AgdaFunction{validTxIn₂} should be changed so that it allows for applying a list
  of transactions before the final transaction; the downside would then be that the
  transaction isn't applied to the given state but to some intermediate one.  We
  expect to have more insight into this matter once we have proved more theorems.}

\begin{code}
isCredDeposit : DepositPurpose → Type
isCredDeposit (CredentialDeposit x) = ⊤
isCredDeposit _ = ⊥
\end{code}
\begin{code}[hide]
instance
  isCredDeposit? : isCredDeposit ⁇¹
  isCredDeposit? {CredentialDeposit x} = ⁇ (yes tt)
  isCredDeposit? {PoolDeposit x} = ⁇ (no λ ())
  isCredDeposit? {DRepDeposit x} = ⁇ (no λ ())
  isCredDeposit? {GovActionDeposit x} = ⁇ (no λ ())
\end{code}
\begin{code}
isGADeposit : DepositPurpose → Type
isGADeposit (GovActionDeposit x) = ⊤
isGADeposit _ = ⊥
\end{code}
\begin{code}[hide]
instance
  isGADeposit? : isGADeposit ⁇¹
  isGADeposit? {CredentialDeposit x} = ⁇ (no λ ())
  isGADeposit? {PoolDeposit x} = ⁇ (no λ ())
  isGADeposit? {DRepDeposit x} = ⁇ (no λ ())
  isGADeposit? {GovActionDeposit x} = ⁇ (yes tt)
\end{code}
\begin{code}
activeDReps : Epoch → NewEpochState → ℙ Credential
activeDReps currentEpoch s = dom (filterᵐ (λ (_ , e) → currentEpoch ≤ e) (DRepsOf s))
\end{code}
\begin{code}[hide]
instance
  _ : IsSet Block Tx
  _ = record { toSet = fromList ∘ Block.ts }

  _ : IsSet TxBody GovProposal
  _ = record { toSet = fromList ∘ TxBody.txGovProposals }
\end{code}
\begin{code}
validBlockIn : ChainState → Block → Type
validBlockIn s b = ∃[ s' ] _ ⊢ s ⇀⦇ b ,CHAIN⦈ s'

validBlock : Block → Type
validBlock b = ∃[ s ] validBlockIn s b

validTxIn₁ : ChainState → Tx → Type
validTxIn₁ s tx = ∃[ b ] tx ∈ b × validBlockIn s b
\end{code}
\begin{code}[hide]
module _ (s : ChainState) (slot : Slot) where

  open ChainState s; open NewEpochState newEpochState
  open EpochState epochState; open EnactState es
\end{code}
\begin{code}
  private
    ledgerEnv = ⟦ slot , constitution .proj₁ .proj₂ , pparams .proj₁ , es , Acnt.treasury acnt ⟧

  validTxIn₂ : Tx → Type
  validTxIn₂ tx = ∃[ ls' ] ledgerEnv ⊢ ls ⇀⦇ tx ,LEDGER⦈ ls'

validTx₁ : Tx → Type
validTx₁ tx = ∃[ s ] validTxIn₁ s tx
\end{code}
