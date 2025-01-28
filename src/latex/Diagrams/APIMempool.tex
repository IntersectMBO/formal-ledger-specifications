\begin{figure}
  \centering
  \begin{tikzpicture} [
    conway/.style = {draw, minimum size=1cm, align=right, fill=\ConwayColor},
    shelley/.style = {draw, minimum size=1cm, align=right, fill=\ShelleyColor},
    babbage/.style = {draw, minimum size=1cm, align=right, fill=\BabbageColor},
    dcs/.style = {double copy shadow, shadow xshift=2pt, shadow yshift=-2pt},
    every edge/.style={draw, ->, >=Latex, semithick}
    ]

  % LEVEL 0 (TOP)
  \node[conway] (ledger) {\small LEDGER};
  \node (applytx) [above =5mm of ledger] {\small ApplyTx};

  % LEVEL -1
  \node[conway] (certs) [below left =of ledger] {\small CERTS};
  \node[conway] (tally) [below      =of ledger] {\small TALLY};
  \node[conway] (utxow) [below right=of ledger] {\small UTXOW};

  % LEVEL -2
  \node[conway, dcs] (cert) [below =of certs] {\small CERT};
  \node[babbage]     (utxo) [below =of utxow] {\small UTXO};

  % LEVEL -3 %1cm and 0mm
  \node[conway]  (deleg)   [below left =5mm and 5mm of cert] {\small DELEG};
  \node[shelley] (pool)    [below      =15mm        of cert] {\small POOL};
  \node[conway]  (govcert) [below right=5mm and 5mm of cert] {\small GOVCERT};
  \node[conway]  (utxos)   [below      =            of utxo] {\small UTXOS};

  % Edges
  \draw
  (applytx) edge              (ledger)
  (ledger)  edge              (certs)
  (ledger)  edge [bend right] (tally)
  (ledger)  edge              (utxow)
  (certs)   edge [bend left]  (ledger)
  (tally)   edge [bend right] (ledger)
  (utxow)   edge [bend right] (ledger)
  (certs)   edge [bend right] (cert)
  (cert)    edge [bend right] (certs)
  (cert)    edge              (deleg)
  (cert)    edge [bend right] (pool)
  (cert)    edge              (govcert)
  (deleg)   edge [bend left]  (cert)
  (pool)    edge [bend right] (cert)
  (govcert) edge [bend right] (cert)
  (utxow)   edge [bend right] (utxo)
  (utxo)    edge [bend right] (utxow)
  (utxo)    edge [bend right] (utxos)
  (utxos)   edge [bend right] (utxo);

  \draw[semithick,->, -Stealth] (cert) to [looseness=8, out=50,in=15] (cert);

  \end{tikzpicture}
  \caption{API.MemPool module
    (\legendbox{\ShelleyColor}~Shelley,
     \legendbox{\ConwayColor}~Conway,
     \legendbox{\BabbageColor}~Babbage)}
  \label{fig:api-mempool}
\end{figure}
