# UHasselt-Course-LaTeX-Template
LaTeX Template for Hasselt University coursework and reports
Provides a LaTeX documentclass defining page layout, environments and two commands.
The document assumes dutch as the used language

## Environments
The following environments are defined and their use outlined.
All counters are reset per section.

### Example Environment
\begin{example}{Example Title}
    Example Text
\end{example}

The Example title is mandatory.

### Definition Environment
\begin{definition}{Definition Title}
    Definition Text
\end{definition}

The definition title is mandatory 

### Exercise Environment
\begin{exercise}[Short Title]{Long Title}
    This is an exercise
\end{exercise}

The short title is optional but the long title is mandatory.

### Theorem environment
\begin{theorem}[thmlabel]{Theorem name}
    Theorem text
\end{theorem}

The "thmlabel" is optional and labels the theorem for referencing by the proof environment.


### Proof environment
\begin{proof}{thmlabel}
    Theorem text
\end{proof}

The "thmlabel" is mandatory, a proof must refer back to a theorem

### Multicolumn enumerate environment
\begin{enumulti}{2}
    \item{item}
    \item{item}
\end{enumulti}

Must pass the number of columns. 
Further customisation is not possible, use multicols and enumerate manually in such cases.

## Commands
Additional commands are provides:

* \npar: Starts a new paragraph, is shorthand for \par\medskip
* \listofexercises: Places a list of all exercises, similar to the list of figures
