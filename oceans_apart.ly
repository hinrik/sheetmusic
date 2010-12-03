\version "2.12.2"

\header {
  title = "Ocean's Apart"
  subtitle = \markup { "from" \italic "Lost: Season 3" }
  composer = "Michael Giacchino"
  instrument = "Piano solo"
}

\new PianoStaff <<
  \tempo 4 = 60
  \new Staff {
    \clef treble
    \key ges \major
    \numericTimeSignature
    \time 4/4
    \relative c' {
      es8( ges ges as as bes bes des
      c2 as2)

      bes8( ges ges des des ges ges bes
      as2 es2)

      ces'8( ges ges es ces' ges ges es
      bes'2 ges2)

      des8(\< es es ges des es es as)
      as8( ces ces des des\!\mf\> es es f\!)

      <<
        { bes2.( des4 | c2 as2) }
        \\
        { <ges es>1 <as es>1 }
      >>

      <<
        {bes2.( ges8. bes16 | as2 es2) }
        \\
        { <ges des>1 <es c>1 }
      >>
    }
  }
  \new Staff {
    \clef bass
    \key ges \major
    \numericTimeSignature
    \time 4/4
    \relative c {
      <es ges bes>1^\markup { \dynamic "mp" \bold \italic "espressivo" }
      <es as c>1
      <ges bes des>1
      <es as c>1

      <ges ces es>1
      <ges bes des>1
      <es ges ces>1
      <f as des>1

      <<
        { es8^\mp( ges ges as as bes bes des) | c( as as es es as as c) }
        \\
        { <ges, bes es>1 <c es as>1 }
      >>

      <<
        { bes'8( ges ges des des ges ges bes) | as^\<( es es c c es es as)\! }
        \\
        { <ges des bes>1 <es c as>1 }
      >>
    }
  }
>>
