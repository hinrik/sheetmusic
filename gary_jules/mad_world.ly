\version "2.12.2"

\header {
  title = "Mad World"
  subtitle = \markup { "from" \italic "Donnie Darko" }
  composer = "Gary Jules"
  tagline = ""
}

global = {
  \tempo 4 = 88
  \key c \minor
  \time 4/4
  \numericTimeSignature
  s1*4\bar "||"\break
  s1*3\break
  s1*3\break
  s1*3\break
  s1*3\break
  s1*3\break
  s1\bar "||"
  s1*2\break
  s1*3\break
  s1*3\break
  s1*4\break
  s1*4\bar "|."
}

upper = \relative c'' {
  \clef treble
  as8 c g as f g es d
  r2 r4 r8 as'~
  as c g as f g as bes~
  bes1

  \clef bass
  \repeat volta 2 {
    f,4 <as c> f <as c>
    as <c es> as <c es>
    es, <g bes> es <g bes>

    bes <d f> bes <d f>
    es, <as c> es <as c>
    as <c es> as <c es>

    es, <g bes> es <g bes>
    bes <d f> bes <d f>
    f, <as c> f <as c>

    as <c es> as <c es>
    es, <g bes> es <g bes>
    bes <d f> bes <d f>

    f, <as c> f <as c>
    as <c es> as <c es>
    es, <g bes> es <g bes>

    R1
    \clef treble
    <as' c>4 f <as c> <f as>
    <f bes d> <f bes d>~ <f bes d>8 f bes f~

    f4 <as c>8 f~ f f <as c>4
    f4 <bes d>8 f~ f f <bes d>4
    f8 f <as c> f~ f4 <as c>8 f

    <bes d>4 <bes d>~ <bes d>8 f <bes d>4
    f4 <as c>8f~ f f <as c> f
    f1

    <<
      {
        c'8 c4. as2
        s1
        r8 c4. as4. bes8~
        bes1
      }
    \\
      {
        as8 as g g f f es d~
        d2. r8 as'~
        as as g g f f es d~
        es1
      }
    >>
  }

  <<
    {
      c'8 c4. as2
      s1
    }
  \\
    {
      as8 as g g f f es d~
      d1
    }
  >>
  as'8 as g g <c, f as> f es <d f>~
  <d f>1
}

lower = \relative c {
  \clef bass
  f4 <as c> f <as c>
  bes <d f> bes <d f>
  f, <as c> f <as c>
  bes <d f> bes <d f>

  \repeat volta 2 {
    f,,2. g4
    as2 c
    <es g>1

    <d bes'>
    f,2. g4
    as2 c

    es1
    d
    f,2. g4

    as2 c
    <es g>1
    <d bes'>

    f,2. g4
    as2 bes4 c
    es2 g

    bes1
    f4 <as c> f <as c>
    bes <d f> bes <d f>

    f, <as c> f <as c>
    bes <d f> bes <d f>
    es, <as c> es <as c>

    bes <d f> bes <d f>
    es, <as c> es <as c>
    <bes d>1

    f4 <as c> f <as c>
    bes <d f> bes <d f>
    f, <as c> f <as c>
    bes <d f> bes <d f>
  }

  f, <as c> f <as c>
  bes <d f> bes <d f>
  f, <as c> f <as c>
  <bes, bes'>1\fermata
}

dynamics = {
}

pedal = {
}

chordnames = \chordmode {
}

\include "../template_piano_solo.ly"
