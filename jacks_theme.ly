\version "2.12.2"

\header {
  title = "Jack's theme"
  subtitle = \markup { "from" \italic "Lost 3x13: \"The Man From Tallahassee\"" }
  composer = "Michael Giacchino"
  instrument = "Piano solo"
}

#(set-global-staff-size 26)

\score {
  \new PianoStaff <<
    \tempo 4 = 58
    \new Staff {
      \clef treble
      \key c \major
      \numericTimeSignature
      \time 4/4
      \relative c' {
        c'1\mp
        f1
        g2. b,,8 g
        <f a c>2 r
        <g b>2. <b d>8 f'8
        <a, c e>2 a4 c
        <a c f g>1
        <b d f>1
        <c e g>1
        <a c e>4 c8 b d d4 c8
        <e g>2 <e g>8 c4 b8
        <a c e>4-"poco cresc..." c8 d d d4 c8
        <a c f>2 <a c a'>8 b' a4
        <c, f a>2^"poco dim." <f d>\>
        c1\!
        \bar "|."
      }
    }
    \new Staff {
      \clef bass
      \key c \major
      \numericTimeSignature
      \time 4/4
      \relative c {
        <c' g'>1-"Pedal ad lib"
        <c f g>1
        <e, g b c>1
        f,8 c' c f f4 a
        <b, d>1
        a1
        f8 c' c f f4 g
        g,8 b b d d4 f
        <c e>1
        a8 e'4. <a, e'>2
        c8 d e c e2
        a,8 e'4. <a, e'>2
        a1
        <c f>2 <d a' b>
        <c e g>1
        \bar "|."
      }
    }
  >>
  \midi { }
  \layout { }
}
