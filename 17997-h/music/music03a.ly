\version "2.6.5"
\include "english.ly"

melody = \relative c'' {
  \time 2/4
  \key g \major
  \autoBeamOff
  \cadenzaOn b16 b8[ a8] c8 b4\fermata c8 b8[ a8] c8 b4 b8. c16 a16 a8 a8 a8 \cadenzaOff \bar "" \break
  \cadenzaOn b16 b8[ a8] b8 b4\fermata c8 b8[ a8] c8 b4 b8. e16 e16 e8 a,8 a8 \cadenzaOff \bar ""
}

\addlyrics {
  T'wā too boo hen ee too boo ho bla tel ey wees ee lu
}

\score {
  \new Staff \melody
  \midi { \tempo 4 = 72 }
  \layout {  
    indent = 0.0\cm
    \context {
      \Score
       \remove Bar_number_engraver
    }
    \context {
      \Staff
        \remove "Time_signature_engraver"
    }
  }
}