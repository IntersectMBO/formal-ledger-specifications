module MyDebugOptions where

open import Data.List
open import Interface.MonadTC
open Filter

instance
  defaultDebugOptionsI : DebugOptions
  defaultDebugOptionsI = record defaultDebugOptions
    { selection = All
    ; filter = noneOf ("getDataDef" ∷ "getSTSConstrs" ∷ "assumption" ∷
        "derive⇐" ∷ "derive⇒" ∷ "specializeType" ∷ []) }
