\version "2.12.2"

\header {
  title = "Oceanic 815"
  subtitle = \markup { "from" \italic "Lost" }
  composer = "Michael Giacchino"
  instrument = "Piano solo"
}

\score {
  \new PianoStaff <<
    \tempo 4 = 60
    \new Staff {
      \clef treble
      \key c \major
      \numericTimeSignature
      \time 4/4
      \relative c' {
        <bes' d>2. <c d>4
        << {f4( e2.)} \\ { d1 } >>
        <g, c>
        <g c d>2( <g c d>4 <g c g'>

        <g c ges'>1)
        <<
          { e1 c'}
        \\
          { <a d>2( <g c> g' fis) }
        >>
        <<
          { d1( fis2 e) }
        \\
          { c2( b a1) }
        >>
        <<
          { e'1( g2 fis) }
        \\
          { e,2. d4 fis1 }
        >>
        <<
          { b'( a2 fis) }
        \\
          { <c e>1~ <c e> }
        >>
        <g c e>1~

        <g c e>
        <g d' g>~
        <g d' g>
      }
    }
    \new Staff {
      \clef treble
      \key c \major
      \numericTimeSignature
      \time 4/4
      \relative c' {
        <f bes,>2. <f a,>4
        <g bes,>1
        bes,2( c)
        \clef bass
        <d, b'>2 <d b'>4 <d b'>
        \break

        <d b'>1
        <c' c,>
        <e a>
        <a, e'>
        \break

        <a d fis>
        <g c>2. <g b>4
        <g d>1
        <a, c e g>~
        \break

        <a c e g>
        <c c,>2(
        <d, d'>
        <e e'>1)
        <c c'>2(
        <d' d,>2
        <g, g'>1)
        \clef treble
        \break
      }
    }
  >>
  \midi { }
  \layout { }
}
