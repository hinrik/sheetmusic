\version "2.14.2"

\header {
  title = "Back To The Future"
  subtitle = "End Credits"
  composer = "Alan Silvestri"
  tagline = ""
}

global = {
  \tempo "Majestically" 4 = 76
  \key c \major
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
}

notes = \relative c' {
  r4 c g'4. c8
  <<
    { bes4.. a32 g \times 2/3 { a4 g f } }
  \\
    { r4 g, a bes }
  >>
  <g c e c'>4~\downbow q8. q32\downbow q\upbow

  q1\downbow
  r4 <c'\2> g'4. c8
}

chordnames = \chordmode {
  s1*2
  c1.
}

\include "../template_ukulele_low_g.ly"
