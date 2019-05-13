\include "articulate.ly"

\header {
  title = "Untitled"
  composer = "Composer"
}

hs = \drummode { boh16 }
he = \drummode { boh8 }
hq = \drummode { boh4 }

ls = \drummode { bol16 }
le = \drummode { bol8 }
lq = \drummode { bol4 }

gal = { \he \ls \ls }
lag = { \hs \ls \le }
ddd = { \he \he }

m_gal = { \repeat unfold 2 \gal
         \repeat unfold 1 \lag
         \repeat unfold 1 \ddd }

m_lag = { \repeat unfold 1 \gal
         \repeat unfold 2 \lag
         \repeat unfold 1 \ddd }

m_ddd = { \repeat unfold 1 \gal
         \repeat unfold 1 \lag
         \repeat unfold 2 \ddd }

base = { 
        \repeat unfold 2
        { \repeat unfold 2 \m_gal
          \repeat unfold 1 \m_lag
        }
        \repeat unfold 1 \m_ddd 
        %\m_gal
        }

phrase = { \repeat unfold 1 \base
            \repeat unfold 1 { \hq \lq \lq \lq }
          }

size = 24

\score {

<<
  \tempo 4 = 110
  %{
  \new Staff {
    \clef G
    \set Staff.midiInstrument = #"pad 1 (new age)"
    \repeat unfold 8 {r1}
    \repeat unfold 6
    \chordmode {
      e1~ e f:m gis
      e1~ e f:m gis
      e1:sus4~ e f:m gis
    }
  }
  %}
  \new Staff {
    \clef subbass
    \set Staff.midiInstrument = #"electric bass (finger)"
    \repeat unfold 3 {
    \repeat unfold 2 {
      \repeat unfold 2 {
        \repeat unfold 4 \relative c, { e,8 r8 }
        %\repeat unfold 4 \relative c, { e,16 r16 r8 }
      }
      \repeat unfold 4 \relative c, { f,8 r8 }
      \repeat unfold 4 \relative c, { gis8 r8 }
      % \repeat unfold 4 \relative c, { dis,8 r8 }
    }
    %\repeat unfold 2 \relative c, { dis,4 r4 r2 }
    %\repeat unfold 4 \relative c, { gis8 r8 }
    }
  }

  \new Staff {
    \clef subbass
    \set Staff.midiInstrument = #"electric bass (pick)"
    \repeat unfold 3 {
    \repeat unfold 2 {
      \repeat unfold 2 {
        \repeat unfold 4 \relative c, { r8 e,16 e16 }
        %\repeat unfold 4 \relative c, { r16 e,16 e8 }
      }
      \repeat unfold 4 \relative c, { r8 f,16 f16 }
      \repeat unfold 4 \relative c, { r8 gis16 gis16 }
      %\repeat unfold 4 \relative c, { r8 dis,16 dis16 }
    }
    %\repeat unfold 2 \relative c, { r4 dis,4 dis4 dis4 }
    %\repeat unfold 4 \relative c, { r8 gis16 gis16 }
    }
  }
  
  {
    \drums {
      \repeat unfold 3 \phrase
    }
  }
  {
    \drums {
    \repeat unfold \size {
      \repeat unfold 7 {
        \repeat unfold 4 {halfopenhihat4}
        
      }
      \repeat unfold 4 {<openhihat tomh>4}
      }
    }
  }
  {
    \drums {
      \repeat unfold \size {
        {r4 sn4 r4 sn4}
      }
    }
  }
>>
  

  \layout {
  }
  \midi {
 %   \tempo 4 = 144
  }
}