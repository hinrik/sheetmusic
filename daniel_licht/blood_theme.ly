\version "2.12.2"

\header {
  title = "Blood theme"
  subtitle = \markup { "from" \italic "Dexter" }
  composer = "Daniel Licht"
  instrument = "Piano solo"
  arranger = "Original transcription by Olga Blue"
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
        r8 a_\p( c a) r2
        r8 a( b a) r2
        r8 a( c a) r2
        r8 a( b a) r2
        \break

        <<
          {
            r2 r8 a'( c a)
            r2 r8 a( b a)
            r2 r8 a( c a)
            r2 r8 a b4
          }
        \\
          {
            r8 a,( c a) r2
            r8 a( b a) r2
            r8 a( c a) r2
            r8 a( b a) r2
          }
        >>
        \break

        r4 <g' g'>4( <f f'>2)
        r4 <e e'>4( <dis dis'>2)
        r4 <g g'>4( <f f'>2
        <a a'>4 <b b'>2 <c c'>4)
        \break

        r4 <g g'>4( <f f'>2)
        r4 <e e'>4( <dis dis'>2)
        r4 <g g'>4( <f f'>2
        <c c'>4 <f, f'>2 <e e'>4
        \break

        a'2) <a a'>\arpeggio(
        <c c'>\arpeggio <e e'>\arpeggio)
        <e, a>8 b' <e, c'> <a d> r2

        <<
          {
            <gis gis'>2\arpeggio( <cis cis'>\arpeggio
            \break
            <g' g'>1\arpeggio)
          }
        \\
          {
            r1
            r2 r8 a,, c a
          }
        >>
        r2 <a' a'>2\arpeggio(
        <c c'>\arpeggio) r2
        <e, a>8 b' <e, c'> <a d> r2
        <e' a>8 b' <e, c'> <a d> r2
        \break

        r4 <g, g'>4( <f f'>2)
        r4 <e e'>4( <dis dis'>2)
        r4 <g g'>4( <f f'>2
        <a a'>4 <b b'>2 <c c'>4)
        \break

        r4 <g g'>4( <f f'>2)
        r4 <e e'>4( <dis dis'>2)
        r4 <g g'>4( <f f'>2
        <c c'>4 <f, f'>2 <e e'>4
        \break

        a'2) <a a'>\arpeggio(
        <c c'>\arpeggio <e e'>\arpeggio)
        <e, a>8 b' <e, c'> <a d> r2
        <e' a>8 b' <e, c'> <a d> r2
        \break

        r2 <a, a'>\arpeggio
        <c c'>\arpeggio <e e'>\arpeggio
        r2 <gis, gis'>\arpeggio
        <c c'>\arpeggio
        #(set-octavation 1)
        <g' g'>\arpeggio\fermata
        #(set-octavation 0)
        \bar "|."
      }
    }
    \new Staff {
      \clef bass
      \key c \major
      \numericTimeSignature
      \time 4/4
      \relative c {
        <a a,>1~
        <a a,>
        <f f,>~
        <f f,>

        a,8 a'~ a2.
        a,8 a'~ a2.
        f,8 f'~ f2.
        f,8 f'~ f2.

        <<
          {
            r8 a'( c a4) a a8
            r8 a( b a4) a a8
            r8 a c a4 a a8
            r8 a( b a4) a a8

            r4. a4 a8( c a)
            r8 a4 a a8( b a)
            r4. a4 a8( c a)
            r8 a4 a a r8

            r8 a( c a4) a a8
            r8 a( b a4) a a8
            r8 a c a4 a a8
            r8 a( b a4) a a8

            r8 a( c a4) r8 r4
            r8 a( b a4) a a8
            r8 a c a4 a a8
            r8 a4 a a8 c a
            r8 a4 a a8( c a)

            r8 a( c a4) a a8
            r8 a( b a4) a a8
            r8 a( c a4) a a8
            r8 a( b a4) a a8

            r4. a4 a8( c a)
            r8 a4 a a8( b a)
            r4. a4 a8( c a)
            r8 a4 a a r8

            r8 a( c a4) a a8
            r8 a( b a4) a a8
            r8 a4 a a8( c a)
            r8 a4 a a8( b a)

            r8 a( c a4) a a8
            r8 a( b a4) a a8
            r8 a( c a4) a a8^\markup { \italic "rit." }
            r8 a b a~ a2_\fermata
          }
        \\
          {
            <a,, a'>1~
            <a a'>
            <f f'>~
            <f f'>

            a8 a'~ a2.~
            a1
            f,8 f'~ f2.~
            f1

            <a, a'>1~
            <a a'>
            <f f'>~
            <f f'>

            <a a'>
            <a a'>
            <f f'>
            <f f'>~
            <f f'>

            <a a'>~
            <a a'>
            <f f'>~
            <f f'>

            a8 a'~ a2.~
            a1
            f,8 f'~ f2.~
            f1

            <a, a'>~
            <a a'>
            <f f'>~
            <f f'>

            <a a'>~
            <a a'>
            <f f'>~
            <f f'>
          }
        >>
      }
    }
  >>
  \midi { }
  \layout { }
}
