\version "2.12.3"

%
% $File$
% $Date$
% $Revision$
% $Author$
%

\header {
  title = "Fox(e)y Lady"
  subtitle = ""
  subsubtitle = "in F# minor"

  composer = "Jimi Hendrix"
  poet = ""
  enteredby = "Max Deineko"

  meter = "100 bpm"
  piece = "rock"
  version = "$Revision$"

  copyright = "Transcribed and/or arranged by MaX"
  tagline = "" % or leave the lilypond line
}


harm = \chords {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  s1

  \mark \markup {\box \bold "A"}

  fis1:9+ s2 s4 b4
  fis1:9+ s2 s4 b4

  \break
  \mark \markup {\box \bold "B"}

  fis1:m e
  fis1:m s
}

mel = \relative c' {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()

  \key c \major
  \time 4/4

  fis1 \fermata \<

  \repeat volta 3 {
    \repeat percent 2 {
      fis8 \!
      ^\markup{ \musicglyph #"scripts.segno" }
      fis <e' a>4
      fis,8 fis <e' a>4
      fis,8 fis <e' a>4
      a,8 b c cis
      ^\markup{\hspace #16.0 \italic{ x3 (cue on solo)}}
    }
  }

  \repeat volta 3 {
    fis,4 fis fis fis
    e e a8 b cis c^\markup{\hspace #2.0 \italic{x3}}
  }
  fis,4->_\markup{\italic{brake (fine)}} r2.
  cis''8 a4. cis8 a4.
  _\markup{\hspace #8.0
    \right-column{
      \line{1: D.S.}
      \line{2: D.S. al fine or}
      \line{2: D.S. and repeat A till cue}
    }
  }

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
  ragged-last = ##f
}
