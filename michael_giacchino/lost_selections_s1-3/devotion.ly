\version "2.12.2"

\header {
  title = "Devotion"
  subtitle = \markup { "from" \italic "Lost" }
  composer = "Michael Giacchino"
}

global = {
  \tempo 4 = 76
  \key g \major
  \time 4/4
  \numericTimeSignature
  s1*31
  \bar "||"
  s1*31
  \bar "|."
}

upper = \relative c' {
  \clef treble
  <g b>1^"Mr. Eko's theme"
  <fis b>~
  <fis b>
  <g b>
  <g c>~
  \break

  <g c>
  <b d>
  <b d>~
  <b d>
  <a c>
  \break

  <a c>~
  <a c>
  <d g b>
  <d fis b>
  <e g b>
  \break

  <e g c>
  <g b d>
  <e gis b d>~
  <e gis b d>
  <e a c>
  \break

  <d fis a c>~
  <d fis a c>
  <g b d>
  <<
    {
      <b dis>~
      <b dis>
      \break
    }
  \\
    {
      a2 g~
      g1
    }
  >>

  <a b e>
  <e g c~>
  <g c>
  <b, d>
  \break

  <a d>1(
  <d fis>2 <fis a>)
  \bar "||"
  b2.^"Desmond's theme" b8( d
  c4 b a g)
  \break

  a2 \times 2/3 { fis4( g a }
  c2 b)
  g2.( b4
  a2) e4.~ e8
  \break

  g2( fis
  e d)
  r4 e'4( g e~
  e) e( g e~
  \break

  e) d( fis d~
  d) fis( d2)
  r4 e( g e~
  e) e( g e~
  \break

  e) d( g d~
  d) e( d2)
  b2. b8( d
  c4 b a g)
  \break

  a2 \times 2/3 { fis4( g a }
  c2 b)
  g2.( b4
  a2) e4. fis8
  \break

  g2( fis
  e d4) a(
  b2.) b8( d
  c4 b a g)
  \break

  b'2. b8( d
  c4 b a g)
  b,2. b8( d
  d2 g,)
  <g b>1\fermata
}

lower = \relative c {
  \clef bass
  <g d'>1
  <a d~>
  <b d>
  <b e>
  <c e~>

  <d e>
  <d g>
  <<
    {
      <e gis~>
      gis
      s1

      <d fis~>
      fis
      g
      s1
      b

      s1
    }
  \\
    {
      s1
      b,2 e
      <c e>1

      s1
      c2 a
      g2. g4
      <a a'>2 a'4( a,)
      b2 b4( d

      <c c'>1)
    }
  >>
  <d d'>
  e2. b4
  d b2.
  <c c'>1

  a2( c4 d
  c1)
  a'4( g a g)
  a( g a g)
  a( g a g)

  a( g a g)
  a( g a g)
  a( g a g)
  <d g>1

  <<
    {
      g2. fis4~
      fis1
    }
  \\
    {
      d1~
      d
    }
  >>
  <g, d'>4( <d' g> d' g,)
  c( d c2)

  <fis, a> \times 2/3 { c'4( b a) }
  <d, a'>2 <g g'>4( <fis fis'>
  <e e'>2) <e e'>4 g
  c4( b a4.) e'8

  d2. d,4
  d1
  \clef treble
  <e'~ g b>
  <e g c>

  <a,~ d_~ fis>2. <a~ d_~ e g>4
  <a d fis a>2 <b d g>
  <b e~ g~ b~>1
  <c e g b>

  <a~ d g a~>
  <a d fis a>
  \clef bass
  <b, e~ g~ b>
  <c e g c>

  <<
    {
      fis2. <e g>4
      s1
    }
  \\
    {
      <a, d>1~
      <a d fis a>2 <b d g>
    }
  >>
  <e,~ b' e~>1
  <e c' e>

  <<
    {
      s1
      g'2
    }
  \\
    {
      d,4( e fis g
      a b <c fis>2)
      s1
      e2 fis

      b c
      d c
    }
  \\
    {
      <a, d>1
      d
      <g, b d>
      <g d'>

      <g'_~ d'>
      <g e'>
      <g, d' fis>
      <g c e>
      <g b d>
    }
  \\
  >>
}

dynamics = {
  s1*23\mp
  s4\< s4*6 s4\!
  s4\mf\>s8*5 s8\!
  s4\mp\>s8*13 s8\!
  s1*2\p
  s32*31\< s32\!
  s1*2-\markup { \dynamic "mp" "espressivo" }
  s32*31\< s32\!
  s32*17\mf s32*14\> s32\!
  s1*2\mp
  s32*63\> s32\!
  s1*4\p
  s32*63\< s32\!
  s4 s4\mf s32*31\> s32\! s2\p
  s1*2
  s32*31\< s32\!
  s4\mf s32*22\> s32\! s32
  s1*8\mp
  s32*63\> s32\!
  s1\pp
}

pedal = {
}

chordnames = \chordmode {
}

\include "../../template_piano_solo.ly"
