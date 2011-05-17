\version "2.13.46"

%
% $File$
% $Date$
% $Revision$
% $Author$
%

\header {
  title = "Ochi Chernye"
  subtitle = "Очи чёрные"
  subsubtitle = "Les Yeux Noirs"

  composer = "F. Hermann"
  poet = "Е. Гребёнка"
  enteredby = "Max Deineko"

  %meter = "180 bpm"
  piece = "" %"tempo twisting eastern european ballad"
  version = "$Revision$"

  copyright = "" % "Transcribed and/or arranged by MaX"
  tagline = "$Date$" % ""
}


harmA = \chords {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  \partial 4 s4 |

  g1:7 c:m | g:7 as:maj |
  f:m6 c:m | g:7 as:maj | g:7 c:m |
}

harmB = \chords {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  g1:7 c:m g:7 c:m |
  g:7 c:m | g:7 c2:m bes4 as c1:m |
}

harmC = \chords {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  %\mark \markup { \musicglyph #"scripts.coda" }
  f2:m c:m | g:7 c:m | f:m6 c:m | g:7 c:7 | g:7 c:m |
}

melA = \relative c {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \set Staff.instrumentName = \markup {\box \bold "A"}
  \override Staff.TimeSignature #'style = #'()

  \key c \minor
  \time 4/4

  \partial 4 fis8 g |
  as4 g8 g ~ g4 bes8 as |
  as4 g8 g ~ g4 g8 c |
  c4 b8 b ~ b4 d8 es |
  d4 c8 c ~ c4 es8 f |
  \repeat volta 2 {
    es4 d8 as ~ as4 d8 es |
    d4 c8 g ~ g4 fis8 g |
  }
  \alternative{
    {
      as4 g8 g ~ g4 f'8 g |
      f4 es8 es ~ es4 es8 f |
    }{
      as,4 g8 g ~ g4 es'8 b |
      d4 c8 c ~ c4 r4 |
    }
  }
  \bar "||"
}

melB = \relative c' {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \set Staff.instrumentName = \markup {\box \bold "B"}
  \override Staff.TimeSignature #'style = #'()

  \key c \minor
  \time 4/4

  \repeat volta 2 {
    g4 b d f | as g8 g8 ~ g g f es |
    g4 f8 f r f es d | f4 es8 es ~ es4 r4 |
    g,4 b d f | as g8 g8 ~ g g f es |
    g4 f8 f r f es d |
  }
  \alternative{{ c4 c bes as }{ c4 g c r }}
  \bar "||"
}

melC = \relative c {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \set Staff.instrumentName = \markup {\bold \musicglyph #"scripts.coda" }
  \override Staff.TimeSignature #'style = #'()

  \key c \minor
  \time 4/4

  \repeat volta 2 {
    bes''16 as g as bes as g as
    as g fis g as g fis g |
    g f e f g f e f 
    f es d es f es d es |
    es d cis d es d cis d 
    d c b d d c b c |
  }
  \alternative{{ c8 b a b c bes'4. }{ c,8 b a b c8-> g-> c-> r }}
  \bar "||"
}

\markup {
    \fill-line { % This centers the words, which looks nicer
    \hspace #1.0 % gives the fill-line something to work with
    \center-column {
      \rounded-box \pad-markup #0.3 {
        \column {
          \line {
            \hspace #0.5
            \smallCaps Form:
            \hspace #1
            [: A :] [: B :] A Coda
            \hspace #0.5
          }
        }
      }
      \line {
        \italic { vocalist provides cues & tempo }
      }
      \vspace #0.2
    }
    \hspace #1.0 % gives the fill-line something to work with
  }
}

\score {
  \transpose c a {
    <<
      \harmA
      \melA
    >>
  }
  \layout {
    ragged-last = ##f
  }
}

\score {
  \transpose c a {
    <<
      \harmB
      \melB
    >>
  }
  \layout {
    ragged-last = ##f
  }
}

\score {
  \transpose c a {
    <<
      \harmC
      \melC
    >>
  }
  \layout {
    ragged-last = ##f
  }
}

\layout {
  ragged-last = ##f
}
