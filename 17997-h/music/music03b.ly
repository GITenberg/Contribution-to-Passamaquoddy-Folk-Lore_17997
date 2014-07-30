\version "2.6.5"
\include "english.ly"

melody = \relative c'' {
  \time 2/4
  \key g \major
  \autoBeamOff
  \cadenzaOn a8 c8 b8[ a8] b8 g8 g4 \bar "|:" g8 a16[ g16] a16[ b16] a8. d,16 g8 g4 g16 \bar ":|" \cadenzaOff \break
  \cadenzaOn a8 c8 b8[ a8] b8 g8 g4 g8 a16[ g16] a16[ b16] a8. d,16 g8 g4 r16 \cadenzaOff \bar "|."
}

\addlyrics {
  Hoi kay yu kar, hen -- o yah ha,_kay e_yu kar hen -- o yar -- hah.
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