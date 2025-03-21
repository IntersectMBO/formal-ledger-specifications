# Changelog

## Conway spec

### WIP

- Add treasury expansion `tau` and monetary expansion `rho` to `PParams`
- Change the `DELEG-dereg` transition so that the deposit field can be empty
- Require witnessing of `reg` credential if the deposit is non-zero
- Add witnessing of collaterals
- Rename `ccTermLimit` to `ccMaxTermLength`
- Add `Vote` and `Propose` script purposes
- Well-formed parameter updates can't be empty
- Add reward withdrawal restriction
- Add `pvCanFollow` check to `GOV` STS
- Fix treasury withdrawals
- Add `policy` field to `GovProposal`
- Add `Voter` type and use it for `ScriptPurpose`
- Add `minFeeRefScriptCoinsPerByte` protocol parameter
- Add security-relevant parameters
- Require reference inputs to be disjoint from regular inputs
- Fix CC expiration not being considered for `ccMinSize` check
- Replace `allEnactable` with `hasParent` in `GOV`
- Add `curTreasury` field to transactions
- Compute the voting stake distribution
- Add deposit amount to `dereg` certificate
- Replace `minUTxOValue` with `coinsPerUTxOByte`
- Fix CC threshold being incorrect in the case of no-confidence
- Change logic of `RATIFY` to reject proposals properly
- Fix total voting stake computation
- Fix that `ccMinSize` was not respected with an empty CC
- Add deposit amount to `deregdrep`
- Withdrawal gate triggers only for `KeyHashObj`
- Add missing `NetworkID` checks
- Ratify GAs in the correct order
- Only consider matching GAs in `hasParent`
- Fix `ccMinSize` check not properly accounting for double delegations
- Check `proposal ≡ nothing` if action not `ChangePParams` or `TreasuryWdrl`
- Implement proper vote counting for SPOs
- Check a DRep exists before delegating to it.
- Prevent older Plutus versions in transaction with Conway features
- Allow reference scripts and inputs to be used with Plutus V1
- Add sanity checks for delegating hot credentials

### V0.9

- Add proposal deposits
- Add proposal policy (which would become the guardrails script)
- Cold keys are now cold credentials
- Fix: governance actions were removed immediately, now delayed by one epoch
- Increment DRep activity in epochs where there was no GA to vote on
- Only allow votes for GAs that actually apply
- CC rejects every proposal when below `minCCSize`
- Fix that `RATIFY` wasn't total
- Properly implement treasury withdrawals
- Remove unused hot credentials at the epoch boundary
- Implement proper vote counting for SPOs
- Fix some protocol parameter names
- Check that `NewCommittee` actions are sensible when they are proposed
- Fix: treasury withdrawals were included in the wrong map

### V0.8

First draft
