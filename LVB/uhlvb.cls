% Standard preamble for homework and tests
% Written by Allyson Robert

% Declares itself
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{uhlvb}[2019/02/06 A course class suitable for Hasselt University coursework]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         Packages         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\LoadClass[11pt, a4paper]{article}

%% Language package
\RequirePackage[dutch]{babel}

% Header
\RequirePackage{titling}
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\RequirePackage{graphicx}

% Aesthetics, layout and font
\RequirePackage{helvet}
\RequirePackage{multicol}
\RequirePackage{chngcntr}
\RequirePackage{tocbibind}
\RequirePackage[T1]{fontenc}
\RequirePackage[normalem]{ulem}
\RequirePackage[explicit]{titlesec}
\RequirePackage[dvipsnames,table]{xcolor}
\RequirePackage[landscape,margin=0.5in,footskip=5mm]{geometry}

% Improvements
\RequirePackage{enumitem}
\RequirePackage{chngcntr}

% File management
\RequirePackage{import}

% References and links
\RequirePackage[colorlinks=true, linktoc=all]{hyperref}
\RequirePackage[noabbrev]{cleveref}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Definition of things   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Shorthand for new paragraph
\newcommand{\npar}{\par\medskip} 

% No indentation
\setlength\parindent{0pt}

% Switch to uppercase
\newcommand{\upperC}[1]{\expandafter\MakeUppercase\expandafter{#1}}
\newcommand{\allCapsPar}[1]{\paragraph{\upperC{#1}}}

\newcommand{\lesfase}[1]{
    \npar{
        \noindent\colorbox{mygray}{
            \noindent\begin{minipage}{267.25mm}
                \textbf{#1}
            \end{minipage}
        }
    }\npar
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   CONTEXT   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Student Info
\newcommand*{\opleiding}[1]{\gdef\theopleiding{#1}}
\newcommand*{\theopleiding}{Insert \textbackslash opleiding\{\} below \textbackslash date\{\}}

\newcommand*{\vakdidactiek}[1]{\gdef\thevakdidactiek{#1}}
\newcommand*{\thevakdidactiek}{Insert \textbackslash vakdidactiek\{\} below \textbackslash date\{\}}

\newcommand*{\stageonderdeel}[1]{\gdef\thestageonderdeel{#1}}
\newcommand*{\thestageonderdeel}{Insert \textbackslash stageonderdeel\{\} below \textbackslash date\{\}}

% Mentor Info
\newcommand*{\mentornaam}[1]{\gdef\thementornaam{#1}}
\newcommand*{\thementornaam}{Insert \textbackslash mentornaam\{\} below \textbackslash date\{\}}

\newcommand*{\mentormail}[1]{\gdef\thementormail{#1}}
\newcommand*{\thementormail}{Insert \textbackslash mentormail\{\} below \textbackslash date\{\}}

% Begeleider info
\newcommand*{\begeleidernaam}[1]{\gdef\thebegeleidernaam{#1}}
\newcommand*{\thebegeleidernaam}{Insert \textbackslash begeleidernaam\{\} below \textbackslash date\{\}}

\newcommand*{\begeleidermail}[1]{\gdef\thebegeleidermail{#1}}
\newcommand*{\thebegeleidermail}{Insert \textbackslash begeleidermail\{\} below \textbackslash date\{\}}

% Klas
\newcommand*{\klasnaam}[1]{\gdef\theklasnaam{#1}}
\newcommand*{\theklasnaam}{Insert \textbackslash klasnaam\{\} below \textbackslash date\{\}}

\newcommand*{\onderwijsvorm}[1]{\gdef\theonderwijsvorm{#1}}
\newcommand*{\theonderwijsvorm}{Insert \textbackslash onderwijsvorm\{\} below \textbackslash date\{\}}

\newcommand*{\finaliteit}[1]{\gdef\thefinaliteit{#1}}
\newcommand*{\thefinaliteit}{Insert \textbackslash finaliteit\{\} below \textbackslash date\{\}}

\newcommand*{\studierichting}[1]{\gdef\thestudierichting{#1}}
\newcommand*{\thestudierichting}{Insert \textbackslash studierichting\{\} below \textbackslash date\{\}}

\newcommand*{\klasaantal}[1]{\gdef\theklasaantal{#1}}
\newcommand*{\theklasaantal}{Insert \textbackslash klasaantal\{\} below \textbackslash date\{\}}

% Stageles
\newcommand*{\lesdatum}[1]{\gdef\thelesdatum{#1}}
\newcommand*{\thelesdatum}{Insert \textbackslash lesdatum\{\} below \textbackslash date\{\}}

\newcommand*{\lesuur}[1]{\gdef\thelesuur{#1}}
\newcommand*{\thelesuur}{Insert \textbackslash lesuur\{\} below \textbackslash date\{\}}

\newcommand*{\leslokaal}[1]{\gdef\theleslokaal{#1}}
\newcommand*{\theleslokaal}{Insert \textbackslash leslokaal\{\} below \textbackslash date\{\}}

\newcommand*{\onderwijsvak}[1]{\gdef\theonderwijsvak{#1}}
\newcommand*{\theonderwijsvak}{Insert \textbackslash onderwijsvak\{\} below \textbackslash date\{\}}

% Stageschool
\newcommand*{\schoolnaam}[1]{\gdef\theschoolnaam{#1}}
\newcommand*{\theschoolnaam}{Insert \textbackslash schoolnaam\{\} below \textbackslash date\{\}}

\newcommand*{\schooladres}[1]{\gdef\theschooladres{#1}}
\newcommand*{\theschooladres}{Insert \textbackslash schooladres\{\} below \textbackslash date\{\}}

\newcommand*{\schoolnet}[1]{\gdef\theschoolnet{#1}}
\newcommand*{\theschoolnet}{Insert \textbackslash schoolnet\{\} below \textbackslash date\{\}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Definition of the footer %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Define the style of the page
%\pagestyle{fancy}
%\fancyhf{}
%
%%\setlength{\headheight}{40pt} 
%
%% Header definition
%\fancyhead[L]{}
%\fancyhead[R]{}
%
%% Footer definition
%\fancyfoot[R]{Pagina \thepage}
%
%% Resize header\footer rule widths
%\renewcommand{\headrulewidth}{0pt}
%\renewcommand{\footrulewidth}{0pt}

%%%%%%%%%%%%%%%%%%%%%%%
% Enumulti enviroment %
\newenvironment{enumulti}[1]{
    \begin{multicols}{#1}
        \begin{enumerate}
}{
        \end{enumerate}
    \end{multicols}
}
