\begin{figure}
  \centering
  \begin{tikzpicture} [
    conway/.style = {draw, fill=white, minimum size=1cm, align=right, fill=\ConwayColor},
    shelley/.style = {draw, fill=white, minimum size=1cm, align=right, fill=\ShelleyColor},
    dcs/.style = {double copy shadow, shadow xshift=2pt, shadow yshift=-2pt},
    every edge/.style={draw, ->, >=Latex, semithick}
    ]

  %%% TICK %%%
  \node[shelley] (tick) {\small TICK};
    % text labels
    \node  [above right =-4mm and 1mm of tick] {\footnotesize ()};
    \node  [right =1mm of tick] {\footnotesize NewEpochState};
    \node  [below right =-4mm and 1mm of tick] {\footnotesize EpochNo};

  %%% ApplyBlock (TOP) %%%
  \node (applyblock) [above =5mm of tick] {\small ApplyBlock.applyTickOpts};

  %%% NEWEPOCH %%%
  \node[conway] (newepoch) [below left = of tick]   {\small NEWEPOCH}; % {\textcolor{white}
    % text labels
    \node  [above right =-4mm and 1mm of newepoch] {\footnotesize ()};
    \node  [right =1mm of newepoch] {\footnotesize NewEpochState};
    \node  [below right =-4mm and 1mm of newepoch] {\footnotesize EpochNo};

  %%% RUPD %%%
  \node[shelley] (rupd)     [below right =1cm and 1cm of tick]  {\small RUPD};
    % text labels
    \node  [above right =-4mm and 1mm of rupd] {\footnotesize RupdEnv};
    \node  [right =1mm of rupd] {\footnotesize Maybe (PulsingRewardUpdate)};
    \node  [below right =-4mm and 1mm of rupd] {\footnotesize SlotNo};

  %%% EPOCH %%%
  \node[conway] (epoch)    [below = of newepoch]    {\small EPOCH};
    % text labels
    \node  [above right =-4mm and 1mm of epoch] {\footnotesize ()};
    \node  [right =1mm of epoch] {\footnotesize EpochState};
    \node  [below right =-4mm and 1mm of epoch] {\footnotesize EpochNo};

  %%% SNAP %%%
  \node[shelley] (snap)     [below left = 2cm and 3cm of epoch]  {\small SNAP};
    % text labels
    \node  [above right =-4mm and 1mm of snap] {\footnotesize SnapShots};
    \node  [right =1mm of snap] {\footnotesize SnapEnv};
    \node  [below right =-4mm and 1mm of snap] {\footnotesize ()};

  %%% POOLREAP %%%
  \node[shelley] (poolreap) [below left = 25mm and -1cm of epoch]       {\small POOLREAP};
    % text labels
    \node  [above right =-4mm and 1mm of poolreap] {\footnotesize Pparams};
    \node  [right =1mm of poolreap] {\footnotesize ShelleyPoolreapState};
    \node  [below right =-4mm and 1mm of poolreap] {\footnotesize EpochNo};

  %%% RATIFY %%%
  \node[conway] (ratify)   [below right = 15mm and 25mm of epoch] {\small RATIFY};
    % text labels
    \node  [above right =-4mm and 1mm of ratify] {\footnotesize RatifyEnv};
    \node  [right =1mm of ratify] {\footnotesize RatifyState};
    \node  [below right =-4mm and 1mm of ratify] {\footnotesize RatifySignal};

  %%% ENACT %%%
  \node[conway] (enact)    [below = of ratify]      {\small ENACT};
    % text labels
    \node  [above right =-4mm and 1mm of enact] {\footnotesize ()};
    \node  [right =1mm of enact] {\footnotesize EnactState};
    \node  [below right =-4mm and 1mm of enact] {\footnotesize GovAction};

  \draw
  (tick)       edge             (newepoch)
  (tick)       edge             (rupd)
  (applyblock) edge             (tick)
  (newepoch)   edge [bend left] (tick)
  (newepoch)   edge             (epoch)
  (rupd)       edge [bend left] (tick)
  (epoch)      edge [bend left] (newepoch)
  (epoch)      edge             (snap)
  (epoch)      edge             (poolreap)
  (epoch)      edge             (ratify)
  (snap)       edge [bend left] (epoch)
  (poolreap)   edge [bend left] (epoch)
  (ratify)     edge [bend left] (epoch)
  (ratify)     edge             (enact)
  (enact)      edge [bend left] (ratify);

  \end{tikzpicture}
  \caption{API.Validation module
    (\legendbox{\ShelleyColor}~Shelley, \legendbox{\ConwayColor}~Conway)}
  \label{fig:api-validation-diagram}
\end{figure}
