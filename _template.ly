\version "2.12.2"

\header {
  title = "Foo"
  subtitle = "Bar"
  composer = "Baz"
  instrument = "Quux"
}

\score {
  \new PianoStaff <<
    %\tempo 4 = 60
    \new Staff {
      \clef treble
      %\key c \major
      \numericTimeSignature
      %\time 4/4
      \relative c' {
      }
    }
    \new Staff {
      \clef bass
      %\key c \major
      \numericTimeSignature
      %\time 4/4
      \relative c {
      }
    }
  >>
  \midi { }
  \layout { }
}
