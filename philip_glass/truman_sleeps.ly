\version "2.14.1"

\header {
  title = "Truman Sleeps"
  subtitle = \markup { "from" \italic "The Truman Show" }
  composer = "Philip Glass"
  tagline = ""
}

global = {
  \tempo 4 = 100
  \key c \major
  \time 4/4
  \numericTimeSignature
  s1*4\break
  s1*4\break
  s1*3\break
  s1*4\break
  s1*4\break
  s1*4\break
  s1*4\break
  s1*4\break
  s1*4\break
  s1*5\break
  s1*4\break\bar "|."
}

upper = \relative c' {
  \clef treble
  R1*4

  <c f>4-> r8 <c f>4-> r8 <c f>4->
  <cis f>4-> r8 <cis f>4-> r8 <cis f>4->
  es4-> r8 es4-> r8 es4->
  <c e>4-> r8 <c e>4-> r8 <c e>4->

  r4 <f f'> <g g'> <as as'>
  <bes bes'>2 <c c'>4( <des des'>
  <c c'>1)
  \clef bass

  c,,,1
  \clef treble
  r4 <f'' f'> <g g'> <as as'>
  <bes bes'>2 <c c'>4( <des des'>
  <es es'>1)

  <e e'>
  r4 <c as'> <bes g'> <as f'>
  <as f'>1
  <c es>

  <c e>
  r4 <c as'>4 <bes g'> <as f'>
  <as f'>1
  <as c>

  <g c>
  r4 <f f'> <g g'> <as as'>
  <bes bes'>2 <c c'>4( <des des'>
  <c c'>1)
  \clef bass

  c,,,
  \clef treble
  r4 <f'' f'> <g g'> <as as'>
  <bes bes'>2 <c c'>4( <des des'>
  <es es'>1)

  <e e'>
  <as, des f>4->( q q q)
  <as des e>->( q q q)
  <g bes es>( q q q)

  <g bes des>( q q q)
  <as c es>( q q q)
  <as b es>( q q q)
  <d, bes'>( q q q)
  <d as'>( q q q)

  d8 f d <bes' d> <f bes> d f4
  <e bes'>8 des' bes4. g8 e g
  <d f bes>1~
  q
}

lower = \relative c {
  \clef bass
  f8-> as c f,->( as c) f,->( as)
  f->( as cis) f,->( as cis) f,->( as)
  es->( as c) es,->( as c) es,->( as)
  e->( g c) e,->( g c) e,->( g)

  f->( as c) f,->( as c) f,->( as)
  f->( as cis) f,->( as cis) f,->( as)
  es->( as c) es,->( as c) es,->( as)
  e->( g c) e,->( g c) e,->( g)

  <<
    {
      f8 as c f, as c f, as
      f as cis f, as cis as cis
      es, as c es, as c es, as

      e g c e, g c e, g
      f as c f, as c f, as
      f as f as f as cis as
      es as c es, as c es, as

      e g c e, g c e, g
      f as c f, as c f, as
      f as cis f, as cis as cis
      es, as c es, as c as c

      e, g c e, g c e, g
      f as c f, as c f, as
      f as cis f, as cis as cis
      es, as c es, as c es, <as c>

      e g c e, g c e, <g c>
      f as c f, as c f, as
      f as cis f, as cis f, as
      es as c es, as c es, as

      e g c e, g c e, g
      f as c f, as c f, as
      f as cis f, as cis f, cis'
      es, as c es, as c es, as

      e g c e, g c e, g
      <f as cis>4->( q q q)
      <e as cis>->( q q q)
      <es g bes>( q q q)

      <es g cis>( q q q)
      <c es as>( q q q)
      <b es as>( q q q)
      <f bes f'>( q q q)
      <f as f'>( q q q)

      bes,8 f' bes d f bes4.
      bes,8 des e g bes2
      bes,,8 f' bes2.~
      bes1
    }
  \\
    {
      f1
      cis'
      as

      s
      f
      cis'
      as

      c
      f,
      cis'
      as

      c
      f,
      cis'
      as

      c
      f,
      cis'
      as

      s
      f
      cis'
      as

      c
    }
  >>
}

dynamics = {
  s1\mp
}

pedal = {
}

chordnames = \chordmode {
}

\include "../template_piano_solo.ly"
