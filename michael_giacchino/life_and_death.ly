\version "2.14.2"

\header {
  title = "Life and Death"
  subtitle = \markup { "from" \italic "Lost" }
  composer = "Michael Giacchino"
  tagline = ""
}

global = {
  \tempo 4 = 48
  \key bes \major
  \time 4/4
  \numericTimeSignature
  s1*4\break
  s1*5\break
  s1*4\break
  s1*4\break
  s1*4\break
  s1*4\break
  s1*4\break
  s1*5\bar "|."
}

upper = \relative c' {
  \clef treble
  R1
  r4 d8 f2 r8
  R1
  r4 d'8 f2 r8
  R1*5

  f,4( d8 f~ f d f d
  f4 a8 f~ f2)
  f4( d8 f~ f d f d
  f4 a8 f~ f2)

  f4( es8 f~ f es f es
  f4 es8 d~ d es f4) 
  f4( es8 f~ f es f es
  d2 c)

  f4( d8 f~ f d f d
  f4 a8 f~ f2)
  f4( d8 f~ f d f d
  f4 a8 f~ f2)

  f'4( es8 f~ f es f es
  f4 es8 d~ d es f4) 
  f,4( es8 f~ f es f es
  d2 c)

  <f f'>4( <d d'>8 <f f'>~ <f f'> <d d'> <f f'> <d d'>
  <f f'>4 <a a'>8 <f f'>~ <f f'>2)
  <f f'>4( <d d'>8 <f f'>~ <f f'> <d d'> <f f'> <d d'>
  <f f'>4 <a a'>8 <f f'>~ <f f'>2)

  f'4( es8 f~ f es f es
  f4 es8 d~ d es f4)
  f4( es8 f~ f es f es
  d2 c,)
  \ottava #-1
  <bes, d f bes>1
  \ottava #0
}

lower = \relative c {
  \clef bass
  <d f bes>1
  <d f a>
  <d f bes>
  <d f a>

  <es g bes>
  <d f bes>
  <es g bes>
  <d g bes>2 <c f a>~
  <c f a>1

  <d f bes>1
  <d f a>
  <d f bes>
  <d f a>

  <es g bes>
  <d f bes>
  <es g bes>
  <d g bes>2 <c f a>

  <bes d f bes>1
  <a d f a>
  <bes d f bes>
  <a d f a>

  <es'' g bes>
  <d f bes>
  <es, g bes>
  <d f bes>2 <c f a>

  <bes d f bes>1
  <a d f a>
  <bes d f bes>
  <a d f a>

  <es'' g bes>
  <d f bes>
  <es g bes>
  <d, f bes>2 <c f a>
  <bes,, bes'>1
}

dynamics = {
  s1\p
}

pedal = {
}

chordnames = \chordmode {
}

\include "../template_piano_solo.ly"
