\version "2.12.2"

\header {
  title = "Romancing the Cage"
  subtitle = \markup { "from" \italic "Lost" }
  composer = "Michael Giacchino"
}

global = {
  \tempo 4 = 60
  \key c \major
  \time 4/4
  \numericTimeSignature
  s1*27
  \bar "|."
}

upper = \relative c''' {
  \clef treble
  a2.( b4
  a2. b4
  c2. b4
  \break

  g fis2.)
  a2.( b4
  a2. fis4
  \break

  e2. fis4
  d4 a~ a8) d,( a' d
  e4. c8 a4 g)
  \break

  fis16( g a4.~ a4) d,8( d'
  e4. c8 g'4. e8
  d2.) c8( d
  \break

  e4. c8 g'4 e
  fis d a') a8( b
  c4. b8 a4 g
  \break

  a1\fermata)
  <d,, fis a>2. <d fis b>4
  <cis fis a>2. <cis fis b>4
  \break

  <d g c>2. <d g b>4
  << { g4 fis2. } \\ { <g, b d>1 } >>
  <c e g a>2. <c e g b>4
  \break

  <d fis a>2. <a d fis>4
  <g c e>2. <g c ges'>4
  <g a d>4 <d fis a>2.
  \break

  <g' c e>2. <g c ges'>4
  <g a d>2 <d fis a>
  <d' fis g a d>1\fermata
}

lower = \relative c' {
  \clef treble
  <d fis a>1
  <cis fis a>
  <d g c>

  <d g b>
  <e g c>
  <d fis a>

  <d g c>
  <d g a>
  <e, g c e>

  <d fis a d>
  <g c e g>
  <fis b d fis>

  <g c e g>
  <fis a d fis>
  <a c fis a>4. <b b'>8 <a d fis a>4 <g b d g>

  <<
    {
      <a cis e a>4 <e a cis e>2.\fermata
    }
  \\
    {
      r2
      \clef bass
      <a,, a'>2\fermata
    }
  >>
  d8( f b2) dis8( b)
  fis( cis' fis2) cis8( b)

  g( d' c' b~ b4.) d,8
  <g, d'>1
  c,8( g' d'2) e8( g

  <d fis>1)
  g,8( c e2) e8( c
  d4) <d, a'>2.

  g'8( c e2) e8( c
  d2) <d, b'>
  <d, a' d>1\fermata
}

dynamics = {
  s1*14\mp
  s32*45\< s32\! s32 s32\f s32*16
  s1*6\mf
  s32 s32*32\> s32\! s32*7 s32*23\p
  s32-"rit." s32 s32*36\> s32\! s32 s32\p
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
      % padded enough in some cases
      \override Hairpin #'bound-padding = #2.0

      % hack to fix incorrect placement of the instrument name when
      % pedaling instructions are present
      % http://lists.gnu.org/archive/html/lilypond-user/2010-07/msg00402.html
      \override VerticalAxisGroup #'meta =
      #(let* ((descr (assoc-get 'VerticalAxisGroup all-grob-descriptions))
              (meta (assoc-get 'meta descr))
              (ifaces (assoc-get 'interfaces meta)))
        ;; Adding piano-pedal-interface to this VerticalAxisGroup
        ;; prevents it being acknowledged by Instrument_name_engraver
        (acons 'interfaces (cons 'piano-pedal-interface ifaces)
                meta))
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

