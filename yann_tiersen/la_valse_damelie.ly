\version "2.12.2"

\header {
  title = "La valse d'Amélie"
  composer = "Yann Tiersen"
}

global = {
  \tempo 4 = 100
  \key c \major
  \time 2/4
  \numericTimeSignature
  s2*6\break
  s2*7\break
  s2*7\break
  s2*7\break
  s2*5\bar "||"
  \tempo 4 = 150
  \time 3/4
  s2.*2\break
  s2.*5\break
  s2.*5\break
  s2.*5\break
  s2.*5\break
  s2.*5\break
  s2.*5\break
  s2.*6\break
  s2.*6\break
  s2.*6\break
  s2.*6\break
  s2.*6\break
  s2.*5\break
  s2.*5\break
  s2.*5\break
  s2.*5\break
  s2.*5\break
  s2.*5\break
  s2.*4\bar "||"
  \tempo 4 = 100
  \time 2/4
  s2\break
  s2*7\bar "|."
}

upper = \relative c'' {
  \clef treble
  d2-4~(
  d4~ d8. c16
  b2-2~)
  b4 a(
  d2-4~
  \times 2/3 { d8 e-5 d } \times 2/3 { c b c }

  b2-2~)
  b4 a(
  c2-4~
  c4~ c8. b16
  e,2_1~)
  e
  c'-4~(

  \times 2/3 { c8 d-5 c } \times 2/3 { b c b-3 }
  e,2_1)~ e
  <d'-1 d'-5>~(
  <d d'>4~ <d d'>8 <c-1 c'-5>
  <b b'>2~)
  <b b'>4 <a a'>(

  <d-1 d'-5>2~
  \times 2/3 { <d d'>8 e-4 d } \times 2/3 { c b-1 c-2 }
  <b-1 b'-5>2~)
  <b b'>4 <a a'>(
  <c-1 c'-5>2~
  <c c'>4~ <c c'>8 <b b'>
  <e, e'>2)~

  <e e'>
  <c'-1 c'-5>~(
  \times 2/3 { <c c'>8 d-4 c } \times 2/3 { b c b-2 }
  <e,-1 e'-5>2~
  <e e'>)
  \mergeDifferentlyDottedOn
  \mergeDifferentlyHeadedOn
  <<
    {
      d'2.(
      d4. c

      b2.
      a)
      d(
      d4. c
      b2.

      a)
      c(
      c
      c)
      e,8-3 d c e d c

      c'2.(
      c
      c)
      e,8-3 d-2 c-1 e d c
      d'2.(

      e4. c
      b2.
      a)
      d(
      e4. c

      b2.
      a)
      c(
      c4. b
      g2.)

      s
      c(
      c4. b
      g2.)
    }
  \\
    {
      d'8-5 e,-1 f-2 e f e
      d'-5 e, f c' e, f

      b-5 d,-1 e-2 d e d
      a'-5 c,-1 d-2 e-3 d c
      d'-5 e, f e f e
      d'-5 e, f c'-5 e, f
      b-5 d,-1 e d e d

      a'-5 c,-1 d e d c
      c'-5 e,-1 f-2 e f e
      c'-5 e,-1 f-2 e f-2 d-1
      c'-5 d,-1 e-2 d e d-1
      s2.

      c'8-5 e, f e f e
      c' e, f e f-2 d-1
      c'-5 d, e d e-2 d
      s2.
      d'8-5 e, f e f e

      e'-5 e, f c'-5 e,-1 f-2
      b-5 d, e d e d
      a'-5 c,-1 d e-3 d c
      d' e, f e f e
      e'-5 e, f c'-5 e, f

      b-5 d, e d e d
      a' c,-1 d e d c
      c'-5 e, f e f e
      c'-5 e, f b-5 e, f
      g-4 d-1 e-2 d e d-1

      e-3 d c e d c
      c'-5 e, f e f e
      c'-5 e, f b-5 e, f
      g-4 d-1 e-2 d e d
    }
  >>
  e8_3 d c e d c

  d'2.-2~(
  d8 e-3 f-4 e f e
  a,2._1~)
  a4 b4.-2( c8-1
  d2.-2~
  d8 e f e f e

  a,2._1~
  a4. g8_2~( g4
  a2._3~
  a8 b_4 c-5 b c b
  e,2._1~)
  e4 f4._2( g8_1

  a2._2~
  a8 b-3 c-4 b c b
  e,2._1~)
  e
  <d'-1 d'-5>~(
  <d d'>4 <c-1 c'-5>2

  <b b'>2.)
  <a a'>(
  <d-1 d'-5>~
  <d d'>8 e-4 d c b c
  <b-1 b'-5>2.)
  <a a'>(

  <c-1 c'-5>~
  <c c'>4. <b b'>8~ <b b'>4
  <e, e'>2.~
  <e e'>
  <c' c'>~
  <c c'>8 d-4 c b c b-2

  <e,-1 e'-5>2.~)
  <e e'>2.
  <<
    {
      d''2.(
      d4. c
      b2.

      a)
      d(
      d4. c
      b2.
      a)

      c(
      c
      c)
      e,8-3 d c e d c
      c'2.(

      c
      c)
      e,8-3 d c e d c
      d'2.(
      e4. c

      b2.
      a)
      d(
      e4. c
      b2.

      a)
      c(
      c4. b
      g2.)
      e8-3 d c e d c

      c'2.(
      c4. b
      g2.)
    }
  \\
    {
      d'8-5 e,-1 f e f e
      d'-5 e, f c'-5 e, f
      b-5 d,-1 e d e d

      a'-5 c,-1 d e d c
      d' e, f e f e
      d' e, f c' e, f
      b d, e d e d
      a' c, d e d c-1

      c'-5 e,-1 f e f e
      c' e, f e f-2 d-1
      c'-5 d,-1 e d e d-1
      s2.
      c'8-5 e, f e f e

      c' e, f e f-2 d-1
      c' d, e d e d-1
      s2.
      d'8-5 e, f e f e
      e'-5 e, f c'-5 e, f

      b-5 d, e d e d
      a'-5 c,-1 d e d c
      d'-5 e, f e f e
      e'-5 e, f c'-5 e, f
      b-5 d, e d e d

      a'-5 c,-1 d e d c
      c'-5 e, -1 f e f e
      c'-5 e, f b-5 e, f
      g-4 d e-2 d e d-1
      s2.

      c'8-5 e, f e f e
      c' e, f b-5 e, f
      g-4 d e-2 d e d-1
    }
  >>
  e8-3 d c e d c-1
  d2-4~(

  d4~ d8 c
  b2~)
  b4 a(
  d2-4~
  \times 2/3 { d8 e d } \times 2/3 { c b c }
  b2~
  b4 a_\fermata)
}

