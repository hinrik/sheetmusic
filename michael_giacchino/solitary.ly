\version "2.12.2"

\header {
  title = "Solitary"
  subtitle = \markup { "from" \italic "Lost" }
  composer = "Michael Giacchino"
}

global = {
  \tempo 4 = 72
  \key c \major
  \time 4/4
  \numericTimeSignature
  s1*17
  \bar "||"
  \tempo 4 = 75
  \key e \major
  s1*35
  \bar "|."
}

upper = \relative c'' {
  \clef treble
  \times 2/3 { a4( b e, } c' b
  a g2.)
  \times 2/3 { fis4( gis cis, } a' gis
  fis e2.)
  \break

  \times 2/3 { e'4( fis a, } fis'2~
  fis2.) a,4
  <g b>1
  <fis a>
  \break

  <cis f gis>~
  <cis f gis>
  <d g b>
  <cis fis a>
  \break

  <cis f gis>~
  <cis f gis>
  \times 2/3 { cis4( d b } fis'2)
  \times 2/3 { b4( a fis } e2)
  \break

  R1
  <b' e>2^"Boone & Shannon's theme" <b e>
  <b e> <b e>
  <b e> <b e>
  \break

  <b e> <b e>
  <b e> <b e>
  <b e> <b e>
  <b e> <b e>
  \break

  <b e> <b e>
  <b e> <b e>
  <b e> <b e>
  b4( a2.~
  \break

  a1)
  a4( gis2.~
  gis1)
  dis4( fis b,2~
  \break

  b2) b8( dis dis b')
  b4( a2.~
  a1)
  a4( gis2.~
  \break

  gis1)
  <b b'>4( <a a'>2.~
  <a a'>1)
  <a a'>4( <gis gis'>2.~
  \break

  <gis gis'>1)
  dis'2( fis
  b,1)
  <b e>2 <b e>
  \break

  <b e> <b e>
  <b e> <b e>
  <b e> <b e>
  <b' e> <b e>
  \break

  <b e> <b e>
  <b e> <b e>
  <b e> <b e>
  fis,4( <e gis>2.\fermata)
}

lower = \relative c {
  \clef bass
  R1*4
  \clef treble

  \times 2/3 { e'4( fis a } fis e
  d cis2.)
  d1
  cis1
  \clef bass

  gis2( g
  f cis)
  <d g b>1
  <cis fis a>

  <cis f gis>~
  <cis f gis>
  \times 2/3 { cis4( d b } fis'2)
  \times 2/3 { b4( a fis } e2)

  <d d'>2( <b b'>~
  <b b'>1)
  R1
  fis''4( cis2.)

  R1
  e4( dis2.)
  R1
  fis4( e2.)

  R1
  e4( dis2.)
  R1

  <<
    {
      s1

      r2 <e, a>
      s1
      r2 <e gis>
      dis1~

      dis
      <e a>~
      <e a>
      <cis~ e>

      <cis e>
      <e a>~
      <e a>
      <cis~ e>

      <cis e>
    }
  \\
    {
      r4 b'8( a a e e a,

      cis1)
      r4 gis'8( fis fis e e gis,
      cis1)
      b

      a2 fis4( gis)
      a2( b
      cis1)
      a2( b

      % TODO: figure out how to merge this note with the one
      % in the other voice
      \hideNotes cis1) \unHideNotes
      a2( b
      cis1)
      a2( b

      % TODO: same as above
      \hideNotes cis1) \unHideNotes
    }
  >>
  <b' dis>~
  <b dis>
  fis'4( e2.)

  R1
  \times 2/3 { cis,4( dis gis, } e'2)
  R1
  \clef treble
  fis''4( e2.)

  R1
  \times 2/3 { cis,4( dis gis, } dis'2)
  R1
  \clef bass
  fis,4( <e, b' e>2.\fermata)
}

dynamics = {
  s32 s32*30-\markup { \dynamic "mp" "espressivo" } s32
  s1*4
  s2 s32*14\< s32\! s32
  s32 s32*30\mf s32
  s32 s32*93\> s32\! s32
  s32 s32*30\p s32
  s1*6
  s32 s32*30\p s32
  s1
  s32 s32*30\p s32
  s1*5
  s2 s32*39\< s32\! s32*8
  s32 s32*30\mp s32
  s1*3
  <<
    {
      s32 s32*31\<
      s32*30 s32\! s32
    }
  \\
    {
      s1
      s2 s2_"accel."
    }
  >>
  s32 s32*30\f s32
  s1*3
  s32 s32*30\mp s32
  s1
  s32 s32*61\> s32\! s32
  s32 s32*30\p s32
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

