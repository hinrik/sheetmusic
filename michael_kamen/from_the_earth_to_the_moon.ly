\version "2.14.2"

\header {
  title = "From the Earth to the Moon"
  subtitle = "from The HBO miniseries"
  composer = "Michael Kamen"
  tagline = ""
}

global = {
  \tempo "Moderate" 4 = 116
  \key bes \major
  \time 4/4
  \numericTimeSignature
  s1*3\break
  s1*4\break
  s1*5\bar "||"\break
  s1*3\break
  s1*3\break
  \time 3/2
  s2*3
  \time 4/4
  s1*2\break
  s1*4\break
  s1*4\break
  s1*2\bar "||"
  s1*2\break
  s1*3\break
  s1*4\break
  \time 5/4
  s4*5
  \time 4/4
  s1*3\break
  s1*4\break
  s1*4\bar "|."
}

upper = \relative c''' {
  \clef treble
  <<
    { s2 c2~ \voiceTwo c2. }
  \\
    { \times 4/5 { f,16( bes c f es^~ } es8. bes16 r4 es,4~ es2.) }
  >>
  r4 r4
  <c, es as>2.

  <c es as>2. r4
  r8 f'32( bes c f es4)
  <es, f c'>2~
  <es f c'>2. r4
  r8 <g,, bes es>4.~ <g bes es>2~

  <g bes es>4 <f bes d>2.
  <f bes d>1~
  q4 <f c'>2.~
  q1~
  q2 <es f bes>2

  <<
    {
      \times 2/3 { r4 c' f } \times 2/3 { c f c }
      \times 2/3 { f c f } \times 2/3 { c f c }
    }
  \\
    {
      bes1~
      bes
    }
  >>
  \times 2/3 { r4 r4 r8 c'16 d } es2~

  es4 d~ \times 2/3 { d c bes }
  g2^~ \times 2/3 { <es g> bes'4 }
  \times 2/3 { g8 f4~ } f2.~

  \times 2/3 { f4 r4 r8 c'16 d }
  <<
    {
      es1~
      es4 d c bes
      \voiceTwo
      <es g>2^~
      \voiceOne
      \times 2/3 { <es g> f4 }
      f1~
      \voiceTwo
      <f, f'>2^~
      \times 2/3 { <f f'>4 <bes bes'> <a a'> }
    }
  \\
    {
      s1
      f1
      g2 a
      c2~ \times 2/3 { c4 bes a8 bes }
    }
  >>

  <<
    {
      <g g'>1~
      q2 <f f'>
    }
  \\
    {
      \voiceOne
      <bes d>1
      \voiceTwo
      c
    }
  >>

  <f, bes d f>2~ \times 2/3 { q8 <es es'>4. d'8 c }
  <bes, d f bes>4. bes'16 bes \times 2/3 { <c, c'>2 <d d'>4 }
  <g bes es g>1~
  q4 <f f'> \times 2/3 { <f c' f>2~ q8 <f f'> }

  <f bes d f>1~ q2. r8 <c' c'>16 <d d'>
  <es bes' c es>1~
  q4 <d d'>~ \times 2/3 { <d d'> <c c'> <bes bes'> }

  <g es' f g>2~ \times 2/3 { q <bes bes'>4 }
  \times 2/3 { <g c g'>8 <f c' f>~ q2~ } q
  <<
    {
      r4 r8 <c' c'>16 <d d'> <es es'>2~
      q8 <d d'>4 <c c'>16 <bes bes'> \voiceTwo <c c'>4~ q8. <d d'>16
    }
  \\
    {
      bes,1~
      bes2
    }
  >>
  <d' f bes d>1~
  q4 <f, f'>4 q4. <bes, bes'>8
  <<
    {
      <bes' es g>1~
      \voiceTwo
      q2
    }
  \\
    {
      f2 es~
      es
    }
  >>
  <a, es' f a>2.
  <bes es g bes>2 <es f a c>
  <es g bes d> <es a c es>
  <f bes d f>2.~ \times 2/3 { q8 d' bes }

  <bes, d f>2 \times 2/3 { f''4 f f }
  <c f a c>1~
  q2 <bes bes'>
  %\repeat tremolo 8 <bes es g bes>8

  %\repeat tremolo 8 q8
  %\repeat tremolo 8 q8
  %\repeat tremolo 8 <bes d f bes>8
  <bes es g bes>1

  q
  q
  <bes d f bes>
  q1\fermata
}

lower = \relative c' {
  \clef treble
  <bes es f bes>1~
  q2. r4
  \clef bass
  r4 <es, bes'>2.

  <es bes'> r4
  \clef treble
  <<
    {
      r8 bes''16 c~ c4 bes2~
      bes2.
    }
  \\
    {
      r8 f4.~ \voiceOne f2_~
      f2. r4
      \clef bass
    }
  >>
  r8 c,4.~ c2~

  c4 bes2.
  <g d'>1~
  q4 <es c'>2.~
  <es c'>1~
  <es c'>2 <es c'>

  <bes' f'>1~
  <bes f'>
  \times 2/3 { <bes f' bes>4 q2~ }
  \times 2/3 { q4 q~ q8 q16 q }

  \times 2/3 { q4 q2~ } q
  \times 2/3 { <bes g' bes>4 q2~ } q
  <<
    {
      r8 <f' bes c>16 q q2~ \times 2/3 { q4 <f bes>8 }
    }
  \\
    {
      bes,1
    }
  >>

  <bes f' bes>1~ q4 c->
  <d g bes>1
  <<
    { r2 f' }
  \\
    { <es, g bes>1 }
  >>

  <d f c'>
  <<
    { \times 2/3 { c'2 d8 c } \voiceTwo bes2 }
  \\
    { <d, f>2 q }
  >>
  <g, f'>1
  <<
    { f'2 es' }
  \\
    { a,,1 }
  >>

  <bes f'>~
  q2 q
  <es, bes' es>1
  <es es'>2 \times 2/3 { <f es'>~ q8 bes' }

  <bes, f' bes>2~ \times 2/3 { q q8 q }
  q1
  <<
    {
      \times 2/3 { r4 f' c'8 d } es2~
      es4 d2.
      \times 2/3 { r4 bes, g' } c2
    }
  \\
    {
      bes,1~
      bes2 <bes f' bes>
      es,1
    }
  >>
  <d' bes' d>
  <g, f'>~

  q2 <a f'>
  <bes f' bes>1
  <bes d f>2 bes,
  <es bes' g'>1~

  %q2 \repeat tremolo 4 <es es'>8.
  %\repeat tremolo 4 q8 \repeat tremolo 4 q8
  %\repeat tremolo 4 q8 \repeat tremolo 4 q8
  %\repeat tremolo 8 <f f'>8
  q2 <es es'>2.
  q2 q2
  q2 q2
  <f f'>1

  q1
  <f es'>~
  q

  <<
    {
      s1
      es''4( d8 es) bes2
      g4( f2~ f8 es)
    }
  \\
    {
      <es, bes'>1~
      q~
      q
    }
  >>
  %\repeat tremolo 8 <bes' f' bes>8
  <bes' f' bes>1
  q1\fermata
}

dynamics = {
  s1\mp
  s1
  s16*4 s16\< s16*10 s16\!
  s16\> s16*14 s16\!
  s1*2
  s2 s2-"cresc."
  s1*4
  s2 s16\< s16*6 s16\!
  s16\f s16\> s16*29 s16\!
  s1\mf
  s1*2
  s16*4 s16\< s16*10 s16\!
  s2*3
  s1*3
  s2 s16\< s16*6 s16\!
  s1*6\f
  s16\> s16*14 s16\!
  s32*28 s32\< s32*2 s32\!
  s1*7
  s4 s16\< s16*10 s16\!
  s2\ff s16\> s16*6 s16\!
  s16\> s16*6 s16\! s16 s16\pp s16 s16*40\< s16\!
  s1\f
  s16\> s16*6 s16\! \times 2/3 { s4 s4\mf s4 }
  s16\< s16*14 s16\!
  s2 s16\> s16*5 s16\! s16-"sub."
  s1*2\p
  s16\< s16*14 s16\!
  s16*3\mf s16\> s16*11 s16\!
  s1\p
}

pedal = {
  s1-"(with pedal)"
}

chordnames = \chordmode {
}

\include "../template_piano_solo.ly"
