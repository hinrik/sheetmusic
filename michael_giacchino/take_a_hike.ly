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
