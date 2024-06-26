
module Ledger.Foreign.HSLedger.Address where

open import Ledger.Foreign.HSLedger.Core
open import Ledger.Foreign.HSLedger.BaseTypes

instance
  HsTy-Credential = autoHsType Credential
  Conv-Credential = autoConvert Credential

  HsTy-BaseAddr = autoHsType BaseAddr
  Conv-BaseAddr = autoConvert BaseAddr

  HsTy-BootstrapAddr = autoHsType BootstrapAddr
  Conv-BootstrapAddr = autoConvert BootstrapAddr

  HsTy-RwdAddr = autoHsType RwdAddr
  Conv-RwdAddr = autoConvert RwdAddr
