% Standard preamble for homework and tests
% Written by Allyson Robert

% Declares itself
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{uhcourse}[2021/05/15 A course class suitable for Hasselt University coursework]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         Packages         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\LoadClass[11pt, a4paper]{article}

%% Language package
\RequirePackage[dutch]{babel}

% Header
\RequirePackage{fancyhdr}
\RequirePackage{titling}
\RequirePackage{lastpage}
\RequirePackage{graphicx}

% Aesthetics, layout and font
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{multicol}
\RequirePackage{tocbibind}
\RequirePackage[explicit]{titlesec}
\RequirePackage[T1]{fontenc}
\RequirePackage{helvet}
\RequirePackage{chngcntr}
\RequirePackage[normalem]{ulem}
\RequirePackage[style=english]{csquotes}

% Improvements
\RequirePackage{enumitem}
\RequirePackage{chngcntr}

% File management
\RequirePackage{import}

% Custom Environments
\RequirePackage{thmtools}
\RequirePackage{framed}
\RequirePackage{mdframed}
\RequirePackage{tocloft}

% When will I not need math or physics
\RequirePackage{physics}
\RequirePackage{amsmath}

% References and links
\RequirePackage[colorlinks=true, linktoc=all]{hyperref}
\RequirePackage[noabbrev,dutch]{cleveref}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Definition of things   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Number paragraphs using the alphabet to match the problem sets
\renewcommand{\theparagraph}{(\thesubsection ~ - \roman{paragraph})}
\setcounter{secnumdepth}{4}
\counterwithin*{paragraph}{subsection}
\crefname{paragraph}{paragraaf}{paragrafen}
\Crefname{paragraph}{Paragraaf}{Paragrafen}
\crefname{equation}{vergelijking}{vergelijkingen}
\Crefname{equation}{Vergelijking}{Vergelijkingen}

% Shorthand for new paragraph
\newcommand{\npar}{\par\medskip} 

% No indentation
\setlength\parindent{0pt}

% Title in header
\makeatletter
    \def\title#1{\gdef\@title{#1}\gdef\THETITLE{#1}}
\makeatother

