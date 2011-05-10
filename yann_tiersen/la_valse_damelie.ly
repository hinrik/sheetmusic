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
  s2*4\bar "||"
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
  \times 2/3 { d8) e-5 d } \times 2/3 { c b c }
}

lower = \relative c {
  \clef bass
  d2-5
  <f-4 a-2 d-1>
  a,-5
  <c-4 e-2 b'-1>
  d2
  <f a d>
}

dynamics = {
  s2\mp
  s2*4
  s16*7\< s16\!
  s2*2
  s2\mp
  s2*4
  s16*7\< s16\!
  s16*7\> s16\!
  s2
  s2\p
  s16*23\< s16\!
  s2\mf
  s16*7\< s16\!
  s2
  s16*7\> s16\!
  s2\p
  s2*4
  s16*7\< s16\!
  s16*7\> s16\!
  s2.\p
  s16*11\< s16\!
}

pedal = {
}

chordnames = \chordmode {
}

\include "../template_piano_solo.ly"
