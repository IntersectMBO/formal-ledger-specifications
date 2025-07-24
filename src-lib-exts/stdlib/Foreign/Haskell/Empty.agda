{-# OPTIONS --cubical-compatible #-}

module stdlib.Foreign.Haskell.Empty where

------------------------------------------------------------------------
-- Definition

data Empty : Set where

{-# FOREIGN GHC import Data.Void (Void) #-}
{-# COMPILE GHC Empty = data Void () #-}
