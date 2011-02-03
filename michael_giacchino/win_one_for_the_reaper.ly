\version "2.12.2"

\header {
  title = "Win One for the Reaper"
  subtitle = \markup { "from" \italic "Lost" }
  composer = "Michael Giacchino"
  instrument = "Piano solo"
}

\score {
  \new PianoStaff <<
    \tempo 4 = 60
    \new Staff {
      \clef treble
      \key bes \major
      \numericTimeSignature
      \time 4/4
      \relative c' {
        R1*3
        r4 d4 f2
        \break

        g2. r4
        bes2. r4
        g2. r4
        g2 r2

        f4( d8 f~ f d f d
        f4 a8 f~ f2)
        \break
        f4( d8 f~ f d f d
        f4 a8 f~ f2)

        g4( es8 f~ f es f es
        f4 es8 d~ d es f4)
        g4( es8 f~ f es f es
          d2 c2)
          \break

        f4( d8 f~ f d f d
        f4 a8 f~ f2)
        f4( d8 f~ f d f d
        f4 a8 f~ f2)
        \break

        g4( es8 f~ f es f es
        f4 es8 d~ d es f4)
        g4( es8 f~ f es f es
        d2 c2)
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
        bes1~
        bes
        \bar "|."
      }
    }
    \new Staff {
      \clef bass
      \key bes \major
      \numericTimeSignature
      \time 4/4
      \relative c {
        <d f bes>1
        <d f a>
        <d f bes>
        <d f a>

        <es g bes>
        <d f bes>
        <es g bes>
        <d g bes>2 <c f a>

        <d f bes>1
        <d f a>
        <d f bes>
        <d f a>

        <es g bes>
        <d f bes>
        <es g bes>
        <d g bes>2 <c f a>

        <d f bes>1
        <d f a>
        <d f bes>
        <d f a>

        <es g bes>
        <d f bes>
        <es g bes>
        <d g bes>2 <c f a>

        #(set-octavation 1)
        <d' f bes>1
        <d f a>
        <d f bes>
        <d f a>

        <es g bes>
        <d f bes>
        <es g bes>
        <d g bes>2 <c f a>
        #(set-octavation 0)
        bes,,1~
        bes1
      }
    }
  >>
  \midi { }
  \layout { }
}
