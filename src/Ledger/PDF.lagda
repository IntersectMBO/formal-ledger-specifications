\documentclass[11pt,a4paper,dvipsnames]{article}

\usepackage{iohk}
\usepackage{agda-latex-macros}
\usepackage{hyperref}
\hypersetup{
    colorlinks=true,
    linkcolor=blue,
    urlcolor=blue
 }
\usepackage[links]{agda}
\setlength{\mathindent}{10pt}

\usepackage{fontspec}
\newcommand\agdaFont{StrippedJuliaMono}
\newcommand\agdaFontOptions{
Path=fonts/,
Extension=.ttf,
UprightFont=*-Regular,
BoldFont=*-Bold,
ItalicFont=*-RegularItalic,
BoldItalicFont=*-BoldItalic,
%% Scale=MatchLowercase
Scale=0.80
%% Scale=MatchUppercase
}
\newfontfamily{\AgdaSerifFont}{\agdaFont}[\agdaFontOptions]
\newfontfamily{\AgdaSansSerifFont}{\agdaFont}[\agdaFontOptions]
\newfontfamily{\AgdaTypewriterFont}{\agdaFont}[\agdaFontOptions]
\renewcommand{\AgdaFontStyle}[1]{{\AgdaSansSerifFont{}#1}}
\renewcommand{\AgdaKeywordFontStyle}[1]{{\AgdaSansSerifFont{}#1}}
\renewcommand{\AgdaStringFontStyle}[1]{{\AgdaTypewriterFont{}#1}}
\renewcommand{\AgdaCommentFontStyle}[1]{{\AgdaTypewriterFont{}#1}}
\renewcommand{\AgdaBoundFontStyle}[1]{{\emph{\AgdaTypewriterFont{}#1}}}

% Math fonts
\usepackage{unicode-math}
\setsansfont{XITSMath-Regular.otf}
\setmathfont{XITSMath-Regular.otf}

\newcommand{\N}{\ensuremath{\mathbb{N}}}

\begin{document}

\begin{code}[hide]
module Ledger.PDF where

open import Ledger.Prelude
\end{code}

\begin{AgdaMultiCode}
\begin{code}
ff : Bool
ff = true
  where
\end{code}
\begin{code}
  f1 : Bool
  f1 = true

  f2 : Bool
  f2 = case true of
\end{code}
\begin{code}[hide]
    λ where
\end{code}
\begin{code}
      _ → true

  f3 : Bool
  f3 = case true of
\end{code}
\begin{code}[hide]
    λ where
\end{code}
\begin{code}
    _ → true
\end{code}
\end{AgdaMultiCode}

\end{document}
