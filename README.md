# Course-LaTeX-Templates
LaTeX Templates to write up coursework (*mathcourse*) and notes.
Provides a LaTeX documentclass defining page layout, environments and commands.
The intended use for this document class is to be used to write mathematical notes, coursework, and/or handouts either for yourself or for your students.
The class provides numerous environments to typeset mathematical notes using colours to differentiate between different types of content (example, defintion, exercises and proofs).

Dutch is the assumed language.

## Commands
Additional commands are provides:

* \npar: Starts a new paragraph, is shorthand for \par\medskip
* \course: Needed to display the course on the title page
* \npar: Starts a new paragraph, is shorthand for \par\medskip
* \listofexercises: Places a list of all exercises, similar to the list of figures

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

## UHReport
For reports consider the template over at https://github.com/Allyson-Robert/UHasselt-Reports-LaTeX-Template.
Physics students looking to write a report should go to the appropriate [paper](https://github.com/Allyson-Robert/UHasselt_Physics_Paper_Template) or [report](https://github.com/Allyson-Robert/UHasselt_Physics_Report_Template) templates
