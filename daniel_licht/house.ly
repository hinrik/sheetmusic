\version "2.12.2"

\header {
  title = "House"
  subtitle = \markup { "from" \italic "Dexter" }
  composer = "Daniel Licht"
  arranger = "Original transcription by Olga Blue"
  tagline = ""
}

global = {
  \tempo 4 = 45
  \key c \major
  \time 6/8
  \numericTimeSignature
  s2.*4\break
  s2.*4\break
  s2.*2
  \tempo 4 = 49
  s2.*2\break
  s2.*2\break
  \tempo 4 = 47
  s2.*4\break
  s2.*3\break\bar "|."
}

upper = \relative c''' {
  \clef treble
  R2.
  r4.
  #(set-octavation 1)
  a4( c8
  e2.
  fis4. gis4.)

  g4.( f
  e d4 c8
  e2.)
  fis4.( gis)
  #(set-octavation 0)

  <<
    {
      a,4.( b4 c8
      b4.~ b8 a gis
      a4.) r4.
      e4.( dis4 d8

      c a4) r4.
      f8( g f e fis4)

      r8 <e a>4 r8 <e as>4
      r8 <c g'>4 r8 <e gis>4
    }
  \\
    {
      s2.*2
      r16 a <c e> a <c e> a r fis <a c> fis <a c> fis
      r f <a c> f <a c> f r e <gis b> e gis e

      r c e c e c r c <e a> c e c
      r a c a c a r b gis b <gis e'> b

      r c~ c4 r16 c~ c4
      r16 a~ a4 r16 b~ b4
    }
  >>
  c''8 <c, e a>4 c'8 <c, e as>4
  f8 <a, c g'>4 e'8 <b gis'>4

  c'8 <c, e a>4 c'8 <c, e as>4
  f8 <a, c g'>4 e'8 <b gis'>4
  c'8 <c, e a>4\arpeggio~ <c e a>4.\fermata
}

lower = \relative c' {
  \clef bass
  a8 <c e> <c e> e, <c' e>4
  a8 <c e> <c e> fis, <c' e>4
  a8 <c e> <c e> fis, <c' e>4
  a8 <c e> <c e> e, <c' e>4

  <<
    {
      r8 <a c> <a c> r <a c>4
      r8 <gis d'> <gis d'> r <b d>4
      r8 <c e> <c e> r <c e>4
      r8 <c e> <c e> r <c e>4

      r8 <a c> <a c> r <a c>4
      r8 <gis d'> <gis d'> r <b d>4
      r8 <a c e> <a c e> r <a c> <a c>
      r <f a c> <f a c> r <e gis b> <e gis b>

      r <c e a> <c e a> r <c e a> <c e a>
      r <a c f> <a c f> r <b e> <b e>

      r <c e a> <c e a> r <c e> <c e>
      r <a c f> <a c f> r <b e gis> <b e gis>
      r <c e a>4 r8 <c e as>4
      r8 <a c f>4 r8 <b e gis>4
    }
  \\
    {
      <f f'>4. <a a'>
      <e e'> <gis gis'>
      <a, a'> <fis fis'>
      <a a'> <e e'>

      <f f'> <a a'>
      <e e'> <gis gis'>
      <a a'> <fis fis'>
      <f f'> <e e'>

      <a a'> <fis fis'>
      <f f'> <e e'>

      <a a'> <fis fis'>
      <f f'> <e e'>
      <a a'> <fis fis'>
      <f f'> <e e'>
    }
  >>

  <a a'>( <fis fis'>
  <f f'> <e e'>
  <a a'>2)
}

dynamics = {
  s2.*18\p
  s2.*2\> s8\! s8\p
}

pedal = {
}

chordnames = \chordmode {
}

\include "../template_piano_solo.ly"
