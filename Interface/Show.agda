{-# OPTIONS --safe --without-K #-}

module Interface.Show where

open import Data.Bool
open import Data.List using (List; _∷_; []; [_]; length; reverse; takeWhile)
open import Data.List.Ext
open import Data.String hiding (length)
open import Data.Product
open import Data.Nat using (ℕ; _∸_)
open import Data.Nat.Show as ℕ
open import Data.Maybe
open import Data.Char as C

open import Reflection hiding (showTerms; showTerm; showSort; showPatterns; showPattern; showClauses; showClause; showTel; visibility; showName)
open import Reflection.AST.Argument.Information
open import Reflection.AST.Argument.Visibility as V
open import Reflection.AST.Term

open import Relation.Nullary.Decidable
open import Relation.Nullary.Negation

open import Function
open import Level

private
  variable ℓ a : Level

record OptShow (Opts : Set ℓ) (A : Set a) : Set (ℓ ⊔ a) where
  field
    oShow : Opts → A → String

open OptShow {{...}} public

record HideTermOptions : Set where
  field
    hideHidden   : Bool
    hideInstance : Bool
    -- hideLevel    : Bool

open HideTermOptions

hideAll : HideTermOptions
hideAll = record { hideHidden = true ; hideInstance = true }

hideNone : HideTermOptions
hideNone = record { hideHidden = false ; hideInstance = false }

record TermShowOptions : Set where
  field
    context       : List String     -- names of the variables
    showDBIndices : Bool            -- don't try to replace indices with names
    showFullNames : Bool            -- don't remove module prefixes from names
    prettyPi      : Bool            -- print Pi as arrows, if no name is given
    -- prettyMixfix  : Bool            -- try to pretty-print mixfix applications
    hideApp       : HideTermOptions -- hide these applications
    hideBind      : HideTermOptions -- hide these binders
    -- groupLambda   : Bool            -- group lambdas
    -- groupPi       : Bool            -- group pis of matching type & visibility

defaultTermShowOpts : TermShowOptions
defaultTermShowOpts = record
                        { context = []
                        ; showDBIndices = false
                        ; showFullNames = false
                        ; prettyPi = true
                        ; hideApp = hideAll
                        ; hideBind = hideNone
                        }

private module TermShow (opts : TermShowOptions) where
  open TermShowOptions opts

  -- in this module, ctx is always the local context
  Context = List String

  mutual
    -- add appropriate parens depending on the given visibility
    visibilityParen : Visibility → String → String
    visibilityParen visible   s = parensIfSpace s
    visibilityParen hidden    s = braces s
    visibilityParen instance′ s = braces (braces s)

    withHideOpts : HideTermOptions → Visibility → String → String
    withHideOpts h visible   s = s
    withHideOpts h hidden    s = if hideHidden   h then "" else s
    withHideOpts h instance′ s = if hideInstance h then "" else s

    showName : Name → String
    showName n = let n' = Reflection.showName n in if showFullNames then n' else dropModulePrefix n'
      where
        dropModulePrefix : String → String
        dropModulePrefix s = fromList $ reverse $ takeWhile (¬? ∘ ('.' C.≟_)) $ reverse $ toList s

    showVar : Context → ℕ → String
    showVar ctx n with showDBIndices | lookupMaybe ctx n
    ... | true  | _       = "var" <+> ℕ.show n
    ... | false | just x  = x
    ... | false | nothing with lookupMaybe context (n ∸ length ctx)
    ... | just x  = x
    ... | nothing = "𝔾" ++ ℕ.show (n ∸ length ctx) -- this signifies a free variable that isn't in the global context
    -- seeing a 𝔾 means that either the global context was set incorrectly, or the term isn't valid

    showTerms : Context → List (Arg Term) → String
    showTerms ctx []             = ""
    showTerms ctx (arg i t ∷ ts) = withHideOpts hideApp (visibility i) (visibilityParen (visibility i) (showTerm ctx t)) <+> showTerms ctx ts

    isUnnamedVar : String → Bool
    isUnnamedVar ""  = true
    isUnnamedVar "_" = true
    isUnnamedVar _   = false

    showTerm : Context → Term → String
    showTerm ctx (var x args)         = showVar ctx x <+> showTerms ctx args
    showTerm ctx (con c args)         = showName c <+> showTerms ctx args
    showTerm ctx (def f args)         = showName f <+> showTerms ctx args
    showTerm ctx (lam v (abs s x))    = withHideOpts hideBind v ("λ" <+> visibilityParen v s <+> "→") <+> showTerm (s ∷ ctx) x
    showTerm ctx (pat-lam cs args)    =
      "λ {" <+> showClauses ctx cs <+> "}" <+> showTerms ctx args
    showTerm ctx (pi (arg i a) (abs x b)) with prettyPi ∧ isUnnamedVar x ∧ ⌊ visibility i V.≟ visible ⌋
    ... | true  = showTerm ctx a <+> "→" <+> showTerm (x ∷ ctx) b
    ... | false = withHideOpts hideBind (visibility i) (visibilityParen (visibility i) (x <+> ":" <+>
      showTerm ctx a)) <+> "→" <+> showTerm (x ∷ ctx) b
    showTerm ctx (sort s)             = showSort ctx s
    showTerm ctx (lit l)              = showLiteral l
    showTerm ctx (meta x args)        = showMeta x <+> showTerms ctx args
    showTerm ctx unknown              = "unknown"

    showSort : Context → Sort → String
    showSort ctx (set t) = "Set" <+> parensIfSpace (showTerm ctx t)
    showSort ctx (lit n) = "Set" ++ ℕ.show n -- no space to disambiguate from set t
    showSort ctx (prop t) = "Prop" <+> parensIfSpace (showTerm ctx t)
    showSort ctx (propLit n) = "Prop" ++ ℕ.show n -- no space to disambiguate from prop t
    showSort ctx (inf n) = "Setω" ++ ℕ.show n
    showSort ctx unknown = "unknown"

    showPatterns : Context → List (Arg Pattern) → String
    showPatterns ctx []       = ""
    showPatterns ctx (a ∷ ps) = showArg a <+> showPatterns ctx ps
      where
      -- Quantities are ignored.
      showArg : Arg Pattern → String
      showArg (arg (arg-info h (modality r _)) p) =
        braces? (showRel r ++ showPattern ctx p)
        where
        braces? = case h of λ where
          visible   → id
          hidden    → braces
          instance′ → braces ∘′ braces

    showPattern : Context → Pattern → String
    showPattern ctx (con c []) = showName c
    showPattern ctx (con c ps) = parens (showName c <+> showPatterns ctx ps)
    showPattern ctx (dot t)    = "." ++ parens (showTerm ctx t)
    showPattern ctx (var x)    = "pat-var" <+> ℕ.show x
    showPattern ctx (lit l)    = showLiteral l
    showPattern ctx (proj f)   = showName f
    showPattern ctx (absurd _) = "()"

    showClause : Context → Clause → String
    showClause ctx (clause tel ps t)      = "[" <+> showTel ctx tel <+> "]" <+> showPatterns ctx ps <+> "→" <+> showTerm ctx t
    showClause ctx (absurd-clause tel ps) = "[" <+> showTel ctx tel <+> "]" <+> showPatterns ctx ps

    showClauses : Context → List Clause → String
    showClauses ctx []       = ""
    showClauses ctx (c ∷ cs) = showClause ctx c <+> ";" <+> showClauses ctx cs

    showTel : Context → List (String × Arg Type) → String
    showTel ctx [] = ""
    showTel ctx ((x , arg i t) ∷ tel) = visibilityParen (visibility i) (x <+> ":" <+> showTerm ctx t) ++ showTel (x ∷ ctx) tel

module _ (opts : TermShowOptions) where
  showTerm    = TermShow.showTerm    opts []  
  showSort    = TermShow.showSort    opts []  
  showPattern = TermShow.showPattern opts []  
  showClause  = TermShow.showClause  opts []  

OptShow-Term : OptShow TermShowOptions Term
OptShow-Term .oShow = showTerm
