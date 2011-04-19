\version "2.12.2"

\header {
  title = "Solitary"
  subtitle = \markup { "from" \italic "Lost" }
  composer = "Michael Giacchino"
}

global = {
  \tempo 4 = 72
  \key c \major
  \time 4/4
  \numericTimeSignature
  s1*17
  \bar "||"
  \tempo 4 = 75
  \key e \major
  s1*35
  \bar "|."
}

upper = \relative c'' {
  \clef treble
  \times 2/3 { a4( b e, } c' b
  a g2.)
  \times 2/3 { fis4( gis cis, } a' gis
  fis e2.)
  \break

  \times 2/3 { e'4( fis a, } fis'2~
  fis2.) a,4
  <g b>1
  <fis a>
  \break

  <cis f gis>~
  <cis f gis>
  <d g b>
  <cis fis a>
  \break

  <cis f gis>~
  <cis f gis>
  \times 2/3 { cis4( d b } fis'2)
  \times 2/3 { b4( a fis } e2)
  \break

  R1
  <b' e>2^"Boone & Shannon's theme" <b e>
  <b e> <b e>
  <b e> <b e>
  \break

  <b e> <b e>
  <b e> <b e>
  <b e> <b e>
  <b e> <b e>
  \break

  <b e> <b e>
  <b e> <b e>
  <b e> <b e>
  b4( a2.~
  \break

  a1)
  a4( gis2.~
  gis1)
  dis4( fis b,2~
  \break

  b2) b8( dis dis b')
  b4( a2.~
  a1)
  a4( gis2.~
  \break

  gis1)
  <b b'>4( <a a'>2.~
  <a a'>1)
  <a a'>4( <gis gis'>2.~
  \break

  <gis gis'>1)
  dis'2( fis
  b,1)
  <b e>2 <b e>
  \break

  <b e> <b e>
  <b e> <b e>
  <b e> <b e>
  <b' e> <b e>
  \break

  <b e> <b e>
  <b e> <b e>
  <b e> <b e>
  fis,4( <e gis>2.\fermata)
}

lower = \relative c {
  \clef bass
  R1*4
  \clef treble

  \times 2/3 { e'4( fis a } fis e
  d cis2.)
  d1
  cis1
  \clef bass

  gis2( g
  f cis)
  <d g b>1
  <cis fis a>

  <cis f gis>~
  <cis f gis>
  \times 2/3 { cis4( d b } fis'2)
  \times 2/3 { b4( a fis } e2)

  <d d'>2( <b b'>~
  <b b'>1)
  R1
  fis''4( cis2.)

  R1
  e4( dis2.)
  R1
  fis4( e2.)

  R1
  e4( dis2.)
  R1

  <<
    {
      s1

      r2 <e, a>
      s1
      r2 <e gis>
      dis1~

      dis
      <e a>~
      <e a>
      <cis~ e>

      <cis e>
      <e a>~
      <e a>
      <cis~ e>

      <cis e>
    }
  \\
    {
      r4 b'8( a a e e a,

      cis1)
      r4 gis'8( fis fis e e gis,
      cis1)
      b

      a2 fis4( gis)
      a2( b
      cis1)
      a2( b

      % XXX: this produces a harmless warning about clashing note columns
      \voiceOne
      cis1)
      \voiceTwo
      a2( b
      cis1)
      a2( b

      % XXX: same as above
      \voiceOne
      cis1)
    }
  >>
  <b' dis>~
  <b dis>
  fis'4( e2.)

  R1
  \times 2/3 { cis,4( dis gis, } e'2)
  R1
  \clef treble
  fis''4( e2.)

  R1
  \times 2/3 { cis,4( dis gis, } dis'2)
  R1
  \clef bass
  fis,4( <e, b' e>2.\fermata)
}

dynamics = {
  s1-\markup { \dynamic "mp" "espressivo" }
  s1*4
  s2 s32*15\< s32\!
  s1\mf
  s32*95\> s32\!
  s1*7\p
  s1*2\p
  s1*6\p
  s2 s32*39\< s32\! s32*8
  s1*4\mp
  <<
    {
      s1\<
      s32*31 s32\!
    }
  \\
    {
      s1
      s2 s2-"accel."
    }
  >>
  s1*4\f
  s1*2\mp
  s32*63\> s32\!
  s1\p
}

pedal = {
}

chordnames = \chordmode {
}

\include "../template_piano_solo.ly"
