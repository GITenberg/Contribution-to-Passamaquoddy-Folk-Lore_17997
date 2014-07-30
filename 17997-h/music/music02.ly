\version "2.6.5"
\include "english.ly"

melody = \relative c'' {
  \time 2/4
  \key c \major
  \autoBeamOff
  g4 e4 e8. f16 e4 e4 a4 a4^> a4^> a4(^> g4) g4 e4 e2 \break
  g4. a8 g8 e8 e4 e2 \cadenzaOn e16 r8 a8 c2( a4) \cadenzaOff \bar "||"
}

\addlyrics {
  Er tim lee ber nits nah o o o o Wait for me.
  Nick ne ar ber yer nay ey. __
}

\score {
  \new Staff \melody
  \midi { \tempo 4 = 100 }
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