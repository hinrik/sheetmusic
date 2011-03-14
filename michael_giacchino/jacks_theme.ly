\version "2.12.2"

\header {
  title = "Jack's theme"
  subtitle = \markup { "from" \italic "Lost 3x13: \"The Man From Tallahassee\"" }
  composer = "Michael Giacchino"
  arranger = "Originally transcribed by Joe Cardello"
}

global = {
  \tempo "Tenderly" 4 = 58
  \key c \major
  \time 4/4
  \numericTimeSignature
}

upper = \relative c' {
  \clef treble
  c'1
  f1
  g2. b,,8 g
  \break

  <f a c>2 r
  <g b>2. <b d>8 f'8
  <a, c e>2 a4 c
  <a c f g>1
  \break

  <b d f>1
  <c e g>1
  <a c e>4 c8 b d d4 c8
  <e g>2 <e g>8 c4 b8
  \break

  <a c e>4 c8 d d d4 c8
  <a c f>2 <a c a'>8 b' a4
  <c, f a>2 <f d>
  c1\!
  \bar "|."
}

lower = \relative c {
  \clef bass
  <c' g'>1
  <c f g>
  <e, g b c>1

  f,8 c' c f f4 a
  <b, d>1
  a1
  f8 c' c f f4 g

  g,8 b b d d4 f
  <c e>1
  a8 e'4. <a, e'>2
  c8 d e c e2

  a,8 e'4. <a, e'>2
  a1
  <c f>2 <d a' b>
  <c e g>1
}

dynamics = {
  s32 s32*30\mp s32
  s1*10
  s32*31\< s32\!
  s1
  s2 s32*46\> s32\!
}

pedal = {
  s1-"Pedal ad lib"
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

      % keep spanners and text in the middle
      \override DynamicLineSpanner #'Y-offset = #0
      \override TextScript #'Y-offset = #-0.5

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
