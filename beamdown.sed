# Code
/<pre><code>/{
    s|<pre><code>|\\begin{verbatim}|g
    :top
    s|&lt;|<|g
    s|&gt;|>|g
    n
    /<\/code><\/pre>/!b top
    s|</code></pre>|\\end{verbatim}|g
    p
    d
}

s|<code>|\\verb`|g
s|</code>|`|g

# Remove <p></p>
s|</*p>||g

#restore & in tables
s|\&amp;|\&|g

#these randomly appear
s|<br />||g

#double backslash at the end of tables:
s|\\$|\\\\|g

# Section
s|<h1>\(.*\)</h1>|\\section{\1}|g

# Subsection
s|<h2>\(.*\)</h2>|\\subsection{\1}|g

# Frametitle
s|<h3>\(.*\)</h3>|\\frametitle{\1}|g

# Framesubtitle
s|<h4>\(.*\)</h4>|\\framesubtitle{\1}|g

# Itemize
s|<ul>|\\begin{itemize}|g
s|</ul>|\\end{itemize}|g
s|<li>|\\item |g
s|</li>||g

# Enumerate
s|<ol>|\\begin{enumerate}|g
s|</ol>|\\end{enumerate}|g
s|<li>|\\item |g
s|</li>||g

# Emphasis
s|<em>|\\emph{|g
s|</em>|}|g

# Strong
s|<strong>\(.*\)</strong>|\\alert{\1}|g

# '<' character
s|&lt;|<|g

# '>' character
s|&gt;|>|g

# Figures
s|<a href="\(.*\)">\(.*\)</a>|\\includegraphics[\2]{\1}|g

# Columns
s/^\s*{|\(.*\)$/\\begin{columns}\\begin{column}{\1}/g
s/^\s*|}$/\\end{column}\\end{columns}/g
s/^\s*|\(.*\)$/\\end{column}\\begin{column}{\1}/g

# Blocks
s|^\s*{\.\(.*\)$|\\begin{block}{\1}|g
s|^\s*\.}|\\end{block}|g
s|^\s*{!\(.*\)$|\\begin{alertblock}{\1}|g
s|^\s*!}|\\end{alertblock}|g
s|^\s*{?\(.*\)$|\\begin{exampleblock}{\1}|g
s|^\s*?}|\\end{exampleblock}|g

# Center
s|{=|\\begin{center}|g
s|=}|\\end{center}|g

# Frames
s|^\s*/---\+\s*$|\\begin{frame}[fragile]|g
s|^\s*---\+/\s*$|\\end{frame}|g

# Enquotes
s|{"|\\enquote{|g
s|"}|}|g
