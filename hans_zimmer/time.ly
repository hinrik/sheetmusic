\version "2.12.2"

\header {
  title = "Time"
  subtitle = \markup { "from" \italic "Inception" }
  composer = "Hans Zimmer"
  tagline = ""
}

global = {
  \tempo "Slowly" 4 = 60
  \key a \dorian
  \time 4/4
  \numericTimeSignature
  s1*8
  \bar "||"
  s1*8
  \bar "||"
  s1*8
  \bar "||"
  s1*8
  \bar "||"
  s1*8
  \bar "||"
  s1*8
  \bar "||"
  s1*8
  \bar "||"
  s1*16
  \bar "|."
}

upper = \relative c {
  \clef bass
  c1
  g'
  b,
  fis'
  c
  b'
  b,
  fis'
  \break

  c
  <b g'>
  b
  <a fis'>
  c
  <c b'>
  b
  <a fis'>
  \break

  <<
    {
      e'
      <e g>2( fis4 e)
      d1
      <d fis>2( e4 d)
      e1
      \break

      <e g b>2( <fis a>4 <e g>)
      d1
      <d fis>2( e4 d)
      c'1
      \clef treble
      <g g'>

      \break
      d'
      <fis, fis'>
      c'
      <b g' b>
      b
      \break

      <fis fis'>
    }
  \\
    {
      <a, c>2( b4 a)
      b1
      <g b>2( a4 g)
      a1
      <a c>2( b4 a)

      s1
      <g b>2( a4 g)
      a1
      r4 b'( a2)
      s1
      r4 a( g2)
      s1
      r4 b( a2)
      s1
      r4 a( g2)
    }
  >>

  <c c'>1
  <g' g'>
  <b, b'>
  <fis' fis'>
  \break

  <c c'>
  <b' g' b>
  <b, b'>
  <fis' fis'>
  \break

  <c c'>
  <g' g'>
  <b, b'>
  <fis' fis'>
  \break

  <c c'>
  <b' b'>
  <b, b'>
  <fis' fis'>
  \break

  <c c'>2( <b b'>4 e
  <g g'>2) <fis fis'>4( <b, b'>)
  \break

  <b b'>2( <a a'>4 d
  <fis fis'>2) <e e'>4( <a, a'>)
  \break

  <c c'>2( <b b'>4 e
  <b' b'>2) <g g'>4( <c, c'>)
  \break

  <b b'>2( <a a'>4 d
  <fis fis'>2) <e e'>4( <a, a'>)
  \break

  c'2 c'
  g g'
  b,, b'
  fis fis'
  c, c'
  b b'
  b,, b'
  fis fis'
  \break

  c,1
  g'
  b,
  fis'
  c
  b'
  b,
  fis'\fermata
}

lower = \relative c {
  \clef bass
  a1
  e
  g
  d
  a'
  <c, c'>
  g'
  d

  <a e'>
  <e e'>
  <g g'>
  <d d'>
  <a' a'>
  <c g'>
  <g g'>
  <d d'>

  <a' e'>
  <e e'>
  <g d'>
  <d d'>
  <a' e'>

  <c g' c>1
  <g d'>
  <d d'>
  <<
    {
      e''2( e4 fis
      b, fis' e b)

      d2( d4 e
      a, e' d) a8( b
      e2 e4 fis
      g a g fis)
      d2( d4 e

      a, e' d) a8( b
      e4 b' <e, a> fis
      g fis e b)
      d( a' <d, g> e
      <a, fis'> e' d) a8( b

      e4 b' <e, a> fis
      e a g fis)
      d( a' <d, g> e
      <a, fis'> e' d) a8 b

      r4 <b' c>-_ <a c>-_ <fis a c>-_
      r4 <fis g>-_ <e g>-_ <b g'>-_
      r4 <b' c>-_ <d, g b>-_ <e g b>-_
      r4 <e fis>-_ <d fis>-_ <a fis'>8 b

      r4 <b' c>-_ <a c>-_ <fis a c>-_
      <b c>-_ <a c>-_  <g c>-_ <fis c'>-_
      r4 <a b>-_ <d, g b>-_ <e g b>-_
      r4 <e fis>-_ <d fis>-_ <a fis'>8 b
    }
  \\
    {
      <a c>1
      e

      <g b>
      d
      <a' c>
      <c e>
      <g b>

      d
      <a' c>
      <e b'>
      <g b>
      d

      <a' c>
      <c, g'>
      <g' b>
      d

      a'
      e
      g
      d

      a'
      c
      g
      d
    }
  >>

  a'16 c e a a,16 c e a a,16 c e a a,16 c e a
  e, b' e g e, b' e g e, b' e g e, b' e g

  g, b d g g, b d g g, b d g g, b d g
  d, a' d fis d, a' d fis d, a' d fis d, a' d fis

  a,16 c e a a,16 c e a a,16 c e a a,16 c e a
  c,, g' c e c, g' c e c, g' c e c, g' c e

  g, b d g g, b d g g, b d g g, b d g
  d, a' d fis d, a' d fis d, a' d fis d, a' d fis
  \clef treble

  <<
    {
      r2 a''
      r2 e
      r2 g
      r2 d

      r2 a'
      r2 c,
      r2 g'
      r2 d
    }
  \\
    {
      a1
      e
      g
      d
      a'
      c,
      g'
      d
    }
  >>

  a'
  e
  g
  d
  a'
  c,
  g'
  d\fermata
}

dynamics = {
  s1*16\pp
  s1*8\p
  s4\mp s16\< s32*21 s32\!
  s32*31\> s32\!
  s32*31\< s32\!
  s32*31\> s32\!
  s32*31\< s32\!
  s32*31\> s32\!
  s32*31\< s32\!
  s32*31\> s32\!
  s32*31\< s32\!
  s32*31\> s32\!
  s32*31\< s32\!
  s32*31\> s32\!
  s32*31\< s32\!
  s32*31\> s32\!
  s32*63\< s32\!
  s1*8\mf
  s32*31\f\< s32\!
  s32*31\> s32\!
  s32*31\< s32\!
  s32*31\> s32\!
  s32*31\< s32\!
  s32*31\> s32\!
  s32*31\< s32\!
  s32*31\> s32\!
  s2\mp
  \override DynamicText #'Y-offset = #1
  s2\pp
  \override DynamicText #'Y-offset = #ly:self-alignment-interface::y-aligned-on-self
  s2\mp
  \override DynamicText #'Y-offset = #1
  s2\pp
  \override DynamicText #'Y-offset = #ly:self-alignment-interface::y-aligned-on-self
  s2\mp
  \override DynamicText #'Y-offset = #1
  s2\pp
  \override DynamicText #'Y-offset = #ly:self-alignment-interface::y-aligned-on-self
  s2\mp
  \override DynamicText #'Y-offset = #1
  s2\pp
  \override DynamicText #'Y-offset = #ly:self-alignment-interface::y-aligned-on-self
  s2\mp
  \override DynamicText #'Y-offset = #1
  s2\pp
  \override DynamicText #'Y-offset = #ly:self-alignment-interface::y-aligned-on-self
  s2\mp
  \override DynamicText #'Y-offset = #1
  s2\pp
  \override DynamicText #'Y-offset = #ly:self-alignment-interface::y-aligned-on-self
  s2\mp
  \override DynamicText #'Y-offset = #1
  s2\pp
  \override DynamicText #'Y-offset = #ly:self-alignment-interface::y-aligned-on-self
  s2\mp
  \override DynamicText #'Y-offset = #1
  s2\pp
  \override DynamicText #'Y-offset = #ly:self-alignment-interface::y-aligned-on-self
  s1*2\p
  s32*63\> s32\!
  s1\pp
}

pedal = {
}

chordnames = \chordmode {
}

\include "../template_piano_solo.ly"
