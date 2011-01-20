\version "2.12.2"

\header {
  title = "Moving On"
  subtitle = \markup { "from" \italic "Lost" }
  composer = "Michael Giacchino"
  instrument = "Piano solo"
  arranger = "Original transcription by Pierre Nguyen"
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
        d1
        d1
        d1
        d1
        \break
        <fis a cis d>4 fis a2
        <fis g a>4 cis' a2
        <fis a>4 fis a2
        <d, fis g b>4 cis' b2
        \break

        <fis gis cis>2. e8 g
        fis2 d4 <d a' d>
        <e e'> <fis fis'> <g g'>2
        <a a'>4 <b b'> <cis cis'> <d, fis a d>~
        \break

        <d fis a d>1
        g'
        a
        d,
        \break

        <fis, cis'>2. <cis' e>8 <e g>
        <d e fis>1
        d4 a'2.
        <g, cis d g>2 a
        \break

        <d a'>1
        <<
          { <fis, b> }
        \\
          { r8 e e d d2 }
        >>
        e''8 d a'2.
        <<
          { fis1 }
        \\
          { r8 e e d d2 }
        >>
        \break

        <<
          { g,,4 g2. }
        \\
          { <d b'>1 }
        >>
        b''8 cis b <b, b'>2~ <b b'>8
        <g d' g>2 <e g cis e>
        \break

        fis'4 d2.
        fis4 cis2.
        g'4 e2.
        g4 a2.
        \break

        d4 a2.
        cis4 a2.
        d4 e2.
        d4 cis2.
        \break

        <<
          {
            fis,4 d2.
            fis4 cis2 r4
            g'4 e2.
            g4 a2.
            \break

            d4 a2.
            cis4 a2.
            d4 e2.
            d4 d cis2
            \break

            d,2 e4 d
            fis8 g g4 cis,4 r4
            fis8 g g4 e2
            fis8 g g4 a2
            \break

            d,2 e4 d
            cis'8 b a4 cis,4 r4
            d'2 e4 d
            b2 d4 e
            \break

            fis,1
          }
        \\
          {
            r8 e, e fis fis a a4
            r8 fis fis a a b cis4
            r8 b b cis cis b g4
            g8 b b cis cis e e g

            d cis cis b b a fis4
            r8 fis fis a a b cis4
            d8 cis cis b b a g4
            g8 b b cis cis d e fis

            a,8 e e fis fis a a4
            r8 fis fis a a b cis4
            g8 b b cis cis b g4
            g8 b b cis cis e e g

            r8 cis, cis b b a fis4
            cis'8 b a fis a b cis4
            d8 cis cis b r8 a d4
            r8 b b a a4 g

            fis d fis2
          }
        >>

        g4 d g2
        <<
          { a4 d,2 cis4 }
        \\
          { <d fis>1 }
        >>
        b4 <b e g>2 e4
        \break

        <e fis a>4 d <fis fis'>8 <e e'> <e e'> <d d'>
        <b' b'>4 d, g d
        <a' a'> r2
        <<
          {
            b'4 b4
          }
        \\
          {
            b,4~
            <d, fis a b>
          }
        >>
        r4 <cis' cis'>2
        \break

        <d, d'>8 <e e'> <e e'> <fis fis'> <fis fis'> <g g'> <g g'>4
        <fis fis'> <d d'>2.
        <dis dis'>8 <fis fis'> <fis fis'> <b b'> <b b'> <dis dis'> <dis dis'>4
        <e e'> <b b'>2.
        \break
      }
    }
    \new Staff {
      \clef bass
      \key d \major
      \numericTimeSignature
      \time 4/4
      \relative c {
        r1
        r1
        r1
        r1

        <d fis a d>
        g1
        <fis a cis>
        <b, d g b>

        <fis' a cis>4 fis a2
        <b, d fis b>4 fis'2.
        r2 r4 <g, cis g'>~
        <g cis g'>1

        r1
        \clef treble
        <d'' g a>
        <fis cis'>
        <b, d g>
        \clef bass

        r4 fis a2
        <fis b d>1
        <<
          { r4 <d' g>2. }
        \\
          { r2 <g, b>2 }
        >>
        cis a

        r1
        r1
        r1
        <<
          { <fis' b>8 e e d d2 }
        \\
          { <b d>4. r2 r8 }
        >>

        <d, g b>1
        d'8 g b <b, d g>2~ <b d g>8
        r1
        \clef treble

        <d fis>
        <cis fis a cis>
        <e g b e>
        <e a cis e>

        <d fis a d>
        <cis fis a cis>
        <e g e'>
        <e a cis e>
        \clef bass

        <d, fis a d>
        <cis fis a cis>
        <b e g>
        a'

        <d, fis a>
        <cis fis a cis>
        <e g b>
        <a cis e>

        <<
          {
            <a d>
            <fis a cis>
            <e g>
            e

            <d fis d'>
            <cis fis a cis>
            <e g e'>
            <a cis e g>

            <a, d fis a>
            <d a' d>
            a
            <a g'>

            <a a'>
            <d g>
            a'2. <b~ d>4
            b2 cis4 fis,
          }
        \\
          {
            d8 fis a d a fis d fis
            cis fis a cis a fis a fis
            b b e g e b g e
            a e g e a e a e

            r8 fis a d a fis a fis
            r8 fis a cis cis, fis a fis
            r8 g e g e g~ g4 % XXX
            r8 g e g g2

            r8 fis r8 fis a fis a4
            r8 g r8 g <g a>2
            r8 fis r8 fis fis2
            r2 e4 <e g>

            r8 fis8 r8 fis <fis d' e> a a d,
            r8 d g d g d g4
            e'8 fis, a fis a4 r4
            a g e r4
          }
        >>

        <c g'>8 c' g c g c g4
        <b, d b'> d fis d
        <b fis' b>8 dis fis b dis, fis a fis
        <<
          {
            <e g b e>4 g d8 r4
          }
        \\
          {
            r8 e r8 e r8 b g e
          }
        >>
      }
    }
  >>
  \midi { }
  \layout { }
}
