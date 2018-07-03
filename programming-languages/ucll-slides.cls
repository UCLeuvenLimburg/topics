\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ucll-slides}[2016/05/21]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}

\ProcessOptions\relax


\LoadClass{beamer}

\RequirePackage{graphicx}
\RequirePackage{pxfonts}
\RequirePackage{tikz}
\RequirePackage{calc}
\RequirePackage{listings}
\RequirePackage{booktabs}
\RequirePackage{url}
\RequirePackage{framed}
\RequirePackage{hyperref}
\RequirePackage{cleveref}
\RequirePackage{bbding}
\RequirePackage{wasysym}

\usetikzlibrary{shadows,calc,shapes}


\mode<presentation>
\usetheme[height=.75cm,compress]{Singapore}
% \setbeamertemplate{mini frames}{}
% \setbeamertemplate{background canvas}[vertical shading][top=blue!10,bottom=blue!30]

\institute[UCLL]{UC Leuven Limburg}
% \logo{\includegraphics[height=0.5cm]{../ucll-logo.png}}



% Tikz related commands
% \NODE{text}{id}
\newcommand{\NODE}[3][]{\tikz[baseline,remember picture]{\node[anchor=base,inner sep=0mm,#1] (#3) {{#2}};}}



\newcommand{\toc}{
  \begin{frame}
    \tableofcontents[sectionstyle=show/shaded,subsectionstyle=show/shaded/hide]
  \end{frame}
}


\setbeamertemplate{title page}{%
  \begin{center}
    {\sc\Huge \inserttitle}
  \end{center}
}

\newcommand{\link}[2]{\href{#1}{{\color{blue}#2}}}

\newenvironment{procontralist}{
  \begingroup
  \newcommand{\pro}{\item[\Checkmark]}
  \newcommand{\con}{\item[\XSolidBrush]}
  \begin{itemize}
  }{
  \end{itemize}
  \endgroup}
