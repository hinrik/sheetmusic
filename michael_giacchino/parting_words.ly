\version "2.12.2"

\header {
  title = "Parting Words"
  subtitle = \markup { "from" \italic "Lost" }
  composer = "Michael Giacchino"
}

global = {
  \tempo 4 = 65
  \key des \major
  \time 4/4
  \numericTimeSignature
  s1*64
  \bar "|."
}

upper = \relative c' {
  \clef treble
  R1
  <des' as'>1
  R1
  <des as'>
  \break

  R1
  <des as'>
  R1
  <<
    { <des as'> }
  \\
    { as2 bes }
  >>
  \break

  <des, as'>1~
  <des as'>
  <des as'>~
  <des as'>
  \break

  <des as'>~
  <des as'>
  <<
    { as'( c2 des) }
  \\
    { des,1~ des }
  >>
  \break

  as'4( des es f~
  f1)
  c4( bes f' ges~
  ges1)
  \break

  f4( ges as bes~
  bes1)
  <<
    {
      des,4( es f ges~
      ges1)
    }
  \\
    {
      as,~
      as
    }
  >>
  \break

  f8( es f as ges4 as)
  bes8( as bes des es4 des)
  as8( ges as bes c4 des)
  \break

  f8( es f ges as4 des,)
  <<
    {
      f8( es ges f es des f as)
      bes8( as ges f es des es4)
    }
  \\
    {
      f,4( ges as bes~
      bes1)
    }
  >>
  \break

  <<
    { des8 des es es f f ges ges }
  \\
    { des,4( es f ges) }
  >>
  <as as'>4
  <bes bes'>
  <c c'>
  <des des'>
  <<
    {
      es( des2.)
      \break
      des4( c2.)
      as'4( ges2.)
      ges4( f es2)
    }
  \\
    {
      <f, as>1
      <es f>1
      % The original has an additional ges below the bes here.
      % I moved it to the right hand for easier playing.
      <bes' des>
      <bes des es>
    }
  >>
  \break

  es4( des des'2
  c4 bes2.)
  as4( ges2.)
  \break

  bes4( as2.)
  <c, c'>4( <es es'> <as, as'>2~
  <as as'>1)
  \break

  as,4( des es f)
  c( bes f' ges)
  f( ges as bes)
  \break

  des,( es f ges)
  <f f'>( <des des'>2.)
  <ges ges'>4( <des des'>2.)
  \break

  <as' as'>4( <des, des'>2.)
  <bes' bes'>4( <des, des'>2.)
  <des' des'>4( <as as'>2 <es' es'>4
  \break

  <des des'>8 <c c'> <bes bes'>2~ <bes bes'>8) <es es'>(
  <f f'>4 <des des'>2) <as' as'>4(
  <ges ges'>8 <f f'> <des des'>2.)
  \break

  <f, as des f>4( <des f as des>2~ <des f as des>8) <des f as des>
  <ges bes des ges>4( <des ges bes des>2~ <des ges bes des>8) <des ges bes des>
  <as' des f as>4( <des, f as des>2~ <des f as des>8) <des f as des>
  \break

  <bes' des ges bes>4( <des, ges as des>2~ <des ges as es'>8) <des' ges as es'>
  <f as des f>4( <des f as des>2~( <des f as des>8) <des f as des>
  <ges bes des ges>4( <des ges bes des>2~ <des ges bes des>8) <des ges bes des>
  \break

  <as' des f as>4( <des, f as des>2~ <des f as des>8) <des f as des>
  <des' ges c>2 <bes des ges bes>
  c des
  <des,,, f as des>1\fermata
}

lower = \relative c' {
  \clef treble
  as4( des es f~
  f1)
  c4( bes f' ges~
  ges1)

  f4( ges as bes~
  bes1)
  des,4( es f ges~
  ges1)

  f4( des2.~
  des1)
  ges4( des2.~
  des1)

  as'4( des,2.~
  des1)
  bes'4( des,2.~
  des1)
  \clef bass

  <des, f des'>1~
  <des f des'>
  <des ges des'>~
  <des ges des'>

  <des f des'>1~
  <des f des'>
  <<
    {
      des'
      bes4 c des es
    }
  \\
    {
      <des, ges>1~
      <des ges>
    }
  >>
  \clef treble

  as'4( des es f~
  f2) as,4( des
  c bes f' ges~

  ges2) des4( ges)
  \clef bass
  des,,8( ges des'4) <ges, des'>2
  des8( ges des'4) <ges, des'>2

  <des' ges>4 <ges, des'>2.
  <ges' des'>4 <des ges>2.
  \clef treble
  <<
    { es'1 }
  \\
    { des4( as2) es'4 }
  >>

  des8( c bes4~ bes4.) es8
  <<
    % In the original, this note is played by the right hand,
    % but I put it here because I find it easier to play it this way.
    { ges1 }
  \\
    { f4( des2) as'4 }
  >>
  ges8( f des2)
  \clef bass
  <f,,, f'>4

  <<
    { r4 <des'' f as des>4 <des f as des>4 <des f as des>4 }
  \\
    { <des, des'>1 }
  >>
  r4 <des' ges bes des>4 <des ges c des> <des ges bes des>
  r4 <f as c des> <f as c des> <f as c des>

  r4 <des ges bes des> <des ges c des> <des ges bes des>
  r2
  <<
    { <as' c>~ <as c>1 }
  \\
    { es2( as,1) }
  >>

  <des, as' f' as>\arpeggio
  <des ges des' ges>\arpeggio
  <des as' f' c'>\arpeggio

  <des bes' ges' bes>\arpeggio
  <des' f as>4 <des f as> <des f as> <des f as>
  <des ges bes> <des ges bes> <des ges bes> <des ges bes>

  <des f c'> <des f c'> <des f c'> <des f c'>
  <bes des ges bes> <bes des ges bes> <bes des ges bes> <bes des ges bes>
  <des f as> <des f as> <des f as> <des f as>

  <des ges bes> <des ges bes> <des ges bes> <des ges bes>
  <des f c'> <des f c'> <des f c'> <des f c'>
  <bes des ges bes> <bes des ges bes> <bes des ges bes> <bes des ges bes>^\f

  <as, as'>( <des des'> <es es'> <f f'>)
  <c c'>( <bes bes'> <f' f'> <ges ges'>)
  <f f'>( <ges ges'> <as as'> <bes bes'>)

  <des, des'>( <es es'> <f f'> <ges ges'>)
  <f' as des f>( <des f as des>) <des,, des'>4. <des des'>8
  <ges'' bes des ges>4( <des ges bes des>) <des,, des'>4. <des des'>8

  <as''' des f as>4( <des, f as des>) <des,, des'>4. <des des'>8
  \clef treble
  <des'''' ges bes>2 <des ges as>
  as' ges
  \clef bass
  <des,,,, des'>1\fermata
}

dynamics = {
  s1*16\p
  s1*8\mf
  s1*4\p
  s1*2\mf
  s1-"rit."
  s32*31\> s32\!
  s1*4-\markup { \dynamic "p" "a tempo" }
  s1*3-"cresc. poco a poco"
  s4 s2.\f
  s1*2\p
  s1*4\mf
  s32*4\p s32*17\< s32\! s32*2 s32*8\mf
  s1-"sim."
  s1-"sim."
  s1-"sim."
  \set crescendoText = \markup { \italic "cresc." }
  \set crescendoSpanner = #'text
  s1*8\p\<
  s1*3\ff
  s1\ff
  s1-"rit."
  s1\p
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
