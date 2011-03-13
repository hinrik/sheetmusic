\version "2.12.2"

\header {
  title = "Ocean's Apart"
  subtitle = \markup { "from" \italic "Lost: Season 3" }
  composer = "Michael Giacchino"
  instrument = "Piano solo"
}

global = {
  \tempo 4 = 60
  \key ges \major
  \time 4/4
  \numericTimeSignature
}

upper = \relative c' {
  \clef treble
  es8( ges ges as as bes bes des
  c2 as)
  bes8( ges ges des des ges ges bes
  \break

  as2 es)
  ces'8( ges ges es ces' ges ges es
  bes'2 ges)
  \break
  des8( es es ges des es es as)
  as( ces ces des des es es f)

  <<
    {
      bes2.( des4
      \break

      c2 as)
      bes2.( ges8. bes16
      as2 es)
      \break

      <es ges ces es>2( \times 2/3 { <es ges ces es>4 <es ges ces es> <ges ces es ges> }
      <des ges bes des>2 <ges, bes des ges>)
      <ges b es ges>2( \times 2/3 { <as b es as>4 <as b es as> <es as ces es>) }
      \break

      <es' es,>8( <f f,> <f f,> <as as,>
      <as as,>8 <ces ces,> <ces ces,> <des des,>\fermata)
      bes2.^\markup { \bold "a tempo (freely)" }( des4
      c2 as)

      \break
      bes2.( ges8. bes16
      as2 es)
    }
  \\
    {
      <ges es>1
      <as es>
      <ges des>
      <es c>

      s1*4
      <es ges>1
      <es as>
      <ges des>
      <c, es>
    }
  >>

  s1
  \bar "|."
}

lower = \relative c {
  \clef bass
  <es ges bes>1
  <es as c>
  <ges bes des>
  <es as c>

  <ges ces es>
  <ges bes des>
  <es ges ces>
  <f as des>

  <<
    {
      es8( ges ges as as bes bes des)
      c( as as es es as as c)
      bes( ges ges des des ges ges bes)
      as( es es c c es es as)
      ces( ges ges es)
      \times 2/3 { <ces ces'>4_( <ges ges'> <es es'>) }
      bes''8( ges ges des bes' ges ges des)
      des8( es es ges) \times 2/3 { <des, des'>4_( <es es'> <as as'>) }
    }
  \\
    {
      <ges bes es>1
      <c es as>
      <ges' des bes>
      <es c as>
      <ces es ges>
      <ges' des bes>
      <ges, ces>
    }
  >>

  \arpeggioArrowUp
  <f' des as des,>1\arpeggio\fermata
  R1*4
  <bes ges es bes bes,>1\arpeggio
  \bar "|."
}

dynamics = {
  s32 s32*30-\markup{ \dynamic "mp" \bold \italic "espressivo" } s32
  s1*5
  s1\<
  s8 s8*2 s8\! s8\mf\> s8*2 s8\!
  s32 s32*30\mp s32
  s1*2
  s8\< s8*6 s8\!
  s1\f
  s1*2
  s32*2^"rit." s32*2\> s8*6 s8\!
  s32 s32*30\p s32
  s1
  s1-\markup { \italic "rit." }
}

pedal = {
}

\score {
  \new PianoStaff = "PianoStaff_pf" <<
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
