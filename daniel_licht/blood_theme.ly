\version "2.12.2"

\header {
  title = "Blood theme"
  subtitle = \markup { "from" \italic "Dexter" }
  composer = "Daniel Licht"
  arranger = "Original transcription by Olga Blue"
}

global = {
  \tempo 4 = 60
  \key c \major
  \time 4/4
  \numericTimeSignature
}

upper = \relative c' {
  \clef treble
  r8 a c a r2
  r8 a b a r2
  r8 a c a r2
  r8 a b a r2
  \break

  <<
    {
      r2 r8 a' c a
      r2 r8 a b a
      r2 r8 a c a
      r2 r8 a b4
    }
  \\
    {
      r8 a, c a r2
      r8 a b a r2
      r8 a c a r2
      r8 a b a r2
    }
  >>
  \break

  r4 <g' g'>4( <f f'>2)
  r4 <e e'>4( <dis dis'>2)
  r4 <g g'>4( <f f'>2
  <a a'>4 <b b'>2 <c c'>4)
  \break

  r4 <g g'>4( <f f'>2)
  r4 <e e'>4( <dis dis'>2)
  r4 <g g'>4( <f f'>2
  <c c'>4 <f, f'>2 <e e'>4
  \break

  a'2) <a a'>\arpeggio(
  <c c'>\arpeggio <e e'>\arpeggio)
  <e, a>8 b' <e, c'> <a d> r2

  <<
    {
      <gis gis'>2\arpeggio( <cis cis'>\arpeggio
      \break
      <g' g'>1\arpeggio)
    }
  \\
    {
      r1
      r2 r8 a,, c a
    }
  >>
  r2 <a' a'>2\arpeggio(
  <c c'>\arpeggio) r2
  <e, a>8 b' <e, c'> <a d> r2
  <e' a>8 b' <e, c'> <a d> r2
  \break

  r4 <g, g'>4( <f f'>2)
  r4 <e e'>4( <dis dis'>2)
  r4 <g g'>4( <f f'>2
  <a a'>4 <b b'>2 <c c'>4)
  \break

  r4 <g g'>4( <f f'>2)
  r4 <e e'>4( <dis dis'>2)
  r4 <g g'>4( <f f'>2
  <c c'>4 <f, f'>2 <e e'>4
  \break

  a'2) <a a'>\arpeggio(
  <c c'>\arpeggio <e e'>\arpeggio)
  <e, a>8 b' <e, c'> <a d> r2
  <e' a>8 b' <e, c'> <a d> r2
  \break

  r2 <a, a'>\arpeggio
  <c c'>\arpeggio <e e'>\arpeggio
  r2 <gis, gis'>\arpeggio
  <c c'>\arpeggio
  #(set-octavation 1)
  <g' g'>\arpeggio\fermata
  #(set-octavation 0)
  \bar "|."
}

lower = \relative c {
  \clef bass
  <a a,>1~
  <a a,>
  <f f,>~
  <f f,>

  a,8 a'~ a2.
  a,8 a'~ a2.
  f,8 f'~ f2.
  f,8 f'~ f2.

  <<
    {
      r8 a'( c a4) a a8
      r8 a( b a4) a a8
      r8 a( c a4) a a8
      r8 a( b a4) a a8

      r4. a4 a8 c a
      r8 a4 a a8 b a
      r4. a4 a8 c a
      r8 a4 a a r8

      r8 a( c a4) a a8
      r8 a( b a4) a a8
      r8 a( c a4) a a8
      r8 a( b a4) a a8

      r8 a( c a4) r8 r4
      r8 a( b a4) a a8
      r8 a( c a4) a a8
      r8 a4 a a8 c a
      r8 a4 a a8 c a

      r8 a( c a4) a a8
      r8 a( b a4) a a8
      r8 a( c a4) a a8
      r8 a( b a4) a a8

      r4. a4 a8 c a
      r8 a4 a a8 b a
      r4. a4 a8 c a
      r8 a4 a a r8

      r8 a( c a4) a a8
      r8 a( b a4) a a8
      r8 a4 a a8 c a
      r8 a4 a a8 b a

      r8 a( c a4) a a8
      r8 a( b a4) a a8
      r8 a( c a4) a a8
      r8 a b a~ a2_\fermata
    }
  \\
    {
      <a,, a'>1~
      <a a'>
      <f f'>~
      <f f'>

      a8 a'~ a2.~
      a1
      f,8 f'~ f2.~
      f1

      <a, a'>1~
      <a a'>
      <f f'>~
      <f f'>

      <a a'>
      <a a'>
      <f f'>
      <f f'>~
      <f f'>

      <a a'>~
      <a a'>
      <f f'>~
      <f f'>

      a8 a'~ a2.~
      a1
      f,8 f'~ f2.~
      f1

      <a, a'>~
      <a a'>
      <f f'>~
      <f f'>

      <a a'>~
      <a a'>
      <f f'>~
      <f f'>
    }
  >>
}

dynamics = {
  s1*39\p
  s8*7 s8-"rit."
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