lower = \relative c {
  \clef bass
  d2-5
  <f-4 a-2 d-1>
  a,_5
  <c-4 e-2 b'-1>
  d2
  <f a d>

  a,
  <c e b'>
  f-3
  <a-2 c-1>
  c,_5
  <e-3 g-2 b-1>
  f-3

  <a c>
  c,
  <e g b>
  d-5
  <f a d>
  a,
  <c e b'>

  d
  <f a d>
  a,
  <c e b'>
  f-3
  <a c>
  c,_5

  <e-3 g-2 b-1>
  f-3
  <a c>
  c,
  <e g b>
  <<
    {
      r4 <f-4 a-2 d-1> <f a d>
      r <f-4 a-2 d-1> <f a d>

      r <c-4 e-2 a-1> <c e a>
      r <e-2 a-1> <e a>
      r <f a d> <f a d>
      r <f a d> <f a d>
      r <c e a> <c e a>

      r <e a> <e a>
      r <a-2 c-1> <a c>
      r <a c> <a c>
      r <e-3 g-1> <e g>
      r <e g> <e g>

      r <a c> <a c>
      r <a c> <a c>
      r <e g> <e g>
      r <e g> <e g>
      r <f a d> <f a d>

      r <f a d> <f a d>
      r <c e a> <c e a>
      r <e a> <e a>
      r <f a d> <f a d>
      r <f a d> <f a d>

      r <c e a> <c e a>
      r <e a> <e a>
      r <a-2 c-1> <a c>
      r <a c> <a c>
      r <e-3 g-1> <e g>

      r <e g> <e g>
      r <a c> <a c>
      r <a c> <a c>
      r <e g> <e g>
      r <e g> <e g>
    }
  \\
    {
      d2.-5
      d

      a-5
      c-4
      d-5
      d
      a-5

      c-4
      f-4
      f
      c-5
      c

      f
      f
      c
      c
      d

      d
      a
      c
      d
      d

      a-5
      c-4
      f-4
      f
      c-5

      c
      f
      f
      c
      c
    }
  >>

  d8-5 a'-2 d-1 e-3 f-2 a-1
  f e-3 d-1 a d,-5 a'-1
  a, e' a b c e
  c b-3 a-1 e a,_5 e'-2
  d-5 a' d e f a
  f e d a d, a'

  a, e' a b c e
  c b a-1 e a,_5 e'_1
  f,_5 c' f g-3 a c
  a g f-1 c f, c'_1
  c,_5 g' c e_3 f g
  e d c_1 g c, g'_2

  f_5 c' f g-3 a c
  a g f c f, c'_1
  c, g' c d_3 e g
  e d c g c,_5 g'_2
  d'-5 a' d e-3 f a
  f e d-1 a d,-5 a'-1

  a,_5 e' a b-3 c e
  c b a-1 e a, e'
  d-5 a' d e f a
  f e d a d, a'-1
  a,_5 e' a b c e
  c b a e a, e'_1

  f,_5 c' f g a c
  a g f c f, c'_1
  c,_5 g' c d e g
  e d c g c, g'_2
  f_5 c' f g a c
  a g f c f, c'_1

  c,_5 g' c d e g
  e d c g c, g'_2
  d'-5 a' d e f a
  f e d a d, a'-1
  a,_5 e' a b c e

  c b a e a, e'_2
  d-5 a' d e f a
  f e d a d, a'-1
  a,_5 e' a b c e
  c b a e a, e'_1

  f-5 c' f g a c
  a g f e f, c'-1
  c,-5 g' c d e g
  e d c g c, g'-2
  f-5 c' f g a c

  a g f c f, c'-1
  c,-5 g' c d e g
  e d c g c, g'-2
  d-5 a' d e f a
  f e d-1 a d, a'-1

  a,_5 e' a b c e
  c b a-1 e a, e'_2
  d-5 a' d e f a
  f e d-1 a d, a'-1
  a, e' a b c e

  c b a-1 e a, e'
  f-5 c' f g a c
  a g f-1 c f, c'-1
  c,-5 g' c d e g
  e d c-1 g c, g'-2

  f-5 c' f g a c
  a g f-1 c f, c'-1
  c,-5 g' c d e g
  e d c-1 g c, g'-2
  d2-5

  <f-4 a-2 d-1>
  a,_5
  <c-4 e-2 b'-1>
  d
  <f a d>
  a,
  <c e b'>
}

