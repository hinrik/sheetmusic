\version "2.12.2"

\header {
  title = "Back To The Future"
  composer = "Alan Silvestri"
}

global = {
  \tempo "Majestically" 4 = 76
  \key des \major
  \time 4/4
  \numericTimeSignature
  s1*2
  \time 2/4
  s2\break
  \time 4/4
  s1*3
  \time 2/4
  s2\break
  \time 4/4
  s1*2
  \bar "||"
  \time 2/2
  \tempo \markup {
    \concat {
      "Intensely "
      \smaller \general-align #Y #DOWN \note #"4" #1
      " = "
      \smaller \general-align #Y #DOWN \note #"2" #1
    }
  }
  s1*2\break
  s1*4\break
  s1*4\break
  s1*4\break
  s1*4\break
}

upper = \transpose c des \relative c' {
  \clef treble
  r4 c g'4. c8
  bes4.. a32 g \times 2/3 { a4 g f }
  <<
    {
      g2-^~
      g1
      s1
      bes'4.. a32 g \times 2/3 { <f a>4 g f }
    }
  \\
    {
      <c, e>4~ <c e>8. <c e>32 <c e>
      <c e>1
      r4 <c c'>4 <g' g'>4. <c c'>8
      <bes d f>2 <a c>
    }
  >>
  <g b d g>2-^~

  <g b d g>1
  \repeat tremolo 4 { g16 g, } \repeat tremolo 4 { g' g, }
  <c e g>2
  <g c>
  <a d fis>~ <a d fis>4. g'16 a

  \times 2/3 { <c, e g>4 <c e> c } <a d fis>4. g'16 a
  <b, d g>4 <b d> <b e g> <g' b d>
  <e g d'>2 <e a cis>4. b'16 cis
  <fis, a d>1

  d8 g d g c a d g
  <f, a c>2 <c f>
  <d g b>~ <d g b>4. a'16 b
  \times 2/3 { <f a c>4 <f a> f } <d g b>4. a'16 b

  <e, g b>4 <e g> <e a c> <c' e g>
  <a c g'>2 <a d fis>4. e'16 fis
  <b, d g>1~
  <b d g>
}

lower = \transpose c des \relative c {
  \clef bass
  r4 c g'4. c8
  bes4 g, a bes
  <c, c'>2^^

  \repeat tremolo 4 { c16 c' } <c, c'>8 <c c'> <c c'> <c c'>
  R1
  <es es'>2 <f f'>
  <g g'>4^^
  \repeat tremolo 2 { c,,16 g'' }

  \repeat tremolo 4 { g, g' } \repeat tremolo 4 { g, g' }
  \repeat tremolo 4 { g, g' } \repeat tremolo 4 { g, g' }
  \repeat tremolo 4 { c, c' } \repeat tremolo 4 { c, c' }
  \repeat tremolo 4 { c, c' } \repeat tremolo 4 { c, c' }

  \repeat tremolo 4 { c, c' } \repeat tremolo 4 { c, c' }
  r4 b2 e,4
  r4 a~ a8 a4 a8
  \repeat tremolo 4 { d,16 d' } \repeat tremolo 4 { d, d' }

  d,4^^-. r4 r2
  \repeat tremolo 4 { f16 f' } \repeat tremolo 4 { f, f' }
  \repeat tremolo 4 { f, f' } \repeat tremolo 4 { f, f' }
  f,4^^-. r4 r4 f

  r4 e2 a4
  r4
  d,~ d8 d4 d8
  \repeat tremolo 4 { g,16 g' } \repeat tremolo 4 { g, g' }
  \repeat tremolo 4 { g, g' } \repeat tremolo 4 { g, g' }
}

dynamics = {
  s4 s4*3\f
  s1 s2 s1*3
  s4 s4-\markup { \dynamic "p" "sub." }
  s4 s4*3-"cresc."
  s8*7\< s8\!
  s1*5
  s8\fp s8*6\< s8\!
  s8*7\< s8\!
  s1*5
  s8\fp s8\< s8*13 s8*2\!
  s1\mf
}

pedal = {
}

chordnames = \chordmode {
}

\include "../template_piano_solo.ly"
