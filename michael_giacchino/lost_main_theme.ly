\version "2.12.2"

\header {
  title = "Main theme"
  subtitle = \markup { "from" \italic "Lost" }
  composer = "Michael Giacchino"
  instrument = "Piano solo"
}

\score {
  \new PianoStaff <<
    \tempo 4 = 72
    \new Staff {
      \clef treble
      \key c \major
      \numericTimeSignature
      \time 4/4
      \relative c' {
        b2( d4 c)
        a2( c4 b)
        b2( d4 c)
        a2( c4 b)
        \break

        d2( f4 e)
        c2( e4 d)
        d2( f4 e)
        a2( g4 e)
        \break

        <d d'>2_\mp(<f f'>4 <e e'>)
        <c c'>2( <e e'>4 <d d'>)
        <d d'>2( <f f'>4 <e e'>)
        <a a'>2( <g g'>4_\> <e e'>)
        \break

        <d d'>1\!\<
        <f f'>
        <e e'>_\mf\>
        <f a'>
        \break

        <c d>_\!\mp
        <c f>\<
        <d bes'>
        <f c'>
        \break

        <d d'>2_\!\f( <f f'>4 <e e'>)
        <c c'>2( <e e'>4 <d d'>)
        <d d'>2( <f f'>4 <e e'>)
        <a a'>2_\>( <g g'>4 <e e'>)
        \break

        d2.\!\mp d8( e
        f2~ f8) g( f e
        e2.) e8( g
        \break

        a1\fermata)
        d2. d8_\<( e
        f2~\!\mf f8) g\>( f e
        \break

        e2.\!) e8( g
        a1)
        d,,2( f4 e)
        c2( e4 d)
        \break

        d2_\>( f4 e)
        a1(
        g2 e~_\!\pp
        e1\fermata)
      }
    }
    \new Staff {
      \clef bass
      \key c \major
      \numericTimeSignature
      \time 4/4
      \relative c {
        a4( d e2)
        a,4( c d2)
        a4( d e2)
        a,4( c d2)

        bes4( c d2)
        bes4( c f2)
        bes,4( c d2)
        bes4( c f2)

        <bes, c d>1
        <bes c f>
        <bes c d>
        <bes c f>

        bes'4( c d2)
        bes4( c f2)
        bes,4( c d2)
        bes4( c f2)

        bes,4( c d2)
        bes4( c f2)
        bes,4( c d2)
        bes4( c f2)

        <d, e a>1
        <c d a'>
        <d e a>
        <c d a'>

        bes8 c d c d c d c
        bes c f c f c f c
        bes c d c d c d c

        bes c f c f c f e\fermata
        bes' c d c d2
        bes8 c f c f2

        bes,8^\mp c d c d4 c8 f,
        bes,^\> c f c^\! f2^\p\fermata
        <bes,, bes'>4^\mf( <c c'> <d d'>2)
        <bes bes'>4( <c c'> <f f'>2)

        <bes c d>1
        <<
          {
            f'~^\markup { \italic "rit." }
            f~
            f
          }
        \\
          {
            e
            e~
            e
          }
        \\
          {
            bes~
            bes~
            bes\fermata
          }
        >>
      }
    }
  >>
  \midi { }
  \layout { }
}
