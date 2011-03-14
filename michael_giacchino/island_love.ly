\version "2.12.2"

\header {
  title = "Island Love"
  subtitle = \markup { "from" \italic "Lost" }
  composer = "Michael Giacchino"
}

global = {
  \tempo 4 = 77
  \key c \major
  \time 4/4
  \numericTimeSignature
  s1*18
  \tempo 4 = 65
  s1*4
  \bar "||"
  \tempo 4 = 50
  \key d \major
  s1*6
  \time 2/4
  s2
  \time 4/4
  s1*2
  \time 2/4
  s2
  \time 4/4
  s1
  \bar "|."
}

upper = \relative c {
  \clef treble
  <<
    {
      <e e'>2 <e e'>
      <e e'> e'2
      <f, f'>2 <e e'>
      <e e'>2 <e e'>
      \break

      <e e'> <e e'>
      <e e'> e'
      <g, g'> <g g'>
      <d d'> <d d'>
      \break

      <f f'> <f f'>
      <f f'> f'
      <f, c' f> <f b f'>
      <g g'> <g g'>
      \break

      <d d'> <d d'>
      <f f'> <f f'>
      <f f'> f'
      <f, c' f> <g b g'>
      \break

      <c c'> c'
    }
  \\
    {
      s1
      s2 e,,4 e
      s1*3
      s2 e4 e
      s1*3
      s2 f4 f
      s1*4
      s2 f4 f
      s1
      s2 c'4 c
    }
  >>
  <d d'>2 <d d'>
  <e' e'>4( <c c'> <g g'>2
  <f f'>4 <g g'>2 <d' d'>4
  \break

  <e e'> <c c'> <g g'>2
  <f f'>4 <g g'> <a a'>8 <e e'> <a a'> <e' e'>)
  d,,( e fis g a g b a)
  \break

  b( g d' a g fis a e)
  d( e fis g a g b d)
  d( cis cis b g a b cis)
  \break

  d( e fis g g fis fis e)
  d( cis cis b a e b' cis)
  e( d cis b)
  \break

  e,( fis g a b g d' e)
  d( cis cis b b d, g d')
  cis( d d e
  d1\fermata)
}

lower = \relative c, {
  \clef bass
  <c g'>1~
  <c g'>2. <c g'>4
  <d a'>2 <c g'>~
  <c g'>1

  <c g'>~
  <c g'>2. <c g'>4
  <d a'>1
  <g b>1

  <d a'>~
  <d a'>2. <d a'>4
  << { c'2 d } \\ { f,1 } >>
  <g b g'>2. <b d>4~

  <b d>1
  <d, a'>~
  <d a'>2. <d a'>4
  <f c'>2 <g d'>

  <a e'>2. <b g'>4~
  <b g'>1
  << { <e, g c e>2. <e g c e>4 } \\ { c1 } >>
  <d f a d f>4 <c e g c e>2.

  << { <e g c e>2. <e g c e>4 } \\ { c1 } >>
  <c f a c f>4 <cis e a cis e>2 <cis e a cis e>4
  <a' d fis>2. <a d fis>4

  <b e g> <a d fis>2.
  <a d fis>2. <a d fis>4
  <b e a>4 <a cis e>2.

  <e b' g'>2. <e b' g'>4
  <<
    {
      <d' b'>8 <cis a'> <cis a'> <b g'> <a cis e a>2
      <cis e a>
    }
  \\
    {
      g2 s
      a4 g
    }
  >>

  <e b' g'>1
  <g d' g b>4 <a e' a cis> <b d g d'>2
  << { <a' e'>2 } \\ { <cis,, a'> } >>
  <a' d fis>1\fermata
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

