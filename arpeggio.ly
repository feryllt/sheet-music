\include "articulate.ly"

\header {
  title = "Untitled"
  composer = "Composer"
}

\score {
  \unfoldRepeats \articulate <<
	  %\relative c'
    {
    \repeat unfold 3
      \relative c' {

        \set tieWaitForNote = ##t
        \grace { c16 ~ e ~ g ~ } <c, e g>2
        \break
        \grace { f16 ~ a ~ c ~ } <f, a c>2
        \break
        \grace { a16 ~ c ~ e ~ } <a, c e>2
        \break
        \grace { g16 ~ b ~ d ~ } <a, c e>2
        \break
        \unset tieWaitForNote
      }
    }
  >>

  \layout {}
  \midi {}
}