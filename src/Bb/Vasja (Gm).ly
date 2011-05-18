\version "2.13.46"

%
% $File$
% $Date$
% $Revision$
% $Author$
%

\header {
  title = "Vasja"
  subtitle = "Вася"
  subsubtitle = ""

  composer = "Е. Хавтан"
  poet = "В. Сюткин"
  enteredby = "Max Deineko"

  %meter = "103 bpm"
  piece = "straight pop"
  version = "$Revision$"

  copyright = "" % "Transcribed and/or arranged by MaX"
  tagline = "$Date$" % ""
}


harm = \chordmode {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  \time 4/4

  \repeat unfold 2 { f4:m6 as:6.7^5 g8.:6.7^5 c16:6.7^5 s4 | }

  \repeat unfold 2 { f4:m6 as:6.7^5 g c:6.7^5 | }
  \time 6/4 f:m6 as:6.7^5 fis f bes:m6 c:7 |
  \time 4/4 f4:m6 as:6.7^5 g:6.7^5 c:6.7^5 | f1:m6

  bes1:m6 f:m6 | c:7 | s |

  \repeat volta 2 { f2:m c:7 | f2:m c:7 | }
  \alternative { { f2:m c:7 | f2:m c:7 | } { f2:m bes4:m6 c:7 | }
  }

  \repeat unfold 3 { f4:m6 as:6.7^5 g8.:6.7^5 c16:6.7^5 s4 | }
  \time 6/4 f4:m6 as:6.7^5 fis f bes:m6 c:7 |
  \time 4/4 \repeat unfold 2 { f4:m6 as:6.7^5 g:6.7^5 c:6.7^5 | }
  f4:m6 as:6.7^5 fis f | bes:m6 c8.:7 f16:m6 s2 |

  \repeat unfold 3 { f4:m6 as:6.7^5 g8.:6.7^5 c16:6.7^5 s4 | }
  f1:m6 | f:m |
}

bass = \relative c' {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  \override Staff.TimeSignature #'style = #'()
  \key f \minor
  \time 4/4
  \clef bass

  \tempo "double time feel" 4 = 103

  \repeat percent 2 {
    <<
      \override NoteHead #'style = #'diamond
      { bes4 bes bes8. bes16 ~ bes bes r8 _\markup{\italic{etc}} | |}
      \\
      \override NoteHead #'style = #'default
      { f,4-. as-. g-.  c-.  _\markup { \hspace #58.0 \bold D.C. } | }
    >>
  }

  \break
  \mark \markup {\box \bold "A"}
  \repeat volta 2 { s1 s1 | \time 6/4 s1 s2 | \time 4/4 }
  \alternative { { s1 | }{ s1 | } }
  \bar "||:"

  \break
  \mark \markup {\box \bold "B"}
  \repeat volta 3 {
    <<
      \override NoteHead #'style = #'diamond
      { bes'2 ^\markup { \bold \musicglyph #"scripts.segno" } bes | bes1 | }
      \\
      \override NoteHead #'style = #'default
      { bes,8 bes as as g g f f | f8. as16 ~ as8 c f,8. as16 ~ as8 c^\markup{ \hspace #3.0 \italic ×3 } | }
    >>
  }
  c4->_\markup{ \italic break } r c-> r |
  c8_\markup{ \italic fill } b bes as g16 c8. as8 g |

  \break
  \repeat percent 2 {
    f8.-. as16 ~ as8 c e,8.-. g16 ~ g8 c |
    f,8.-. as16 ~ as8 c g8.-. bes16 ~ bes8 c |
  }
  f,8.-. as16 ~ as8 c bes4 c
  _\markup { \hspace #3.0 \center-column { \line{ 1.: \bold D.C. } \line{ 3.: \bold { al coda } } } }
  |
  \bar "||:"

  \break
  \mark \markup {\box \bold "A'"}
  \repeat volta 2 {
    r2.^\markup \italic {\hspace #13.0 repeat for solo}
    \clef treble
    \times 2/3 { r8 c''16 c8 as16 } |
  }
  c8-. c-. c-. \times 2/3 {bes8 c16 ~ }
  c8 c,-. \times 2/3 {r8 as'16 a bes b } |
  c8-. c-. c-. \times 2/3 {es8 c16 } r4
  \times 2/3 {r8 c16 c8 bes16 } |
  \time 6/4
  c8-. c es-. es \times 2/3 {des8-. as16 ~ as8 c16] ~ } c4
  \override TextSpanner #'(bound-details left text) = \markup { \upright "unisono" }
  \textSpannerDown
  bes16_\startTextSpan a bes b c as8. \stopTextSpan |
  \time 4/4
  c8-. c-. c-. \times 2/3 {bes8 c16_\startTextSpan ~ c8-. c,16-> r8 c16-> } r4_\stopTextSpan  |
  c'8-. c-. c-. \times 2/3 {es8 c16 } r4
  \times 2/3 {r8 c16 c8 bes16 } |
  c8-. c es-. es des-. \times 2/3 { as8 c16] ~ } c4-. |
  bes16 a bes b c es8-. f16->_\markup{\italic{break}} r2
  _\markup{ \hspace #-2.0 \bold { D.S. al coda } }
  |

  \break
  \mark \markup { \musicglyph #"scripts.coda" }
  \clef bass
  \repeat percent 3 { s1 }
  f,,,4-.-> r2. | f'1-> \fermata |

  \bar "|."
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
          \tiny (4T) A B  %\bold \large |
          \tiny (2T) A B %\bold \large |
          \tiny { (perc solo) } %\bold \large |
          A' B Coda
          \hspace #0.5
        }
      }
    }
    \hspace #1.0 % gives the fill-line something to work with
  }
}

\score {
  \transpose c d {
    <<
      \new ChordNames \with { voltaOnThisStaff = ##f }{ \harm }
      \new Staff \with { voltaOnThisStaff = ##t }{ \bass }
    >>
  }
}

\layout {
  ragged-last = ##f
}
