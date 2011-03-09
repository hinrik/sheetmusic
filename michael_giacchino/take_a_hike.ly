\version "2.12.2"

\header {
  title = "Take a Hike"
  subtitle = \markup { "from" \italic "Lost" }
  composer = "Michael Giacchino"
  instrument = "Piano solo"
}

global = {
  \tempo 4 = 105
  \key bes \major
  \time 4/4
  \numericTimeSignature
}

upper = \relative c'' {
  \clef treble
  R1*2
  \arpeggioArrowUp
  <c fis g a>1\arpeggio\fermata
  \break

  R1*2
  <c' fis g a>1\arpeggio\fermata
  \break

  R1*3
  \break

  R1
  \clef bass
  g,,8 r g r g r g r
  g r g r g( a\staccato) g( f\staccato)
  \break

  g r g r g r g r
  g r g r g( a\staccato) g( f\staccato)
  \clef treble
  r4 g'8( c~ c4) d,16( c d8\staccato)
  \break

  f2( a)
  bes16( a bes8\staccato) a( f~ f2)
  r2 r8 es( d->\staccato) r8
  \break

  r4 g8( c~ c4) d,16( c d8\staccato)
  f2( a)
  bes16( a bes8\staccato) a( f~ f2)
  \break

  r2 r8 es( d->\staccato) r8
  r4 g8( c~ c4) d16( c d8\staccato)
  bes2( es)
  \break

  d16( c d8\staccato) c a~ a2
  r2 r8 es'( d->\staccato) r8
  r4 g,8( c~ c4) d16( c d8\staccato)
  \break

  bes2 es8( f4.)
  d16( c d8\staccato) c g'~ g2
  r2 r8 <as as'>8( <g g'>->\staccato) r8
  \break

  R1*2
  \tempo 4 = 80
  c,,8( g'4 c,8 es4 g)
  \break

  c,8( g'4 c,8 es4 g)
  c,8( g'4 c,8 es4 g)
  c,8( g'4 c,8 es4 g)
  \break

  <c es g>1~
  <c es g>
  <b d g>~
  \break

  <b d g>
  <c es g>~
  <c es g>
  \break

  <a c f>
  \clef bass
  <f,,, f'>
  \clef treble
  \arpeggioNormal
  \override TextScript #'font-size = #-2
  <c''''' des es fes>\arpeggio^\markup { \italic "(very quietly... L.H. still same dynamic)" }
  \break

  \times 2/3 { <c des es fes>4( <b c d es> <ais b cis d> } <gis a bis cis>2)
  <g, g'>1
  <a a'>
  \break

  <c c'>
  <as as'>
  <c c'>
  \break

  <d d'>
  <g g'>
  <fis fis'>
  \break

  <c c'>8( <g' g'>4 <c, c'>8 <es es'>4 <g g'>)
  <c, c'>8( <g' g'>4 <c, c'>8 <es es'>4 <g g'>)
  <c, c'>8( <g' g'>4 <c, c'>8 <es es'>4 <g g'>)
  \break

  <c, c'>8( <g' g'>4 <c, c'>8 <es es'>4 <g g'>)
  <c, c'>8( <g' g'>4 <c, c'>8 <es es'>4 <g g'>)
  <c, c'>8( <g' g'>4 <c, c'>8 <es es'>4 <g g'>)
  \break

  <c, c'>8( <g' g'>4 <c, c'>8 <es es'>4 <g g'>)
  <c, c'>8( <g' g'>4 <c, c'>8 <es es'>4 <g g'>)
  R1
  \bar "||"
  \key c \minor
  \break

  R1-"poco accel. to end"
  R1*3
  c,,8 r c r c r c r
  c r c r c( d-.) c( bes-.)
  \break

  c r c r c r c r
  c r c r c( d-.) c( bes-.)
  r4 <c' c'>8( <f f'>~ <f f'>4) <g, g'>16( <f f'> <g g'>8-.)
  \break

  <bes bes'>2( <d d'>)
  <es es'>16( <d d'> <es es'>8-.) <d d'>8( <bes bes'>~ <bes bes'>2)
  r2 r8 <as as'>( <g g'>->-.) r8
  \break

  r4 <c c'>8( <f f'>~ <f f'>4) <g g'>16( <f f'> <g g'>8-.)
  <es es'>2( <as as'>)
  <g g'>16( <f f'> <g g'>8-.) <f f'>( <d d'>~ <d d'>2)
  \break

  r2 r8 <as' as'>( <g g'>-.->) r8
  r4 <c, c'>8( <f f'>~ <f f'>4) <g g'>16( <f f'> <g g'>8-.)
  <es es'>2 <as as'>8( <bes bes'>4.)
  \break

  <g g'>16( <f f'> <g g'>8-.) <f f'> <c' c'>~ <c c'>2
  r2 r8 <des, des'>-.-> <c c'>-.-> r8
  R1
  \bar "|."
}

lower = \relative c, {
  \clef bass
  <c c'>2(
  <fis fis'>
  <f f'>
  <a a'>~
  <a a'>1\fermata)

  <c, c'>2(
  <fis fis'>
  <f f'>
  <a a'>~
  <a a'>1\fermata)

  <g, g'>8\staccato r8 r8 g'\staccato d'16( c d8\staccato) r8 <g,, g'>\staccato
  r8 <d d'>\staccato d''16( c d8\staccato) d,( f\staccato) a( bes\staccato)
  <g, g'>\staccato r8 r8 g'\staccato d'16( c d8\staccato) r8 <g,, g'>\staccato

  r8 <d d'>\staccato d''16( c d8\staccato) d,( f\staccato) a( bes\staccato)
  <g, g'>\staccato r8 r8 g'\staccato d'16( c d8\staccato) r8 <g,, g'>\staccato
  r8 <d d'>\staccato d''16( c d8\staccato) d,( f\staccato) a( bes\staccato)

  <g, g'>\staccato r8 r8 g'\staccato d'16( c d8\staccato) r8 <g,, g'>\staccato
  r8 <d d'>\staccato d''16( c d8\staccato) d,( f\staccato) a( bes\staccato)
  <g, g'>\staccato r8 r8 g'\staccato d'16( c d8\staccato) r8 <g,, g'>\staccato

  r8 <d d'>\staccato d''16( c d8\staccato) d,( f\staccato) a( bes\staccato)
  <g, g'>\staccato r8 r8 g'\staccato d'16( c d8\staccato) r8 <g,, g'>\staccato
  r8 <d d'>\staccato d''16( c d8\staccato) d,( f\staccato) a( bes\staccato)

  <g, g'>\staccato r8 r8 g'\staccato d'16( c d8\staccato) r8 <g,, g'>\staccato
  r8 <d d'>\staccato d''16( c d8\staccato) d,( f\staccato) a( bes\staccato)
  <g, g'>\staccato r8 r8 g'\staccato d'16( c d8\staccato) r8 <g,, g'>\staccato

  r8 <d d'>\staccato d''16( c d8\staccato) d,( f\staccato) a( bes\staccato)
  <g, g'>\staccato r8 r8 g'\staccato d'16( c d8\staccato) r8 <g,, g'>\staccato
  r8 <d d'>\staccato d''16( c d8\staccato) d,( f\staccato) a( bes\staccato)

  <g, g'>\staccato r8 r8 g'\staccato d'16( c d8\staccato) r8 <g,, g'>\staccato
  r8 <d d'>\staccato d''16( c d8\staccato) d,( f\staccato) a( bes\staccato)
  <g, g'>\staccato r8 r8 g'\staccato d'16( c d8\staccato) r8 <g,, g'>\staccato

  r8 <d d'>\staccato d''16( c d8\staccato) d,( f\staccato) a( bes\staccato)
  <g, g'>\staccato r8 r8 g'\staccato d'16( c d8\staccato) r8 <g,, g'>\staccato
  r8 <d d'>\staccato d''16( c d8\staccato) <d,, d'>\staccato <f f'>\staccato <a a'>\staccato <bes bes'>\staccato

  <g g'>1
  <<
    { g' }
  \\
    { es2 d }
  >>
  <c, c'>1~

  <c c'>
  <c c'>~
  <c c'>
  \clef treble

  <<
    {
      c'''8( g'4 c,8 es4 g)
      c,8( g'4 c,8 es4 g)
      c,8( g'4 c,8 es4 g)
      c,8( g'4 c,8 es4 g)
      c,8( g'4 c,8 es4 g)
      c,8( g'4 c,8 es4 g)
      c,8( g'4 c,8 es4 g)
      c,8( g'4 c,8 es4 g)
      c,8( g'4 c,8 es4 g)
    }
  \\
    {
      es,1 es es es es es es es
    }
  >>

  c'8( g'4 c,8 es4 g)
  c,8( g'4 c,8 es4 g)
  c,8( g'4 c,8 es4 g)

  c,8( g'4 c,8 es4 g)
  c,8( g'4 c,8 es4 g)
  c,8( g'4 c,8 es4 g)

  c,8( g'4 c,8 es4 g)
  c,8( g'4 c,8 es4 g)
  c,8( g'4 c,8 es4 g)
  \clef bass

  <<
    {
      <c,, e g>1~
      <c e g>
      <d g b>~

      <d g b>
      <c es g c>
      <es g c es>

      <f a c f>~
      <f a c f>
      s1
    }
  \\
    {
      s1
      <c,, c'>
      s1

      <g' g'>
      s1
      r2 <c, c'>

      s1
      <f f'>
      <c c'>^\fermata
    }
  >>

  c'8-. r4 c8-. g'16( f g8-.) r8 c,-.
  r8 g8-. g'16( f g8-.) g,8( bes-.) d( es-.)
  c-. r4 c8-. g'16( f g8-.) r8 c,-.

  r8 g8-. g'16( f g8-.) g,8( bes-.) d( es-.)
  c-. r4 c8-. g'16( f g8-.) r8 c,-.
  r8 g8-. g'16( f g8-.) g,8( bes-.) d( es-.)

  c-. r4 c8-. g'16( f g8-.) r8 c,-.
  r8 g8-. g'16( f g8-.) g,8( bes-.) d( es-.)
  c-. r4 c8-. g'16( f g8-.) r8 c,-.

  r8 g8-. g'16( f g8-.) g,8( bes-.) d( es-.)
  c-. r4 c8-. g'16( f g8-.) r8 c,-.
  r8 g8-. g'16( f g8-.) g,8( bes-.) d( es-.)

  c-. r4 c8-. g'16( f g8-.) r8 c,-.
  r8 g8-. g'16( f g8-.) g,8( bes-.) d( es-.)
  c-. r4 c8-. g'16( f g8-.) r8 c,-.

  r8 g8-. g'16( f g8-.) g,8( bes-.) d( es-.)
  c-. r4 c8-. g'16( f g8-.) r8 c,-.
  r8 g8-. g'16( f g8-.) g,8( bes-.) d( es-.)

  c-. r4 c8-. g'16( f g8-.) r8 c,-.
  r8 g8-. g'16( f g8-.) r8 <des, des'>-.-> <c c'>-.-> r8
  <c c'>1->\fermata
}

dynamics = {
  s32 s32*30\p s32
  s1*5
  s32 s32*30\mf s32
  s1*22
  s8*7 s8\ff
  s32*6-"rit." s32*57\> s32\!
  s32 s32*30\mp s32
  s1*11
  s32 s32*30\pp s32
  s1
  s32 s32*30\p s32
  s1*6
  s32 s32*29\< s32\! s32
  s32 s32*30\mf s32
  s1*3
  s32 s32*61\< s32\! s32
  s32 s32*30\ff s32
  s32 s32*29\> s32\! s32
  s32 s32*30\p s32
  s32 s32*30-\markup { \dynamic "p" "cresc. poco a poco"} s32
  s1*19
  s32*2 s32*29\fff s32
}

pedal = {
}

\score {
  \new PianoStaff = "PianoStaff_pf" <<
    \new Staff = "Staff_pfUpper" << \global \upper >>
    \new Dynamics = "Dynamics_pf" \dynamics
    \new Staff = "Staff_pfLower" << \global \lower >>
    \new Dynamics = "pedal" \pedal
  >>

  \layout {
    % define Dynamics context
    \context {
      \type "Engraver_group"
      \name Dynamics
      \alias Voice
      \consists "Output_property_engraver"
      \consists "Piano_pedal_engraver"
      \consists "Script_engraver"
      \consists "New_dynamic_engraver"
      \consists "Dynamic_align_engraver"
      \consists "Text_engraver"
      \consists "Skip_event_swallow_translator"
      \consists "Axis_group_engraver"

      pedalSustainStrings = #'("Ped." "*Ped." "*")
      pedalUnaCordaStrings = #'("una corda" "" "tre corde")
      \override DynamicLineSpanner #'Y-offset = #0
      \override TextScript #'font-shape = #'italic
      \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
    }
    % modify PianoStaff context to accept Dynamics context
    \context {
      \PianoStaff
      \accepts Dynamics
    }
  }
}

\score {
  \unfoldRepeats {
    \new PianoStaff = "PianoStaff_pf" <<
      \new Staff = "Staff_pfUpper" << \global \upper \dynamics \pedal >>
      \new Staff = "Staff_pfLower" << \global \lower \dynamics \pedal >>
    >>
  }
  \midi { }
}
