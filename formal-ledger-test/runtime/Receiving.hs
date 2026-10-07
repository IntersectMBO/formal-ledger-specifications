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
    check "child Receiving domain is body-local" (null childScripts && childKeys == [7] && subReceivingPointer childTx 20 == Nothing)
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
                        [(0, out True (ScriptObj 20) 2), (1, out True (ScriptObj 30) 2), (2, (Left (BaseAddr 0 (ScriptObj 20) (Just (KeyHashObj 99)) True), (2, (Nothing, Nothing)))), (3, out True (KeyHashObj 7) 2), (4, out False (ScriptObj 10) 2), (5, out True (KeyHashObj 7) 0)]
                }
        domainTx = tx{txtopTxBody = domainBody}
        MkHSSet scripts = receivingScriptHashes domainTx
        MkHSSet keys = receivingKeyHashes domainTx
    check "grouped script hashes exclude keys and ordinary outputs" (sort (nub scripts) == [20, 30] && sort (nub keys) == [7])
    check "canonical pointers keep native slots and reject unknown hashes" (receivingPointer domainTx 20 == Just (Receive, 0) && receivingPointer domainTx 30 == Just (Receive, 1) && receivingPointer domainTx 40 == Nothing)
    let MkHSMap domainOutputs = txbtopTxOuts domainBody
        reversedDomainTx = domainTx{txtopTxBody = domainBody{txbtopTxOuts = MkHSMap (reverse domainOutputs)}}
        groupedChildTx = childTx{txsubTxBody = childBody{txbsubTxOuts = txbtopTxOuts domainBody}}
        MkHSSet groupedChildScripts = subReceivingScriptHashes groupedChildTx
    check "Receiving pointers are independent of output-map presentation order" (receivingPointer reversedDomainTx 20 == Just (Receive, 0) && receivingPointer reversedDomainTx 30 == Just (Receive, 1))
    check "child duplicate hashes and stake variants retain canonical unique slots" (sort (nub groupedChildScripts) == [20, 30] && subReceivingPointer groupedChildTx 20 == Just (Receive, 0) && subReceivingPointer groupedChildTx 30 == Just (Receive, 1))
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
    let duplicateP2Tx = p2Tx{txtopTxBody = (txtopTxBody p2Tx){txbtopTxOuts = MkHSMap [(0, out True (ScriptObj 20) 5), (1, out True (ScriptObj 20) 5)]}, txtopTxWitnesses = p2Wits}
        duplicateP2Child = childTx{txsubTxBody = childBody{txbsubTxOuts = txbtopTxOuts (txtopTxBody duplicateP2Tx)}, txsubTxWitnesses = p2Wits}
        guardedWits = p2Wits{txwTxRedeemers = MkHSMap [((Receive, 0), (0, (1, 2))), ((Guard, 0), (0, (1, 2)))]}
        guardedP2Tx = duplicateP2Tx{txtopTxBody = (txtopTxBody duplicateP2Tx){txbtopTxGuards = MkHSSet [ScriptObj 20]}, txtopTxWitnesses = guardedWits}
        guardedP2Child = duplicateP2Child{txsubTxBody = (txsubTxBody duplicateP2Child){txbsubTxGuards = MkHSSet [ScriptObj 20]}, txsubTxWitnesses = guardedWits}
        p2Scripts = MkHSSet [p2]
    check "duplicate top Receiving outputs collect exactly one invocation" (collectingScriptCount params duplicateP2Tx utxo p2Scripts == 1)
    check "duplicate child Receiving outputs collect exactly one invocation" (subCollectingScriptCount params duplicateP2Child utxo p2Scripts == 1)
    check "same top script under Guard and Receiving retains both invocations" (collectingScriptCount params guardedP2Tx utxo p2Scripts == 2)
    check "same child script under Guard and Receiving retains both invocations" (subCollectingScriptCount params guardedP2Child utxo p2Scripts == 2)
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
    case ledgerStep evaluatorFalse ledgerEnv childState childBatch of
        Failure err -> error ("child Receiving invalid batch: " ++ show err)
        Success final -> do
            let MkHSMap resulting = usUtxo (lsUtxoSt final)
            check "invalid child Receiving preserves parent and child ordinary inputs" (lookup (10, 0) resulting /= Nothing && lookup (10, 2) resulting /= Nothing)
            check "invalid child Receiving creates no parent or child ordinary outputs" (lookup (11, 0) resulting == Nothing && lookup (12, 0) resulting == Nothing)
            check "invalid child Receiving applies only top collateral return and fees" (lookup (10, 1) resulting == Nothing && lookup (11, 1) resulting == Just (out False (KeyHashObj 1) 2) && usFees (lsUtxoSt final) == 3)
