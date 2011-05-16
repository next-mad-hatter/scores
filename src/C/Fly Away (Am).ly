\version "2.12.3"

%
% $File$
% $Date$
% $Revision$
% $Author$
%

\header {
  title = "Fly Away"
  subtitle = ""
  subsubtitle = "in A minor"

  composer = "Lenny Kravitz"
  poet = ""
  enteredby = "Max Deineko"

  meter = "0 bpm"
  piece = "rock"
  version = "$Revision$"

  copyright = "Transcribed and/or arranged by MaX"
  tagline = "" % or leave the lilypond line
}


harm = \chords {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  a4 s8 b
  s16 c8. s4
  g2 d4 s8 c
  s1
  s1

  \mark \markup {\box \bold "A"}

  \mark \markup{ \musicglyph #"scripts.coda" }

}

mel = \relative c'' {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()

  \key a \minor
  \time 4/4

  \override NoteHead #'style = #'diamond

  \repeat percent 2 {
    a8
    _\markup{\italic{gtr (sim.)}}
    a16 a a8-. b
    b16 c c c c c r8
    g16 g g g g8-. r
    d'16 d d d d8-. c-.
  }

  \bar "||"
}

\score {
  \transpose g g {
    <<
      \harm
      \mel
    >>
  }
}

\layout {
  ragged-last = ##f
}
