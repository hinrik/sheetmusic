\version "2.12.2"

\header {
  title = "Parting Words"
  subtitle = \markup { "from" \italic "Lost" }
  composer = "Michael Giacchino"
  instrument = "Piano solo"
}

\score {
  \new PianoStaff <<
    \tempo 4 = 65
    \new Staff {
      \clef treble
      \key des \major
      \numericTimeSignature
      \time 4/4
      \relative c' {
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

        as'4_\mf( des es f~
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

        f8_\p( es f as ges4 as)
        bes8( as bes des es4 des)
        as8( ges as bes c4 des)
        \break

        f8( es f ges as4 des,)
        <<
          {
            f8_\mf( es ges f es des f as)
            bes8( as ges f es des es4)
          }
        \\
          {
            f,4( ges as bes~
            bes1
          }
        >>
        \break

        <<
          { des8_\markup { \italic "rit." } des es es f f ges ges }
        \\
          { des,4( es f ges) }
        >>
        <as as'>4_\>
        <bes bes'>
        <c c'>
        <des des'>\!
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
            <f, as>1_\markup { \dynamic "p" \italic "a tempo" }
            <es f>1
            <ges bes des>
            <bes des es>
          }
        >>
        \break

        es4_\markup { \italic "cresc. poco a poco" }( des des'2
        c4 bes2.)
        as4( ges2.)
        \break

        bes4( as2._\f)
        <c, c'>4_\p( <es es'> <as, as'>2~
        <as as'>1)
        \break

        as,4( des es f)
        c( bes f' ges)
        f( ges as bes)
        \break

        des( es f ges)
        <f, f'>( <des des'>2.
        <ges ges'>4( <des des'>2.)
        \break
      }
    }
    \new Staff {
      \clef treble
      \key des \major
      \numericTimeSignature
      \time 4/4
      \relative c' {
        as4^\p( des es f~
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

        as'4( des es f
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
        f4( des2) as'4
        ges8( f des2)
        \clef bass
        <f,,, f'>4

        <<
          { r4 <des'' f as des>4 <des f as des>4 <des f as des>4 }
        \\
          { <des, des'>1 }
        >>
        r4 <des' ges bes des>4 <des ges c des> <des ges bes des>
        r4 <es ges c des> <es ges c des> <es ges c des>

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
        <des' f as>4^\p <des f as>^\< <des f as> <des f as>^\!\mf
        <des ges bes>^\markup { \italic "sim." } <des ges bes> <des ges bes> <des ges bes>
      }
    }
  >>
  \midi { }
  \layout { }
}
