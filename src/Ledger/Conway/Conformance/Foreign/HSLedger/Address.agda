module Ledger.Conway.Conformance.Foreign.HSLedger.Address where

open import Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes

instance
  HsTy-Credential = autoHsType Credential
  Conv-Credential = autoConvert Credential

  HsTy-BaseAddr = autoHsType BaseAddr ⊣ fieldPrefix "base"
  Conv-BaseAddr = autoConvert BaseAddr

  HsTy-BootstrapAddr = autoHsType BootstrapAddr ⊣ fieldPrefix "boot"
  Conv-BootstrapAddr = autoConvert BootstrapAddr

  HsTy-RwdAddr = autoHsType RwdAddr ⊣ fieldPrefix "rwd"
  Conv-RwdAddr = autoConvert RwdAddr

unquoteDecl = do
  hsTypeAlias Addr
