\version "2.13.46"

%
% $File$
% $Date$
% $Revision$
% $Author$
%

\header {
  title = "Resnitzy"
  subtitle = "Ресницы"
  subsubtitle = ""

  composer = "unknown composer"
  poet = ""
  enteredby = "Max Deineko"

  %meter = "108 bpm"
  piece = "foxtrot / charleston"
  version = "$Revision"

  copyright = "" % "Transcribed and/or arranged by MaX"
  tagline = "$Revision$ $Date$" % ""
}


harm = \chords {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  c1:m c2:7 f:m bes1:7 bes2:7 es4 g:7
  c1:m c2:7 f:m f:m7 c:m g:7 c:m

  c1:m c2:7 f:m bes1:7 bes2:7 es4 g:7
  c1:m c2:7 f:m f:m7 c:m g:7 c:m

  c1:m s f:m g:7 c1:m s f:m g:7

  g2:7 c:m
  f2:m c:m g:7 c:m
  f:m c:m g:7 c:m
}

mel = \relative c'' {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()

  \key c \minor
  \time 2/2
  \tempo 4 = 108

  \appoggiatura fis,16 g8_\markup{\italic{sax}} g \appoggiatura d'16 es8\mf d c8.-. g16 ~ g4 |
  r16 c ~ c bes c c bes8 as2 | c8 bes c bes c16 b r bes ~ bes4 |
  c16 c bes8 es, f g-> r g->_\markup{\italic{add band}} r |
  \appoggiatura fis16 g8\f g \appoggiatura d'16 es8 d c8.\staccato g16 ~ g4 |
  r16 c ~ c bes c c bes8 as2 |
  \override TextSpanner #'(bound-details left text) = \markup { \upright "unisono" }
  \textSpannerDown
  as8-. \startTextSpan as16 g r g f8-.  g8-. g16 f-. r f es8-.
  \times 2/3 { r8 g as } \times 2/3 {a8 bes b }
  c4\staccato->
  \once \override NoteHead #'style = #'xcircle g-> \stopTextSpan |
  \bar "||"

  \break
  \mark \markup {\box \bold "A"}
  s1 * 4 \mf
  ^\markup { \bold \musicglyph #"scripts.segno" }
  \repeat volta 2 {
    s1 * 3
    ^\markup { \hspace #34.0 \musicglyph #"scripts.coda" }
    s1
    _\markup { \hspace #14.0 \right-column { \line { 1.: \bold { D.S. senza rep. } } \line {2.: \bold D.S.} } }
  }

  \break
  \mark \markup {\box \bold "B"}
  \override NoteHead #'style = #'diamond
  \repeat volta 2 {
    c4->\f r4 _\markup{\italic{breaks 1. time only}} r2 | c4-> r4 r2 | f,4-> r4 r2 | g4-> r4 r2 |
    \override NoteHead #'style = #'default
    s1 * 3 |
    \times 2/3 { r8
    _\markup{ \hspace #0.0 \italic{1. and last time only}} g as } \times 2/3 {a8 bes b } g8 f es d
    _\markup{ \hspace #-20.0 on cue: \bold { D.S. con rep. al coda } }  |
  }

  \break
  \mark \markup { \musicglyph #"scripts.coda" }
  \times 2/3 { r8 g as } \times 2/3 {a8 bes b } c4->
  \once \override NoteHead #'style = #'xcircle
  c,-> |
  \bar "||"

  as'8-.\mp
  _\markup{ \italic{ acc & perc }}
  as16 g-. r g f8-. g8-. g16 f-. r f es8-. |
  f8-. f16 es-. r es d8-. es8 f fis g |
  as8-.\f
  _\markup{\italic{add band}}
  as16 g-. r g f8-. g8-. g16 f-. r f es8-. |
  \times 2/3 { r8 g\< as } \times 2/3 {a8 bes b\! }
  \override Glissando #'style = #'zigzag
  c4->
  \glissando
  \once \override NoteHead #'style = #'diamond
  c,-> |

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
          Intro A A' A [: Solos on B :] A Coda
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
      \harm
      \mel
    >>
  }
}

\layout {
  ragged-last = ##f
}
