\version "2.12.2"

\header {
  title = "Comptine d'un autre été: l'après-midi"
  subtitle = \markup { "from" \italic "Amélie" }
  composer = "Yann Tiersen"
  instrument = "Piano solo"
}

global = {
  \tempo 4 = 100
  \key e \minor
  \time 4/4
  \numericTimeSignature
}

upper = \relative c'' {
  \clef treble
  R1*4
  \break

  \repeat volta 2 {
    r8 g16-1( fis-2 g8 b16-3 c b2)
    r8 fis16-2( g-3 fis8 g16-3 a g2)
    r8 fis16-2( e fis8 b16-4 c b2)
    r8 fis16-2( e fis2.)
  }
  \break

  e'4.-3( b8-1~ b2)
  d4.-2( b8~ b2)
  fis'4.-4( b,8-1~ b2)
  fis'4.-4( a,8-1~ a2)
  \break

  <b-2 g'-5>4.( <g-1 e'-4>8~ <g e'>2)
  <b-2 g'-5>4.( <g-1 d'-3>8~ <g d'>2)
  <b-2 fis'-5>4.( <fis-1 d'-3>8~ <fis d'>2)
  <a-1 fis'-5>4.( <fis-1 d'-3>8~ <fis d'>2)
  \break

  \repeat volta 2 {
    b16-1-> e-2 b'-5 b, e b' b, e b' b, e b' b,-1->( e-2 c-1-> e-2
    b-1->) d-2 b'-5 b, d b' b, d b' b, d b' b,-1->( d-3 a-1-> d-3
    \break

    fis,-1->) b-2 fis'-5 fis, b fis' fis, b fis' fis, b fis' fis,-1->( b-2 g-1-> b-2
  }
  \alternative {
    {
      a-1->) d-2 a'-5 a, d a' a, d a' a, d a' a,-1->( d-2 g,-1-> d'-2
      \break
    }
    { a-1->) d-2 a'-5 a, d a' a, d a' a, d a' a, d a'8 }
  }

  \repeat volta 2 {
    r8 g16-1( fis-2 g8-1 b16-3 c b2)
    r8 fis16-2( g-3 fis8 g16-3 a g2)
    \break

    r8 fis16-2( e fis8 b16-4 c b2)
    r8 fis16-2( e fis2.)
  }
}

foo = {
  \relative c' {
    <<
      {
        e8-1 b e b e b e b
        d-1 b d b d b d b
        d-1 b d b d b d b
        d-1 a d a d a d a
      }
    \\
      {
        e4-5 g-4 e g
        d-5 g-4 d g
        d-5 fis-4 d fis
        d-5 fis-4 d fis
      }
    >>
  }
}

lower = \relative c' {
  \clef bass
  \foo
  \repeat volta 2 { \foo }
  \foo
  \foo
  \repeat volta 2 {
    <<
      {
        e8 b e b e b e b
        d b d b d b d b
        d b d b d b d b
      }
    \\
      {
        e,4 g e g
        d g d g
        d fis d fis
      }
    >>
  }
  \alternative {
    {
      <<
        { d'8 a d a d a d a }
      \\
        { d,4 fis d fis }
      >>
    }
    {
      <<
        { d'8 a d a d a d a }
      \\
        { d,4 fis d fis }
      >>
    }
  }

  \repeat volta 2 { \foo }
}

dynamics = {
  s1\p
  s32 s32*29\< s32\! s32
  s1
  s32 s32*29\> s32\! s32

  \repeat volta 2 {
    s8 s8\mf s2.
    s16 s16\< s16*2 s16\!\> s16*4 s16\! s16*6
    s16 s16\< s16*2 s16\!\> s16*4 s16\! s16*6
    s16\> s16*14 s16\!
  }

  s1\p
  s16\< s16*14 s16\!
  s1
  s16\> s16*14 s16\!

  s1\mf
  s16\< s16*14 s16\!
  s1
  s16\> s16*14 s16\!

  \repeat volta 2 {
    s1\mf
    s16\< s16*14 s16\!
    s1
  }
  \alternative {
    { s16\> s16*14 s16\! }
    { s16\> s16*6 s16\! s16 s16-"Ralentir..." s16*6 }
  }

  \repeat volta 2 {
    s16*3 s16\p s16*12
    s16\< s16*14 s16\!
    s1
    s16\> s16*14 s16\!
  }
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
