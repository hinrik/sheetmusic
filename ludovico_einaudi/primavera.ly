\version "2.12.2"

\header {
  title = "Primavera"
  subtitle = \markup { \italic "Divenire" }
  composer = "Ludovico Einaudi"
}

global = {
  \tempo 4 = 136
  \key c \minor
  \time 3/4
  \numericTimeSignature
}

upper = \relative c'' {
  \clef treble
  R2.*9

  c'2.
  bes2.
  a4 bes a8 g16 a
  g2.
  c2( c8 bes16 c16)

  bes2.
  a4 a8 bes c4
  g2.
  es2.
  f2.

  c2.(
  c2) c8 d
  es4 f d8 d16 es
  d4 c as
  c2.(

  c2) r8 es,
  es'2.
  c2.
  c2.(

  c2) c8 d
  es4 f es8 d16 es
  d4 c as
  c2.(
  c2.)

  c,8-\p g' c g c g
  es g c g c g
  d g c g c g
  bes, g' c g c g
  \break

  c, g' c g c g
  es g c g c g
  d g c g c g
  c2.
  \break
}

lower = \relative c' {
  \clef treble
  \repeat volta 2 {
    c8 g' c g c g
    es g c g c g
    d g c g c g
    bes, g' c g c g
    \break

    c, g' c g c g
    es g c g c g
    d g c g c g
  }
  \alternative {
    { c g c g c4 }
    { c2. }
  }
  \break

  c,8
  g' c g c g
  es g c g c g
  f g c g c g
  c, g' c g c g
  c, g' c g c g
  \break

  es g c g c g
  f g c g c g
  c, g' c g c4
  \clef bass
  es,,8 bes' g' bes, g' bes,
  f c' f c f4
  \break

  c,8 g' c g c g
  c, g' c2
  es,8 bes' g'2
  bes,,8 f' bes2
  c,8 g' c g c g
  \break

  c, g' c2
  c,8 g' g' g, g' g,
  f c' f c f4
  c,8 g' c g c g
  \break

  c, g' c2
  es,8 bes' g'2
  bes,,8 f' bes2
  f,8 c' f g a c
  f2.
  \break

  R2.*8
}

dynamics = {
  s32 s32-\markup { \dynamic "p" \italic "legato" } s32*22
  s2.*8
  s32 s32-\markup { \italic "dolce e cantabile" } s32*22
  s2.*7
  s32 s32\mp s32*22
}

pedal = {
}

\score {
  \new PianoStaff = "PianoStaff_pf" <<
    \set PianoStaff.instrumentName = #"Piano"
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
  \midi {
    % the following is a workaround to prevent multiple voices from being
    % lumped into the same channel, which would inhibit overlapping notes
    \context {
      \Staff \remove "Staff_performer"
    }
    \context {
      \Voice \consists "Staff_performer"
    }
  }
}
