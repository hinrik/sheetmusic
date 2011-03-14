\version "2.12.2"

\header {
  title = "There's No Place Like Home"
  subtitle = \markup { "from" \italic "Lost" }
  composer = "Michael Giacchino"
}

global = {
  \tempo 4 = 55
  \key d \major
  \time 4/4
  \numericTimeSignature
  s1*10
  \bar "||"
  s1*8
  \bar "||"
  s1*8
  \bar "||"
  s1*12
  \bar "|."
}

upper = \relative c' {
  \clef treble
  R1*2
  d2( e4 d)
  \break
  fis8( g g4 cis,2)
  fis8( g g4 e2)
  fis8( g g4 a2)
  d,2( e4 d)
  \break

  cis'8( b a4 cis,2)
  d'2( e4 d)
  b2( d4 cis)
  \break

  d8( e e fis fis a a4)
  cis,8( fis fis a a b cis4)
  g8( b b cis cis b g4)
  g8( b b cis cis e e g)
  \break

  d( cis cis b b a fis4)
  cis8( fis fis a a b cis4)
  d8( cis cis b b a g4)
  g8( b b cis cis d e4)
  \break

  fis,,4( d2.)
  fis4( cis2.)
  g'4( e2.)
  g4( a2.)
  \break

  d4( a2.)
  cis4( a2.)
  d4( e2.)
  d4( cis2.)
  \break

  d,8( e e fis fis a a4)
  cis,8( fis fis a a b cis4)
  g8( b b cis cis b g4)
  g8( b b cis cis e e g)
  \break

  d( cis cis b b a fis4)
  cis'8( b a4 cis,2)
  d'2( e4 d)
  b2( d4 cis)
  \break

  d1
  d'8 cis cis b~ b2
  d,8 cis cis b~ b2
  R1
}

triads = {
  <d fis a>
  <cis fis a>
  <e g b>
  <e a cis>
}

tetrads = {
  <d fis a d>
  <fis a cis fis>
  <e g b d>
  <a cis e g>
}

lower = \relative c, {
  \clef bass
  <d fis a d>1
  <fis a cis fis>

  \relative c, { \tetrads }
  \relative c, { \tetrads }
  \relative c { \tetrads }
  \relative c { \tetrads }
  \relative c { \triads }
  \relative c { \triads }
  \relative c { \triads }

  <d fis a>
  <cis fis a>
  <e g b>
  <e a cis>~

  <e a cis>
  R1*2
  d1
}

dynamics = {
  s1*10
  s8\mf\< s8*6 s8\!
  s1*6
  s8\> s8*6 s8\!
  s1*8
  s8\mf\< s8*6 s8\!
  s1*4
  s8\> s8 s4 s2\!
  s1*3
  s1\p
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

      % keep spanners and text in the middle
      \override DynamicLineSpanner #'Y-offset = #0
      \override TextScript #'Y-offset = #-0.5

      \override TextScript #'font-shape = #'italic
      \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
      \override DynamicText #'extra-spacing-width = #'(0 . 0)

      % XXX: this seems to have no effect, so hairpins are still not
      % padded enough
      \override Hairpin #'bound-padding = #2.0
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
