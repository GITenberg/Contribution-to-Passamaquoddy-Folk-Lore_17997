\version "2.6.5"
\include "english.ly"

melody = \relative c'' {
  \time 3/4
  \key af \major
  \autoBeamOff
  \cadenzaOn ef4. df8 bf4 ef4 df16[ c8.] c16[ bf8.] f4 f4 f4. f8 f4 f4 af8. bf16 c8[ bf8] f8[ ef8] f8. ef16 ef4 ef4 \cadenzaOff \bar "|" \break
  \cadenzaOn af4 af4 c4. ef8 ef8[ c8] c2.( ef4) ef4 c4 c8[ af8] af2~ af4^> c4 bf4 c4 af4 af2~ af4 c2 \cadenzaOff \bar "||"
}

\addlyrics {
  Way ho yah -- nie, way_ho yahnie, way ho yah -- nie, way ho yah -- nie way_ho yah -- nie way ho -- yah.
  Hew na -- yie hah, hew nayie hah, hew nayie hah, hew nayie hah hew nayie hah.
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