module Tactic.Defaults where

open import Interface.MonadTC

-- There should only ever be one instance, with this being convenient
-- to tweak all at once
instance
  defaultDebugOptionsI = record defaultDebugOptions { selection = All }
