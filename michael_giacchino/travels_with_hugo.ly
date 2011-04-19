\version "2.12.2"

\header {
  title = "Travels With Hugo"
  subtitle = \markup { "from" \italic "Lost" }
  composer = "Michael Giacchino"
}

global = {
  \tempo 4 = 150
  \key c \major
  \time 4/4
  \numericTimeSignature
  s1*3\break
  s1*3\break
  s1*3\break
  s1*3\break
  s1*3\break
  s1*3\break
  s1*3\break
  s1*3\break
  s1
  \bar "||"
  \key g \major
  \tempo 4 = 100
  s1*2\break
  s1*3\break
  s1*3\break
  s1*3\break
  s1*2\break
  s1*2\break
  s1
  \bar "||"
  \key a \major
  s1
  s1*2\break
  s1
  \bar "||"
  \key b \major
  s1
  s1*2\break
  s1*2
  \bar "||"
  \key c \major
  \tempo "Rubato" 4 = 70
  s1\break
  s1*4\break
  s1*4\break
  s1*4\break
  s1*3
  \bar "||"
  \key f \major
  s1\break
  s1*4\break
  s1*4\break
  s1*4\break
  s1*4\break
  s1*4\break
  s1*4\break
  s1*4\break
  s1*4\break
  s1*4\break
  s1*4\break
  \bar "|."
}

upper = \relative c' {
  \clef treble
  e8-. r e-. r e-. r e-. r
  e-. r e-. r e-. r e-. r
  e-. r e-. r e-. r e-. r

  e-. r e-. r e-. r e-. r
  e-. r e-. r e-. r e-. r
  e-. r e-. r e-. r e-. r

  e-. r e-. r e-. r e-. r
  e-. r e-. r e-. r e-. r
  e-. r e-. r e-. r e-. r

  e-. r e-. r e-. r e-. r
  \acciaccatura a8 g'4.( cis,8~ cis2)
  R1
  % XXX: apparently a \break right before an \acciaccatura must appear here,
  % not in the global context
  \break

  \acciaccatura { gis8[ cis] } d4.( e8~ e2)
  R1
  \acciaccatura a,8 g'4.( cis,8~ cis2)

  R1
  \acciaccatura { gis8[ cis] } d4.( e8~ e2)
  R1
  \break

  \acciaccatura b8 bes'4.( e,8~ e2)
  R1
  \acciaccatura { b8[ e] } f4.( g8~ g2)

  R1
  \acciaccatura b,8 g'4.( cis,8~ cis2)
  R1
  \break

  \acciaccatura { gis8[ cis] } d4.( e8~ e2\fermata)
  R1*6
  r2 r16 d( c b c8-.) d16( b
  g1)

  g8. g16~ g8 g-.-> r2
  <b, d g>8. <b d g>16~ <b d g>8 <b d g>-.-> r2
  R1

  r2 r4 d,4\glissando
  d''2 r16 \acciaccatura cis8 d16( c b c8-.) d16-. b-.

  g2 r16 e( f e f8-.) e16( f
  g1)

  r8 \acciaccatura c8 d r16 \acciaccatura c8 d r16 \acciaccatura c8 d r8 d,,4\glissando
  d''2 r16 \acciaccatura dis8 e16( d cis d8-.) e16-. cis-.

  a2 r16 fis( g fis g8-.) fis16-. g-.
  a1

  r8 \acciaccatura dis8 e r16 \acciaccatura dis8 e r16 \acciaccatura dis8 e r8 fis,4\glissando
  fis'2 r16 \acciaccatura eis8 fis16( e dis e8-.) fis16-. dis-.

  b2 r16 gis16( a gis a8-.) gis16-. a-.
  b1

  r8 \acciaccatura f'8 fis r16 \acciaccatura f8 fis r16 \acciaccatura f8 fis r8 r4
  R1
  <<
    {
      e'4 c2.
      f4 c2.
      g'4 c,2 b4
      a f'2.
    }
  \\
    {
      e,1
      f
      e
      f
    }
  >>
  g4( c,2.)

  a'4( c,2) c4(
  d e2) c4(
  e f2.)
  <d bes'>4( <bes f'>2.)

  <c a'>4( <a f'>2.)
  <cis a'>4( <a e'>2.)
  <d a'>4( <a f'>2.)
  <d bes'>4( <bes f'>2.)

  <c a'>4( <a f'>2.)
  <d f>2 <d f>
  <e g>1
  e,4 c2.

  f4 c2.
  g'4 c,2 b4
  a f'2.
  g4 c,2.

  a'4 c,2.
  d4 e2 c4
  << { e f2. } \\ { <g, c>1 } >>
  <d' bes'>4 <bes f'>2.

  <c a'>4 <a f'>2.
  <cis a'>4 <a e'>2.
  <d a'>4 <a f'>2.
  <d bes'>4 <bes f'>2.

  <c a'>4 <a f'>2.
  <d f>2 <d f>
  <c g'>1
  e4 c2.

  f4 c2.
  g'4 c,2 b4
  a f'2.
  g4 c,2.

  a'4 c,2 c4
  d e2 c4
  << { e f2. } \\ { <g, c>1 } >>
  <d' bes'>4 <bes f'>2.

  <c a'>4 <a f'>2.
  <cis a'>4 <a e'>2.
  <d a'>4 <a f'>2.
  <d bes'>4 <bes f'>2.

  <c a'>4 <a f'>2.
  <d f>2 <d f>
  <c g'>1
  <<
    {
      e''4 c2.
      f4 c2.
      g'4 c,2 b4
      a4 f'2.
    }
  \\
    {
      e,1
      f
      e
      f
    }
  >>
  g4 c,2.

  a'4 c,2.
  d4 e2 c4
  <<
    {
      e f2.~
      % XXX: produces a harmless warning about clashing note columns
      \voiceTwo
      f2
    }
  \\
    {
      <g, c>1~
      % XXX: same as above
      \voiceTwo
      <g c>2
    }
  >>
  \clef bass
  <c,, e>2\fermata
}

