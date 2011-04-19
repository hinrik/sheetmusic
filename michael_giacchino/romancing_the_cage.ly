\version "2.12.2"

\header {
  title = "Romancing the Cage"
  subtitle = \markup { "from" \italic "Lost" }
  composer = "Michael Giacchino"
}

global = {
  \tempo 4 = 60
  \key c \major
  \time 4/4
  \numericTimeSignature
  s1*27
  \bar "|."
}

upper = \relative c''' {
  \clef treble
  a2.( b4
  a2. b4
  c2. b4
  \break

  g fis2.)
  a2.( b4
  a2. fis4
  \break

  e2. fis4
  d4 a~ a8) d,( a' d
  e4. c8 a4 g)
  \break

  fis16( g a4.~ a4) d,8( d'
  e4. c8 g'4. e8
  d2.) c8( d
  \break

  e4. c8 g'4 e
  fis d a') a8( b
  c4. b8 a4 g
  \break

  a1\fermata)
  <d,, fis a>2. <d fis b>4
  <cis fis a>2. <cis fis b>4
  \break

  <d g c>2. <d g b>4
  << { g4 fis2. } \\ { <g, b d>1 } >>
  <c e g a>2. <c e g b>4
  \break

  <d fis a>2. <a d fis>4
  <g c e>2. <g c ges'>4
  <g a d>4 <d fis a>2.
  \break

  <g' c e>2. <g c ges'>4
  <g a d>2 <d fis a>
  <d' fis g a d>1\fermata
}

lower = \relative c' {
  \clef treble
  <d fis a>1
  <cis fis a>
  <d g c>

  <d g b>
  <e g c>
  <d fis a>

  <d g c>
  <d g a>
  <e, g c e>

  <d fis a d>
  <g c e g>
  <fis b d fis>

  <g c e g>
  <fis a d fis>
  <a c fis a>4. <b b'>8 <a d fis a>4 <g b d g>

  <<
    {
      <a cis e a>4 <e a cis e>2.\fermata
    }
  \\
    {
      r2
      \clef bass
      <a,, a'>2\fermata
    }
  >>
  d8( f b2) dis8( b)
  fis( cis' fis2) cis8( b)

  g( d' c' b~ b4.) d,8
  <g, d'>1
  c,8( g' d'2) e8( g

  <d fis>1)
  g,8( c e2) e8( c
  d4) <d, a'>2.

  g'8( c e2) e8( c
  d2) <d, b'>
  <d, a' d>1\fermata
}

dynamics = {
  s1*14\mp
  s32*45\< s32\! s32 s32\f s32*16
  s1*6\mf
  s32 s32*32\> s32\! s32*7 s32*23\p
  s32-"rit." s32 s32*36\> s32\! s32 s32\p
}

pedal = {
}

chordnames = \chordmode {
}

\include "../template_piano_solo.ly"
