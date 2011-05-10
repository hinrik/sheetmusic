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
}

pedal = {
}

chordnames = \chordmode {
}

\include "../template_piano_solo.ly"
