\version "2.12.2"

\header {
  title = "Destiny"
  subtitle = \markup { "from" \italic "Lost" }
  composer = "Michael Giacchino"
}

global = {
  \tempo 4 = 110
  \key c \major
  \time 4/4
  \numericTimeSignature
  s1*49
  \tempo 4 = 65
  s1*2
  \bar "||"
  s1*36
  \bar "|."
}

upper = \relative c' {
  \clef treble
  \repeat tremolo 16 { c32 f, }
  R1
  \repeat tremolo 16 { des'32 f, }
  R1
  \break

  \repeat tremolo 16 { a32 f }
  R1
  \repeat tremolo 16 { c'32 f, }
  R1
  \break

  \repeat tremolo 16 { c''32 f, }
  R1
  \repeat tremolo 16 { des'32 f, }
  R1
  \break

  \repeat tremolo 16 { a32 f }
  R1
  \repeat tremolo 16 { c'32 f, }
  R1
  \break

  \repeat tremolo 16 { c'32 f, }
  <g bes d>1~
  <g bes d>2. r4
  \break

  <g bes es>1~
  <g bes es>2. r4
  <d g b>1~
  \break

  <d g b>2. r4
  <f a d>1~
  <f a d>2. r4
  \break

  c'4( des c a)
  c( des c a)
  des( es des a)
  des( es des a)
  \break

  es'( e es c)
  es( e es c)
  c( des c a)
  c( des c a)
  \break

  c( des c a)
  c( des c a)
  des( es des a)
  des( es des a)
  \break

  es'( e es c)
  es( e es c)
  c( des c a)
  <c c'>( <des des'> <c c'> <a a'>)
  \break

  <c c'>( <des des'> <c c'> <a a'>~
  <a a'>1)
  <des des'>4( <es es'> <des des'> <a a'>~
  <a a'>1)
  \break

  <c c'>4( <des des'> <c c'> <a a'>~
  <a a'>1)
  <c f a>
  R1
  \break

  <c f a>
  <c e a>
  <c f a>
  <c e a>
  \break

  <c f a>
  <c e a>
  <c, f a>
  \break

  <c e a>
  R1*2
  f4( c' b g)
  \break

  d'( c b g)
  a( e' d b)
  b( c g' f)
  f,( c' b g)
  \break

  d'( c b g)
  a( e' d b)
  b( c g' f)
  b,( c g' a)
  \break

  <<
    {
      f4( c' b g)
      d'( c <g b> g)
      a( e' d <g, b>)
      b( c g' f)
    }
  \\
    {
      <a,, c>1
      e'
      <c f>
      <c e>
    }
  >>
  \break

  <f, f'>4( <c' c'> <b b'> <g g'>)
  <d' d'>( <c c'> <b b'> <g g'>)
  <a a'>( <e' e'> <d d'> <b b'>)
  \break

  <b b'>( <c c'> <g' g'> <a a'>~
  <a a'>1~
  <a a'>~
  <a a'>)
  \break

  f4( g g a
  a b b c~
  c1)
  f,4( g g a
  \break

  a b b c~
  c1~
  c)
  \clef bass
  <c,,, f a>\fermata
}

lower = \relative c {
  \clef bass
  \repeat tremolo 16 { c32 f, }
  R1
  \repeat tremolo 16 { des'32 f, }
  R1

  \repeat tremolo 16 { a32 f }
  R1
  \repeat tremolo 16 { c'32 f, }
  R1

  \repeat tremolo 16 { c'32 f, }
  R1
  \repeat tremolo 16 { des'32 f, }
  R1

  \repeat tremolo 16 { a32 f }
  R1
  \repeat tremolo 16 { c''32 f, }
  R1

  d2.( g4
  <f as>8)( d-.) d-. d-. f( d-.) e16-. e-. d8-.
  <f as>( d-.) d-. d-. f( d-.) e16-. e-. d8-.

  <f as>( d-.) d-. d-. f( d-.) e16-. e-. d8-.
  <f as>( d-.) d-. d-. f( d-.) e16-. e-. d8-.
  <f as>( d-.) d-. d-. f( d-.) e16-. e-. d8-.

  <f as>( d-.) d-. d-. f( d-.) e16-. e-. d8-.
  <f as>( d-.) d-. d-. f( d-.) e16-. e-. d8-.
  <f as>( d-.) d-. d-. f( d-.) g( as

  <f a c>1~
  <f a c>)
  <f a des>~
  <f a des>
  \clef treble

  <c' f a>~
  <c f a>
  \clef bass
  << { <f, a c~> c' } \\ { s1 a2 g } >>

  c4( bes a f
  es des es) f8( a)
  bes4( as g) f8( g
  es4. f8 g4 a)

  a8( g a bes a g a bes)
  g( fis g bes g fis g e)
  es( e f es a2)
  es8( e f es a2)

  \repeat tremolo 16 { c32 f, }
  R1
  \repeat tremolo 16 { des'32 f, }
  R1

  \repeat tremolo 16 { a32 f }
  R1
  \repeat tremolo 16 { c'32 f, }
  R1

  \repeat tremolo 8 { c'32 f,~ } f2
  \repeat tremolo 8 { c'32 f,~ } f2
  \clef treble
  f'8( g g a a b b c~
  c1)

  f,8( g g a a b b c~
  c1)
  \clef bass
  f,,4( g a b~

  b1)
  f,4( g a b~
  b1)
  f4( g a b)

  f( g a c)
  f,( g a b)
  f( g a c)
  f( g a b)

  f( g a c)
  f,( g a b)
  <f, f'>( <g g'> <a a'> <b b'>)
  <a a'>( <b b'> <c c'> <d d'>)

  <f, a c f>1
  <<
    {
      b2( g)
      f'2.( g4)
      <c, e>2. <b d>8( <a c>)
    }
  \\
    {
      <e c' e>1
      <f a c>
      <a' c>
    }
  >>

  <f, a c f>1
  <g b e g>
  <a c f a>

  <d f b d>
  \clef treble
  f'2( c'
  b g~
  g1)

  f2( c'
  b g~
  g1)
  d'2( c

  b g~
  g1)
  \clef bass
  <f,,, f'>~
  <f f'>
}

dynamics = {
  s32\f s32 s32*28\> s32 s32\p
  s1
  s32\f s32 s32*28\> s32 s32\p
  s1
  s32\f s32 s32*28\> s32 s32\p
  s1
  s32\f s32 s32*28\> s32 s32\p
  s1
  s32\f s32 s32*28\> s32 s32\p
  s1
  s32\f s32 s32*28\> s32 s32\p
  s1
  s32\f s32 s32*28\> s32 s32\p
  s1
  s32\f s32 s32*28\> s32 s32\p
  s1*2
  s32 s32*30\mf s32
  s1
  s32 s32*29\< s32\! s32
  s32*26\f s32*4\> s32\! s32
  s32 s32*30\mf s32
  s1
  s32 s32*30\f s32
  s4*3 s32*6\> s32\! s32
  s32 s32*30\mf s32
  s1
  s32 s32*61\< s32\! s32
  s32 s32*30\f s32
  s1
  s32 s32*61\> s32\! s32
  s32 s32*30\mp s32
  s1
  s32 s32*61\< s32\! s32
  s32 s32*30\f s32
  s1
  s32 s32*61\> s32\! s32
  s32 s32*30\mf s32
  s1*3
  s32 s32*61\> s32\! s32
  s32 s32*30-\markup { \dynamic "p" "rit." } s32
  s1*11
  s32 s32*30\mp s32
  s1*2
  s32 s32*29\< s32\! s32
  s32 s32*30\mf s32
  s1*2
  s32 s32*61\< s32\! s32
  s32 s32*30\f s32
  s1*3
  s32 s32*93\< s32\! s32
  s32\ff s32*2 s32*27\> s32\! s32
  s32 s32*30\pp s32
  s1*8
  s32 s32*30\ppp s32
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
