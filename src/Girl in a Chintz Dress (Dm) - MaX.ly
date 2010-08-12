\version "2.12.3"

%
% $File$
% $HGDate: Tue, 01 Jun 2010 00:41:20 +0200 $
% $Revision$
% $Author$
%

\header {
  title = "Girl In A Chintz Dress"
  subtitle = "Девушка в платье из ситца"
  subsubtitle = "in C minor"

  composer = "as performed by La Minor"
  poet = ""
  enteredby = "Max Deineko"

  meter = "156 bpm"
  piece = "train groove polka"
  version = "0.1"

  copyright = "Transcribed by MaX"
  tagline = "" % or leave the lilypond line
}


harm = \chords {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  \mark \markup {\box \bold "Intro"}
  R1*4
  c1:m c:m c1:m c:m
  %\break

  %\mark \default
  \mark \markup {\box \bold "A"}
  \repeat volta 2 { c:m f:m bes:7 es:maj as:maj f:m6 g:7 c:m6 }
  %\break

  \mark \markup {\box \bold "I1"}
  c:m f:m bes:7 es:maj as:maj f:m6 g:7 c:m6
  %\break

  \mark \markup {\box \bold "A"}
  \repeat volta 2 { c:m f:m bes:7 es:maj as:maj f:m6 g:7 c:m6 }
  %\break

  \mark \markup {\box \bold "I2"}
  %c:m f:m bes es2:maj g:7 c1:m f:m g:7 c:m
  \repeat volta 2 {c:m f:m} \alternative {{bes1 es2:maj g:7}{g1:7 c:m}}

  \mark \markup {\box \bold "A"}
  \repeat volta 2 { c:m f:m bes:7 es:maj }
  \alternative { {as:maj f:m6 g:7 c:m6 }
  { as } }
  %^\mark \markup { \musicglyph #"scripts.coda" }
  f:m6 g:7 c:m
  c:m f:m6 g:7 c:m

  \bar "|."
}

mel = \relative c'' {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  \key c \minor

  R1 * 4_\markup{\small{\italic{ drums: train groove }}}
  \repeat percent 2 {
    <c es fis>8\f(~ <c es g>-.)
    r8 <c es g>-.
    r <c es g>-.
    r <c es g>-.
  }
  c'4~<c a>~ <c a g>~ <c a g es> |
  c,4~<c a>~ <c a g>~ <c a g es> |

  s1 * 7

  r2 r8 c( d es | g2) r8 c,( d es |
  as2) r4 c( | bes4. r4 bes8 a as |
  g2) r8 c,( d es | es2 \times 2/3 {c4 d es} |
  as2) r4 as\( | as8( g) g( as) g( es) es( d) | c4( b bes a) \) |

  s1 * 8

  \repeat volta 2 {
    c16( d es f g8-.) c,16( d es8-.) g-. f( es) |
    f16( g as bes c8-.) f,16( g as8-.) c-. bes( as) |
  }
  \alternative {
    {
      r8 bes\(~bes c d c bes as |
      g4. as8 g f es d\)
    }
    {
      as'8\( g g as g es es d |
      c4( b bes a)\)
    }
  }

  \repeat volta 2 {s1 * 4}
  \alternative{
    { s1 * 4}
    { \override NoteHead #'style = #'diamond as8-> as-> r4 r2 }
  }
  f8-> f-> r4 r2
  s1 * 4
  g8-> g-> r
  \override NoteHead #'style = #'default
  as g f es d c4 r
  \override NoteHead #'style = #'diamond
  c'-> r

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
  ragged-last = ##t
}
