\version "2.12.2"

\header {
  title = "The Surface of the Sun / Adagio in D minor"
  subtitle = \markup { "from the motion picture" \italic "Sunshine" }
  composer = "John Murphy"
  instrument = "Piano solo"
}

global = {
  \tempo 4 = 120
  \key c \major
  \time 4/4
  \numericTimeSignature
}

upper = \relative c' {
  \clef bass
  b8 g b g b g b g
  b g b g b g b g
  c g c g c g c g
  c g c g c g c g
  \break

  b g b g b g b g
  b g b g b g b g
  b fis b fis b fis b fis
  b fis b fis b fis b fis
  \break

  b g b g b g b g
  b g b g b g b g
  c g c g c g c g
  c g c g c g c g
  \break

  <g d'> b <g d'> b <g d'> b <g d'> b
  <g d'> b <g d'> b <g d'> b <g d'> b
  \clef treble
  <a fis'> d <a fis'> d <a fis'> d <a fis'> d
  <a fis'> d <a fis'> d <a fis'> d <a fis'> d
  \break

  <b g'> e <b g'> e <b g'> e <b g'> e
  <b g'> e <b g'> e <b g'> e <b g'> e
  <c g'> e <c g'> e <c g'> e <c g'> e
  <c g'> e <c g'> e <c g'> e <c a'> e
  \break

  <d b'> g <d b'> g <d b'> g <d b'> g
  <d b'> g <d b'> g <d b'> g <d b'> g
  <d b'> fis <d b'> fis <d b'> fis <d b'> fis
  <d b'> fis <d b'> fis <d b'> fis <d b'> fis
  \break

  <e b'> g <e b'> g <e b'> g <e b'> g
  <e b'> g <e b'> g <e b'> g <e b'> g
  <e c'> g <e c'> g <e c'> g <e c'> g
  <e c'> g <e c'> g <e c'> g <e c'> g
  \break

  <g d'> b <g d'> b <g d'> b <g d'> b
  <g d'> b <g d'> b <g d'> b <g d'> b
  <fis d'> b <fis d'> b <fis d'> b <fis d'> b
  <fis d'> b <fis d'> b <fis d'> b <fis d'> b
  \clef bass
  \break

  b, g b g b g b g
  b g b g b g b g
  c g c g c g c g
  c g c g c g c g
  \break

  b g b g b g b g
  b g b g b g b g
  b fis b fis b fis b fis
  b fis b fis b fis b fis
  \clef treble
  \break

  <b g'> e <b g'> e <b g'> e <b g'> e
  <b g'> e <b g'> e <b g'> e <b g'> e
  <c g'> e <c g'> e <c g'> e <c g'> e
  <c g'> e <c g'> e <c g'> e <c a'> e
  \break

  <d b'> g <d b'> g <d b'> g <d b'> g
  <d b'> g <d b'> g <d b'> g <d b'> g
  <fis d'> b <fis d'> b <fis d'> b <fis d'> b
  <fis d'> b <fis d'> b <fis d'> b <fis d'> b
  \break

  <g e'> b <g e'> b <g e'> b <g e'> b
  <g e'> b <g e'> b <g e'> b <g e'> b
  <g e'> c <g e'> c <g e'> c <g e'> c
  <g e'> c <g e'> c <g e'> c <g e'> c
  \break

  <g d'> b <g d'> b <g d'> b <g d'> b
  <g d'> b <g d'> b <g d'> b <g d'> b
  <b fis'> d <b fis'> d <b fis'> d <b fis'> d
  <b fis'> d <b fis'> d <b fis'> d <b fis'> d
  \break

  <b g'> e <b g'> e <b g'> e <b g'> e
  <b g'> e <b g'> e <b g'> e <b g'> e
  \override TextSpanner #'(bound-details left text) = "rit."
  <b g'>^\startTextSpan e <b g'> e <b g'> e <b g'> e
  <b g'> e <b g'> e <b g'> e <b g'> e\stopTextSpan
  \bar "|."
}

lower = \relative c, {
  \clef bass
  e1~
  e
  c~
  c

  g'~
  g
  fis~
  fis

  <e e'>~
  <e e'>
  <c c'>~
  <c c'>

  <g' d'>~
  <g d'>
  fis~
  fis

  <e e'>~
  <e e'>
  <c c'>~
  <c c'>

  <g' d'>~
  <g d'>
  <d d'>~
  <d d'>

  <e e'>~
  <e e'>
  <c c'>~
  <c c'>

  <g' d'>~
  <g d'>
  <fis d'>~
  <fis d'>

  <e e'>~
  <e e'>
  <c c'>~
  <c c'>

  <g' d'>~
  <g d'>
  <fis d'>~
  <fis d'>

  <e e'>~
  <e e'>
  <c c'>~
  <c c'>

  <g' d'>~
  <g d'>
  <fis d'>~
  <fis d'>

  <e e'>~
  <e e'>
  <c c'>~
  <c c'>

  <g' d'>~
  <g d'>
  <fis d'>~
  <fis d'>

  <e e'>~
  <e e'>
  <e, e'>~
  <e e'>
}

dynamics = {
  s1*58
  s8\> s8*14 s8\!
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