# Changelog

## Conway spec

### WIP

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