lower = \relative c {
  \clef bass
  R1*2
  d4-. g-. b-. cis,-.

  e-. gis-. cis,-. e-.
  <e,, e'>1~
  <e e'>

  d''4-.g-. b-. b,-.
  e-. gis-. b,-. e-.
  <e,, e'>1~

  <e e'>
  d''8-. g-. b-. cis,-. e-. gis-. cis,-. e-.
  cis-. e-. gis-. cis,-. e-. gis-. cis,-. e-.

  d-. g-. b-. b,-. e-. gis-. b,-. e-.
  b-. e-. gis-. b,-. e-. gis-. b,-. e-.
  d-. g-. b-. cis,-. e-. gis-. cis,-. e-.

  cis-. e-. gis-. cis,-. e-. gis-. cis,-. e-.
  d-. g-. b-. b,-. e-. gis-. b,-. e-.
  b-. e-. gis-. b,-. e-. gis-. b,-. e-.

  f-. ais-. d-. e,-. g-. b-. e,-. g-.
  e-. g-. b-. e,-. g-. b-. e,-. g-.
  f-. ais-. d-. d,-. g-. b-. d,-. g-.

  d-. g-. b-. d,-. g-. b-. d,-. g-.
  d-. g-. b-. cis,-. e-. gis-. cis,-. e-.
  cis-. e-. gis-. cis,-. e-. gis-. cis,-. e-.

  <d, d'>4. <e e'>8~ <e e'>2\fermata
  <e e'>16-. <fis fis'>-. <g g'>-. <e e'>-. <fis fis'>-. <g g'>-. <e e'>-. <g g'>-. <e e'>-. <fis fis'>-. <g g'>-. <e e'>-. <fis fis'>-. <g g'>-. <e e'>-. <g g'>-.
  <e e'>-. <fis fis'>-. <g g'>-. <e e'>-. <fis fis'>-. <g g'>-. <e e'>-. <g g'>-. <e e'>-. <fis fis'>-. <g g'>-. <e e'>-. <fis fis'>-. <g g'>-. <e e'>-. <g g'>-.

  \improvisationOn
  e'16^"G" e e e~ e8. e16~ e8. e16 e^"Dm" e e e
  e16^"G" e e e~ e8. e16~ e8. e16 e^"Dm" e e e
  e16^"G" e e e~ e8. e16~ e8. e16 e^"Dm" e e e

  e16^"G" e e e~ e8. e16~ e8. e16 e^"Dm" e e e
  e16^"G" e e e~ e8. e16~ e8. e16 e^"Dm" e e e
  e16^"G" e e e~ e8. e16~ e8. e16 e^"Dm" e e e

  e16^"G" e e e~ e8. e16~ e8. e16 e^"Dm" e e e
  e16^"G" e e e~ e8. e16~ e8. e16 e^"Dm" e e e
  e16^"G" e e e~ e8. e16~ e8. e16 e^"Dm" e e e

  e8.-.->^"G" e16-.-> r4 r2
  e16^"G" e e e~ e8. e16~ e8. e16 e^"Dm" e e e

  e16^"G" e e e~ e8. e16~ e8. e16 e^"Dm" e e e
  e16^"G" e e e~ e8. e16~ e8. e16 e^"Dm" e e e

  e16^"G" e e e~ e8. e16~ e8. e16 e^"Dm" e e e
  e16^"A" e e e~ e8. e16~ e8. e16 e^"Em" e e e

  e16^"A" e e e~ e8. e16~ e8. e16 e^"Em" e e e
  e16^"A" e e e~ e8. e16~ e8. e16 e^"Em" e e e

  e16^"A" e e e~ e8. e16~ e8. e16 e^"Em" e e e
  e16^"B" e e e~ e8. e16~ e8. e16 e^"F♯m" e e e

  e16^"B" e e e~ e8. e16~ e8. e16 e^"F♯m" e e e
  e16^"B" e e e~ e8. e16~ e8. e16 e^"F♯m" e e e

  e16^"B" e e e~ e8. e16~ e8. e16 e^"F♯m" e e e
  \once \override TextScript #'script-priority = #5000
  e8-.->\fermata^"G" r8 r4 r2
  \clef treble
  \improvisationOff
  <c' g'>1

  <c g'>
  <c g'>
  <c f>
  g'

  <f g>
  <e g>
  <c a'>
  f2 f4 f

  f2 f4 f
  e2 e4 e
  f2 f4 f
  f2 f4 f

  f2 f4 f
  <d f>2. \clef bass f,8 d'
  <e, c'>1
  <c e>

  <c f>
  <c e>
  <c f>
  <c e>

  <c f>
  <c e>
  c2 d4 e
  <bes f'>1

  <a e'>
  <<
    {
      e'1
      f
    }
  \\
    {
      a,2. cis4
      d2. c4
    }
  >>
  <bes f'>1

  <a f'>
  <bes g'>2 <b f'>
  <c e>1
  <<
    {
      <e g>2 <e g>4 <e g>

      <f g>2 <f g>4 <f g>
      <e g>2 <e g>4 <e g>
      <f g>2 <f g>4 <f g>
      <e g>2 <e g>4 <e g>

      <f g>2 <f g>4 <f g>
      <e g>2 <e g>4 <e g>
      c2 d4 e
      f2 f4 f

      e2 e4 e
      e2 e4 cis
      f2 f4 f
      f2 f4 f

      f2 f4 f
    }
  \\
    {
      g,1

      g
      g
      g
      g

      g
      g
      f
      bes

      a
      a
      d2. c4
      bes1

      a
    }
  >>
  <bes f'>2 <b f'>
  <c e>1
  <c' g'>

  <c g'>
  <c g'>
  <c f>
  <c e>

  <c f>
  <c e>
  c2 d4 e~
  e2 <c,, g'>\fermata
}

dynamics = {
  s1*10\p
  s1*14\mp
  s1\mf
  s32\p s32 s32\< s32*58 s32\! s32 s32\ff
  s1*23
  s1*8\p
  s1*24\p
  s1*25\mp
}

pedal = {
}

chordnames = \chordmode {
}

\include "../template_piano_solo.ly"
