% Standard preamble for homework and tests
% Written by Allyson Robert

% Declares itself
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{uhcourse}[2019/02/06 A course class suitable for Hasselt University coursework]

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

%%%%%%%%%%%%%%%%%%%%%%%
% Example Environment %

% Colours
\definecolor{TFTitleColor}{RGB}{0, 0, 0}
\definecolor{TFFrameColor}{RGB}{189, 189, 255}
\definecolor{shadecolor}{RGB}{255, 230, 230}

% New counter
\newcounter{example}[section]
\renewcommand{\theexample}{\thesection.\arabic{example}}

% Environment
\newenvironment{example}[1]{
    \refstepcounter{example}\par
    \begin{titled-frame}{Voorbeeld~\theexample ~#1}
}{
    \end{titled-frame}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%
% Definition Environment %

% Colours
\definecolor{myred}{RGB}{255, 230, 230}
\definecolor{mydarkred}{RGB}{255, 133, 133}

% Define counters
\newcounter{definition}[section]
\renewcommand{\thedefinition}{\thesection.\arabic{definition}}

% Define environment
\newenvironment{definition}[1]{%
    \refstepcounter{definition}\par
    \mdfsetup{%
        frametitle={%
            \uline{\textbf{Definitie~\thedefinition:~#1}}
        }
    }%
    \mdfsetup{ innertopmargin=10pt,linecolor=mydarkred,%
        linewidth=2pt }
    \begin{mdframed}[backgroundcolor=myred, nobreak=true]\relax%
        }{
    \end{mdframed}
}
% Defines cref names
\crefname{definition}{definitie}{definities} 
\Crefname{definition}{Definitie}{Definities}

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

% Define counters
\newcounter{exercise}[section]
\renewcommand{\theexercise}{\thesection.\arabic{exercise}}

% Define environment
\newenvironment{exercise}[2][]{
    \refstepcounter{exercise}
    \ifx\\#1\\
    	\addcontentsline{exs}{subsection}{Oefening ~\theexercise ~#2}
    \else
    	\addcontentsline{exs}{subsection}{Oefening ~\theexercise ~#1}
    \fi
   	\begin{leftbar}{\noindent \textbf{Oefening~\theexercise ~#2}}\npar
}{
    \end{leftbar}\npar
}


%%%%%%%%%%%%%%%%%%%%%%%
% Theorem Environment %

% Colours
\definecolor{mygreen}{RGB}{228, 251, 240}
\definecolor{mydarkgreen}{RGB}{78, 228, 156}

% Define counters
\newcounter{theorem}[section]
\renewcommand{\thetheorem}{\thesection.\arabic{theorem}}

% Define environment
\newenvironment{theorem}[2][]{%
    \refstepcounter{theorem}
    \ifx\\#1\\
        \mdfsetup{%
            frametitle={%
                \textbf{\textit{\uline{Theorem~\thetheorem:~#1}}}
            }
        }%
    \else
        \mdfsetup{%
            frametitle={%
                \textbf{\textit{\uline{Theorem~\thetheorem:~#2}}}
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

% Defines cref names
\crefname{theorem}{theorem}{theorems}
\Crefname{theorem}{Theorem}{Theorems}

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
            \textbf{\textit{\uline{Proof of theorem\bref{th:#1}}}}
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
