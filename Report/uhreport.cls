% Standard preamble for homework and tests
% Written by Allyson Robert

% Declares itself
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{uhreport}[2020/10/31 A report class following the 2020 UHasselt house style.]

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

% Top red bar
\RequirePackage{tikz}

% Open Sans font is easier to read
\RequirePackage[default,oldstyle,scale=0.95]{opensans}

% Layout
\RequirePackage[margin=1in]{geometry}
\RequirePackage{anyfontsize}

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

% Defince \course{} element
\newcommand*{\course}[1]{\gdef\thecourse{#1}}
\newcommand*{\thecourse}{Insert \textbackslash course\{\} below \textbackslash date\{\}}

% Defince \course{} element
\newcommand*{\degree}[1]{\gdef\thedegree{#1}}
\newcommand*{\thedegree}{Insert \textbackslash degree\{\} below \textbackslash date\{\}}

%%%%%%%%%%%%%%%%%%%%%
%     Titlepage     %
%%%%%%%%%%%%%%%%%%%%%
\renewcommand*{\maketitle}{%
\begin{titlepage}
    \newgeometry{top=7.75cm, bottom=10mm, left=1in, right=1in}
    \thispagestyle{empty}
    \begin{tikzpicture}[remember picture,overlay]
        \node[yshift=-7cm] at (current page.north west)
          {\begin{tikzpicture}[remember picture, overlay]
            \draw[fill=Red] (0,0) rectangle
              (\paperwidth,7cm);
           \end{tikzpicture}
        };
    \end{tikzpicture}
    \begin{minipage}[b]{6cm}
        \includegraphics[width=6cm]{Report/UHasselt_SES_Logo}
    \end{minipage}
    
    \vspace{4cm}
    \begin{minipage}{\textwidth}
            \flushright
            {\fontsize{35}{42}\selectfont\textbf{\textsf{\thecourse}}} \\
            \LARGE \textbf{\thedegree} \\
            {\color{Red}\textbf{\thetitle}} \\
    \end{minipage}
    
    \vspace{2cm}
    \begin{minipage}{\textwidth}
            \flushright
            \normalsize \theauthor \\ \thedate \\
    \end{minipage}
    
    \vspace{2cm}
    \begin{minipage}{\textwidth}
            \flushright
            \small Acadmiejaar 2020 - 2021 \\
            \noindent\rule{\textwidth}{0.4pt}
    \end{minipage}
    \vfill
    \hfill
    \begin{minipage}[t]{3.5cm}
        \includegraphics[width = 3.5cm]{Report/UHasselt_Logo_Tall}
    \end{minipage}%
    
    \restoregeometry
    \cleardoublepage
\end{titlepage}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Definition of the footer %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Remove footer from titlepage

% Define the style of all pages
\pagestyle{fancy}
\fancypagestyle{body}{
    \fancyhf{}
    
    \setlength{\headheight}{0cm} 
    \setlength{\headsep}{0.5cm} 
    \setlength{\footskip}{1.7cm} 
    
    \fancyhead[L]{
        \begin{tikzpicture}[remember picture,overlay]
            \node[yshift=-1cm] at (current page.north west)
              {\begin{tikzpicture}[remember picture, overlay]
                \draw[fill=Red] (0,0) rectangle
                  (\paperwidth,1cm);
               \end{tikzpicture}
            };
        \end{tikzpicture}
    }
    
    % Footer definition
    \fancyfoot[L]{\includegraphics[width = 3.5cm]{UHasselt_Logo_Flat}}
    \fancyfoot[R]{\thepage~/~\pageref{LastPage}}
    
    % Resize header\footer rule widths
    \renewcommand{\headrulewidth}{0pt}
}
% The fancy style was applied differently to the TOC, brute forced the issue
\fancypagestyle{toc}{
    \fancyhf{}
    
    \setlength{\headheight}{0cm} 
    \setlength{\headsep}{1cm} 
    \setlength{\footskip}{-3.65cm} 
    
    \fancyhead[L]{
        \begin{tikzpicture}[remember picture,overlay]
            \node[yshift=-1cm] at (current page.north west)
              {\begin{tikzpicture}[remember picture, overlay]
                \draw[fill=Red] (0,0) rectangle
                  (\paperwidth,1cm);
               \end{tikzpicture}
            };
        \end{tikzpicture}
    }
    
    % Footer definition
    \fancyfoot[L]{\includegraphics[width = 3.5cm]{UHasselt_Logo_Flat}}
    \fancyfoot[R]{\thepage~/~\pageref{LastPage}}
    
    % Resize header\footer rule widths
    \renewcommand{\headrulewidth}{0pt}
}
\pagestyle{body}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Defined Environments   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%


