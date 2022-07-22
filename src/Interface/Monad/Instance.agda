{-# OPTIONS --safe --without-K #-}
module Interface.Monad.Instance where

import Data.List as List
import Data.Maybe as Maybe
open import Function

open import Interface.Monad public
open Monad ⦃...⦄ public

instance
  Monad-List : Monad List.List
  Monad-List .return = List._∷ List.[]
  Monad-List ._>>=_  = flip List.concatMap

  Monad-Maybe : Monad Maybe.Maybe
  Monad-Maybe .return = Maybe.just
  Monad-Maybe ._>>=_  = Maybe._>>=_
