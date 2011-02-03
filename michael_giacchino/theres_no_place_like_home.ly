\version "2.12.2"

\header {
  title = "There's No Place Like Home"
  subtitle = \markup { "from" \italic "Lost" }
  composer = "Michael Giacchino"
  instrument = "Piano solo"
}

\score {
  \new PianoStaff <<
    \tempo 4 = 60
    \new Staff {
      \clef treble
      \key d \major
      \numericTimeSignature
      \time 4/4
      \relative c' {
        R1*2
        d2 e4 d
        \break
        fis8 g g4 cis,2
        fis8 g g4 e2
        fis8 g g4 a2
        d,2 e4 d
        \break

        cis'8 b a4 cis,2
        d'2 e4 d
        b2 d4 cis
        \break

        d8( e e fis fis a a4)
        cis,8( fis fis a a b cis4)
        g8( b b cis cis b g4)
        g8( b b cis cis e e g)
        \break

        d( cis cis b b a fis4)
        cis8( fis fis a a b cis4)
        d8( cis cis b b a g4)
        g8( b b cis cis d e4)
        \break

        fis,,4 d2.
        fis4 cis2.
        g'4 e2.
        g4 a2.
        \break

        d4 a2.
        cis4 a2.
        d4 e2.
        d4 cis2.
        \break

        d,8( e e fis fis a a4)
        cis,8( fis fis a a b cis4)
        g8( b b cis cis b g4)
        g8( b b cis cis e e g)
        \break

        d( cis cis b b a fis4)
        cis'8( b a4 cis,2)
        d'2 e4 d
        b2 d4 cis
        \break

        d1
        d'8 cis cis b~ b2
        d,8 cis cis b~ b2
        R1
        \bar "|."
      }
    }
    \new Staff {
      \clef bass
      \key d \major
      \numericTimeSignature
      \time 4/4
      \relative c, {
        <d fis a d>1
        <fis a cis fis>

        <d fis a d>
        <fis a cis fis>
        <e g b d>
        <a cis e g>

        <d, fis a d>
        <fis a cis fis>
        <e g b d>
        <a cis e g>

        <d fis a d>
        <fis a cis fis>
        <e g b d>
        <a cis e g>

        <d, fis a d>
        <fis a cis fis>
        <e g b d>
        <a cis e g>

        <d, fis a>
        <cis fis a>
        <e g b>
        <e a cis>

        <d fis a>
        <cis fis a>
        <e g b>
        <e a cis>

        <d fis a>
        <cis fis a>
        <e g b>
        <e a cis>

        <d fis a>
        <cis fis a>
        <e g b>
        <e a cis>~

        <e a cis>
        R1
        R1
        d
      }
    }
  >>
  \midi { }
  \layout { }
}
