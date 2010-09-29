\version "2.12.3"

%
% $File$
% $HGDate: Tue, 01 Jun 2010 00:44:57 +0200 $
% $Revision$
% $Author$
%

\header {
  title = "Resnitzy"
  subtitle = "Ресницы"
  subsubtitle = "in D minor"

  composer = "as performed by La Minor"
  poet = ""
  enteredby = "Max Deineko"

  meter = "108 bpm"
  piece = "foxtrot / charleston"
  version = "0.1"

  copyright = "Transcribed by MaX"
  tagline = "" % or leave the lilypond line
}


harm = \chords {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  \mark \markup {\box \bold "I"}

  c1:m c2:7 f:m bes1:7 bes2:7 es4 g:7
  c1:m c2:7 f:m f:m7 c:m g:7 c:m

  \bar "||"
  \break
  \mark \markup {\box \bold "A"}

  c1:m c2:7 f:m bes1:7 bes2:7 es4 g:7
  \repeat volta 2 {
    c1:m c2:7 f:m f:m7 c:m
    \mark \markup { \musicglyph #"scripts.coda" }
    g:7 c:m
  }

  \break
  \mark \markup {\box \bold "S1"}

  c1:m c2:7 f:m bes1:7 bes2:7 es4 g:7
  c1:m c2:7 f:m f:m7 c:m g:7 c:m

  \bar "||:"
  \break
  \mark \markup {\box \bold "S2"}

  \repeat volta 2 {
    c1:m c:m f:m g:7 c1:m c:m f:m g2:7 c:m
  }

  \break
  \mark \markup { \musicglyph #"scripts.coda" }

  g2:7 c:m
  \bar "||"
  f2:m c:m g:7 c:m
  f:m c:m g:7 c:m
  \bar ".|."
}

mel = \relative c'' {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  \key c \minor
  \time 2/2

  \appoggiatura fis,16 g8_\markup{\italic{sax}} g \appoggiatura d'16 es8\mf d c8.-. g16 ~ g4 |
  r16 c ~ c bes c c bes8 as2 |
  c8 bes c bes c16 b r bes ~ bes4 |
  c16 c bes8 es, f g-> r g->_\markup{\italic{+band}} r |
  \appoggiatura fis16 g8\f g \appoggiatura d'16 es8 d c8.\staccato g16 ~ g4 |
  r16 c ~ c bes c c bes8 as2 |
  \textSpannerDown
  \override TextSpanner #'edge-text = #'("unisono " . "")
  as8-. \startTextSpan as16 g r g f8-.
  g8-. g16 f-. r f es8-.
  \times 2/3 { r8 g as } \times 2/3 {a8 bes b }
  c4\staccato->
  \once \override NoteHead #'style = #'xcircle
  g-> \stopTextSpan |

  s1 * 4 \repeat volta 2 {s1 * 3 s1_\markup{\italic{coda on repeat}}}

  s1 * 8

  \override NoteHead #'style = #'diamond
  \repeat volta 2 {
    c4->_\markup{\italic{1. time only}} r4 r2 | c4-> r4 r2 | f,4-> r4 r2 | g4-> r4 r2 |
    \override NoteHead #'style = #'default
    s1 * 3 |
    \times 2/3 { r8_\markup{\italic{1. and last time only}} g as } \times 2/3 {a8 bes b } g8 f es d^\markup{\italic{cue}}  |
  }

  \times 2/3 { r8 g as } \times 2/3 {a8 bes b } c4->
  \once \override NoteHead #'style = #'xcircle
  c,-> |

  \mark \markup{\small \italic{acc+perc}}
  as'8-.\mp as16 g-. r g f8-. g8-. g16 f-. r f es8-. |
  f8-. f16 es-. r es d8-. es8 f fis g |
  \mark \markup{\small \italic{band}}
  as8-.\f as16 g-. r g f8-. g8-. g16 f-. r f es8-. |
  \times 2/3 { r8 g\< as } \times 2/3 {a8 bes b\! }
  \override Glissando #'style = #'zigzag
  c4->
  \glissando
  \once \override NoteHead #'style = #'diamond
  c,-> |

}

\score {
  \transpose c d {
    <<
      \harm
      \mel
    >>
  }
}

\markup {
  \huge{
    \bold{
      \smallCaps{ Form: }
      \hspace #2.0
      I
      \hspace #0.2
      A
      \hspace #0.2
      S1
      \hspace #0.2
      A
      \hspace #0.2
      S2
      \hspace #0.2
      A
      \hspace #0.2
      Coda
    }
  }
}

\layout {
  ragged-last = ##t
}
