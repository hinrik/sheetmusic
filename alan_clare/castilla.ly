\version "2.12.3"

\header {
  title = "Castilla"
  composer = "Alan Clare"
}

\score {
  \relative d' {
    \clef treble
    \key a \minor
    \time 4/4
    \tempo 4 = 85
    R2.
    << a4 a' >>
    
    << d,,8 fis' a d >>
    << a,4 d' fis >>
    %R8
    << d,8 e' g >>
    << cis,4  fis a >>
    %R8
    << d,8 fis b >>
    a,
    
    << d,,8 e'' a c >>
    << a,,4 f'' a d >>
    %R8
    << e,,8 e' g b >>
    << f,  e' a c >>
    e,,
    << d e' g b >>
    a,,
    
    << d, c'' f a >> 
    c4 b8
    << f,4 f' a >>
    f,8 a,
    
    d, a' f' g f e d
    << c c' e g >>
    
    << f,, ais' f' a >>
    << c,4 e g >>
    << c,8 e >>
    << gis d f >>
    d f g
    
    ais,4
    << g c e >>
    << f,8. ais d >>
    << e, g c >>
    << g8 d' >>

    << { ais16( c ais a4) } \\ << d,,4. fis' >>  >>
  }
  \midi { }
  \layout { }
}
