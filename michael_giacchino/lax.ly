\version "2.12.2"

\header {
  title = "LAX"
  subtitle = \markup { "from" \italic "Lost" }
  composer = "Michael Giacchino"
  arranger = "Originally transcribed by J. Wang"
  tagline = ""
}

global = {
  \tempo 4 = 50
  \key c \major
  \time 4/4
  \numericTimeSignature
  s1*5\break
  s1*4\break
  s1*8\break
  s1*8\break
  s1*4\break
  s1*4\break
  s1*4\break
  s1*4\break
  s1*8\break
  s1*3\bar "|."\break
}

upper = \relative c' {
  \clef treble
  g4 b b d
  e2 g
  e b'
  g4 f f e
  e2 b'

  c a4 f
  c'2 a
  c a4 f
  b2 g

  e2 g
  e b'
  g4 f f e
  e2 b'
  c a4 f
  c'2 a
  c a4 f
  b2 g

  <g c>1
  <g b>
  <g c>
  <g b>
  <f c'>
  <a c>
  <a d>
  <b d>

  <e, e'>2 <g g'>
  <e e'> <b' b'>
  <g g'>4 <f f'> <f f'> <e e'>
  <e e'>2 <b' b'>

  <c c'> <a a'>4 <f f'>
  <c' c'>2 <a a'>
  <c c'> <a a'>4 <f f'>
  <b b'>2 <g g'>

  <g c e> <g c g'>
  <g b e> <b e b'>
  <g c g'>4 <f c' f> <f c' f> <e c' e>
  <g b e>2 <b e b'>

  <c f c'> <a c a'>4 <f c' f>
  <c' e c'>2 <a c a'>
  <c f c'> <a c a'>4 <f c' f>
  <b g' b>2 <g e' g>

  e'2 g
  e b'
  g4 f f e
  e2 b'

  c a4 f
  c'2 a
  c a4 f
  b2 g

  <c, c'>1
  <c c'>
  R1
}

lower = \relative c {
  \clef bass
  R1
  <c e g>1
  <b e g>
  <c e g>
  <b e g>

  <f' a c>
  <e a c>
  <f a c>
  <g b d>

  <c, e g c>
  <b e g b>
  <c e g c>
  <b e g b>
  <f' a c f>
  <e a c e>
  <f a c f>
  <g b d g>

  g4 f f e
  e2 g
  g4 f f e
  e2 g
  c4 a a f
  c'2 a
  d4 c c a
  b2 g

  <<
    {
      g8 e g e g e g e
      g e g e g e g e
      g e g e g e g e
      g e g e g e g e

      g f g f g f g f
      g e g e g e g e
      g f g f g f g f
      b g b g b g b g
    }
  \\
    {
      c,1
      b
      c
      b

      f
      a
      f
      g
    }
  >>

  c'8 b b g c b b g
  b a a g b a a g
  c b b g c b b g
  b a a g b a a b

  d c c a d c c a
  c b b a c b b a
  d c c a d c c d
  e d d a e' f f g

  #(set-octavation 1)
  <g c>1
  <g b>
  <g c>
  <g b>
  <f c'>
  <a c>
  <a d>
  <b d>
  #(set-octavation 0)

  R1*2
  <c,,, c'>1\fermata
}

dynamics = {
  s1\mp
  s1*24
  s16\< s16*30 s16\!
  s1*6
  s16\< s16*30 s16\!
  s1*4
  s16\> s16*30 s16\!
  s1\p
}

pedal = {
}

chordnames = \chordmode {
}

\include "../template_piano_solo.ly"
