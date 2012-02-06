%\version "2.14.2"

%\header {
%  title = "Foo"
%  subtitle = "Bar"
%  composer = "Baz"
%  tagline = ""
%}

%global = {
%  \tempo 4 = 60
%  \key c \major
%  \time 4/4
%  \numericTimeSignature
%}

%notes = \relative c' {
%}

%chordnames = \chordmode {
%}

\score {
  <<
    \new ChordNames { \chordnames }
    \new FretBoards {
      \override FretBoard #'(fret-diagram-details orientation) = #'landscape
      << \global \chordnames >>
    }
    \new StaffGroup <<
      \set StaffGroup.instrumentName = \markup { \center-column { "Low G" "Ukulele" } }
      \new Staff {
        \clef treble
        \override Staff.StringNumber #'transparent = ##t
        << \global \notes >>
      }
      \new TabStaff {
        \contextStringTuning #'ukulele-tuning <g c' e' a'>
        \include "predefined-ukulele-fretboards.ly"
        << \global \notes >>
      }
    >>
  >>

  \layout {
    \context {
      \ChordNames
      \override ChordName #'font-size = #0
    }
  }
}

\score {
  \unfoldRepeats {
    \new Staff = "UkuleleStaff" << \global \notes >>
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
