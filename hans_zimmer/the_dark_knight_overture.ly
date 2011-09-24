\version "2.12.2"

\header {
  title = "The Dark Knight Overture"
  subtitle = \markup { "from" \italic "The Dark Knight" }
  composer = "Hans Zimmer and James Newton Howard"
  arranger = "Arranged by Jack Dolman"
  tagline = ""
}

global = {
  \tempo "Mysteriously" 4 = 96
  \key c \major
  \time 4/4
  \numericTimeSignature
  s1*2\break
  s1*2\break
  s1*2\break
  s1*2\break
  s1*2\break
  s1*2\break
  s1*2\break
  s1*2\break
  s1*2\break
  s1*2\break
}

upper = \relative c' {
  \clef treble
  R1*3
  d1
  f~
  f~
  f
  R1*2
  <<
    {
      a2( d

      d1)
      s1

      R1
      g,2( c

      c1)
      s1

      R1
      d,2( d'

      d1)
      s1
    }
  \\
    {
      s1

      r2 e,(
      <d f>1)

      s1*2

      r2 e~(
      <b e>1)

      s1*2

      r2 e(
      f1)
    }
  >>
}

lower = \relative c {
  \clef bass
  f16 a, d a f' a, d a f' a, d a f' bes, d bes
  f' a, d a f' a, d a f' a, d a f' bes, d bes

  f' a, d a f' a, d a f' a, d a f' bes, d bes
  f' a, d a f' a, d a f' a, d a f' bes, d bes

  f' a, d a f' a, d a f' a, d a f' bes, d bes
  f' a, d a f' a, d a f' a, d a f' bes, d bes

  f' a, d a f' a, d a f' a, d a f' bes, d bes
  f' a, d a f' a, d a f' a, d a f' bes, d bes

  f' a, d a f' a, d a f' a, d a f' a, d a
  f' a, d a f' a, d a f' a, d a f' a, d a

  f' bes, d bes f' a, d a f' a, d a f' a, d a
  f' bes, d bes f' a, d a f' a, d a f' a, d a

  f' a, d a f' a, d a f' a, d a f' a, d a
  f' a, d a f' a, d a f' a, d a f' a, d a

  f' a, d a f' a, d a f' a, d a f' a, d a
  f' a, d a f' a, d a f' a, d a f' a, d a

  f' bes, d bes f' bes, d bes f' bes, d bes f' bes, d bes
  f' bes, d bes f' bes, d bes f' bes, d bes f' bes, d bes

  f' a, d a f' a, d a f' a, d a f' a, d a
  f' a, d a f' a, d a f' a, d a f' a, d a
}

dynamics = {
  s1-\markup { \dynamic "pp" "legato" }
  s1*2
  s16\p s16*30\< s16\!
  s16\mp s16*30\> s16\!
  s1*2\pp
  s16*15\< s16\!
  s16\mp s16*14\> s16\!
  s1*2
  s16*15\< s16\!
  s16*15\> s16\!
  s1*2
  s16*15\< s16\!
  s1
  s16*15\< s16\!
}

pedal = {
  \set Dynamics.pedalSustainStyle = #'mixed
  s16\sustainOn s16*3 s16\sustainOff\sustainOn s16*3 s16\sustainOff\sustainOn s16*3 s16\sustainOff\sustainOn s16*3
}

chordnames = \chordmode {
}

\include "../template_piano_solo.ly"
