%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Based on the file
% oup-contemporary.cls, v1.2, 2023/06/12
% Developed by Overleaf
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\ProvidesClass{podxboq}[2023/06/12, v1.2]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}

\ProcessOptions\relax
\LoadClass[twoside,twocolumn]{article}

\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\usepackage{amsthm,amsmath,amssymb}
\RequirePackage{merriweather}
\RequirePackage{ifpdf}
\RequirePackage{microtype}
\renewcommand{\ttdefault}{lmtt}
\RequirePackage[italic]{mathastext}
\RequirePackage{relsize}
\RequirePackage{ragged2e}
\RequirePackage{xcolor}
\RequirePackage{colortbl}
\RequirePackage{graphicx}
\RequirePackage{etoolbox,xpatch}
\RequirePackage{environ}
\RequirePackage{lastpage}
\RequirePackage{rotating}
\RequirePackage{lscape}
\RequirePackage{afterpage}
\RequirePackage[absolute]{textpos}
\RequirePackage{url}
\RequirePackage{newfloat}
\RequirePackage{mdframed}
\RequirePackage{titlesec}
\RequirePackage{graphicx}
\RequirePackage{siunitx}
\RequirePackage{listings}
\RequirePackage{scrextend}
\changefontsizes[10pt]{7pt}

\RequirePackage{calc}
\RequirePackage{geometry}
\geometry{includefoot,
  hmargin=4pc+6.64pt,
  bottom=2pc+10pt,
  top=5pc+6pt,
  headsep=2pc,
  headheight=17.5pt,
  footnotesep=1pc+6pt,
  columnsep=18pt}
\setlength{\parindent}{12pt}

\AddToHook{begindocument/before}{
\RequirePackage[colorlinks,allcolors=black,urlcolor=blue]{hyperref}}

\def\@jstartpage{1}

