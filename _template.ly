\version "2.12.2"

\header {
  title = "Foo"
  subtitle = "Bar"
  composer = "Baz"
  instrument = "Quux"
}

\score {
  \new PianoStaff <<
    %\tempo
    \new Staff {
      \clef treble
      %\key
      \numericTimeSignature
      %\time
      \relative c' {
      }
    }
    \new Staff {
      \clef bass
      %\key
      \numericTimeSignature
      %\time
      \relative c {
      }
    }
  >>
  \midi { }
  \layout { }
}