dynamics = {
  s16\mp s16*7
  s2*4
  s16\< s16*6 s16\!
  s2*2
  s16\mp s16*7
  s2*4
  s16\< s16*6 s16\!
  s16\> s16*6 s16\!
  s2
  s16\p s16*7
  s16\< s16*22 s16\!
  s16\mf s16*7
  s16\< s16*6 s16\!
  s2
  s16\> s16*6 s16\!
  s16\p s16*7
  s2*4
  s16\< s16*6 s16\!
  s16\> s16*14 s16\!
  s16\p s16*11
  s16\< s16*10 s16\!
  s2.
  s16\> s16*10 s16\!
  s2.
  s16\< s16*10 s16\!
  s2.
  s16\> s16*10 s16\!
  s2.*2
  s16\< s16*10 s16\!
  s16\> s16*10 s16\!
  s2.*2
  s16\< s16*10 s16\!
  s16\> s16*10 s16\!
  s16\mf s16*11
  s2.*2
  s16\> s16*10 s16\!
  s16\mf s16*11
  s2.*2
  s16\> s16*10 s16\!
  s16\mf s16*11
  s2.
  s16\< s16*10 s16\!
  s16\> s16*10 s16\!
  s16\mf s16*11
  s2.
  s16\< s16*10 s16\!
  s16\> s16*10 s16\!
  s16\f s16*11
  s16\< s16*20 s16\! s16*2
  s2.*5
  s16\f s16*11
  s16 s16\< s16*13 s16\! s16*8
  s2.*4
  s16\> s16*10 s16\!
  s16\f s16*11
  s2.*3
  s16\f s16*11
  s16\< s16*10 s16\!
  s2.*2
  s16\f s16*11
  s2.*4
  s16\< s16*10 s16\!
  s2.
  s16\> s16*10 s16\!
  s16\pp s16*11
  s2.
  s16\< s16*10 s16\!
  s16\> s16*10 s16\!
  s16\mp s16*11
  s2.
  s16\< s16*10 s16\!
  s16\> s16*10 s16\!
  s16\p s16*11
  s2.
  s16\< s16*10 s16\!
  s16\> s16*10 s16\!
  s16\p s16*11
  s2.
  s16\< s16*10 s16\!
  s16\> s16*10 s16\!
  s16\p s16*11
  s2.
  s16\< s16*10 s16\!
  s16\> s16*10 s16\!
  s16\p s16*11
  s2.
  s16\< s16*10 s16\!
  s16\> s16*10 s16\!
  s16\mp s16*11
  s2.
  s16\< s16*10 s16\!
  s16\> s16*10 s16\!
  s16\mp s16*11
  s2.
  s16\< s16*10 s16\!
  s16\> s16*10 s16\!
  s16\pp s16*7
  s2*4
  s16\> s16*14 s16\!
  s16\pp s16*7
}

pedal = {
}

chordnames = \chordmode {
}

\include "../template_piano_solo.ly"