\newcommand{\jstartpage}[1]{\def\@jstartpage{#1}}

\def\@runningtitle{}
\def\@corraddress{}
\colorlet{jcolour}{blue!40}

\newcommand{\runningtitle}[1]{\def\@runningtitle{#1}}
\newcommand{\corraddress}[1]{\def\@corraddress{#1}}

\RequirePackage[flushmargin,bottom,norule]{footmisc}
\appto{\footnotelayout}{\fontsize{6.5pt}{9.5pt}\selectfont}
\deffootnote{1.5em}{1.5em}{\thefootnotemark\enspace}

\RequirePackage{fancyhdr}
\fancyhf{}
\renewcommand{\headrule}{\color{black!15}\rule{\textwidth}{2pt}}
\fancyhead[LE]{%
  \fontsize{7.8pt}{10pt}\selectfont%
  \color{jcolour}%
  \textbf{\thepage}%
}
\fancyhead[RO]{%
  \fontsize{7.8pt}{10pt}\selectfont%
  \color{jcolour}%
  \textbf{\thepage}%
}

\fancypagestyle{plain}{%
  \fancyhf{}
  \renewcommand{\headrule}{}
  \fancyfoot[R]{%
    \fontsize{7.8pt}{10pt}\selectfont%
    \color{jcolour}%
    \textbf{\thepage}\hspace*{12pt}%
  }
}

\pagestyle{fancy}

\RequirePackage{alphalph}
\newalphalph{\fnsymbolmult}[mult]{\@fnsymbol}{5}

\AddToHook{begindocument/end}{
\renewcommand{\@maketitle}{%
  \textblockorigin{4pc+6.64pt}{4pc+6pt}
  %%%
  \begin{textblock*}{\textwidth-21pc}(21pc,0pt)
  \end{textblock*}%
  %%%
  {\fontsize{18pt}{27pt}\bfseries\color{jcolour}\@title\par}
  \vspace{\dimexpr 18pt-13pt\relax}
}
}

\newenvironment{keywords}
{\vspace*{\dimexpr 19pt-8pt-\baselineskip\relax}%
\noindent\fontsize{8pt}{11pt}\selectfont\textbf{Key words}: \ignorespaces}%
{\par}

\DeclareFloatingEnvironment[placement=t!,name=kpt]{keypoints}

\xapptocmd{\keypoints}{%
  \begin{mdframed}[linewidth=1pt,linecolor=black,
  innerleftmargin=8pt,innerrightmargin=8pt,
  innertopmargin=16pt-8.2pt,innerbottommargin=6pt]
  {\fontsize{8.2pt}{10pt}\bfseries Key Points\par}
}{}{}
\xpretocmd{\endkeypoints}{\end{mdframed}}{}{}

\xapptocmd{\keypoints*}{%
  \begin{mdframed}[linewidth=1pt,linecolor=black,
  innerleftmargin=8pt,innerrightmargin=8pt,
  innertopmargin=16pt-8.2pt,innerbottommargin=6pt]
  {\fontsize{8.2pt}{10pt}\bfseries Key Points\par}
}{}{}
\xpretocmd{\endkeypoints*}{\end{mdframed}}{}{}


\if@twocolumn
  \NewEnviron{frontmatter}
  {\twocolumn[%
      \BODY%
      \vspace*{\dimexpr 16pt-3pt-1em\relax}
      {\noindent\color{jcolour!40}\rule{\hsize}{3pt}}\par
      \vspace*{\dimexpr 23pt-1em\relax}]%
    \begin{figure*}[b!]
      \fontsize{6.5pt}{9.5pt}\selectfont%
      \hrule%
      \vspace{\dimexpr 14pt-6.5pt\relax}%
      \textbf{Compiled on:} \today.\par
    \end{figure*}
  }
\else
  \NewEnviron{frontmatter}{%
      \BODY%
      \vspace*{\dimexpr 16pt-3pt-1em\relax}
      {\noindent\color{jcolour!40}\rule{\hsize}{3pt}}\par
      \vspace*{\dimexpr 23pt-1em\relax}%
    \begin{figure*}[b!]
      \fontsize{6.5pt}{9.5pt}\selectfont%
      \hrule%
      \vspace{\dimexpr 14pt-6.5pt\relax}%
      \textbf{Compiled on:} \today.\par
    \end{figure*}
  }
\fi

\setcounter{secnumdepth}{3}
\titleformat*{\section}{\fontsize{10pt}{12pt}\bfseries\color{jcolour}}
\titlespacing*{\section}{0pt}{26.5pt-1em}{16pt-1em}
\titleformat*{\subsection}{\fontsize{8.5pt}{11pt}\bfseries\color{jcolour}}
\titlespacing*{\subsection}{0pt}{2pc-1em}{17pt-1em}
\titleformat*{\subsubsection}{\normalsize\bfseries\slshape}
\titlespacing*{\subsubsection}{0pt}{\baselineskip}{0pt}
\titleformat{\paragraph}[runin]{\normalsize\itshape}{\theparagraph}{0pt}{}[.\enspace]
\titlespacing*{\paragraph}{0pt}{\baselineskip}{0pt}
\titleformat{\subparagraph}[runin]{\relsize{-1}\uppercase}{\thesubparagraph}{0pt}{}[.\enspace]
\titlespacing*{\subparagraph}{0pt}{\baselineskip}{0pt}

\RequirePackage{enumitem}
\setlist{noitemsep}
\setlist[itemize]{leftmargin=12pt,topsep=16pt-1em}
\setlist[enumerate]
{itemindent=14pt,topsep=16.8pt-1em,
 label={\roman*.},labelsep=7pt,
 labelwidth=*,leftmargin=*,align=right}


% quotes and epigraphs
\RequirePackage{quoting}
\newcommand{\quotefont}{\fontsize{6.5pt}{9.5pt}\selectfont}
\quotingsetup{vskip=16pt-1em,indentfirst=false,font={quotefont},leftmargin=12pt,rightmargin=12pt}

\renewenvironment{quote}{\begin{quoting}}{\end{quoting}}

\renewenvironment{quotation}{\begin{quoting}}{\end{quoting}}

\newenvironment{epigraph}[1]
{\begin{quoting}[font={itshape,fontsize{7.5pt}{10.5pt}},vskip=15pt-1em,leftmargin=0pt,rightmargin=0pt]%
 \def\@quotesource{#1}}
{\par\vspace{\dimexpr 15pt-1em\relax}{\upshape---\@quotesource}\end{quoting}}

% Space above/below equations
\g@addto@macro\normalsize{%
  \setlength\abovedisplayskip{\baselineskip}%
  \setlength\belowdisplayskip{\baselineskip}%
  \setlength\abovedisplayshortskip{\baselineskip}%
  \setlength\belowdisplayshortskip{\baselineskip}%
}

\RequirePackage{stfloats}
\RequirePackage{booktabs}
\RequirePackage{tabularx}
% Left-, right- and center-aligned auto-wrapping column types
\newcolumntype{L}{>{\raggedright\arraybackslash}X}
\newcolumntype{R}{>{\raggedleft\arraybackslash}X}
\newcolumntype{C}{>{\centering\arraybackslash}X}

\AtBeginEnvironment{tabularx}{%
  \fontsize{7pt}{10pt}\selectfont
}
\AtBeginEnvironment{tabular}{%
  \fontsize{7pt}{10pt}\selectfont
}

\setlength{\aboverulesep}{11pt-1em}
\setlength{\belowrulesep}{11pt-1em}
\setlength{\heavyrulewidth}{0.5pt}
\setlength{\lightrulewidth}{0.5pt}
\arrayrulecolor{jcolour}


\newcommand{\tnote}[1]{\textsuperscript{\textit{#1}}}
\newlist{tablenotes}{itemize}{1}
\setlist[tablenotes]{label={},labelsep=0pt,leftmargin=0pt,topsep={\dimexpr 12pt-1em\relax}}
\appto{\tablenotes}{\fontsize{6pt}{9pt}\selectfont}

\RequirePackage[tableposition=top]{caption}
\DeclareCaptionFont{figcaptionfont}{\fontsize{6pt}{9pt}\selectfont}
\DeclareCaptionFont{tabcaptionfont}{\fontsize{7pt}{9pt}\selectfont}
\captionsetup{justification=justified,singlelinecheck=false,labelfont={bf},labelsep=period}
\captionsetup*[figure]{font=figcaptionfont,skip=10pt}
\captionsetup*[table]{font=tabcaptionfont,skip=10pt-1em}

% Skips for floats
\setlength{\floatsep}{1pc+6pt}
\setlength{\intextsep}{1pc+6pt}
\setlength{\textfloatsep}{1pc+6pt}

%import physics package whitout the \qty command for problems with sixunits package
\usepackage{plantillas/myphysics}

\newtheorem{definition}{Definition}[section]
\newtheorem{notation}{Notation}[section]
\newtheorem{proposition}{Proposition}[section]
\newtheorem{problem}{Problem}[section]
\newtheorem{lemma}{Lemma}[section]
\newtheorem{theorem}{Theorem}[section]
\newtheorem{solution}{Solution}[section]
\newtheorem{example}{Example}[section]

%personal commands
\input{plantillas/mycommands}