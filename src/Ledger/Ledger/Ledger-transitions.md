### Ledger Transition Changes

The prototype for the changes can be found
[here](https://github.com/IntersectMBO/formal-ledger-specifications/compare/polina-nested-txs)

The transition structure is changed from 

`LEDGERS -> LEDGER -> {{CERTS -> ..} , {GOV -> ..} , {UTXOW -> UTXO -> UTXOS}}`

to

`LEDGERS -> LEDGER -> {{ALLCERTS -> CERTS' -> CERTS ..} , {ALLGOV -> GOV ..} , {ALLUTXOW -> UTXOW -> UTXO} , {ALLUTXOS -> UTXOS}}`



#### `LEDGER` and `LEDGERS`

The transition `LEDGERS` still calls the `LEDGER` transition for each transaction in the given block.
As before, `LEDGER` case splits on the `isValid` tag. The following other checks are shared across both 
rules of `LEDGER` :

1. Fees are correct. `feesOK` is modified by (1) replacing `txfee` with 
the sum total of `txfee` values of all the transactions in the batch. Note that fees are still 
collected from individual transactions, however, only the total fees from all transactions is checked 
to make sure enough fees in total are paid. It is up to the users/batchers to decide who has to provide 
how much fees.

2. The batch must be balanced (POV holds). Both sides of the equation of POV now sum all of what used to be the 
`produced` and `consumed` values for individual transactions. 

3. All inputs of all transactions are contained in the UTxO set. 

4. Transaction size (which includes top-level and all sub-transactions) is below max for a single transaction

5. The sum of the execution units of all transactions in a batch is less than the max for a single transaction 

6. There are no sub-transactions in any sub-transactions

7. There are no collateral inputs in sub-transactions

Note that there is no need to check that all sub-transactions are distinct. This is guaranteed by the check that 
the inputs of all transactions are in the UTxO set to which the transaction is being applied (this is done in the `UTXO` rule).
Two transactions cannot add or remove the same entry from the UTxO set. Note also that (7) and possibly (6) 
could be ensure at the CDDL (transaction encoding) level.

To construct the transaction list representing the complete batch, the original transaction prepends the 
top-level transaction to its `subTx` list, applying the transformation `adjustTx` to each of the 
transactions (note that the changes listed below both do not affect the validation outcome of the transaction
being adjusted):

- add all scripts (`allScripts`) from all transactions to the set of scripts attached to each transaction (this enables script 
sharing, as well as ensure that all batch observer scripts are included in the top-level transaction)

- set the `isValid` of each sub-transaction to that of the top-level transaction (this ensure the correct 
rule is applied in the `UTXOS` transition).

After checks 1-7, the `LEDGER-I` rule calls the `ALLCERTS` and `ALLGOV` transitions on the batch transaction body list 
(this is instead of calling `CERTS` and `GOV`). 

After checks 1-7 (plus  `ALLCERTS` and `ALLGOV` in the case of `LEDGER-I`), both rules call `ALLUTXOW` and `ALLUTXOS`, 
which are closures of `UTXOW` and `UTXOS`, respectively. Note that this re-structuring is required for ensuring that 
all relevant phase-1 checks are finished before *any* scripts are executed.

**NOTE :** A possible improvement to the design may entail sharing of in-line (reference) scripts and datums across transactions.
If possible, all reference scripts should be included when computing `allScripts` to allow sharing.

#### `ALLCERTS`, `CERTS'`, and `ALLGOV`

`ALLCERTS` is the closure of `CERTS'`, where `CERTS'` simply calls `CERTS` with the appropriate signal and environment constructed 
from the transaction body. We do not call use the closure of `CERTS` directly due to the structure of its environment being 
dependent on the body of the transaction whose certificates are being processed.

`ALLGOV` is the closure of `GOV`, where each item in the signal list is the output of `txgov` of each of the transactions in the 
batch.

#### UTXOW 

The `UTXOW` rule additionally checks :

1. `requiredTopLevelObservers` are attached to the transaction as script witnesses (i.e. in `witsScriptHashes`)

2. `requiredObservers` are attached to the transaction as script witnesses (i.e. in `witsScriptHashes`)


Other changes include :

- the supported language check requires that `PlutusV3` or earlier is 
only allowed in (singleton) transactions that do not use new features. That is, 
transactions with non-empty `subTxs`, `requiredTopLevelObservers` or `requiredObservers` fields 
require all scripts to be version `PlutusV4`.


#### UTXO

The `feesOK` check, the `txsize` check, the `produced = consumed` check, 
and the check that `txins` are contained in the UTxO set,
are removed from this rule (and moved to the `LEDGER` rule). The call to the 
`UTXOS` rule is also moved out of this rule and into `LEDGER`.

#### UTXOS

`UTXOS` transition still conditions on `isValid` for the transaction being processed. 
The `Scripts-Yes` rule works as before.
However, `isValid` is the same for all batch transactions
(as explained above), and, since no collateral is provided by sub-transactions, the `Scripts-No` 
rule does nothing whenever a sub-transaction is being process. `Scripts-No` does collect top-level 
transaction collateral, as in previous eras.