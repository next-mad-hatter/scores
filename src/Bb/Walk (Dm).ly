\version "2.12.3"

%
% $File$
% $HGDate: Tue, 01 Jun 2010 00:41:20 +0200 $
% $Revision$
% $Author$
%

\header {
  title = "Walk"
  subtitle = "А я хожу походкою почтенной"
  subsubtitle = "in D minor"

  composer = "as performed by La Minor"
  poet = ""
  enteredby = "Max Deineko"

  meter = "115 bpm"
  piece = "foxtrot"
  version = "0.1"

  copyright = "Transcribed by MaX"
  tagline = "" % or leave the lilypond line
}


harm = \chords {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  \partial 4. { s4. }

  \bar "||"
  \mark \markup {\box \bold "A"}

  f1:m6 c:m bes:7 es2 c:7
  \repeat volta 2 {
    f1:m6 c:m d2:7 g:7
  }
  \alternative {
    { c:m c:7 }
    {
      \mark \markup { \musicglyph #"scripts.coda" }
      c:m g:7
    }
  }

  \break
  \bar "||:"
  \mark \markup {\box \bold "B"}

  \repeat volta 2 {
    c1:m c2:m f:m bes1: es2: c:7
    f1:m c:m d2: g:7
    \time 2/4
    c2:m
    \time 4/4

    \break
    \mark \markup {\box \bold "C"}

    f1:m c:m bes:7 es2 c:7
    f1:m c:m d2:7 g:7
  }
  \alternative{{ c:m g:7 }{\time 2/4 c:m \time 4/4}}

  \bar "||"
  \break
  \mark \markup { \musicglyph #"scripts.coda" }

  \time 2/4 c2:m \time 4/4
  f1:m c:m bes:7 es2 c:7
  \repeat volta 2 {
    f1:m c:m d2:7 g:7
  }
  \alternative{
    {
      c2:m c:7
    }
    {
      c1:m
    }
  }
}

mel = \relative c'' {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()

  \key c \minor
  \time 4/4

  \partial 4. { c8\mf d es }
  f4_\markup{\italic{smooth foxtrot}}
  d8 f ~ f f es d |
  as' g ~ g4 r8 c c c |
  bes2 r16 bes, d f bes a as8 |
  g8 g fis f e bes' ~ bes4 |
  \repeat volta 2 {
    bes16 a as8 r16 cis, d f
    bes16 a as8 r16 cis, d f |
    as16 fis g8 r16 c, es g
    as16 fis g8 r16 c, es g |
    fis2 g8 f es d |
  }
  \alternative {
    {
      c8 c'8 ~ c4 ~ c16 c,16 c' c, bes' c, bes' c, |
    }
    {
      c4 es d8. g16 ~ g16 f es d |
    }
  }

  \repeat volta 2 {
    s1*7 \time 2/4 s2 \time 4/4
    s1*7
  }
  \alternative{
    {
      s1^\markup{\italic{into B}}
    }
    {
      \time 2/4
      s2^\markup{\italic{into A}}
      \time 4/4
    }
  }

  \time 2/4 s2 \time 4/4
  s1 * 4
  \repeat volta 2 {
    s1 * 3_\markup{\italic{2.: ad lib}}
  }
  \alternative {
    {
      c4->_\markup{\italic{break}}
      r4 \fermata c2 \fermata
    }
    {
      c1 \fermata
    }
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

\markup {
  \huge{
    \smallCaps{ Form: }
    \hspace #3.0
    \bold{A}
    \hspace #0.8
    \bracket{
      \line{ \bold{B} \bold{C} }
    }
    \super{ ×2 }
    \hspace #0.4
    \bold{A}
    \hspace #0.8
    \bracket{
      \line{ \bold{B} \bold{C} }
    }
    \super{ ×2 }
    \hspace #0.4
    \bold{A}
    into
    \bold{Coda}
  }
}

\layout {
  ragged-last = ##t
}
