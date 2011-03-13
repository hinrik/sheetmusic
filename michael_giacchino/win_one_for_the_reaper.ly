\version "2.12.2"

\header {
  title = "Win One for the Reaper"
  subtitle = \markup { "from" \italic "Lost" }
  composer = "Michael Giacchino"
}

global = {
  \tempo 4 = 70
  \key bes \major
  \time 4/4
  \numericTimeSignature
}

upper = \relative c' {
  \clef treble
  R1*3
  r4 d4 f2
  \break

  g2. r4
  bes2. r4
  g2. r4
  g2 r2
  \break

  \repeat volta 2 {
    f4( d8 f~ f d f d
    f4 a8 f~ f2)
    f4( d8 f~ f d f d
    f4 a8 f~ f2)
    \break

    g4( es8 f~ f es f es
    f4 es8 d~ d es f4)
    g4( es8 f~ f es f es
    d2 c2)
  }
  \break

  f'4( d8 f~ f d f d
  f4 a8 f~ f2)
  f4( d8 f~ f d f d
  f4 a8 f~ f2)
  \break

  g4( es8 f~ f es f es
  f4 es8 d~ d es f4)
  g4( es8 f~ f es f es
  d2 a')
  bes1~
  bes
  \bar "|."
}

sadchords = {
  <d f bes>1
  <d f a>
  <d f bes>
  <d f a>

  <es g bes>
  <d f bes>
  <es g bes>
  <d g bes>2 <c f a>
}

lower = \relative c {
  \clef bass
  \sadchords
  \repeat volta 2 { \sadchords }

  \relative c' {
    #(set-octavation 1)
    \sadchords
    #(set-octavation 0)
    bes,,1~
    bes1
  }
}

dynamics = {
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
