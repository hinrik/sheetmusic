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
  s1*25
  \bar "|."
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
  bes1\fermata
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
    bes,,1\fermata
  }
}

dynamics = {
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
