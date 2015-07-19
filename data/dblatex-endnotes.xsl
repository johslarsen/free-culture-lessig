<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version='1.0'>

<!--
Trick to get endnote support.  Should have a way to insert LaTeX code
outside xetex font values.  As it is missing, reuse the
latex.begindocument value (aka \begin{document} to get a code fragment
in front of it.
-->

  <xsl:param name="latex.begindocument">
    <xsl:text>
\usepackage{endnotes}
\let\footnote=\endnote
\def\enoteheading{\mbox{}\par\vskip-\baselineskip }
\begin{document}
    </xsl:text>

  </xsl:param>
</xsl:stylesheet>
