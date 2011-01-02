\version "2.12.2"

\header {
  title = "Oceanic 815"
  subtitle = \markup { "from" \italic "Lost" }
  composer = "Michael Giacchino"
  instrument = "Piano solo"
}

\score {
  \new PianoStaff <<
    \tempo 4 = 60
    \new Staff {
      \clef treble
      \key c \major
      \numericTimeSignature
      \time 4/4
      \relative c' {
        <bes' d>2. <c d>4
        << {f4( e2.)} \\ { d1 } >>
        <g, c>
        <g c d>2( <g c d>4 <g c g'>

        <g c ges'>1)
        <<
          { e1 c'}
        \\
          { <a d>2( <g c> g' fis) }
        >>
        <<
          { d1( fis2 e) }
        \\
          { c2( b a1) }
        >>
        <<
          { e'1( g2 fis) }
        \\
          { e,2. d4 fis1 }
        >>
        <<
          { b'( a2 fis) }
        \\
          { <c e>1~ <c e> }
        >>
        <g c e>1~
        <g c e>
        <g d' g>~
        <g d' g>

        <c g'>2
        <c ges'>~
        <c ges'>
        <c ges'>
        <c e g>1\fermata
        \tempo 4 = 110
        R1 R1 R1

        e,
        R1 R1 R1

        g
        R1 R1 R1
        f2(
        e)

        R1 R1 R1 R1 R1

        r2 c'(
        d1)
        b2( c
        e1)
        r2 c(

        d1)
        b2( c
        e1)
        f(
        a)

        f(
        e)
        e(
        d)
        e

        d,4( d g b
        d1)
        \tempo 4 = 100
        g,2( e4 g~
        g e g e

        g2 b4 g~
        g1)
        g2( e4 g~
        g e g e

        g2 b4 g~
        g1)
        g2( f4 g~
        g f g f

        g2 f4 e~
        e f g2)
        g'2( f4 g~
        g f g f

        <g, e'>1
        <b d>1)
        <g g'>2_\mp( <e e'>4 <g g'>~
        <g g'> <e e'> <g g'> <e e'>

        <g g'>2 <b b'>4 <g g'>~
        <g g'>1)
        <g g'>2( <e e'>4 <g g'>~
        <g g'> <e e'> <g g'> <e e'>

        <g g'>2 <b b'>4 <g g'>~
        <g g'>1)
        <g' g'>2_\f( <f f'>4 <g g'>~
        <g g'> <f f'> <g g'> <f f'>

        <g g'>2 <f f'>4 <e e'>~
        <e e'> <f f'> <g g'>2)
        <g g'>( <f f'>4 <g g'>~
        <g g'> <f f'> <g g'> <f f'>

        <e g c e>1\arpeggio_\markup { \italic "rit." }
        <d g b d>\arpeggio)
        \tempo 4 = 80
        g2._\mp( e4
        g2 b
        g1)

        #(set-octavation 1)
        g'2._\p( e4
        g2 b)
        #(set-octavation 0)
        e,,,_\mp( g4 fis
        d2 fis4 e)
        \clef bass

        <c, e g>1~
        <c e g>~
        <c e g>
        \clef treble
        <<
          { <e g c> <e g c> }
        \\
          { e'2^( g4 fis | d2_\markup { \italic "rit." } fis4 e) }
        >>
        \clef bass
        <g,, c e>1\fermata
        #(set-octavation 1)
        c''16_\pp( cis d cis fis4) c16( cis d cis fis4)

        c16( cis d cis fis4) c16( cis d cis fis4)
        c16( cis d cis fis4) c16( cis d cis fis4)
        c16( cis d cis fis4) c16( cis d cis fis4)

        c16( cis d cis fis4) c16( cis d cis fis4)
        c16( cis d cis fis4) c16( cis d cis fis4)
        c16( cis d cis fis4) c16( cis d cis fis4)

        c16( cis d cis fis4) c16( cis d cis fis4)
        c16( cis d cis fis4) c16( cis d cis fis4)
        #(set-octavation 0)
        <bis,, cis d fis>1_\fff\fermata
      }
    }
    \new Staff {
      \clef treble
      \key c \major
      \numericTimeSignature
      \time 4/4
      \relative c' {
        <bes f'>2. <a f'>4
        <bes g'>1
        bes2( c)
        \clef bass
        <d, b'>2 <d b'>4 <d b'>
        \break

        <d b'>1
        <c' c,>
        <e a>
        <a, e'>
        \break

        <a d fis>
        <g c>2. <g b>4
        <g d'>1
        <a, c e g>~
        \break

        <a c e g>
        <c c,>2(
        <d, d'>
        <e e'>1)
        <c c'>2(
        <d' d,>2
        <g, g'>1)
        \clef treble
        \break

        <c' g'>2
        <c g'>~
        <c g'>
        <c g'>
        <c g'>1\fermata
        \clef bass
        <e, g c>~
        <e g c>
        \break

        <e g b>~
        <e g b>
        <e g c>~
        <e g c>
        <e g b>~
        \break

        <e g b>
        <f a c>~
        <f a c>
        <e g c>~
        <e g c>
        \break

        <f a c e>
        <f a c d>
        <e a c>
        <d g b>~
        <d g b>
        \break

        <e g c>~
        <e g c>
        <e g b>~
        <e g b>
        <e g c>~
        \break

        <e g c>
        <e g b>~
        <e g b>
        <f a c>~
        <f a c>
        \break

        <f g c>~
        <f g c>
        <f g bes>~
        <f g bes>
        <e a c>
        \break

        <d g b>~
        <d g b>
        <c e g c>~
        <c e g c>
        \break

        <b e g b>~
        <b e g b>
        <c e g c>~
        <c e g c>
        \break

        <b e g b>~
        <b e g b>
        <c f a>~
        <c f a>
        \break

        <c e g>~
        <c e g>
        % The following chord was originally <f, c' f a>~<f c' f a> but that
        % is impossible to play with the left hand. It can be played with the
        % the right hand, but that would require very awkward movements
        % because the right hand is currently playing a melody on that side
        % of the keyboard. I suspect the original transcription is just
        % flawed, so I lowered the A note, which sounds good and is playable.
        <f, a c f>~
        <f a c f>
        \break

        <c' e g>
        <<
          { <b d g> }
        \\
          { g2( d) }
        >>
        <g c e g>1~
        <g c e g>
        \break

        <g b e g>~
        <g b e g>
        <g c e g>~
        <g c e g>
        \break

        <g b e g>~
        <g b e g>
        % this was originally <f c' f a>, see comment above
        <f a c f>~\arpeggio
        <f a c f>
        \break

        \set PianoStaff.connectArpeggios = ##t

        <c' e g c>~\arpeggio
        <c e g c>
        % this was originally <f, c' f a>, see comment above
        <f, a c f>~\arpeggio
        <f a c f>
        \break

        <g c e g>\arpeggio
        <g d' g b>\arpeggio
        \clef treble
        <e'' g c>
        <e g b>~
        <e g b>
        \break

        <e' g c>
        <e g b>
        \clef bass
        <c,, e g>
        <c e g>
        \break

        <es,, es'>2( <e e'>~
        <e e'>) <c c'>(
        <es es'>1)
        <c c'>~
        \break

        <c c'>
        <c c'>\fermata
        R1
        \break

        <c' c'>
        <fis, fis'>
        <c' c'>
        \break

        <fis, fis'>
        <c' c'>2 <c c'>
        <fis, fis'>2 <fis fis'>
        \break

        <c' c'>2 <c c'>
        <fis, fis'> <fis fis'>
        <c' fis c'>1\fermata
        \bar "|."
      }
    }
  >>
  \midi { }
  \layout { }
}
