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
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage[explicit]{titlesec}
\RequirePackage[landscape]{geometry}

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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Definition of the footer %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Define the style of the page
\pagestyle{fancy}
\fancyhf{}

\setlength{\headheight}{40pt} 

% Header definition
\fancyhead[L]{}
\fancyhead[R]{}

% Footer definition
\fancyfoot[R]{Pagina \thepage}

% Resize header\footer rule widths
\renewcommand{\headrulewidth}{1pt}
\renewcommand{\footrulewidth}{1pt}

%%%%%%%%%%%%%%%%%%%%%%%
% Enumulti enviroment %
\newenvironment{enumulti}[1]{
    \begin{multicols}{#1}
        \begin{enumerate}
}{
        \end{enumerate}
    \end{multicols}
}
