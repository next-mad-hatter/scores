\version "2.12.3"

%
% $File$
% $HGDate: Tue, 01 Jun 2010 00:41:20 +0200 $
% $Revision$
% $Author$
%

\header {
  title = "Ochi Chernye"
  subtitle = "Очи чёрные"
  subsubtitle = "in G minor"

  composer = "Florian Hermann"
  poet = "Евгений Гребёнка"
  enteredby = "Max Deineko"

  meter = "180 bpm"
  piece = "tempo twisting eastern european ballad"
  version = "0.1"

  copyright = "Transcribed by MaX"
  tagline = "" % or leave the lilypond line
}


harm = \chords {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  \partial 4 r4 |

  \mark \markup {\box \bold "A"}
  \bar "||"

  g1:7 | c:m | g:7 | as:maj |
  \repeat volta 2 { f:m6 | c:m }
  \alternative{{ g:7 as:maj }{ g:7 c:m }}

  \bar "||:"
  %\break

  \mark \markup {\box \bold "B"}

  \repeat volta 2 {
    g1:7 c:m g:7 c:m g1:7 c:m g:7
  }
  \alternative{{ c2:m bes4 as }{ c1:m }}

  \bar "||:"
  %\break

  \mark \markup { \musicglyph #"scripts.coda" }

  \repeat volta 2 { f2:m c:m | g:7 c:m | f:m6 c:m }
  \alternative{{ g:7 c:7 }{ g:7 c:m }}

  \bar "|."
}

mel = \relative c'' {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  \key c \minor
  \time 4/4

  \partial 4 fis,8 g |
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

  \repeat volta 2 {
    g4 b d f | as g8 g8 ~ g g f es |
    g4 f8 f r f es d | f4 es8 es ~ es4 r4 |
    g,4 b d f | as g8 g8 ~ g g f es |
    g4 f8 f r f es d |
  }
  \alternative{{ c4 c, bes as }{ c4 g c r }}

  \repeat volta 2 {
    bes''16 as g as bes as g as
    as g fis g as g fis g |
    g f e f g f e f 
    f es d es f es d es |
    es d cis d es d cis d 
    d c b d d c b c |
  }
  \alternative{{ c8 b a b c bes'4. }{ c,8 b a b c8-> g-> c-> r }}
}

\score {
  \transpose c g {
    <<
      \harm
      \mel
    >>
  }
}

\markup {
  \huge{
    \hspace #2.0
    \smallCaps{ Form: }
    \hspace #2.0
    \bracket{
      \line{ : \hspace #0.1 \bold{A} \hspace #0.1 : }
    }
    \hspace #0.2
    \bracket{
      \line{ : \hspace #0.1 \bold{B} \hspace #0.1 : }
    }
    \hspace #0.2
    \bold{A}
    \hspace #0.2
    \bold{Coda}
  }
}

\markup {
  \huge{
    \hspace #2.0
    \smallCaps{ Vocalist provides cues & tempi }
    \hspace #2.0
  }
}

\layout {
  ragged-last = ##t
}
