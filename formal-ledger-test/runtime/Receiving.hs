-- Independently authored fixtures against the genuinely extracted public API.
-- The foreign evaluator, hashing/context and Coin premises are described in
-- README.md. No ledger target helper is imported as a specification oracle.

import Control.Monad (unless)
import Data.List (nub, sort)
import MAlonzo.Code.Ledger.Dijkstra.Foreign.API

params :: PParams
params =
    MkPParams
        { ppMaxBlockSize = 1000000
        , ppMaxTxSize = 1000000
        , ppMaxHeaderSize = 1000000
        , ppMaxTxExUnits = (1000000, 1000000)
        , ppMaxBlockExUnits = (1000000, 1000000)
        , ppMaxValSize = 1000000
        , ppMaxCollateralInputs = 1000000
        , ppPv = (12, 0)
        , ppLeiosHeaderPeriod = 0
        , ppLeiosVotingPeriod = 0
        , ppLeiosDiffusionPeriod = 0
        , ppLeiosMaxEBSize = 0
        , ppLeiosMaxEBTxsSize = 0
        , ppLeiosCommitteeSize = 0
        , ppLeiosQuorumStakeThreshold = 0
        , ppLeiosMaxEBExUnits = (0, 0)
        , ppLeiosMaxRefScriptSizePerEB = 0
        , ppA = 0
        , ppB = 0
        , ppKeyDeposit = 0
        , ppPoolDeposit = 0
        , ppMinPoolCost = 0
        , ppMonetaryExpansion = 0
        , ppTreasuryCut = 0
        , ppCoinsPerUTxOByte = 0
        , ppPrices = ()
        , ppMinFeeRefScriptCoinsPerByte = 0
        , ppMaxRefScriptSizePerTx = 1000000
        , ppMaxRefScriptSizePerBlock = 1000000
        , ppRefScriptCostStride = 0
        , ppRefScriptCostMultiplier = 0
        , ppMinUTxOValue = 0
        , ppEmax = 0
        , ppNopt = 0
        , ppA0 = 0
        , ppCollateralPercentage = 0
        , ppCostmdlsAssoc = MkLanguageCostModels [(PV4, ())]
        , ppPoolThresholds = MkPoolThresholds 0 0 0 0 0
        , ppDrepThresholds = MkDrepThresholds 0 0 0 0 0 0 0 0 0 0
        , ppCcMinSize = 0
        , ppCcMaxTermLength = 0
        , ppGovActionLifetime = 0
        , ppGovActionDeposit = 0
        , ppDrepDeposit = 0
        , ppDrepActivity = 0
        }

emptyWits :: TxWitnesses
emptyWits = MkTxWitnesses (MkHSMap []) (MkHSSet []) (MkHSSet []) (MkHSMap [])

body :: TxBodyTop
body =
    MkTxBodyTop
        { txbtopTxIns = MkHSSet [(10, 0)]
        , txbtopReferenceInputs = MkHSSet []
        , txbtopCollateralInputs = MkHSSet []
        , txbtopCollateralReturn = Nothing
        , txbtopTotalCollateral = Nothing
        , txbtopTxOuts = MkHSMap [(0, out False (KeyHashObj 1) 10)]
        , txbtopTxId = 11
        , txbtopTxCerts = []
        , txbtopTxFee = 0
        , txbtopTxWithdrawals = MkHSMap []
        , txbtopTxVldt = (Nothing, Nothing)
        , txbtopTxADhash = Nothing
        , txbtopTxDonation = 0
        , txbtopTxGovVotes = []
        , txbtopTxGovProposals = []
        , txbtopTxNetworkId = Nothing
        , txbtopCurrentTreasury = Nothing
        , txbtopMint = 0
        , txbtopScriptIntegrityHash = Nothing
        , txbtopTxSubTransactions = []
        , txbtopTxRequiredTopLevelGuards = MkHSSet []
        , txbtopTxGuards = MkHSSet []
        , txbtopTxDirectDeposits = MkHSMap []
        , txbtopTxBalanceIntervals = MkHSMap []
        , txbtopTxStartingBalanceIntervals = MkHSMap []
        }

