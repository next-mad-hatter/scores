\version "2.13.46"

%
% $File$
% $Date$
% $Revision$
% $Author$
%

\header {
  title = "Fou Rire"
  subtitle = ""
  subsubtitle = ""

  composer = "R. Galliano ?"
  poet = ""
  enteredby = "Max Deineko"

  meter = "? bpm"
  piece = "valse"
  version = "$Revision$"

  copyright = "Transcribed and/or arranged by MaX"
  tagline = "" % or leave the lilypond line
}


harm = \chords {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

}

mel = \relative c'' {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()

  \key d \minor
  \time 3/4

  \partial 8*5 a,8 b cis d e |
  \mark \markup {\box \bold "A"}

  f cis d e f g a d e f g gis |
  a g fis g d bes a\mordent g fis g a bes |
  \times 2/3 { a' g a g d bes a bes b } |
  c bes f des c bes16 c |
  bes8 a gis a d e |
  f4-> e-> \times 2/3 { e8 f e } |

  d cis d e f g a d e f g gis |
  a g fis g d bes a\mordent g fis g a bes |
  \times 2/3 { bes' a g a g f } e d |
  cis bes a g f cis |
  e4\mordent d r |

  r cis'8 d d d |
  \mark \markup {\box \bold "B"}
  es4 \times 2/3 { d8 cis d }  fis a |
  %\ottava #1
  c es d\mordent c bes\mordent fis
  %\ottava #0
  a\mordent g fis g d bes |
  a\mordent g fis g a bes |
  d\mordent c b c e g |
  bes d c bes a g |
  \grace c16( bes8) a ~ a4 r |
  r8 a bes c bes a |
  a4\mordent g8 fis g4 |
  r8 g a bes a g |
  g4\mordent f r |
  r8 f g a g f |
  f f, \times 2/3 { bes d f } e d |
  cis bes a g f cis |
  e4\mordent d r |

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
