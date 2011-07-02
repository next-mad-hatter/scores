\version "2.13.46"

%
% $File$
% $Date$
% $Revision$
% $Author$
%

\header {
  title = "Walkabout"
  subtitle = ""
  subsubtitle = ""

  composer = ""
  poet = ""
  enteredby = "Max Deineko"

  meter = ""
  piece = ""
  version = "$Revision$"

  copyright = "" % "Transcribed and/or arranged by MaX"
  tagline = "$Revision$ $Date$" % ""
}


harm = \chords {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  \partial 8. s8.
  s1 * 11
  s2 f:maj9

  a1:m9 d:7 a1:m9 d:7

}

mel = \relative c' {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()

  \clef bass
  \key e \minor
  \time 4/4
  \tempo "smooth funk" 4 = 91

  \partial 8. b16 _\markup \italic { 16 shuffle, unisono & drum fills } d b
  \mark \markup {\box \bold "Intro"}
  \bar "||"
  e8.( d16-.) r8 g,-. r a16( bes a g a,8 ~ | a1) | r8 e''8( ~ e16 d-.) r8 g,-. a16( bes a g d8 ~ | d1) |
  e'8.( d16-.) r8 g,-. r a16( bes a g a,8 ~ | a1) | r8 a8( ~ a16 c-.) r8 d-. d16( es d c e8 ~ | e1) |
  e8.( g16-.) r8 a-. r a16( bes a g b8 ~ | b1) | r8 e8( ~ e16 d-.) r8 g,-. a16( bes a g d8 ~ | d2 c) |

  \key a \minor
  \mark \markup {\box \bold "A"}
  \break
  \bar "||:"

  a4 _\markup \italic { straight, enter wah gtr & perc } r16 g' d' des e8. a,16 ~ a g8 e16 |
  d4 r16 d a' as g8. cis,16 ~ cis d8 e16 |
  a,4 r16 g' d' des e8. a,16 ~ a g8 e16 |
  d4 r16 d, a' as g8 d'16 cis c4 _\markup \italic {and sim.} |

  \mark \markup {\box \bold "B"}
  \break
  \bar ":|"

  a'8.-. _\markup \italic { unisono } g16 ~ g8-. e-. r c'-. r16 es,8.-. | d4-. r2. |
  a'8.-. g16 ~ g8-. e-. r c'-. r16 es,8.-. | d4-. r16 f8. e4-. r |

  \mark \markup {\box \bold "Interlude"}
  \bar "||:"
  \break

  f4-. e-. es8.-. d16 r d8.-. | f8-. f-. e4-. es8.-. d16 r d8.-. ^\markup { \hspace #3.0 ×6 } |

  \bar ":|"
}

\markup {
    \fill-line { % This centers the words, which looks nicer
    \hspace #1.0 % gives the fill-line something to work with
    \rounded-box \pad-markup #0.3 {
      \column {
        \line{
          \hspace #0.5
          \smallCaps Form:
          \hspace #1
          Intro \bold \huge |
          A \small (20T) B \bold \huge |
          A \small (16T) B \bold \huge |
          A \small (8T) \bold \huge | Interlude \bold \huge [: Solos on A :] \bold \huge |
          A \small (8T) \bold \huge | Open End
          \hspace #0.5
        }
      }
    }
    \hspace #1.0 % gives the fill-line something to work with
  }
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
