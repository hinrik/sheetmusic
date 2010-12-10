\version "2.12.2"

\header {
  title = "Primavera"
  composer = "Ludovico Einaudi"
}

\score {
  \new PianoStaff <<
    \tempo 4 = 136
    \new Staff {
      \clef treble
      \key c \minor
      \time 3/4
      \relative c'' {
        R2.*9

        c'2.
        bes2.
        a4 bes a8 g16 a
        g2.
        c2( c8 bes16 c16)

        bes2.
        a4 a8 bes c4
        g2.
        es2.
        f2.

        c2.(
        c2) c8 d
        es4 f d8 d16 es
        d4 c as
        c2.(

        c2) r8 es,
        es'2.
        c2.
        c2.(

        c2) c8 d
        es4 f es8 d16 es
        d4 c as
        c2.(
        c2.)

        c,8-\p g' c g c g
        es g c g c g
        d g c g c g
        bes, g' c g c g
        \break

        c, g' c g c g
        es g c g c g
        d g c g c g
        c2.
        \break
      }
    }
    \new Staff {
      \clef treble
      \key c \minor
      \time 3/4
      \relative c' {
        c8^\markup { \dynamic "p" \italic "legato" } g' c g c g
        es g c g c g
        d g c g c g
        bes, g' c g c g
        \break

        c, g' c g c g
        es g c g c g
        d g c g c g
        c g c g c4
        \bar ":|"
        c2.
        \break

        c,8^\markup { \italic "dolce e cantabile" }
        g' c g c g
        es g c g c g
        f g c g c g
        c, g' c g c g
        c, g' c g c g
        \break

        es g c g c g
        f g c g c g
        c, g' c g c4
        \clef bass
        es,,8^\mp bes' g' bes, g' bes,
        f c' f c f4
        \break

        c,8 g' c g c g
        c, g' c2
        es,8 bes' g'2
        bes,,8 f' bes2
        c,8 g' c g c g
        \break

        c, g' c2
        c,8 g' g' g, g' g,
        f c' f c f4
        c,8 g' c g c g
        \break

        c, g' c2
        es,8 bes' g'2
        bes,,8 f' bes2
        f,8 c' f g a c
        f2.
        \break

        R2.*8
      }
    }
  >>
  \midi { }
  \layout { }
}
