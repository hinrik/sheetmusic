\version "2.12.2"

\header {
  title = "There's No Place Like Home"
  subtitle = \markup { "from" \italic "Lost" }
  composer = "Michael Giacchino"
  arranger = "Arranged by Young-Ah Hauser"
}

global = {
  \tempo 4 = 60
  \key d \major
  \time 4/4
  \numericTimeSignature
  s1*4\break
  s1*6\break\bar "||"
  s1*4\break
  s1*4\break
  s1*4\break
  s1*4\break\bar "||"
  s1*4\break
  s1*3\bar "|."
}

upper = \relative c'' {
  \clef treble
  R1*2
  <d-2> e4 d
  fis8 g g4 <cis,-2>2

  <fis-4>8 g g4 <e-2>2
  fis8 g g4 a2
  <d,-1>2 e4 d
  <cis'-5>8 b a4 <cis,-1>2
  <d'-4>2 e4 d
  b2 d4 cis

  <fis,,,-1 a-2 d-5>2 <a-1 e'-5>4 d
  <a-1 cis-2 fis-4>8 g' g4 cis,2
  <b-1 e-\tweak #'extra-offset #'(-1 . 0)-3 fis-4>8 g' g4 <b, e>2
  <b-1 fis'-3>8 <e-2 g-4> <e g>4 <e a>2

  <fis,-1 a-2 d-5>2 <a-1 e'-5>4 <a d>
  <cis-1 a'-3 cis-5>8 b' <cis, a'>4 cis2
  <e-1 g-2 d'-5>2 <g-1 b-3 e-5>4 <g-1 d'-5>
  <g-1 b-3>2 <g d'>4 <g cis>

  <<
    {
      <d'-5>2 e4 d
      <fis-5>8 g g4 <cis,-3>2
      <fis-5>8 g g4 e2
      <fis-4>8 g g4 <a, a'>2

      d2 <e-5>4 <d-5>
      <cis'-5>8 <b-4> <a-5-3>4 cis,2
      <g'-2 d'-5>2 <e-1 g-2 b-3 e-5>4 <d-1 g-2 b-3 d-5>
      <b-1 b'-5>2 <d-1 d'-5>4 <cis-1 cis'-5>
    }
  \\
    {
      <d,-1 fis-2>8 <e-1> e fis <fis a> a <fis a>4
      <fis-1>4 fis8 <a-1> <a-1> b <a cis>4
      <b-2>8 <g-1> g <b-2> cis b g4
      <a-1>8 b b <cis-2> cis <e-3> e g

      <d-3 fis-5> cis cis <b-2-1> b a <fis-2>4
      <cis'-1>8 <fis-2> fis <a,-1> a b <a cis>4
      <d-1>8 <cis-2> cis b r2
      <g'-4>8 b, b <cis-1> <cis-\tweak #'extra-offset #'(-0.8 . 0)-1> <d-1> <e-2>4
    }
  >>

  d,8 e e fis fis a a4
  <cis,-1>8 <fis-2> <fis-1> a a b cis4
  g8 b b cis cis b g4
  <g-1>8 <b-2> b cis cis e e4

  d'1
  d
  <d d'>1\fermata
}

lower = \relative c {
  \clef bass
  <d fis a>1
  <cis fis a>

  <d fis a>
  <cis fis a>
  <e g b>
  <a, e' a>

  <d fis a>
  <cis fis a>
  <e g b>
  <e g a>

  <d,-5 a'-2 d-1>8 <e'-3> <e-4> fis <d fis> a' a4
  <fis,-5 cis'-2>8 <fis'-1> <fis-3> <a-2> <fis a> b <cis-2>4
  <e,,-5 b'-2 e-1>8 <g'-2> g <b-1> <g-4 cis-2> <b-1> <e,-5 g-3>4
  <a,-5 e'-2 g-1>8 <b'-3> <b-4> cis cis e e g

  <d,,-5 a'-2 d-1> <cis''-2> cis <b-1> b a fis4
  <fis,-5 cis'-2 fis-1>8 <fis'-3> <fis-4> <a-3> a b cis4
  <e,-5 g-4 d'-1>8 <cis'-3> cis <b-1> <e, g b> a <e g>4
  <a,-5 e'-2 g-1>8 <b'-3> <b-4> cis <a cis> d e4

  <d,,-5 a'-2 d-1>8 <e'-3> <e-4> fis <d fis> a' <d, fis a>4
  <fis,-5 cis'-2>8 <fis'-1> <fis-3> <a-2> <fis a> b <fis-5 a-4 cis-2>4
  <e,-5 b'-2 e-1>8 <g'-2> g <b-1> <g-4 cis-2> <b-1> <e,-5 g-3>4
  <a,-5 e'-2 g-1>8 <b'-3> <b-4> cis <a cis> e' e g

  <d,,-5 a'-2 d-1> <cis''-2> cis <b-1> <d,-5 fis-3 b-1> a'-2 <fis-3 a-2>4
  <fis,-5 cis'-2>8 <fis'-1> <fis-3> <a-2> <fis a> b <fis-5 a-4 cis-2>4
  <e,-5 b'-2 e-1>8 <cis''-2> cis <b-1> <e, g b> a <e g b>4
  <a,-5 e'-2 g-1>8 <b'-3> <g-5 b-3> <cis-2> <a-5 cis-2> <b-4 d-1> <cis-3 e-2>4

  <d,-4>2 e4 d
  fis8 g g4 <cis,-4>2
  <fis-2>8 g g4 <e-4>2
  fis8 g g4 a2

  #(set-octavation 1)
  r8 cis' cis b~ b2
  r8 cis cis b~ b2
  #(set-octavation 0)
  d,,,1\fermata
}

dynamics = {
  s1*26\mp
  s1*4\pp
  s1*3\ppp
}

pedal = {
}

chordnames = \chordmode {
}

\include "../template_piano_solo.ly"
