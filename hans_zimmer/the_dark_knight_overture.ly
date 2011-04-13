\version "2.12.2"

\header {
  title = "The Dark Knight Overture"
  subtitle = \markup { "from" \italic "The Dark Knight" }
  composer = "Hans Zimmer and James Newton Howard"
  arranger = "Arranged by Jack Dolman"
}

global = {
  \tempo "Mysteriously" 4 = 96
  \key c \major
  \time 4/4
  \numericTimeSignature
  s1*2\break
  s1*2\break
  s1*2\break
  s1*2\break
  s1*2\break
  s1*2\break
  s1*2\break
  s1*2\break
  s1*2\break
  s1*2\break
}

upper = \relative c' {
  \clef treble
  R1*3
  d1
  f~
  f~
  f
  R1*2
  <<
    {
      a2( d

      d1)
      s1

      R1
      g,2( c

      c1)
      s1

      R1
      d,2( d'

      d1)
      s1
    }
  \\
    {
      s1

      r2 e,(
      <d f>1)

      s1*2

      r2 e~(
      <b e>1)

      s1*2

      r2 e(
      f1)
    }
  >>
}

lower = \relative c {
  \clef bass
  f16 a, d a f' a, d a f' a, d a f' bes, d bes
  f' a, d a f' a, d a f' a, d a f' bes, d bes

  f' a, d a f' a, d a f' a, d a f' bes, d bes
  f' a, d a f' a, d a f' a, d a f' bes, d bes

  f' a, d a f' a, d a f' a, d a f' bes, d bes
  f' a, d a f' a, d a f' a, d a f' bes, d bes

  f' a, d a f' a, d a f' a, d a f' bes, d bes
  f' a, d a f' a, d a f' a, d a f' bes, d bes

  f' a, d a f' a, d a f' a, d a f' a, d a
  f' a, d a f' a, d a f' a, d a f' a, d a

  f' bes, d bes f' a, d a f' a, d a f' a, d a
  f' bes, d bes f' a, d a f' a, d a f' a, d a

  f' a, d a f' a, d a f' a, d a f' a, d a
  f' a, d a f' a, d a f' a, d a f' a, d a

  f' a, d a f' a, d a f' a, d a f' a, d a
  f' a, d a f' a, d a f' a, d a f' a, d a

  f' bes, d bes f' bes, d bes f' bes, d bes f' bes, d bes
  f' bes, d bes f' bes, d bes f' bes, d bes f' bes, d bes

  f' a, d a f' a, d a f' a, d a f' a, d a
  f' a, d a f' a, d a f' a, d a f' a, d a
}

dynamics = {
  s1-\markup { \dynamic "pp" "legato" }
  s1*2
  s16\p s16*30\< s16\!
  s16\mp s16*30\> s16\!
  s1*2\pp
  s16*15\< s16\!
  s16\mp s16*14\> s16\!
  s1*2
  s16*15\< s16\!
  s16*15\> s16\!
  s1*2
  s16*15\< s16\!
  s1
  s16*15\< s16\!
}

pedal = {
  \set Dynamics.pedalSustainStyle = #'mixed
  s16\sustainOn s16*3 s16\sustainOff\sustainOn s16*3 s16\sustainOff\sustainOn s16*3 s16\sustainOff\sustainOn s16*3
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
  \midi { }
}

