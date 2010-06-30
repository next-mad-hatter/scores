\version "2.12.3"

%
% $File$
% $Date$
% $Revision$
% $Author$
%

\header {
  title = "Baby Love"
  subtitle = ""
  subsubtitle = "in F# minor"

  composer = "Mother's Finest"
  poet = ""
  enteredby = "Max Deineko"

  meter = "bpm"
  piece = "rock"
  version = "$Revision$"

  copyright = "Transcribed by MaX"
  tagline = "" % or leave the lilypond line
}


harm = \chords {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  \partial 2

  s2

  \mark \markup {\box \bold "A1"}

  e1 fis:m
  e1 fis:m
  e1 fis:m
  e1 d2 e

  \mark \markup {\box \bold "B1"}

  fis1:m
  s1 * 7

  \mark \markup {\box \bold "A1"}

  e1 fis:m
  e1 fis:m
  e1 fis:m
  e1 d2 e

  \mark \markup {\box \bold "B1"}

}

mel = \relative c'' {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()

  \key fis \minor
  \time 4/4

  \partial 2
  r2
  \bar "||"

  a1

  s1 * 32
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
