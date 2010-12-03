\version "2.12.2"

\header {
  title = "Ocean's Apart"
  subtitle = \markup { "from" \italic "Lost: Season 3" }
  composer = "Michael Giacchino"
  instrument = "Piano solo"
}

#(set-global-staff-size 26)

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

      <es ges ces es>2(\f
      \times 2/3 { <es ges ces es>4 <es ges ces es>4 <ges ces es ges>4 }
      <des ges bes des>2
      <ges, bes des ges>2)

      <ges b es ges>2(
      \times 2/3 { <as b es as>4 <as b es as>4 <es as ces es>4)}

      <es' es,>8_\markup { \italic "rit." }\>( <f f,> <f f,> <as as,>
      <as as,>8 <ces ces,> <ces ces,>\! <des des,\fermata>)
      <<
        { bes2.\p^\markup { \bold "a tempo (freely)" }( des4 c2 as2) }
        \\
        { <es ges>1 <es as>1 }
      >>

      <<
        { bes'2._\markup { \italic "rit." }( ges8. bes16 as2 es2) }
        \\
        { <ges des>1 <c, es>1 }
      >>

      s1
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

      <<
        {
          ces'8( ges ges es)
          \times 2/3 { <ces ces'>4_( <ges ges'>4 <es es'>4) }
        }
        \\
        { <ces' es ges>1 }
      >>

      <<
        { bes'8( ges8 ges8 des8 bes'8 ges8 ges8 des8) }
        \\
        { <ges des bes>1 }
      >>

      <<
        {
          des8( es8 es8 ges8)
          \times 2/3 { <des, des'>4_( <es es'>4 <as as'>4) }
        }
        \\
        { <ges ces>1 }
      >>

      <f' des as des,>1\arpeggio\fermata
      R1 R1 R1 R1
      <bes ges es bes bes,>1\arpeggio
    }
  }
>>
