\version "2.12.2"

\header {
  title = "Take a Hike"
  subtitle = \markup { "from" \italic "Lost" }
  composer = "Michael Giacchino"
  instrument = "Piano solo"
}

\score {
  \new PianoStaff <<
    \tempo 4 = 105
    \new Staff {
      \clef treble
      \key bes \major
      \numericTimeSignature
      \time 4/4
      \relative c'' {
        % TODO: disable some automatic beaming
        % TODO: use centered, multi-measure rests
        r1 r1
        \arpeggioArrowUp
        <c fis g a>1\arpeggio
        \break

        r1 r1
        <c' fis g a>\arpeggio
        \break

        r1 r1 r1
        \break

        r1
        \clef bass
        g,,8 r g r g r g r
        g r g r g( a\staccato) g( f\staccato)
        \break

        g r g r g r g r
        g r g r g( a\staccato) g( f\staccato)
        \clef treble
        r4 g'8( c~ c4) d,16( c d8\staccato)
        \break

        f2( a)
        bes16( a bes8\staccato) a( f~ f2)
        r2 r8 es( d->\staccato) r8
        \break

        r4 g8( c~ c4) d,16( c d8\staccato)
        f2( a)
        bes16( a bes8\staccato) a( f~ f2)
        \break

        r2 r8 es( d->\staccato) r8
        r4 g8( c~ c4) d16( c d8\staccato)
        bes2( es)
        \break

        d16( c d8\staccato) c a~ a2
        r2 r8 es'( d->\staccato) r8
        r4 g,8( c~ c4) d16( c d8\staccato)
        \break

        bes2 es8( f4.)
        d16( c d8\staccato) c g'~ g2
        r2 r8 <as as'>8( <g g'>->\staccato) r8
        \break

        r1 r1
        \tempo 4 = 80
        c,,8( g'4 c,8 es4 g)
        \break

        c,8( g'4 c,8 es4 g)
        c,8( g'4 c,8 es4 g)
        c,8( g'4 c,8 es4 g)
        \break

        <c es g>1~
        <c es g>
        <b d g>~
        \break

        <b d g>
        <c es g>~
        <c es g>
        \break

        <a c f>
        \clef bass
        <f,,, f'>
        \clef treble
        \arpeggioNormal
        <c''''' d es f>\arpeggio
        \break
      }
    }
    \new Staff {
      \clef bass
      \key bes \major
      \numericTimeSignature
      \time 4/4
      \relative c, {
        <c c'>2^\p(
        <fis fis'>
        <f f'>
        <a a'>~
        <a a'>1\fermata)

        <c, c'>2(
        <fis fis'>
        <f f'>
        <a a'>~
        <a a'>1\fermata)

        <g, g'>8\staccato^\mf r8 r8 g'\staccato d'16( c d8\staccato) r8 <g,, g'>\staccato
        r8 <d d'>\staccato d''16( c d8\staccato) d,( f\staccato) a( bes\staccato)
        <g, g'>\staccato r8 r8 g'\staccato d'16( c d8\staccato) r8 <g,, g'>\staccato

        r8 <d d'>\staccato d''16( c d8\staccato) d,( f\staccato) a( bes\staccato)
        <g, g'>\staccato r8 r8 g'\staccato d'16( c d8\staccato) r8 <g,, g'>\staccato
        r8 <d d'>\staccato d''16( c d8\staccato) d,( f\staccato) a( bes\staccato)

        <g, g'>\staccato r8 r8 g'\staccato d'16( c d8\staccato) r8 <g,, g'>\staccato
        r8 <d d'>\staccato d''16( c d8\staccato) d,( f\staccato) a( bes\staccato)
        <g, g'>\staccato r8 r8 g'\staccato d'16( c d8\staccato) r8 <g,, g'>\staccato

        r8 <d d'>\staccato d''16( c d8\staccato) d,( f\staccato) a( bes\staccato)
        <g, g'>\staccato r8 r8 g'\staccato d'16( c d8\staccato) r8 <g,, g'>\staccato
        r8 <d d'>\staccato d''16( c d8\staccato) d,( f\staccato) a( bes\staccato)

        <g, g'>\staccato r8 r8 g'\staccato d'16( c d8\staccato) r8 <g,, g'>\staccato
        r8 <d d'>\staccato d''16( c d8\staccato) d,( f\staccato) a( bes\staccato)
        <g, g'>\staccato r8 r8 g'\staccato d'16( c d8\staccato) r8 <g,, g'>\staccato

        r8 <d d'>\staccato d''16( c d8\staccato) d,( f\staccato) a( bes\staccato)
        <g, g'>\staccato r8 r8 g'\staccato d'16( c d8\staccato) r8 <g,, g'>\staccato
        r8 <d d'>\staccato d''16( c d8\staccato) d,( f\staccato) a( bes\staccato)

        <g, g'>\staccato r8 r8 g'\staccato d'16( c d8\staccato) r8 <g,, g'>\staccato
        r8 <d d'>\staccato d''16( c d8\staccato) d,( f\staccato) a( bes\staccato)
        <g, g'>\staccato r8 r8 g'\staccato d'16( c d8\staccato) r8 <g,, g'>\staccato

        r8 <d d'>\staccato d''16( c d8\staccato) d,( f\staccato) a( bes\staccato)
        <g, g'>\staccato r8 r8 g'\staccato d'16( c d8\staccato) r8 <g,, g'>\staccato
        r8 <d d'>\staccato d''16( c d8\staccato) <d,, d'>\staccato <f f'>\staccato <a a'>\staccato <bes bes'>\staccato^\ff

        <g g'>1^\markup { \italic "rit." }^\>
        <<
          { g' }
        \\
          { es2 d }
        >>
        <c, c'>1^\!\mp~

        <c c'>
        <c c'>~
        <c c'>
        \clef treble

        <<
          {
            c'''8( g'4 c,8 es4 g)
            c,8( g'4 c,8 es4 g)
            c,8( g'4 c,8 es4 g)
            c,8( g'4 c,8 es4 g)
            c,8( g'4 c,8 es4 g)
            c,8( g'4 c,8 es4 g)
            c,8( g'4 c,8 es4 g)
            c,8( g'4 c,8 es4 g)
            c,8^\pp( g'4 c,8 es4 g)
          }
        \\
          {
            es,1 es es es es es es es
          }
        >>
      }
    }
  >>
  \midi { }
  \layout { }
}
