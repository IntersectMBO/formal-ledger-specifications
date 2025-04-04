module Ledger.Conway.Foreign.HSLedger.Address where

open import Ledger.Conway.Foreign.HSLedger.BaseTypes

instance
  HsTy-HSVKey = autoHsType HSVKey
  Conv-HSVKey = autoConvert HSVKey

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
