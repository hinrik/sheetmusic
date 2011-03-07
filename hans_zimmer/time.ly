\version "2.12.2"

\header {
  title = "Time"
  subtitle = \markup { "from" \italic "Inception" }
  composer = "Hans Zimmer"
  instrument = "Piano solo"
}

global = {
  \tempo "Slowly" 4 = 60
  \key a \dorian
  \time 4/4
  \numericTimeSignature
}

upper = \relative c {
  \clef bass
  c1
  g'
  b,
  fis'
  c
  b'
  b,
  fis'
  \bar "||"
  \break

  c
  <b g'>
  b
  <a fis'>
  c
  <c b'>
  b
  <a fis'>
  \bar "||"
  \break

  <<
    {
      e'
      <e g>2( fis4 e)
      d1
      <d fis>2( e4 d)
      e1
      \break

      <e g b>2( <fis a>4 <e g>)
      d1
      <d fis>2( e4 d)
      \bar "||"
      c'1
      \clef treble
      <g g'>

      \break
      d'
      <fis, fis'>
      c'
      <b g' b>
      b
      \break

      <fis fis'>
      \bar "||"
    }
  \\
    {
      <a, c>2( b4 a)
      b1
      <g b>2( a4 g)
      a1
      <a c>2( b4 a)

      s1
      <g b>2( a4 g)
      a1
      r4 b'( a2)
      s1
      r4 a( g2)
      s1
      r4 b( a2)
      s1
      r4 a( g2)
    }
  >>

  <c c'>1
  <g' g'>
  <b, b'>
  <fis' fis'>
  \break

  <c c'>
  <b' g' b>
  <b, b'>
  <fis' fis'>
  \bar "||"
  \break

  <c c'>
  <g' g'>
  <b, b'>
  <fis' fis'>
  \break

  <c c'>
  <b' b'>
  <b, b'>
  <fis' fis'>
  \bar "||"
  \break

  <c c'>2( <b b'>4 e
  <g g'>2) <fis fis'>4( <b, b'>)
  \break

  <b b'>2( <a a'>4 d
  <fis fis'>2) <e e'>4( <a, a'>)
  \break

  <c c'>2( <b b'>4 e
  <b' b'>2) <g g'>4( <c, c'>)
  \break

  <b b'>2( <a a'>4 d
  <fis fis'>2) <e e'>4( <a, a'>)
  \bar "||"
  \break

  c'2\mp c'\pp
  g\mp g'\pp
  b,,\mp b'\pp
  fis\mp fis'\pp
  c,\mp c'\pp
  b\mp b'\pp
  b,,\mp b'\pp
  fis\mp fis'\pp
  \break

  c,1
  g'
  b,
  fis'
  c
  b'
  b,
  fis'\fermata
  \bar "|."
}

lower = \relative c {
  \clef bass
  a1
  e
  g
  d
  a'
  <c, c'>
  g'
  d

  <a e'>
  <e e'>
  <g g'>
  <d d'>
  <a' a'>
  <c g'>
  <g g'>
  <d d'>

  <a' e'>
  <e e'>
  <g d'>
  <d d'>
  <a' e'>

  <c g' c>1
  <g d'>
  <d d'>
  <<
    {
      e''2( e4 fis
      b, fis' e b)

      d2( d4 e
      a, e' d) a8( b
      e2 e4 fis
      g a g fis)
      d2( d4 e

      a, e' d) a8( b
      e4 b' <e, a> fis
      g fis e b)
      d( a' <d, g> e
      <a, fis'> e' d) a8( b

      e4 b' <e, a> fis
      e a g fis)
      d( a' <d, g> e
      <a, fis'> e' d) a8 b

      r4 <b' c>-_ <a c>-_ <fis a c>-_
      r4 <fis g>-_ <e g>-_ <b g'>-_
      r4 <b' c>-_ <d, g b>-_ <e g b>-_
      r4 <e fis>-_ <d fis>-_ <a fis'>8 b

      r4 <b' c>-_ <a c>-_ <fis a c>-_
      <b c>-_ <a c>-_  <g c>-_ <fis c'>-_
      r4 <a b>-_ <d, g b>-_ <e g b>-_
      r4 <e fis>-_ <d fis>-_ <a fis'>8 b
    }
  \\
    {
      <a c>1
      e

      <g b>
      d
      <a' c>
      <c e>
      <g b>

      d
      <a' c>
      <e b'>2. r4
      <g b>1
      d

      <a' c>
      <c, g'>
      <g' b>
      d

      a'
      e
      g
      d

      a'
      c
      g
      d
    }
  >>

  a'16 c e a a,16 c e a a,16 c e a a,16 c e a
  e, b' e g e, b' e g e, b' e g e, b' e g

  g, b d g g, b d g g, b d g g, b d g
  d, a' d fis d, a' d fis d, a' d fis d, a' d fis

  a,16 c e a a,16 c e a a,16 c e a a,16 c e a
  c,, g' c e c, g' c e c, g' c e c, g' c e

  g, b d g g, b d g g, b d g g, b d g
  d, a' d fis d, a' d fis d, a' d fis d, a' d fis
  \clef treble

  <<
    {
      r2 a''
      r2 e
      r2 g
      r2 d

      r2 a'
      r2 c,
      r2 g'
      r2 d
    }
  \\
    {
      a1
      e
      g
      d
      a'
      c,
      g'
      d
    }
  >>

  a'
  e
  g
  d
  a'
  c,
  g'
  d\fermata
}

dynamics = {
  s32 s32*30\pp s32
  s1*15
  s32 s32*30\p s32
  s1*7
  s32 s32*7\mp s32*22\< s32\! s32
  s32 s32*29\> s32\! s32
  s32 s32*29\< s32\! s32
  s32 s32*29\> s32\! s32
  s32 s32*29\< s32\! s32
  s32 s32*29\> s32\! s32
  s32 s32*29\< s32\! s32
  s32 s32*29\> s32\! s32
  s32 s32*29\< s32\! s32
  s32 s32*29\> s32\! s32
  s32 s32*29\< s32\! s32
  s32 s32*29\> s32\! s32
  s32 s32*29\< s32\! s32
  s32 s32*29\> s32\! s32
  s32 s32*29\< s32\! s32
  s32 s32*30\mf s32
  s1*14
  s32*31\f\< s32\!
  s32*31\> s32\!
  s1*8
  s1*2\p
  s32*62\> s32\! s32
  s32 s32 s32*29\pp s32
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
  \midi { }
}

