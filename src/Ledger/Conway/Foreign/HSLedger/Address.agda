module Ledger.Conway.Foreign.HSLedger.Address where

open import Ledger.Conway.Foreign.HSLedger.BaseTypes

instance
  HsTy-Credential = autoHsType Credential
  Conv-Credential = autoConvert Credential

  HsTy-BaseAddr = autoHsType BaseAddr ⊣ fieldPrefix "base"
  Conv-BaseAddr = autoConvert BaseAddr

  HsTy-EnterpriseAddr = autoHsType EnterpriseAddr ⊣ fieldPrefix "enterprise"
  Conv-EnterpriseAddr = autoConvert EnterpriseAddr

  HsTy-BootstrapAddr = autoHsType BootstrapAddr ⊣ fieldPrefix "boot"
  Conv-BootstrapAddr = autoConvert BootstrapAddr

  HsTy-RwdAddr = autoHsType RwdAddr ⊣ fieldPrefix "rwd"
  Conv-RwdAddr = autoConvert RwdAddr

unquoteDecl = do
  hsTypeAlias Addr
