{-# OPTIONS --safe --without-K #-}

module Meta where

open import Reflection.TCI public
open import Reflection.Syntax public

instance
  iMonad-TC = Monad-TC
  iMonadTC-TCI = MonadTC-TCI
  iMonadReader-TC = MonadReader-TC
  iMonadError-TC = MonadError-TC
