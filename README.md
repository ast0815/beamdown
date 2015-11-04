Beamdown
========

Beamdown is a program that translates Markdown syntax to regular Latex Beamer
syntax. It uses a Markdown-to-HTML converter as an intermediary step.

It makes creating quick presentations easier and faster, compared as the ration
of content to overhead is much better in Markdown than in Latex, especially
when writing bullet points.  Just compare

    \begin{itemize}
        \item Some point
        \item Another point
        \begin{itemize}
            \item An \emph{important} subpoint
            \item And another
        \end{itemize}
    \end{itemize}

with

    * Some point
    * Another point
      + An *important* subpoint
      + And another

Beamdown's capabilities can be seen in the example project.
