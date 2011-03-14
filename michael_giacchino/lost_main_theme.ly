\version "2.12.2"

\header {
  title = "Main theme"
  subtitle = \markup { "from" \italic "Lost" }
  composer = "Michael Giacchino"
}

global = {
  \tempo 4 = 72
  \key c \major
  \time 4/4
  \numericTimeSignature
}

upper = \relative c' {
  \clef treble
  b2( d4 c)
  a2( c4 b)
  b2( d4 c)
  a2( c4 b)
  \break

  d2( f4 e)
  c2( e4 d)
  d2( f4 e)
  a2( g4 e)
  \break

  <d d'>2(<f f'>4 <e e'>)
  <c c'>2( <e e'>4 <d d'>)
  <d d'>2( <f f'>4 <e e'>)
  <a a'>2( <g g'>4 <e e'>)
  \break

  <d d'>1
  <f f'>
  <e e'>
  <f a'>
  \break

  <c d>
  <c f>
  <d bes'>
  <f c'>
  \break

  <d d'>2( <f f'>4 <e e'>)
  <c c'>2( <e e'>4 <d d'>)
  <d d'>2( <f f'>4 <e e'>)
  <a a'>2( <g g'>4 <e e'>)
  \break

  d2. d8( e
  f2~ f8) g( f e
  e2.) e8( g
  \break

  a1\fermata)
  d2. d8( e
  f2~ f8) g( f e
  \break

  e2.) e8( g
  a1)
  d,,2( f4 e)
  c2( e4 d)
  \break

  d2( f4 e)
  a1(
  g2 e~
  e1\fermata)
}

lower = \relative c {
  \clef bass
  a4( d e2)
  a,4( c d2)
  a4( d e2)
  a,4( c d2)

  bes4( c d2)
  bes4( c f2)
  bes,4( c d2)
  bes4( c f2)

  <bes, c d>1
  <bes c f>
  <bes c d>
  <bes c f>

  bes'4( c d2)
  bes4( c f2)
  bes,4( c d2)
  bes4( c f2)

  bes,4( c d2)
  bes4( c f2)
  bes,4( c d2)
  bes4( c f2)

  <d, e a>1
  <c d a'>
  <d e a>
  <c d a'>

  bes8 c d c d c d c
  bes c f c f c f c
  bes c d c d c d c

  bes c f c f c f e\fermata
  bes' c d c d2
  bes8 c f c f2

  bes,8 c d c d4 c8 f,
  bes, c f c f2\fermata
  <bes,, bes'>4( <c c'> <d d'>2)
  <bes bes'>4( <c c'> <f f'>2)

  <bes c d>1
  <<
    {
      f'~^\markup { \italic "rit." }
      f~
      f
    }
  \\
    {
      e
      e~
      e
    }
  \\
    {
      bes~
      bes~
      bes\fermata
    }
  >>
}

dynamics = {
  s1*8
  s32 s32*30\mp s32
  s1*2
  s2 s32 s32*13\> s32\! s32
  s32 s32*61\< s32\! s32
  s32 s32*7\mf s32 s32*54\> s32\! s32
  s32 s32*30\mp s32
  s32 s32*93\< s32\! s32
  s32 s32*30\f s32
  s1*2
  s32 s32*29\> s32\! s32
  s32 s32*30\mp s32
  s1*3
  s2. s32*6\< s32\!
  s32 s32*19\mf s32*11\> s32\! s32
  s32 s32*30\mp s32
  s32 s32*9\> s32\! s32*5 s32\p s32*15
  s32 s32*30\mf s32
  s1
  s32 s32*74\> s32\! s32*3 s32\pp
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