out :: Bool -> Credential -> Integer -> TxOut
out protected credential value = (Left (BaseAddr 0 credential Nothing protected), (value, (Nothing, Nothing)))

tx :: TxTop
tx = MkTxTop body (emptyWits{txwVKeySigs = MkHSMap [(MkHSVKey 1 1, 0)]}) 0 True Nothing

utxo :: UTxO
utxo = MkHSMap [((10, 0), out False (KeyHashObj 1) 10), ((10, 1), out False (KeyHashObj 1) 5)]

state :: UTxOState
state = MkUTxOState utxo 0 0

env :: UTxOEnv
env = MkUTxOEnv 0 params 0 utxo (MkHSMap []) (MkHSSet []) False

accepted :: ComputationResult e a -> Bool
accepted (Success _) = True
accepted (Failure _) = False

check :: String -> Bool -> IO ()
check label condition = do
    unless condition (error label)
    putStrLn ("PASS " ++ label)

main :: IO ()
main = do
    check "ordinary body baseline" (accepted (utxowStep env state tx))
    let keyBody = body{txbtopTxOuts = MkHSMap [(0, out True (KeyHashObj 7) 10)]}
        keyTx = tx{txtopTxBody = keyBody}
    check "protected key requires independent receiving signature" (not (accepted (utxowStep env state keyTx)))
    let keyWits = (txtopTxWitnesses keyTx){txwVKeySigs = MkHSMap [(MkHSVKey 1 1, 0), (MkHSVKey 7 7, 0)]}
    check "protected key receiving signature accepted at major12" (accepted (utxowStep env state (keyTx{txtopTxWitnesses = keyWits})))
    check "protected key output rejected at major11" (not (accepted (utxowStep (env{uePparams = params{ppPv = (11, 0)}}) state (keyTx{txtopTxWitnesses = keyWits}))))
    check "ordinary output remains accepted at major11" (accepted (utxowStep (env{uePparams = params{ppPv = (11, 0)}}) state tx))
    let childBody =
            MkTxBodySub
                { txbsubTxIns = MkHSSet [(10, 0)]
                , txbsubReferenceInputs = MkHSSet []
                , txbsubTxOuts = MkHSMap [(0, out True (KeyHashObj 7) 10)]
                , txbsubTxId = 12
                , txbsubTxCerts = []
                , txbsubTxWithdrawals = MkHSMap []
                , txbsubTxVldt = (Nothing, Nothing)
                , txbsubTxADhash = Nothing
                , txbsubTxDonation = 0
                , txbsubTxGovVotes = []
                , txbsubTxGovProposals = []
                , txbsubTxNetworkId = Nothing
                , txbsubCurrentTreasury = Nothing
                , txbsubMint = 0
                , txbsubScriptIntegrityHash = Nothing
                , txbsubTxGuards = MkHSSet []
                , txbsubTxRequiredTopLevelGuards = MkHSSet []
                , txbsubTxDirectDeposits = MkHSMap []
                , txbsubTxBalanceIntervals = MkHSMap []
                }
        childTx = MkTxSub childBody keyWits 0 Nothing
        childEnv = MkSubUTxOEnv 0 params 0 utxo (MkHSSet []) True
    check "protected child output accepted at major12" (accepted (subUtxowStep childEnv state childTx))
    check "protected child output rejected at major11" (not (accepted (subUtxowStep (childEnv{suePparams = params{ppPv = (11, 0)}}) state childTx)))
    let MkHSSet childScripts = subReceivingScriptHashes childTx
        MkHSSet childKeys = subReceivingKeyHashes childTx
    check "child Receiving domain is body-local" (null childScripts && childKeys == [7] && subReceivingPointer childTx 0 == Nothing)
    let native = Left (HSNativeScript (RequireAllOf []) 30 0)
        nativeTx = tx{txtopTxBody = body{txbtopTxOuts = MkHSMap [(0, out True (ScriptObj 30) 10)]}}
    check "native Receiving missing script rejected" (not (accepted (utxowStep env state nativeTx)))
    let nativeWits = (txtopTxWitnesses nativeTx){txwScripts = MkHSSet [native]}
        nativeEnv = env{ueAllScripts = MkHSSet [native]}
    check "native Receiving accepted without redeemer" (accepted (utxowStep nativeEnv state (nativeTx{txtopTxWitnesses = nativeWits})))
    let extra = nativeWits{txwTxRedeemers = MkHSMap [((Receive, 0), (0, (1, 1)))]}
    check "native Receiving extra redeemer rejected" (not (accepted (utxowStep nativeEnv state (nativeTx{txtopTxWitnesses = extra}))))
    let domainBody =
            body
                { txbtopTxOuts =
                    MkHSMap
                        [(0, out True (ScriptObj 20) 2), (1, out True (ScriptObj 30) 2), (2, (Left (BaseAddr 0 (ScriptObj 20) (Just (KeyHashObj 99)) True), (2, (Just (Left 123), Nothing)))), (3, out True (KeyHashObj 7) 2), (4, out False (ScriptObj 10) 2), (5, out True (KeyHashObj 7) 0)]
                }
        domainTx = tx{txtopTxBody = domainBody}
        MkHSSet scripts = receivingScriptHashes domainTx
        MkHSSet keys = receivingKeyHashes domainTx
        MkHSMap domainOutputs = txbtopTxOuts domainBody
    check "authorization script hashes exclude keys and ordinary outputs" (sort (nub scripts) == [20, 30] && sort (nub keys) == [7])
    check "Receiving pointers are original output indices including repeated hashes" (receivingPointer domainTx 0 == Just (Receive, 0) && receivingPointer domainTx 1 == Just (Receive, 1) && receivingPointer domainTx 2 == Just (Receive, 2) && all ((== Nothing) . receivingPointer domainTx) [3, 4, 5, 6])
    let MkHSSet indexedOutputs = receivingOutputs domainTx
    check "Receiving domain retains stake and inline datum variants at their original indices" (sort (map fst indexedOutputs) == [0, 1, 2] && lookup 2 indexedOutputs == lookup 2 domainOutputs)
    let reversedDomainTx = domainTx{txtopTxBody = domainBody{txbtopTxOuts = MkHSMap (reverse domainOutputs)}}
        indexedChildTx = childTx{txsubTxBody = childBody{txbsubTxOuts = txbtopTxOuts domainBody}}
        MkHSSet indexedChildScripts = subReceivingScriptHashes indexedChildTx
    check "Receiving pointers are independent of output-map presentation order" (all (\ix -> receivingPointer reversedDomainTx ix == receivingPointer domainTx ix) [0..6])
    check "child duplicate hashes and stake variants retain original output indices" (sort (nub indexedChildScripts) == [20, 30] && all (\ix -> subReceivingPointer indexedChildTx ix == receivingPointer domainTx ix) [0..6])
    let protectedReturn = tx{txtopTxBody = body{txbtopCollateralReturn = Just (out True (KeyHashObj 7) 2)}}
    check "protected collateral return rejected without scripts" (not (accepted (utxowStep env state protectedReturn)))
    let p2 = Right (MkHSPlutusScript 20 0 PV4)
        p2Tx = tx{txtopTxBody = body{txbtopTxOuts = MkHSMap [(0, out True (ScriptObj 20) 10)], txbtopCollateralInputs = MkHSSet [(10, 1)], txbtopScriptIntegrityHash = Just 0}, txtopTxWitnesses = (txtopTxWitnesses tx){txwScripts = MkHSSet [p2]}}
        p2Env = env{ueAllScripts = MkHSSet [p2]}
    check "Plutus Receiving missing redeemer rejected" (not (accepted (utxowStep p2Env state p2Tx)))
    let p2Wits = (txtopTxWitnesses p2Tx){txwTxRedeemers = MkHSMap [((Receive, 0), (0, (1, 2)))]}
    check "Plutus Receiving exact redeemer accepted under abstract evaluator" (accepted (utxowStep p2Env state (p2Tx{txtopTxWitnesses = p2Wits})))
    let legacyConsumed = (Left (BaseAddr 0 (ScriptObj 20) Nothing False), (10, (Just (Right 0), Nothing)))
        legacyReference = out True (KeyHashObj 7) 5
        legacyUtxo = MkHSMap [((10, 0), legacyConsumed), ((10, 1), out False (KeyHashObj 1) 5), ((10, 2), legacyReference)]
        legacyBody = body{txbtopReferenceInputs = MkHSSet [(10, 2)], txbtopCollateralInputs = MkHSSet [(10, 1)], txbtopScriptIntegrityHash = Just 0}
        legacyWits = (txtopTxWitnesses tx){txwTxData = MkHSSet [0], txwTxRedeemers = MkHSMap [((Spend, 0), (0, (1, 2)))]}
        legacyStep lang =
            let script = Right (MkHSPlutusScript 20 0 lang)
                legacyParams = params{ppCostmdlsAssoc = MkLanguageCostModels [(lang, ())]}
                legacyEnv = env{uePparams = legacyParams, ueLegacyMode = True, ueUtxo₀ = legacyUtxo, ueAllScripts = MkHSSet [script]}
                legacyTx = tx{txtopTxBody = legacyBody, txtopTxWitnesses = legacyWits{txwScripts = MkHSSet [script]}}
             in utxowStep legacyEnv (state{usUtxo = legacyUtxo}) legacyTx
    check "V1 ignores protection on hidden reference-input address" (accepted (legacyStep PV1))
    check "V2 rejects protection on visible reference-input address" (not (accepted (legacyStep PV2)))
    check "V3 rejects protection on visible reference-input address" (not (accepted (legacyStep PV3)))
    let duplicateWits = p2Wits{txwTxRedeemers = MkHSMap [((Receive, 0), (10, (1, 2))), ((Receive, 1), (11, (2, 3)))]}
        duplicateP2Tx = p2Tx{txtopTxBody = (txtopTxBody p2Tx){txbtopTxOuts = MkHSMap [(0, out True (ScriptObj 20) 5), (1, out True (ScriptObj 20) 5)]}, txtopTxWitnesses = duplicateWits}
        duplicateP2Child = childTx{txsubTxBody = childBody{txbsubTxOuts = txbtopTxOuts (txtopTxBody duplicateP2Tx)}, txsubTxWitnesses = duplicateWits}
        guardedWits = duplicateWits{txwTxRedeemers = MkHSMap [((Receive, 0), (10, (1, 2))), ((Receive, 1), (11, (2, 3))), ((Guard, 0), (0, (1, 2)))]}
        guardedP2Tx = duplicateP2Tx{txtopTxBody = (txtopTxBody duplicateP2Tx){txbtopTxGuards = MkHSSet [ScriptObj 20]}, txtopTxWitnesses = guardedWits}
        guardedP2Child = duplicateP2Child{txsubTxBody = (txsubTxBody duplicateP2Child){txbsubTxGuards = MkHSSet [ScriptObj 20]}, txsubTxWitnesses = guardedWits}
        p2Scripts = MkHSSet [p2]
    check "identical top Receiving outputs collect two invocations" (collectingScriptCount params duplicateP2Tx utxo p2Scripts == 2)
    check "identical child Receiving outputs collect two invocations" (subCollectingScriptCount params duplicateP2Child utxo p2Scripts == 2)
    check "same top script under Guard and two Receiving outputs retains three invocations" (collectingScriptCount params guardedP2Tx utxo p2Scripts == 3)
    check "same child script under Guard and two Receiving outputs retains three invocations" (subCollectingScriptCount params guardedP2Child utxo p2Scripts == 3)
    check "identical top outputs collect their own redeemers and unequal budgets" (sort (collectingScriptArguments params duplicateP2Tx utxo p2Scripts) == [([10, 0], (1, 2)), ([11, 0], (2, 3))])
    check "identical child outputs collect their own redeemers and unequal budgets" (sort (subCollectingScriptArguments params duplicateP2Child utxo p2Scripts) == [([10, 0], (1, 2)), ([11, 0], (2, 3))])
    check "identical outputs require both distinct Receiving redeemers" (not (accepted (utxowStep p2Env state (duplicateP2Tx{txtopTxWitnesses = p2Wits}))))
    check "identical outputs accept two distinct Receiving redeemers" (accepted (utxowStep p2Env state duplicateP2Tx))
    check "identical output budgets aggregate rather than deduplicate" (not (accepted (utxowStep (p2Env{uePparams = params{ppMaxTxExUnits = (2, 5)}}) state duplicateP2Tx)))
    check "identical output budgets accept their exact aggregate" (accepted (utxowStep (p2Env{uePparams = params{ppMaxTxExUnits = (3, 5)}}) state duplicateP2Tx))
    let mixedOutputs = MkHSMap [(0, out False (KeyHashObj 1) 0), (1, out True (KeyHashObj 7) 0), (2, out True (ScriptObj 30) 0), (3, out True (ScriptObj 20) 5), (4, out True (ScriptObj 20) 5), (5, out False (ScriptObj 20) 0)]
        mixedWits = duplicateWits{txwVKeySigs = txwVKeySigs keyWits, txwScripts = MkHSSet [native, p2], txwTxRedeemers = MkHSMap [((Receive, 3), (10, (1, 2))), ((Receive, 4), (11, (2, 3)))]}
        mixedTx = duplicateP2Tx{txtopTxBody = (txtopTxBody duplicateP2Tx){txbtopTxOuts = mixedOutputs}, txtopTxWitnesses = mixedWits}
        mixedEnv = p2Env{ueAllScripts = MkHSSet [native, p2]}
    check "interleaved ordinary key and native outputs preserve raw Plutus indices" (accepted (utxowStep mixedEnv state mixedTx))
    check "hash-domain ranks cannot replace raw output redeemer indices" (not (accepted (utxowStep mixedEnv state (mixedTx{txtopTxWitnesses = mixedWits{txwTxRedeemers = txwTxRedeemers duplicateWits}}))))
    check "native output at its original index rejects an extra redeemer" (not (accepted (utxowStep mixedEnv state (mixedTx{txtopTxWitnesses = mixedWits{txwTxRedeemers = MkHSMap [((Receive, 2), (0, (1, 1))), ((Receive, 3), (10, (1, 2))), ((Receive, 4), (11, (2, 3)))]}}))))
    let budgetTx = p2Tx{txtopTxWitnesses = p2Wits}
        budgetStep limit = utxowStep (p2Env{uePparams = params{ppMaxTxExUnits = limit}}) state budgetTx
    check "Receiving budget below both maxima is accepted" (accepted (budgetStep (2, 3)))
    check "Receiving budget equal to both maxima is accepted" (accepted (budgetStep (1, 2)))
    check "Receiving budget above memory maximum is rejected" (not (accepted (budgetStep (0, 2))))
    check "Receiving budget above steps maximum is rejected" (not (accepted (budgetStep (1, 1))))
    let selfOut = (Left (BaseAddr 0 (ScriptObj 20) Nothing True), (10, (Nothing, Just p2)))
        selfTx = p2Tx{txtopTxBody = (txtopTxBody p2Tx){txbtopTxOuts = MkHSMap [(0, selfOut)]}, txtopTxWitnesses = (txtopTxWitnesses tx){txwTxRedeemers = MkHSMap [((Receive, 0), (0, (1, 1)))]}}
    check "new output reference script cannot authorize creation" (not (accepted (utxowStep env state selfTx)))
    let emptyCerts =
            MkCertState
                (MkDState (MkHSMap []) (MkHSMap []) (MkHSMap []) (MkHSMap []))
                (MkPState (MkHSMap []) (MkHSMap []) (MkHSMap []) (MkHSMap []))
                (MkGState (MkHSMap []) (MkHSMap []) (MkHSMap []))
        enact = MkEnactState (Nothing, (0, 0)) ((0, Nothing), (0, 0)) ((12, 0), (0, 0)) (params, (0, 0)) (MkHSMap [])
        ledgerEnv = MkLedgerEnv 0 Nothing params enact 0
        ledgerState = MkLedgerState state [] emptyCerts
        evaluatorFalse = dummyExternalFunctions{extValidPlutusScript = False}
        invalidBody = (txtopTxBody p2Tx){txbtopCollateralReturn = Just (out False (KeyHashObj 1) 2), txbtopTotalCollateral = Just 3}
        invalidTx = p2Tx{txtopTxBody = invalidBody, txtopTxWitnesses = p2Wits, txtopIsValid = False}
    case ledgerStep evaluatorFalse ledgerEnv ledgerState invalidTx of
        Failure err -> error ("invalid Receiving collateral-only transition: " ++ show err)
        Success final -> do
            let MkHSMap resulting = usUtxo (lsUtxoSt final)
            check "phase-2-invalid Receiving preserves ordinary input" (lookup (10, 0) resulting == Just (out False (KeyHashObj 1) 10))
            check "phase-2-invalid Receiving creates no ordinary output" (lookup (11, 0) resulting == Nothing)
            check "phase-2-invalid Receiving consumes collateral and creates return" (lookup (10, 1) resulting == Nothing && lookup (11, 1) resulting == Just (out False (KeyHashObj 1) 2))
            check "phase-2-invalid Receiving collects net collateral" (usFees (lsUtxoSt final) == 3 && lsCertState final == emptyCerts)
    check "claimed-valid Receiving fails under rejecting evaluator premise" (not (accepted (ledgerStep evaluatorFalse ledgerEnv ledgerState (invalidTx{txtopIsValid = True}))))
    let badReturn = invalidTx{txtopTxBody = invalidBody{txbtopCollateralReturn = Just (out True (KeyHashObj 1) 2)}}
    check "protected collateral return rejected on invalid path" (not (accepted (ledgerStep evaluatorFalse ledgerEnv ledgerState badReturn)))

    let childP2Body = childBody{txbsubTxIns = MkHSSet [(10, 2)], txbsubTxOuts = MkHSMap [(0, out True (ScriptObj 20) 10)], txbsubScriptIntegrityHash = Just 0}
        childP2 = MkTxSub childP2Body p2Wits 0 Nothing
        childBatchBody = invalidBody{txbtopTxOuts = MkHSMap [(0, out False (KeyHashObj 1) 10)], txbtopTxSubTransactions = [childP2], txbtopScriptIntegrityHash = Nothing}
        childBatch = tx{txtopTxBody = childBatchBody, txtopIsValid = False}
        MkHSMap existing = utxo
        childState = ledgerState{lsUtxoSt = state{usUtxo = MkHSMap (((10, 2), out False (KeyHashObj 1) 10) : existing)}}
    let aggregateTx = p2Tx{txtopTxBody = (txtopTxBody p2Tx){txbtopTxSubTransactions = [childP2]}, txtopTxWitnesses = p2Wits}
        aggregateState = lsUtxoSt childState
        aggregateEnv limit = p2Env{ueUtxo₀ = usUtxo aggregateState, uePparams = params{ppMaxTxExUnits = limit}}
    check "top and child Receiving budgets jointly exceed a single-body maximum" (not (accepted (utxowStep (aggregateEnv (1, 2)) aggregateState aggregateTx)))
    check "top and child Receiving budgets are admitted at the aggregate maximum" (accepted (utxowStep (aggregateEnv (2, 4)) aggregateState aggregateTx))
    let isolatedChild = childP2{txsubTxWitnesses = p2Wits{txwTxRedeemers = MkHSMap [((Receive, 0), (99, (2, 3)))]}}
        isolatedTx = aggregateTx{txtopTxBody = (txtopTxBody aggregateTx){txbtopTxSubTransactions = [isolatedChild]}}
        missingChild = isolatedChild{txsubTxWitnesses = p2Wits{txwTxRedeemers = MkHSMap []}}
        missingChildTx = isolatedTx{txtopTxBody = (txtopTxBody isolatedTx){txbtopTxSubTransactions = [missingChild]}}
    check "parent index zero collects only its own redeemer and budget" (collectingScriptArguments params isolatedTx (usUtxo aggregateState) p2Scripts == [([0, 0], (1, 2))])
    check "child index zero collects only its own redeemer and budget" (subCollectingScriptArguments params isolatedChild (usUtxo aggregateState) p2Scripts == [([99, 0], (2, 3))])
    -- Composed LEDGER checks both bodies; direct top UTXOW checks its own domain.
    let isolatedLedgerEnv = ledgerEnv{lePparams = params{ppMaxTxExUnits = (3, 5)}}
    check "parent and child index zero retain distinct redeemers and budgets" (accepted (ledgerStep dummyExternalFunctions isolatedLedgerEnv childState isolatedTx))
    check "parent redeemer cannot authorize child at the same output index" (not (accepted (ledgerStep dummyExternalFunctions isolatedLedgerEnv childState missingChildTx)))
    check "parent and child unequal budgets both count in the aggregate" (not (accepted (utxowStep (aggregateEnv (2, 5)) aggregateState isolatedTx)))
    case ledgerStep evaluatorFalse ledgerEnv childState childBatch of
        Failure err -> error ("child Receiving invalid batch: " ++ show err)
        Success final -> do
            let MkHSMap resulting = usUtxo (lsUtxoSt final)
            check "invalid child Receiving preserves parent and child ordinary inputs" (lookup (10, 0) resulting /= Nothing && lookup (10, 2) resulting /= Nothing)
            check "invalid child Receiving creates no parent or child ordinary outputs" (lookup (11, 0) resulting == Nothing && lookup (12, 0) resulting == Nothing)
            check "invalid child Receiving applies only top collateral return and fees" (lookup (10, 1) resulting == Nothing && lookup (11, 1) resulting == Just (out False (KeyHashObj 1) 2) && usFees (lsUtxoSt final) == 3)

    -- Independently expected complete states expose stale stored protocol versions.
    let hardForkEnv = MkEnactEnv (99, 2) 0 1
        versionParams = params{ppRefScriptCostStride = 1}
        versionEnact = enact{esPparams = (versionParams, snd (esPparams enact))}
        hardForkExpected = versionEnact{esPv = ((13, 0), (99, 2)), esPparams = (versionParams{ppPv = (13, 0)}, snd (esPparams enact))}
        emptySnapshot = MkSnapshot (MkHSMap []) (MkHSMap []) (MkHSMap [])
        emptySnapshots = MkSnapshots emptySnapshot emptySnapshot emptySnapshot 0
        emptyLedger = MkLedgerState (MkUTxOState (MkHSMap []) 0 0) [] emptyCerts
        epochBaseline = MkEpochState (MkAcnt 0 0) emptySnapshots emptyLedger versionEnact (MkRatifyState versionEnact (MkHSSet []) False)
        epochFork = epochBaseline{epsFut = MkRatifyState hardForkExpected (MkHSSet []) False}
        epochForkExpected = epochFork{epsEs = hardForkExpected}
    check "non-hardfork enactment preserves complete major12 state" (enactStep hardForkEnv versionEnact Info == Success versionEnact)
    check "hardfork enactment updates both authoritative and stored major13 versions" (enactStep hardForkEnv versionEnact (TriggerHardFork (13, 0)) == Success hardForkExpected)
    check "epoch without hardfork preserves complete major12 state" (epochStep () epochBaseline 1 == Success epochBaseline)
    check "epoch applies complete major13 enacted state and stored parameters" (epochStep () epochFork 1 == Success epochForkExpected)

    let pool key = StakePoolState (MkHSSet []) 0 0 0 (RewardAddress 0 (KeyHashObj 1)) 0 key
        pools = MkHSMap [(20, pool Nothing), (10, pool Nothing)]
        committeeParams = versionParams{ppLeiosCommitteeSize = 2}
        seats epoch stake candidates = selectLeiosCommittee committeeParams epoch (MkHSMap stake) candidates
        zeroSeats = [MkLeiosSeat 10 0 Nothing, MkLeiosSeat 20 0 Nothing]
    check "registered zero-stake pools retain separate keyless committee seats" (seats 3 [] pools == zeroSeats)
    check "zero committee size admits no seats even for registered pools" (selectLeiosCommittee (committeeParams{ppLeiosCommitteeSize = 0}) 3 (MkHSMap []) pools == [])
    check "committee ranks positive registered stakes with exact fractional weights" (seats 3 [(20, 1), (10, 3)] pools == [MkLeiosSeat 10 (3 / 4) Nothing, MkLeiosSeat 20 (1 / 4) Nothing])
    check "equal-stake committee ties use ascending pool identity" (seats 3 [(20, 2), (10, 2)] pools == [MkLeiosSeat 10 (1 / 2) Nothing, MkLeiosSeat 20 (1 / 2) Nothing])
    check "committee size selects highest stake before pool identity" (selectLeiosCommittee (committeeParams{ppLeiosCommitteeSize = 1}) 3 (MkHSMap [(10, 1), (20, 3)]) pools == [MkLeiosSeat 20 (3 / 4) Nothing])
    check "unstaked registered pools remain seated after positive-stake pools" (seats 3 [(10, 4)] pools == [MkLeiosSeat 10 1 Nothing, MkLeiosSeat 20 0 Nothing])
    check "unregistered stake cannot create a committee seat or dilute weights" (seats 3 [(10, 2), (20, 2), (30, 9)] pools == [MkLeiosSeat 10 (1 / 2) Nothing, MkLeiosSeat 20 (1 / 2) Nothing])
    let keyedPools = MkHSMap [(20, pool Nothing), (10, pool (Just (77, 0)))]
    check "registered key is honored before the foreign four-epoch age boundary" (seats 3 [(10, 3), (20, 1)] keyedPools == [MkLeiosSeat 10 (3 / 4) (Just 77), MkLeiosSeat 20 (1 / 4) Nothing])
    check "expired registered key preserves its keyless seat and pool identity" (seats 4 [(10, 3), (20, 1)] keyedPools == [MkLeiosSeat 10 (3 / 4) Nothing, MkLeiosSeat 20 (1 / 4) Nothing])

    -- Foreign map inputs normalize duplicate pairs. Composed NEWEPOCH instead
    -- reaches the internally aggregated stake relation produced by distinct
    -- delegators, so these fixtures exercise the real list-enumeration boundary.
    let poolCerts = emptyCerts{pState = MkPState pools (MkHSMap []) (MkHSMap []) (MkHSMap [])}
        poolLedger = emptyLedger{lsCertState = poolCerts}
        committeeAfter count delegatedStake delegations =
            let snapshot = MkSnapshot (MkHSMap delegatedStake) (MkHSMap delegations) pools
                committeeEnact = versionEnact{esPparams = (versionParams{ppLeiosCommitteeSize = count}, snd (esPparams versionEnact))}
                committeeEpoch = MkEpochState (MkAcnt 0 0) (MkSnapshots snapshot snapshot snapshot 0) poolLedger committeeEnact (MkRatifyState committeeEnact (MkHSSet []) False)
                initial = MkNewEpochState 0 (MkHSMap []) (MkHSMap []) committeeEpoch Nothing (MkHSMap []) []
             in newEpochStep () initial 1
        committeeAgrees result expectedStake expectedSeats = case result of
            Failure _ -> False
            Success final ->
                let MkHSMap resultingStake = nesPd final
                 in sort (nub resultingStake) == expectedStake && nesLeiosCommittee final == expectedSeats
        delegators = [(KeyHashObj 1, 10), (KeyHashObj 2, 10)]
        onePositiveSeat = [MkLeiosSeat 10 1 Nothing, MkLeiosSeat 20 0 Nothing]
    check "composed epoch seats a single delegator's pool once" (committeeAgrees (committeeAfter 2 [(KeyHashObj 1, 4)] [(KeyHashObj 1, 10)]) [(10, 4)] onePositiveSeat)
    check "composed epoch seats a pool once for split 1+3 delegators" (committeeAgrees (committeeAfter 2 [(KeyHashObj 1, 1), (KeyHashObj 2, 3)] delegators) [(10, 4)] onePositiveSeat)
    check "composed epoch seats a pool once for equal 2+2 delegators" (committeeAgrees (committeeAfter 2 [(KeyHashObj 1, 2), (KeyHashObj 2, 2)] delegators) [(10, 4)] onePositiveSeat)
    check "composed epoch top-K cannot spend two slots on the same pool" (committeeAgrees (committeeAfter 2 [(KeyHashObj 1, 1), (KeyHashObj 2, 3), (KeyHashObj 3, 2)] (delegators ++ [(KeyHashObj 3, 20)])) [(10, 4), (20, 2)] [MkLeiosSeat 10 (2 / 3) Nothing, MkLeiosSeat 20 (1 / 3) Nothing])
