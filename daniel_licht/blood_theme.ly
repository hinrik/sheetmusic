\version "2.12.2"

\header {
  title = "Blood theme"
  subtitle = \markup { "from" \italic "Dexter" }
  composer = "Daniel Licht"
  arranger = "Original transcription by Olga Blue"
}

global = {
  \key c \major
  \time 4/4
  \numericTimeSignature
  s1*4\break
  s1*4\break
  s1*4\break
  s1*4\break
  s1*4\break
  s1*5\break
  s1*4\break
  s1*4\break
  s1*4\break
  s1*4\break\bar "|."
}

upper = \relative c' {
  \clef treble
  r8 a c a r2
  r8 a b a r2
  r8 a c a r2
  r8 a b a r2

  r8 a c a r8 a' c a
  r8 a, b a r8 a' b a
  r8 a, c a r8 a' c a
  r8 a, b a r8 a' b4

  r4 <g' g'>4( <f f'>2)
  r4 <e e'>4( <dis dis'>2)
  r4 <g g'>4( <f f'>2
  <a a'>4 <b b'>2 <c c'>4)

  r4 <g g'>4( <f f'>2)
  r4 <e e'>4( <dis dis'>2)
  r4 <g g'>4( <f f'>2
  <c c'>4 <f, f'>2 <e e'>4

  a'2) <a a'>\arpeggio(
  <c c'>\arpeggio <e e'>\arpeggio)
  <e, a>8 b' <e, c'> <a d> r2

  <<
    {
      <gis gis'>2\arpeggio( <cis cis'>\arpeggio
      <g' g'>1\arpeggio)
    }
  \\
    {
      s1
      r2 r8 a,, c a
    }
  >>
  r2 <a' a'>2\arpeggio(
  <c c'>\arpeggio) r2
  <e, a>8 b' <e, c'> <a d> r2
  <e' a>8 b' <e, c'> <a d> r2

  r4 <g, g'>4( <f f'>2)
  r4 <e e'>4( <dis dis'>2)
  r4 <g g'>4( <f f'>2
  <a a'>4 <b b'>2 <c c'>4)

  r4 <g g'>4( <f f'>2)
  r4 <e e'>4( <dis dis'>2)
  r4 <g g'>4( <f f'>2
  <c c'>4 <f, f'>2 <e e'>4

  a'2) <a a'>\arpeggio(
  <c c'>\arpeggio <e e'>\arpeggio)
  <e, a>8 b' <e, c'> <a d> r2
  <e' a>8 b' <e, c'> <a d> r2

  r2 <a, a'>\arpeggio
  <c c'>\arpeggio <e e'>\arpeggio
  r2 <gis, gis'>\arpeggio
  <c c'>\arpeggio
  #(set-octavation 1)
  <g' g'>\arpeggio\fermata
  #(set-octavation 0)
}

lower = \relative c {
  \clef bass
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
      r8 a( c a4) a a8
      r8 a( b a4) a a8

      r4. a4 a8 c a
      r8 a4 a a8 b a
      r4. a4 a8 c a
      r8 a4 a a r8

      r8 a( c a4) a a8
      r8 a( b a4) a a8
      r8 a( c a4) a a8
      r8 a( b a4) a a8

      r8 a( c a4) r8 r4
      r8 a( b a4) a a8
      r8 a( c a4) a a8
      r8 a4 a a8 c a
      r8 a4 a a8 c a

      r8 a( c a4) a a8
      r8 a( b a4) a a8
      r8 a( c a4) a a8
      r8 a( b a4) a a8

      r4. a4 a8 c a
      r8 a4 a a8 b a
      r4. a4 a8 c a
      r8 a4 a a r8

      r8 a( c a4) a a8
      r8 a( b a4) a a8
      r8 a4 a a8 c a
      r8 a4 a a8 b a

      r8 a( c a4) a a8
      r8 a( b a4) a a8
      r8 a( c a4) a a8
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

dynamics = {
  s1*39\p
  s8*7 s8-"rit."
}

pedal = {
}

chordnames = \chordmode {
}

\include "../template_piano_solo.ly"
