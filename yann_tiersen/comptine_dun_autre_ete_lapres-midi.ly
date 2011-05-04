\version "2.12.2"

\header {
  title = "Comptine d'un autre été: l'après-midi"
  subtitle = \markup { "from" \italic "Amélie" }
  composer = "Yann Tiersen"
}

global = {
  \tempo 4 = 100
  \key e \minor
  \time 4/4
  \numericTimeSignature
  s1*4\break
  s1*4\break
  s1*4\break
  s1*4\break
  s1*2\break
  s1*2\break
  s1*3\break
  s1*4\break
  s1*4\break
  s1*2\bar "||"
  s1\break
  s1*2\break
  s1*2\break
  s1*2\break
}

baz = {
  e'4.-3( b8-1~ b2)
  d4.-2( b8~ b2)
  fis'4.-4( b,8-1~ b2)
  fis'4.-4( a,8-1~ a2)

  <b-2 g'-5>4.( <g-1 e'-4>8~ <g e'>2)
  <b-2 g'-5>4.( <g-1 d'-3>8~ <g d'>2)
  <b-2 fis'-5>4.( <fis-1 d'-3>8~ <fis d'>2)
  <a-1 fis'-5>4.( <fis-1 d'-3>8~ <fis d'>2)
}

hlagh = {
  b16-1-> e-2 b'-5 b, e b' b, e b' b, e b' b,-1->( e-2 c-1-> e-2
  b-1->) d-2 b'-5 b, d b' b, d b' b, d b' b,-1->( d-3 a-1-> d-3
  fis,-1->) b-2 fis'-5 fis, b fis' fis, b fis' fis, b fis' fis,-1->( b-2 g-1-> b-2
}

quux = {
  r8 g16-1( fis-2 g8 b16-3 c b2)
  r8 fis16-2( g-3 fis8 g16-3 a g2)
  r8 fis16-2( e fis8 b16-4 c b2)
  r8 fis16-2( e fis2.)
}

upper = \relative c'' {
  \clef treble
  R1*4

  \repeat volta 2 { \quux }
  \baz
  \repeat volta 2 { \hlagh }
  \alternative {
    { a16-1->) d-2 a'-5 a, d a' a, d a' a, d a' a,-1->( d-2 g,-1-> d'-2 }
    { a16-1->) d-2 a'-5 a, d a' a, d a' a, d a' a, d a'8 }
  }
  \repeat volta 2 { \quux }
  \baz
  \hlagh
  a16-1->) d-2 a'-5 a, d a' a, d a' a, d a' a,-1->( d-2 g,-1-> d'-2
  b16-1->) e-2 b'-5 b, e b' b, e b' b, e b' b,-1->( e-2 c-1-> e-2
  b-1->) d-2 b'-5 b, d b' b, d b' b, d b' b,-1->( d-3 a-1-> d-3
  fis,-1->) b-2 fis'-5 fis, b fis' fis, b fis' fis, b fis' fis,-1->( b-2 g-1-> b-2
  a16-1->) d-2 a'-5 a, d a' a, d a' a, d a' a, d a'-5 g^\markup { \finger "4-5" }
  <g,-1 b-2 e-4>1
}

foo = {
  \relative c' {
    <<
      {
        e8-1 b e b e b e b
        d-1 b d b d b d b
        d-1 b d b d b d b
        d-1 a d a d a d a
      }
    \\
      {
        e4-5 g-4 e g
        d-5 g-4 d g
        d-5 fis-4 d fis
        d-5 fis-4 d fis
      }
    >>
  }
}

lower = \relative c' {
  \clef bass
  \foo
  \repeat volta 2 { \foo }
  \foo
  \foo
  \repeat volta 2 {
    <<
      {
        e8 b e b e b e b
        d b d b d b d b
        d b d b d b d b
      }
    \\
      {
        e,4 g e g
        d g d g
        d fis d fis
      }
    >>
  }
  \alternative {
    {
      <<
        { d'8 a d a d a d a }
      \\
        { d,4 fis d fis }
      >>
    }
    {
      <<
        { d'8 a d a d a d a }
      \\
        { d,4 fis d fis }
      >>
    }
  }

  \repeat volta 2 { \foo }
  \foo
  \foo
  \foo
  \relative c' {
    <<
      {
        e8-1 b e b e b e b
        d-1 b d b d b d b
        d-1 b d b d b d b
        d-1 a d a d a d4
      }
    \\
      {
        e,4-5 g-4 e g
        d-5 g-4 d g
        d-5 fis-4 d fis
        d-5 fis-4 d2
      }
    >>
  }
  <e-5 b'-2 e-1>1
}

dynamics = {
  s1\p
  s32*31\< s32\!
  s1
  s32*31\> s32\!

  \repeat volta 2 {
    s8 s8\mf s2.
    s8\< s8 s8*2\!\> s8\! s8*3
    s8\< s8 s8*2\!\> s8\! s8*3
    s32*31\> s32\!
  }

  s1\p
  s32*31\< s32\!
  s1
  s32*31\> s32\!

  s1\mf
  s32*31\< s32\!
  s1
  s32*31\> s32\!

  \repeat volta 2 {
    s16*3 s16\mf s16*12
    s32*31\< s32\!
    s1
  }
  \alternative {
    { s32*31\> s32\! }
    { s32*15\> s32\! s16 s16-"Ralentir..." s16*6 }
  }

  \repeat volta 2 {
    s16*3 s16\p s16*12
    s32*31\< s32\!
    s1
    s32*31\> s32\!
  }

  s16*3 s16\p s16*12
  s32*31\< s32\!
  s1
  s32*31\> s32\!

  s16*3 s16\mf s16*12
  s32*31\< s32\!
  s1
  s32*31\> s32\!

  s16*3 s16\p s16*12
  s32*31\< s32\!
  s16*3 s16\mf s16*12
  s32*31\> s32\!

  s16*3 s16\p s16*12
  s32*31\< s32\!
  s16*3 s16\mf s16*12
  s4-"Ralentir..." s32*13\> s32*2\! s32*9-"Note... à... note..."

  s1\pp
}

pedal = {
}

chordnames = \chordmode {
}

\include "../template_piano_solo.ly"
