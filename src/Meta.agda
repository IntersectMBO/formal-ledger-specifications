{-# OPTIONS --safe --without-K #-}

module Meta where

open import Reflection.Debug public
open import Reflection.TCI public
open import Reflection.Syntax public
open import Reflection.AST.Term using (vΠ[_∶_]_) public

instance
  iMonad-TC = Monad-TC
  iMonadTC-TCI = MonadTC-TCI
  iMonadReader-TC = MonadReader-TC
  iMonadError-TC = MonadError-TC
