\version "2.13.46"

%
% $File$
% $Date$
% $Revision$
% $Author$
%

\header {
  title = "Walk"
  subtitle = "А я хожу походкою почтенной"
  subsubtitle = "The Way I Walk"

  composer = "А. Северный?"
  poet = ""
  enteredby = "Max Deineko"

  meter = ""
  piece = "foxtrot"
  version = "$Revision$"

  copyright = "" % "Transcribed and/or arranged by MaX"
  tagline = "$Date$" % ""
}


harm = \chords {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  \partial 4. { s4. }

  f1:m6 c:m bes:7 es2:maj c:7
  f1:m6 c:m6 d2:7 g:7 c:m c:7
  d2:7 g:7 c:m g:7

  c1:m c2:m f:m bes1:7 es2:maj c:7 f1:m6 c:m6 d2:7 g:7 \time 2/4 c2:m
  \time 4/4 f1:m c:m bes:7 es2:maj c:7 f1:m6 c:m d2:7 g:7
  c:m g:7
  \time 2/4 c2:m \time 4/4

  \time 2/4 c2:m \time 4/4
  f1:m c:m bes:7 es2 c:7
  f1:m c:m d2:7 g:7
  c2:m c:7 c1:m
}

mel = \relative c'' {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()

  \key c \minor
  \time 4/4
  \tempo 4 = 115

  \partial 4. { c8\mf d es }

  \mark \markup {\box \bold "A"}
  f4
  ^\markup { \bold \musicglyph #"scripts.segno" }
  d8 f ~ f f es d |
  as' g ~ g4 r8 c c c |
  bes2 r16 bes,( d f bes a as8 |
  g8) g fis f e bes' ~ bes4 |
  \repeat volta 2 {
    bes16( a as8) r16 cis,( d f
    bes16 a as8) r16 cis,( d f |
    as16 fis g8) r16 c,( es g
    as16 fis g8) r16 c,( es g |
  }
  \alternative {
    {
      fis2) g8 f es d | c8 c'8 ~ c4 ~ c16 c,16 c' c, bes' c, bes' c, |
    }
    {
      fis2 g16 g,( fis g as a bes b
      ^\markup { \hspace #2.0 \bold \musicglyph #"scripts.coda" }
      |
      c4) es d8. g16 ~ g16 f es d |
    }
  }

  \break
  \mark \markup {\box \bold "B"}
  \repeat volta 2 {
    s1*7 \time 2/4 s2
    \mark \markup {\box \bold "C"}
    \time 4/4 s1*7
  }
  \alternative{
    { s1 }
    {
      \time 2/4
      s4
      _\markup{\hspace #6.0 \bold{\right-column{\line{1.: \bold D.S.} \line{2.: \bold { D.S. al Coda}}}}}
      s4
    }
  }
  \time 4/4
  \bar "||"

  \break
  \mark \markup { \musicglyph #"scripts.coda" }
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
          [: A B C B C :] A Coda
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
