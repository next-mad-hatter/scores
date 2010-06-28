\version "2.12.3"

%
% $File$
% $Date$
% $Revision$
% $Author$
% $Id$
%

\header {
  title = ""
  subtitle = ""
  subsubtitle = ""

  composer = ""
  poet = ""
  enteredby = "Max Deineko"

  meter = "133 bpm"
  piece = "tango"
  version = "$HGRevision$"

  copyright = "Transcribed by MaX"
  tagline = "" % or leave the lilypond line
}


harm = \chords {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

}

mel = \relative c'' {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()

  \key c \major
  \time 4/4

  \bar "||"
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
