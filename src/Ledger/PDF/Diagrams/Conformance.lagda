\begin{figure}
  \centering
  \begin{tikzpicture}[
    every node/.style={align=left, fill=white},
    rect/.style={draw, rectangle},
    elpse/.style={draw, ellipse},
    decision/.style={draw, diamond, aspect=2},
    cloudstyle/.style={draw, rounded corners, thick, fill=blue!10},
    box/.style={draw, rectangle, fill=#1, inner sep=0pt, opacity=0.2, anchor=west, minimum height=13cm, minimum width=7cm},
    boxx/.style={draw, rectangle, fill=#1, inner sep=0pt, opacity=0.2, anchor=west, minimum height=13cm, minimum width=10cm},
    every edge/.style={draw, ->, >=Latex, semithick}
    ]

    %%% Backgrounds %%%
    \node[box=\AlonzoColor] at (-7,0) {};
    \node[boxx=\ConwayColor, anchor=west] at (0,0) {};

    %%% Title/Header %%%
    \node[cloudstyle] (haskellCodebaseLabel) at (0,5)
    {\Large Haskell codebase};

    %%% Left section nodes %%%
    \node[elpse] (generator) at (-4.5, 4) {\small Generator};

    \node[rect, below = of generator] (env)
    {\small env : Env\\
      st : State\\
      sig : Signal};

    \node[elpse, below = of env] (runSTS) {\small runSTS};

    \node[rect, below =of runSTS] (stPrime)
    {\small st' :\\
      \phantom{X}\textbf{Either} PredicateFailure\\
      \phantom{XxEither} State};

    %%% Translation nodes %%%
    \node[elpse, right=1.5cm of env] (specTranslate1)
    {\small SpecTranslate\\ toSpecRep};

    \node[elpse, right=3mm of stPrime] (specTranslate2)
    {\small SpecTranslate\\ toSpecRep};

    %%% Right section nodes %%%
    \node[rect, right=3mm of specTranslate2] (implStPrime)
    {\small implSt' :\\
      \phantom{X}\textcolor{blue}{ComputationResult}\\
      \phantom{X}\textcolor{blue}{AgdaState}};

    \node[rect, right=of implStPrime] (agdaStPrime)
    {\small agdaSt' :\\
      \phantom{X}\textcolor{blue}{ComputationResult}\\
      \phantom{X}\textcolor{blue}{AgdaState}};

    \node[elpse, above=of agdaStPrime] (stStep) {\small stStep};

    \node[rect, above=8mm of stStep] (agdaEnv)
    {\small agdaEnv : \textcolor{blue}{AgdaEnv}\\
      agdaSt : \textcolor{blue}{AgdaState}\\
      agdaSig : \textcolor{blue}{AgdaSignal}};

    %%% Decision and results %%%
    \node[decision, below right=5mm and -2mm of implStPrime] (equal)
    {\small Equal?};

    \node[rect, fill=red!30, below right=of equal] (testFail)
    {\small Test failure};

    \node[rect, fill=green!30, below left=of equal] (testSuccess)
    {\small Test success};

    \draw
    %%% Left section edges %%%
    (generator) edge (env)
    (env)       edge (runSTS)
    (runSTS)    edge (stPrime)
    (env)       edge (specTranslate1)
    (stPrime)   edge (specTranslate2)

    %%% Translation edges %%%
    (specTranslate1) edge (agdaEnv)
    (specTranslate2) edge (implStPrime)

    %%% Right section edges %%%
    (agdaEnv)     edge (stStep)
    (stStep)      edge (agdaStPrime)
    (agdaStPrime) edge (equal)
    (implStPrime) edge (equal)

    %%% Decision edges %%%
    (equal) edge node[above] {No} (testFail)
    (equal) edge node[above] {Yes} (testSuccess);

  \end{tikzpicture}
  \caption{Ledger conformance infrastructure;
    Blue types and values are imported from Malonzo modules which are
    compiled directly from the Agda code.}
  \label{fig:conformance-infrastructure}
\end{figure}
