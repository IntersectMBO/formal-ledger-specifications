{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Werror=missing-fields #-}

-- File: test/LeiosChain.hs
-- Exercise the extracted Dijkstra chain API, including certificate rejection,
-- application at the announcing slot, and retirement of the announcement.
-- The foreign structures use dummy cryptography and hashes.
module Main (main) where

import Control.Monad (unless)
import Data.Ratio ((%))
import qualified Data.Text as Text
import System.Environment (getArgs)
import MAlonzo.Code.Ledger.Dijkstra.Foreign.API

emptyMap :: HSMap k v
emptyMap = MkHSMap []

emptySet :: HSSet a
emptySet = MkHSSet []

pp :: PParams
pp = MkPParams
  { ppMaxBlockSize = 1000, ppMaxTxSize = 1000, ppMaxHeaderSize = 1000
  , ppMaxTxExUnits = (1000, 1000), ppMaxBlockExUnits = (1000, 1000)
  , ppMaxValSize = 1000, ppMaxCollateralInputs = 10, ppPv = (11, 0)
  , ppLeiosHeaderPeriod = 1000, ppLeiosVotingPeriod = 1000
  , ppLeiosDiffusionPeriod = 1000, ppLeiosMaxEBSize = 1000
  , ppLeiosMaxEBTxsSize = 1000, ppLeiosCommitteeSize = 2
  , ppLeiosQuorumStakeThreshold = 3 % 4
  , ppLeiosMaxEBExUnits = (1000, 1000), ppLeiosMaxRefScriptSizePerEB = 1000
  , ppA = 0, ppB = 0, ppKeyDeposit = 0, ppPoolDeposit = 0, ppMinPoolCost = 0
  , ppMonetaryExpansion = 0, ppTreasuryCut = 0, ppCoinsPerUTxOByte = 0
  , ppPrices = (), ppMinFeeRefScriptCoinsPerByte = 0
  , ppMaxRefScriptSizePerTx = 1000, ppMaxRefScriptSizePerBlock = 1000
  , ppRefScriptCostStride = 1000, ppRefScriptCostMultiplier = 1
  , ppMinUTxOValue = 0, ppEmax = 10, ppNopt = 1, ppA0 = 0
  , ppCollateralPercentage = 100, ppCostmdlsAssoc = MkLanguageCostModels []
  , ppPoolThresholds = MkPoolThresholds 0 0 0 0 0
  , ppDrepThresholds = MkDrepThresholds 0 0 0 0 0 0 0 0 0 0
  , ppCcMinSize = 0, ppCcMaxTermLength = 10, ppGovActionLifetime = 10
  , ppGovActionDeposit = 0, ppDrepDeposit = 0, ppDrepActivity = 10
  }

enactState :: PParams -> EnactState
enactState params = MkEnactState (Nothing, (0, 0))
  ((0, Nothing), (0, 0)) ((11, 0), (0, 0)) (params, (0, 0)) emptyMap

out :: Integer -> TxOut
out n = (Left (BaseAddr 0 (KeyHashObj 0) Nothing), (n, (Nothing, Nothing)))

ledgerState :: LedgerState
ledgerState = MkLedgerState
  (MkUTxOState (MkHSMap [((99, 0), out 100)]) 0 0) []
  (MkCertState (MkDState emptyMap emptyMap emptyMap emptyMap)
    (MkPState emptyMap emptyMap emptyMap emptyMap)
    (MkGState emptyMap emptyMap emptyMap))

newEpochState :: PParams -> NewEpochState
newEpochState params = MkNewEpochState 0 emptyMap emptyMap
  (MkEpochState (MkAcnt 0 0) snapshots ledgerState es
    (MkRatifyState es emptySet False))
  Nothing emptyMap
  [MkLeiosSeat 0 (3 % 4) (Just 10), MkLeiosSeat 1 (1 % 4) Nothing]
  where
    es = enactState params
    snapshot = MkSnapshot emptyMap emptyMap emptyMap
    snapshots = MkSnapshots snapshot snapshot snapshot 0

state :: Maybe LastAppliedBlock -> ChainState
state = MkChainState (newEpochState pp)

previous :: LastAppliedBlock
previous = MkLastAppliedBlock 1 5 (Just (0, 10))

block :: Integer -> Maybe EBCert -> Bool -> Maybe (Integer, Integer) -> Block
block s c bit ann = MkBlock
  (MkBHeader (MkBHBody (MkHSVKey 0 0) 0 s 0 0 ann bit) 0) 20 [] c 0 0

cert :: EBCert
cert = MkEBCert (MkHSSet [0]) 0

emptyEB :: ResolvedEB
emptyEB = MkResolvedEB (MkEndorserBlock []) []

tx :: TxTop
tx = MkTxTop body witnesses 1 True Nothing
  where
    body = MkTxBodyTop
      { txbtopTxIns = MkHSSet [(99, 0)], txbtopReferenceInputs = emptySet
      , txbtopCollateralInputs = emptySet, txbtopTxOuts = MkHSMap [(0, out 99)]
      , txbtopTxId = 100, txbtopTxCerts = [], txbtopTxFee = 1
      , txbtopTxWithdrawals = emptyMap, txbtopTxVldt = (Just 1, Just 2)
      , txbtopTxADhash = Nothing, txbtopTxDonation = 0, txbtopTxGovVotes = []
      , txbtopTxGovProposals = [], txbtopTxNetworkId = Nothing
      , txbtopCurrentTreasury = Nothing, txbtopMint = 0
      , txbtopScriptIntegrityHash = Nothing, txbtopTxSubTransactions = []
      , txbtopTxRequiredTopLevelGuards = emptySet, txbtopTxGuards = emptySet
      , txbtopTxDirectDeposits = emptyMap, txbtopTxBalanceIntervals = emptyMap
      , txbtopTxStartingBalanceIntervals = emptyMap
      }
    witnesses = MkTxWitnesses (MkHSMap [(MkHSVKey 0 0, 0)])
      emptySet emptySet emptyMap

resolved :: ResolvedEB
resolved = MkResolvedEB (MkEndorserBlock [(0, 1)]) [tx]

applyCertificate :: ChainState -> ResolvedEB -> ComputationResult Text.Text ChainState
applyCertificate cs reb = chainStep () cs
  (block 6 (Just cert) True Nothing, Just reb)

assert :: Bool -> String -> Either String ()
assert condition message = if condition then Right () else Left message

reject :: Text.Text -> ChainState -> Block -> Maybe ResolvedEB -> Either String ()
reject expected cs b reb = case chainStep () cs (b, reb) of
  Failure actual -> assert (expected `Text.isInfixOf` actual)
    ("unexpected failure: " ++ Text.unpack actual)
  Success _ -> Left "unexpected success"

ordinary :: Either String ()
ordinary = case chainStep () (state (Just previous))
  (block 2 Nothing False Nothing, Nothing) of
  Failure e -> Left (Text.unpack e)
  Success cs -> do
    assert (csLastApplied cs == Just (MkLastAppliedBlock 2 20 Nothing))
      "the ordinary block did not clear its predecessor's announcement"
    assert (nesBcur (csNewEpochState cs) == MkHSMap [(0, 1)])
      "the block count was not incremented"
    assert (epsLs (nesEpochState (csNewEpochState cs)) == ledgerState)
      "an empty ordinary block changed the ledger state"

certified :: Either String ()
certified = case applyCertificate (state (Just previous)) resolved of
  Failure e -> Left (Text.unpack e)
  Success cs -> do
    let result = lsUtxoSt (epsLs (nesEpochState (csNewEpochState cs)))
    assert (usFees result == 1) "the closure was lost or applied twice"
    assert (usUtxo result == MkHSMap [((100, 0), out 99)])
      "the closure left the wrong UTxO"
    assert (csLastApplied cs == Just (MkLastAppliedBlock 6 20 Nothing))
      "the certifying block did not replace its predecessor"
    assert (nesBcur (csNewEpochState cs) == MkHSMap [(0, 1)])
      "the certifying block was not counted"
    reject "announced no EB" cs (block 11 (Just cert) True Nothing) (Just resolved)

tests :: [(String, Either String ())]
tests =
  [ ("certificate without resolved EB", reject "but no resolved EB"
      (state Nothing) certificateBlock Nothing)
  , ("resolved EB without certificate", reject "carries no EB certificate"
      (state Nothing) (block 6 Nothing False Nothing) (Just emptyEB))
  , ("no previous block", rejects "no last applied block" (state Nothing) emptyEB)
  , ("no previous announcement", rejects "announced no EB"
      (state (Just previous {labAnnouncedEB = Nothing})) emptyEB)
  , ("wrong announced hash", rejects "not the one"
      (state (Just previous {labAnnouncedEB = Just (7, 10)})) emptyEB)
  , ("before delay", reject "before the certification delay" pending
      (block 5 (Just cert) True Nothing) (Just emptyEB))
  , ("epoch boundary", reject "crosses an epoch boundary"
      (state (Just previous {labSlot = 4319}))
      (block 4324 (Just cert) True Nothing) (Just emptyEB))
  , ("unseated signer", reject "not valid against" pending
      (block 6 (Just cert {ebcSigners = MkHSSet [2]}) True Nothing) (Just emptyEB))
  , ("keyless signer", reject "not valid against" pending
      (block 6 (Just cert {ebcSigners = MkHSSet [1]}) True Nothing) (Just emptyEB))
  , ("empty signers", reject "not valid against" pending
      (block 6 (Just cert {ebcSigners = emptySet}) True Nothing) (Just emptyEB))
  , ("74 percent below quorum", rejects "not valid against"
      (MkChainState lowCommittee (Just previous)) resolved)
  , ("delay equality reaches EB validation", rejects "EB:" pending emptyEB)
  , ("closure/reference mismatch", rejects "EB:" pending
      (emptyEB {rebEb = MkEndorserBlock [(0, 1)]}))
  , ("wrong reference size", rejects "EB:" pending
      (resolved {rebEb = MkEndorserBlock [(0, 2)]}))
  , ("duplicate references", rejects "EB:" pending
      (resolved {rebEb = MkEndorserBlock [(0, 1), (0, 1)], rebClosure = [tx, tx]}))
  , ("closure size limit", rejects "EB:"
      (MkChainState (newEpochState (pp {ppLeiosMaxEBTxsSize = 0})) (Just previous))
      resolved)
  , ("cheap checks before closure", rejects "EB:" pending
      (emptyEB {rebClosure = error "a malformed EB must not evaluate its closure"}))
  , ("set bit without certificate", reject "certifiesEB is set"
      (state Nothing) (block 2 Nothing True Nothing) Nothing)
  , ("unset bit with certificate", reject "certifiesEB is not set" pending
      (block 6 (Just cert) False Nothing) (Just resolved))
  , ("certificate alongside transactions", reject "carries transactions" pending
      (certificateBlock {bTs = [tx]}) (Just resolved))
  , ("ordinary block retires announcement", ordinary)
  , ("certified closure at announcing slot, applied once", certified)
  , ("certifying block announces next EB", case chainStep () pending
      (block 6 (Just cert) True (Just (9, 10)), Just resolved) of
        Failure e -> Left (Text.unpack e)
        Success cs -> assert
          (csLastApplied cs == Just (MkLastAppliedBlock 6 20 (Just (9, 10))))
          "the new announcement was lost")
  ]
  where
    certificateBlock = block 6 (Just cert) True Nothing
    pending = state (Just previous)
    rejects message cs reb = reject message cs certificateBlock (Just reb)
    lowCommittee = (newEpochState pp)
      {nesLeiosCommittee = [MkLeiosSeat 0 (74 % 100) (Just 10)]}

main :: IO ()
main = do
  requested <- getArgs
  let selected = filter (\(name, _) -> null requested || name `elem` requested) tests
  unless (length selected == (if null requested then length tests else length requested))
    (fail "unknown or duplicate test name")
  mapM_ (\(name, result) -> either (fail . ((name ++ ": ") ++))
    (const (putStrLn ("PASS " ++ name))) result) selected
