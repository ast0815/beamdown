# Beamdown
## Introduction

/---
### What is Beamdown?

Beamdown is a tool to make making presentations with \LaTeX\ and Beamer faster
and easier. It enables you to write your slides in Markdown, considerably
reducing the overhead.

\vspace{1em}

{|0.45\textwidth
Basically, instead of writing this:
|0.45\textwidth
you only have to write this:
|}

{|0.45\textwidth

    \begin{itemize}
        \item A
        \item B
        \begin{itemize}
            \item B1
            \item B2
        \end{itemize}
    \end{itemize}

|0.45\textwidth

    * A
    * B
      * B1
      * B2

|}

---/

## Capabilities

/---

### What can it do?

Beamdown's features include:

* Itemization
* Enumeration
* Blocks
* Center environment
* Columns
* (Sub)Sections
* Frame(sub)titles
* Emphasis
* Animations
* Verbatim code
* Inclusion of graphics
* Math environments
* General \LaTeX\ commands

---/

# Examples
## General

/---
### General syntax
#### How to make a slide

A slide (or \enquote{frame} in Beamer parlance) has the following syntax:

\vspace{1em}

{|0.5\textwidth
Markdown: \quad\quad$\rightarrow$ Beamdown $\rightarrow$

    # Examples
    ## General

    /---
    ### General syntax
    #### How to make a slide

    A slide (or \enquote{frame}...

    ---/

|0.5\textwidth
Latex:

    \section{Examples}
    \subsection{General}

    \begin{frame}[fragile]
    \frametitle{General syntax}
    \framesubtitle{How to make a slide}

    A slide (or \enquote{frame}...

     \end{frame}

|}
---/


## Itemization
/---

Itemization is achieved by using asterisks `'*'`, minus `'-'` or plus signs `'+'`.
The symbol is not important, but the indentation is!

\vspace{1em}

{|0.3\textwidth
Markdown: \quad\quad$\rightarrow$
|0.3\textwidth
Latex: \quad\quad$\quad\rightarrow$
|0.3\textwidth
PDF:
|}

{|0.3\textwidth

    * Item A
    * Item B
      + Item B1
          - Item B1a
      + Item B2

|0.3\textwidth

    \begin{itemize}
      \item Item A
      \item Item B
      \begin{itemize}
        \item Item B1
        \begin{itemize}
          \item Item B1a
        \end{itemize}
        \item Item B2
      \end{itemize}
    \end{itemize}

|0.3\textwidth

* Item A
* Item B
  + Item B1
      - Item B1a
  + Item B2

|}

---/

## Enumeration
/---

Enumeration works the same, but by using numbers.
You can also combine it with itemization.

\vspace{1em}

{|0.3\textwidth
Markdown: \quad\quad$\rightarrow$
|0.3\textwidth
Latex: \quad\quad$\quad\rightarrow$
|0.3\textwidth
PDF:
|}

{|0.3\textwidth

    1.  Item A
    2.  Item B
        1.  Item B1
            - Item B1a
        2.  Item B2

|0.3\textwidth

    \begin{enumerate}
      \item Item A
      \item Item B
      \begin{enumerate}
        \item Item B1
        \begin{itemize}
          \item Item B1a
        \end{itemize}
        \item Item B2
      \end{enumerate}
    \end{enumerate}

|0.3\textwidth

1.  Item A
2.  Item B
    1.  Item B1
        - Item B1a
    2.  Item B2

|}

---/

## Blocks
/---

Blocks, alert blocks and example blocks can be created using
`'{.'` and `'.}'`, `'{!'` and `'!}'`, or `'{?'` and `'?}'` respectively.

\vspace{1em}

{|0.3\textwidth
Markdown: \quad\quad$\rightarrow$
|0.3\textwidth
Latex: \quad\quad$\quad\rightarrow$
|0.3\textwidth
PDF:
|}

{|0.3\textwidth

    {.Normal Block
    Everything is fine.
    .}

    {!Alert Block
    No seriously!
    !}

    {?Example Block
    Or is it?
    ?}

|0.3\textwidth

    \begin{block}{Normal Block}
    Everything is fine.
    \end{block}

    \begin{alertblock}{Alert Block}
    No seriously!
    \end{alertblock}

    \begin{exampleblock}{Example Block}
    Or is it?
    \end{exampleblock}

|0.3\textwidth

{.Normal Block
Everything is fine.
.}

{!Alert Block
No seriously!
!}

{?Example Block
Or is it?
?}

|}
---/

## Center environment
/---
A center environment can be created using `'{='` and `'=}'`.

\vspace{1em}

{|0.3\textwidth
Markdown: \quad\quad$\rightarrow$
|0.3\textwidth
Latex: \quad\quad$\quad\rightarrow$
|0.3\textwidth
PDF:
|}

{|0.3\textwidth

    {= Easy as Pi! =}

|0.3\textwidth

    \begin{center}
      Easy as Pi!
    \end{center}

|0.3\textwidth

{= Easy as Pi! =}

|}

---/

## Columns
/---
Columns are created with `'{|'`, `'|'` and `'|}'`.

\vspace{1em}

{|0.3\textwidth
Markdown: \quad\quad$\rightarrow$
|0.3\textwidth
Latex: \quad\quad$\quad\rightarrow$
|0.3\textwidth
PDF:
|}

{|0.3\textwidth

    {|0.3\textwidth
    C1

    C1
    |0.4\textwidth
    C2
    |0.2\textwidth
    C3
    |}

|0.3\textwidth

    \begin{columns}
      \begin{column}
          {0.3\textwidth}
        C1
      \end{column}
      \begin{column}
          {0.4\textwidth}
        C2
      \end{column}
      \begin{column}
          {0.2\textwidth}
        C3
    \end{column}\end{columns}

|0.3\textwidth

{|0.3\textwidth
C1
|0.4\textwidth
C2
|0.2\textwidth
C3
|}

|}

---/

## Emphasis and alerts
/---
Markdown emphasis `*foo*` and strong `**bar**` are translated to
Latex's `\emph` and `\alert` respectively.

\vspace{1em}

{|0.3\textwidth
Markdown: \quad\quad$\rightarrow$
|0.3\textwidth
Latex: \quad\quad$\quad\rightarrow$
|0.3\textwidth
PDF:
|}

{|0.3\textwidth

    A text with
    some *really*
    **important**
    points.!

|0.3\textwidth

    A text with
    some \emph{really}
    \alert{important}
    points.!

|0.3\textwidth

A text with
some *really*
**important**
points.!

|}

---/

## Animations
/---
Animations also work!

\vspace{1em}

{|0.3\textwidth
Markdown: \quad\quad$\rightarrow$
|0.3\textwidth
Latex: \quad\quad$\quad\rightarrow$
|0.3\textwidth
PDF:
|}

{|0.3\textwidth

    * <1-> Point A
    * <2-> Point B
      + Point B1
      + **B2**<3->

|0.3\textwidth

    \begin{itemize}
      \item <1-> Point A
      \item <2-> Point B
      \begin{itemize}
        \item Point B1
        \item \alert{B2}<3->
      \end{itemize}
    \end{itemize}

|0.3\textwidth

* <1-> Point A
* <2-> Point B
  + Point B1
  + **B2**<3->

|}

---/

## Verbatim code
/---
Code can be quoted inline with `'\`'` or as a block with 4 spaces indentation.

\vspace{1em}

{|0.3\textwidth
Markdown: \quad\quad$\rightarrow$
|0.3\textwidth
Latex: \quad\quad$\quad\rightarrow$
|0.3\textwidth
PDF:
|}

{|0.3\textwidth

    `\Code` inline.

        Some
        code as
        a
        block

|0.3\textwidth

    \verb`\Code` inline.

    \begin{verbatim}Some
    code as
    a
    block
    \end{verbatim*}

`*`) `\end{verbatim}` cannot be quoted in a verbatim environment. Hence the asterisk.


|0.3\textwidth

`\Code` inline.

    Some code as
    a
    block

|}

---/

## Graphics
/---
Graphics are easy as well!

\vspace{1em}

{|0.3\textwidth
Markdown: \quad\quad$\rightarrow$
|0.3\textwidth
Latex: \quad\quad$\quad\rightarrow$
|0.3\textwidth
PDF:
|}

{|0.3\textwidth

    [width=0.9\textwidth]
        (rwth_3physik_b.pdf)

|0.3\textwidth

    \includegraphics
        [width=0.9\textwidth]
        {rwth_3physik_b.pdf}

|0.3\textwidth

[width=0.9\textwidth](rwth_3physik_b.pdf)

|}

---/

## Math environments
/---
Math environments work straight forward, as long as you use `'$'` and `'$$'`.

\vspace{1em}

{|0.3\textwidth
Markdown: \quad\quad$\rightarrow$
|0.3\textwidth
Latex: \quad\quad$\quad\rightarrow$
|0.3\textwidth
PDF:
|}

{|0.3\textwidth

    Easy as $\pi$!

    $$ \exists\ \pi\ 
    \forall\ 1 $$

|0.3\textwidth

    Easy as $\pi$!

    $$ \exists\ \pi\ 
    \forall\ 1 $$

|0.3\textwidth

Easy as $\pi$!

$$ \exists\ \pi\ 
\forall\ 1 $$

|}

---/

## General Latex commands
/---
If all else fails, you can still use all Latex commands you can think of.
This includes custom commands.

\vspace{1em}

{|0.3\textwidth
Markdown: \quad\quad$\rightarrow$
|0.3\textwidth
Latex: \quad\quad$\quad\rightarrow$
|0.3\textwidth
PDF:
|}

{|0.3\textwidth

    \LaTeX\ rules!
    
    \vspace{-4em}

    \demo

|0.3\textwidth

    \LaTeX\ rules!

    \vspace{-4em}

    \demo

|0.3\textwidth

\LaTeX\ rules!

\vspace{-4em}

\demo

|}

---/

/---

{= \huge Have fun! =}

---/
