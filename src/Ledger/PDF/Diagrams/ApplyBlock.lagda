\begin{figure}
  \centering
  \begin{tikzpicture}[
    N/.style = {draw, fill=white, minimum size=1cm, align=right},
    dcs/.style = {double copy shadow, shadow xshift=2pt, shadow yshift=-2pt},
    every edge/.style={draw, ->, >=Latex, semithick}
    ]

    \node[ N
         , fill=\AlonzoColor
         , label={[text width=26mm]east:
           {\footnotesize \phantom{i} BbodyEnv \phantom{X}ShelleyBBodyState \phantom{X}Block}}
         ] (bbody)  {\small BBODY};

    \node[ N
         , below =of bbody, fill=\ShelleyColor
         , label={[text width=20mm]east:
           {\footnotesize \phantom{i} LedgerEnv \phantom{X}LedgerState \phantom{X}Seq Tx}}
         ] (ledgers) {\small LEDGERS};

    \node[ N
         , label={[text width=20mm]east: {\footnotesize \phantom{i} LedgerEnv \phantom{X}LedgerState \phantom{X}Tx}}
         , below =of ledgers, dcs, fill=\ConwayColor
         ] (ledger) {\small LEDGER};

    \node[ label={south: {\footnotesize Same as in ApplyTx}}
         , below =of ledger
         ] (dots) {$\cdots$};

    \draw
    (bbody)   edge[bend right] (ledgers)
    (ledgers) edge[bend right] (bbody)
    (ledgers) edge[bend right] (ledger)
    (ledger)  edge[bend right] (ledgers)
    (ledger)  edge             (dots);
  \end{tikzpicture}

  \caption{ApplyBlock.applyBlockOpts module
    (\legendbox{\AlonzoColor}~Alonzo,
    \legendbox{\ShelleyColor}~Shelley,
    \legendbox{\ConwayColor}~Conway)}
  \label{fig:apply-block}
\end{figure}
