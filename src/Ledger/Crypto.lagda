\begin{document}
\begin{code}
module Ledger.Crypto where

open import Prelude
open import DecEq

record PKKScheme : Set₁ where
  field SKey VKey Sig Ser : Set
        isKeyPair : SKey → VKey → Set
        isSigned : VKey → Ser → Sig → Set
        sign : SKey → Ser → Sig

        instance decEq-VKey : DecEq VKey
                 decEq-Sig  : DecEq Sig
                 decEq-Ser  : DecEq Ser

  KeyPair = Σ[ sk ∈ SKey ] Σ[ vk ∈ VKey ] isKeyPair sk vk

  field isSigned-correct : ((sk , vk , _) : KeyPair) (d : Ser) (σ : Sig) → sign sk d ≡ σ → isSigned vk d σ

record HashingScheme (T : Set) : Set₁ where
  field THash : Set
        hash  : T → THash

record Crypto : Set₁ where
  field pkk : PKKScheme
        Script : Set

  open PKKScheme pkk public

  field khs : HashingScheme VKey
        shs : HashingScheme Script

  open HashingScheme khs renaming (THash to KeyHash   ; hash to hashKey    ) public
  open HashingScheme shs renaming (THash to ScriptHash; hash to hashScripts) public

  field instance decEq-KeyHash : DecEq KeyHash
                 decEq-Script  : DecEq Script
                 decEq-ScriptHash : DecEq ScriptHash

-- TODO: KES and VRF
\end{code}
\end{document}
