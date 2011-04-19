\version "2.12.2"

\header {
  title = "Win One for the Reaper"
  subtitle = \markup { "from" \italic "Lost" }
  composer = "Michael Giacchino"
}

global = {
  \tempo 4 = 70
  \key bes \major
  \time 4/4
  \numericTimeSignature
  s1*25
  \bar "|."
}

upper = \relative c' {
  \clef treble
  R1*3
  r4 d4 f2
  \break

  g2. r4
  bes2. r4
  g2. r4
  g2 r2
  \break

  \repeat volta 2 {
    f4( d8 f~ f d f d
    f4 a8 f~ f2)
    f4( d8 f~ f d f d
    f4 a8 f~ f2)
    \break

    g4( es8 f~ f es f es
    f4 es8 d~ d es f4)
    g4( es8 f~ f es f es
    d2 c2)
  }
  \break

  f'4( d8 f~ f d f d
  f4 a8 f~ f2)
  f4( d8 f~ f d f d
  f4 a8 f~ f2)
  \break

  g4( es8 f~ f es f es
  f4 es8 d~ d es f4)
  g4( es8 f~ f es f es
  d2 a')
  bes1\fermata
}

sadchords = {
  <d f bes>1
  <d f a>
  <d f bes>
  <d f a>

  <es g bes>
  <d f bes>
  <es g bes>
  <d g bes>2 <c f a>
}

lower = \relative c {
  \clef bass
  \sadchords
  \repeat volta 2 { \sadchords }

  \relative c' {
    #(set-octavation 1)
    \sadchords
    #(set-octavation 0)
    bes,,1\fermata
  }
}

dynamics = {
}

pedal = {
}

chordnames = \chordmode {
}

\include "../template_piano_solo.ly"
