{-# OPTIONS --safe --without-K #-}

module PreludeMeta where

-- ** Re-exporting from stdlib
open import Agda.Builtin.Reflection public
  using (withReduceDefs; getInstances)
open import Reflection public
  using (TC; Name; Meta; extendContext; withNormalisation)
open import Reflection.AST.Term public
  hiding (_≟_)
open import Reflection.AST.Argument public
  using (Arg; arg; unArg; Args; vArg; hArg; iArg; _⟨∷⟩_; _⟅∷⟆_)
open import Reflection.AST.Argument.Visibility public
  using (Visibility; visible; hidden; instance′)
open import Reflection.AST.Abstraction public
  using (Abs; abs; unAbs)
open import Reflection.AST.DeBruijn public
  using (weaken; strengthen; η-expand)

-- ** Re-exporting from stdlib-meta
open import Generics public
  hiding (mkRecord; error)

-- ** MonadTC interface for TC
open import Interface.MonadTC.Instance public
  hiding (extendContext)
open import Interface.MonadError public
  using (MonadError; MonadError-TC)
open MonadError ⦃...⦄ public
  using (error; catch)
instance
  iTC  = MonadTC-TC
  iTCE = MonadError-TC

-- ** MonadTC interface for TCI
open import Meta public
  renaming (TC to TCI)
  hiding (Monad-TC; MonadError-TC; toℕ)
