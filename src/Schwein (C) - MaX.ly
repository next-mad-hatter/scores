\version "2.12.3"

%
% $File: Oj Oj Oj (Am).ly $
% $HGDate: Tue, 01 Jun 2010 00:41:20 +0200 $
% $Revision: 12b80a989873 $
% $Author: Max Deineko <max.deineko@gmail.com> $
%

\header {
  title = "Kein Schwein ruft mich an"
  subtitle = ""
  subsubtitle = "in C major"

  composer = "Max Raabe & Co"
  poet = ""
  enteredby = "Max Deineko"

  meter = "133 bpm"
  piece = "tango"
  version = "$Revesion"

  copyright = "Transcribed by MaX"
  tagline = "" % or leave the lilypond line
}


harm = \chords {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  s1

  \bar "||"
  \mark \markup {\box \bold "I1"}

  c1:6 s e:m s
  f d:m g:7
  \mark \markup { \musicglyph #"scripts.segno" }
  s

  \bar "||:"
  \mark \markup {\box \bold "A"}

  \repeat volta 2 {
    c1:6 s as:maj a:7
    \mark \markup { \musicglyph #"scripts.coda" }
    d:7 g:7
  }
  \alternative {
    { c2 cis:dim | d4:7 g2.:7 | }
    { c2 g:7 | }
  }
  c1:6 |

  \mark \markup {\box \bold "B"}
  \repeat volta 2 {
    f1:m6 s c:m
  }
  \alternative {
    { s1 }
    { d2:7 g:7 }
  }
  g1:7

  \mark \markup {\box \bold "A"}
  c1:6 s as:maj a:7
  d:7 g:7
  c2.
  \mark \markup {\bold "D. S."}
  s4
  s1
  \mark \markup {\box \bold "I2"}

  e1:m s f d:m
  g2 e:7 e1:7

  \mark \markup {\box \bold "C"}

  \repeat volta 2 {
    \repeat percent 2 {
      a1:m e:7
    }
    c2 e:m a1:7 d:m
  }
  \alternative {
    { g2:7 e:7 }
    { g1:7 }
  }
  s1 %g1:7

  \repeat volta 2 {
    g1:7 s1 s1
    \mark \markup \bold "D. S. al coda"
    s1
  }

  \mark \markup { \musicglyph #"scripts.coda" }
  d:7 g:7
  c2 g:7 | c1:6 |

}

mel = \relative c''' {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()

  \key c \major
  \time 4/4

  \override NoteHead #'style = #'cross
  g'4_\mf
  \override NoteHead #'style = #'default
  g,, \times 2/3 { a4 c e } |
  a1 | r4 g8 a \times 2/3 { c4 a g8 e } |
  b'1 | r4 a8 b d c b a |
  e'2 ~ \times 2/3 { e4 f e } |
  \times 2/3 { d c a } f4 d |
  a'4. bes8 b2 |

  r4_\markup {\italic "break"} g, \times 2/3 { a c e } |
  \repeat volta 2 {
    a1 | r4 g8 a c a g e |
    \times 2/3 { es4 es g } es2 |
    r4 r8 e g8 e g e |
    d2 g8 e g e |
    d2 g8 e g e |
  }
  \alternative {
    { a,2 r2 | r4 g \times 2/3 { a c e } | }
    { c2 r2 | }
  }
  r2 r4 d |

  \repeat volta 2 {
    d4. f8 f4 as | as4. c8 d4 c | as2 g
  }
  \alternative {
    { r2 r4 d } { r1 }
  }

  r4_\markup {\italic "break"} g, \times 2/3 { a c e } |
  a1 | r4 g8 a c a g e |
  \times 2/3 { es4 es g } es2 |
  r4 r8 e g8 e g e |
  d2 g8 e g e |
  d2 g8 e g e |
  c2 r2 |

  r4 g'8_\f a c a g e |
  b'1 | r4 a8 b d c b a |
  e'2 ~ \times 2/3 { e4 f e |
  d c a } f4 d |
  a'4. b8 ges2 | r1 |

  \repeat volta 2 {
    \repeat percent 2 {
      s1_\mf | s1
    }
    s1 s1 s1
  }
  \alternative {
    { s1 } { s1 }
  }

  s1_\markup {\italic "break"}

  \repeat volta 2 {
    \repeat percent 2 {
      s1_\p s1
    }
  }

  \break
  d2 g8 e g e |
  d2 g8 a g a |
  c4 r8 bes a4 g |
  c4 r
  \override NoteHead #'style = #'diamond
  c,4-> r |

  \bar "||"

}

\score {
  \transpose c c {
    <<
      \harm
      \mel
    >>
  }
}

\layout {
  ragged-last = ##t
}
