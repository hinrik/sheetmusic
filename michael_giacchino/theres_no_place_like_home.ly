\version "2.12.2"

\header {
  title = "There's No Place Like Home"
  subtitle = \markup { "from" \italic "Lost" }
  composer = "Michael Giacchino"
  arranger = "Arranged by Young-Ah Hauser"
}

global = {
  \tempo 4 = 60
  \key d \major
  \time 4/4
  \numericTimeSignature
  s1*4\break
  s1*6\break\bar "||"
  s1*4\break
  s1*4\break
  s1*4\break
  s1*4\break\bar "||"
  s1*4\break
  s1*3\bar "|."
}

upper = \relative c'' {
  \clef treble
  R1*2
  d2 e4 d
  fis8 g g4 cis,2

  fis8 g g4 e2
  fis8 g g4 a2
  d,2 e4 d
  cis'8 b a4 cis,2
  d'2 e4 d
  b2 d4 cis

  <fis,,, a d>2 <a e'>4 d
  <a cis fis>8 g' g4 cis,2
  <b e fis>8 g' g4 <b, e>2
  <b fis'>8 <e g> <e g>4 <e a>2

  <fis, a d>2 <a e'>4 <a d>
  <cis a' cis>8 b' <cis, a'>4 cis2
  <e g d'>2 <g b e>4 <g d'>
  <g b>2 <g d'>4 <g cis>

  <<
    {
      d'2 e4 d
      fis8 g g4 cis,2
      fis8 g g4 e2
      fis8 g g4 <a, a'>2

      d2 e4 d
      cis'8 b a4 cis,2
      <g' d'>2 <e g b e>4 <d g b d>
      <b b'>2 <d d'>4 <cis cis'>
    }
  \\
    {
      <d, fis>8 e e fis <fis a> a <fis a>4
      fis4 fis8 a a b <a cis>4
      b8 g g b cis b g4
      a8 b b cis cis e e g

      <d fis> cis cis b b a fis4
      cis'8 fis fis a, a b <a cis>4
      d8 cis cis b r2
      g'8 b, b cis cis d e4
    }
  >>

  d,8 e e fis fis a a4
  cis,8 fis fis a a b cis4
  g8 b b cis cis b g4
  g8 b b cis cis e e4

  d8 cis cis b~ b2
  d8 cis cis b~ b2
  <d d'>1\fermata
}

lower = \relative c {
  \clef bass
  <d fis a>1
  <cis fis a>

  <d fis a>
  <cis fis a>
  <e g b>
  <a, e' a>

  <d fis a>
  <cis fis a>
  <e g b>
  <e g a>

  <d, a' d>8 e' e fis <d fis> a' a4
  <fis, cis'>8 fis' fis a <fis a> b cis4
  <e,, b' e>8 g' g b <g cis> b <e, g>4
  <a, e' g>8 b' b cis cis e e g

  <d,, a' d> cis'' cis b b a fis4
  <fis, cis' fis>8 fis' fis a a b cis4
  <e, g d'>8 cis' cis b <e, g b> a <e g>4
  <a, e' g>8 b' b cis <a cis> d e4

  <d,, a' d>8 e' e fis <d fis> a' <d, fis a>4
  <fis, cis'>8 fis' fis a <fis a> b <fis a cis>4
  <e, b' e>8 g' g b <g cis> b <e, g>4
  <a, e' g>8 b' b cis <a cis> e' e g

  <d,, a' d> cis'' cis b <d, fis b> a' <fis a>4
  <fis, cis'>8 fis' fis a <fis a> b <fis a cis>4
  <e, b' e>8 cis'' cis b <e, g b> a <e g b>4
  <a, e' g>8 b' <g b> cis <a cis> <b d> <cis e>4

  d,2 e4 d
  fis8 g g4 cis,2
  fis8 g g4 e2
  fis8 g g4 a2

  R1*2
  d,,1\fermata
}

dynamics = {
  s1*26\mp
  s1*4\pp
  s1*3\ppp
}

pedal = {
}

chordnames = \chordmode {
}

\score {
  \new PianoStaff = "PianoStaff_pf" <<
    \set PianoStaff.instrumentName = #"Piano"
    \new ChordNames = "chordnames" \chordnames
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
    % modify PianoStaff context to accept ChordNames and Dynamics context
    \context {
      \PianoStaff
      \accepts ChordNames
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
