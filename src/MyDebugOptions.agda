module MyDebugOptions where

open import Prelude

open import Interface.MonadTC

instance
  defaultDebugOptionsI : DebugOptions
  defaultDebugOptionsI = record defaultDebugOptions
    { selection = All
    ; filter = Filter.noneOf ("getDataDef" ∷ "getSTSConstrs" ∷ "assumption" ∷
        "derive⇐" ∷ "derive⇒" ∷ "specializeType" ∷ []) }
