\include "articulate.ly"

\header {
  title = "Untitled"
  composer = "Composer"
}

\score {
  \unfoldRepeats \articulate <<
	  %\relative c'
    {
    \repeat unfold 2 
      \relative c' {

        \set tieWaitForNote = ##t
        \grace { c16 ~ e ~ g ~ } <c, e g>4
        \break
        \grace { f16 ~ a ~ c ~ } <f, a c>4
        \break
        \grace { a16 ~ c ~ e ~ } <a, c e>4
        \break
        \grace { g16 ~ b ~ d ~ } <g, b d>4
        \break
        \unset tieWaitForNote
      }
    }
  >>

  \layout {}
  \midi {}
}