% Switch to uppercase
\newcommand{\upperC}[1]{\expandafter\MakeUppercase\expandafter{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Definition of the footer %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Define the style of the page
\pagestyle{fancy}
\fancyhf{}

\setlength{\headheight}{40pt} 

% Header definition
\fancyhead[L]{\includegraphics[width = 3.5cm]{UHasselt_Logo}}
\fancyhead[R]{\THETITLE \\ \theauthor}

% Footer definition
\fancyfoot[R]{Pagina \thepage}

% Resize header\footer rule widths
\renewcommand{\headrulewidth}{1pt}
\renewcommand{\footrulewidth}{1pt}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Defined Environments   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Have a common counter for all custom numbered environments
\newcounter{envctr}[section]
\renewcommand{\theenvctr}{\thesection.\arabic{envctr}}

%%%%%%%%%%%%%%%%%%%%%%%
% Example Environment %

% Define the counter 
\makeatletter
    \let\c@example\c@envctr
    \def\p@example{\p@envctr}
    \def\theexample{\theenvctr}
\makeatother

% Defines cref names
\crefname{example}{voorbeeld}{voorbeelden}
\Crefname{example}{Voorbeeld}{Voorbeelden}

% Colours
\definecolor{TFTitleColor}{RGB}{0, 0, 0}
\definecolor{TFFrameColor}{RGB}{189, 189, 255}
\definecolor{shadecolor}{RGB}{255, 230, 230}

% Environment
\newenvironment{example}[1]{
    \refstepcounter{example}\par
    \begin{titled-frame}{Voorbeeld~\theenvctr ~#1}
}{
    \end{titled-frame}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%
% Definition Environment %

% Define the counter 
\makeatletter
    \let\c@definition\c@envctr
    \def\p@definition{\p@envctr}
    \def\thedefinition{\theenvctr}
\makeatother

% Defines cref names
\crefname{definition}{definitie}{definities} 
\Crefname{definition}{Definitie}{Definities}

% Colours
\definecolor{myred}{RGB}{255, 230, 230}
\definecolor{mydarkred}{RGB}{255, 133, 133}

% Define environment
\newenvironment{definition}[1]{%
    \refstepcounter{definition}\par
    \mdfsetup{%
        frametitle={%
            \uline{\textbf{Definitie~\theenvctr:~#1}}
        }
    }%
    \mdfsetup{ innertopmargin=10pt,linecolor=mydarkred,%
        linewidth=2pt }
    \begin{mdframed}[backgroundcolor=myred, nobreak=true]\relax%
        }{
    \end{mdframed}
}

%%%%%%%%%%%%%%%%%%%%%%%%
% Exercise Environment %

% Makes a list of all the exercises
\makeatletter
\newcommand\listofexercisesname{Oefeningenlijst}
\newcommand\listofexercises{
    \phantomsection\addcontentsline{toc}{section}{Oefenignenlijst}
    \section*{\listofexercisesname}
    \@starttoc{exs}
} 
\makeatother

% Define the counter 
\makeatletter
    \let\c@exercise\c@envctr
    \def\p@exercise{\p@envctr}
    \def\theexercise{\theenvctr}
\makeatother

% Defines cref names
\crefname{exercise}{oefening}{oefeningen}
\Crefname{exercise}{Oefening}{Oefeningen}

% Define environment
\newenvironment{exercise}[2][]{
    \refstepcounter{exercise}
    \ifx\\#1\\
    	\addcontentsline{exs}{subsection}{Oefening ~\theenvctr ~#2}
    \else
    	\addcontentsline{exs}{subsection}{Oefening ~\theenvctr ~#1}
    \fi
   	\begin{leftbar}{\noindent \textbf{Oefening~\theenvctr ~#2}}\npar
}{
    \end{leftbar}\npar
}

%%%%%%%%%%%%%%%%%%%%%%%
% Theorem Environment %

% Define the counter 
\makeatletter
    \let\c@theorem\c@envctr
    \def\p@theorem{\p@envctr}
    \def\thetheorem{\theenvctr}
\makeatother

% Defines cref names
\crefname{theorem}{stelling}{stellingen}
\Crefname{theorem}{Stelling}{Stellingen}

% Colours
\definecolor{mygreen}{RGB}{228, 251, 240}
\definecolor{mydarkgreen}{RGB}{78, 228, 156}

% Define environment
\newenvironment{theorem}[2][]{%
    \refstepcounter{theorem}
    \ifx\\#1\\
        \mdfsetup{%
            frametitle={%
                \textbf{\textit{\uline{Stelling~\theenvctr:~#1}}}
            }
        }%
    \else
        \mdfsetup{%
            frametitle={%
                \textbf{\textit{\uline{Stelling~\theenvctr:~#2}}}
            }
        }%
        \label{th:#1}
    \fi
    \mdfsetup{ innertopmargin=10pt,linecolor=mydarkgreen,%
        linewidth=2pt }
    \begin{mdframed}[backgroundcolor=mygreen, nobreak=true]\relax%
}{
    \end{mdframed}
}

%%%%%%%%%%%%%%%%%%%%%
% Proof environment %
\newcommand{\bref}[1]{
    \hypersetup{linkcolor=black}%
    \ref{#1}%
    \hypersetup{linkcolor=red}
}
\newenvironment{proof}[1]{
    \mdfsetup{%
        frametitle={%
            \textbf{\textit{\uline{Bewijs voor stelling \bref{th:#1}}}}
        }
    }%
    \mdfsetup{innertopmargin=10pt,linecolor=mydarkgreen,%
        linewidth=2pt }
    \begin{mdframed}\relax%
    }{
    \end{mdframed}
} 

%%%%%%%%%%%%%%%%%%%%%%%
% Enumulti enviroment %
\newenvironment{enumulti}[1]{
    \begin{multicols}{#1}
        \begin{enumerate}
}{
        \end{enumerate}
    \end{multicols}
}

