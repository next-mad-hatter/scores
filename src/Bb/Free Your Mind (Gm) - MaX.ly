\version "2.12.3"

%
% $File$
% $Date$
% $Revision$
% $Author$
%

\header {
  title = "Free You Mind"
  subtitle = ""
  subsubtitle = "in G minor"

  composer = "Denzil Foster, Thomas McElroy"
  poet = ""
  enteredby = "Max Deineko"

  meter = "102 bpm"
  piece = "rock"
  version = "$Revision$"

  copyright = "Transcribed and/or arranged by MaX"
  tagline = "" % or leave the lilypond line
}


harm = \chords {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  a1:m
  \mark \markup {\italic "cue"}
  s1 s1

  \mark \markup {\box \bold "A"}

  a1:m
  s1 * 3

  \mark \markup {\box \bold "B"}

  d2:m c g g:m/bes a1:m s1 a1:m s1

  \mark \markup {\box \bold "C"}

  a1:m s1 s1 s1

  \mark \markup {\box \bold "A'"}

  a1:m
  s1 * 11

  \break
  \mark \markup { \musicglyph #"scripts.coda" }

  a1:m s1

  \mark \markup {\box \bold "D"}

  a1:m s1*7

  \mark \markup {\box \bold "B'"}

  d2:m c g g:m/bes a1:m s1
  d4.:m a c g bes2
  s1 s1

  \mark \markup {\box \bold "C'"}

  a1:m s1 s1 s1 a:m s1

}

mel = \relative c'' {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()

  \key c \major
  \time 4/4

  \repeat volta 2 {
    a8_\markup{\italic{keys only}}
    a a a a a a a
  }

  a8_\markup{\italic{free your mind...}}
  a a a a a a a
  a8 a a a
  <<
  {
      \override NoteHead #'style = #'diamond
      r g' e c
      \override NoteHead #'style = #'default
  }
  \\
  { a_\markup{\italic{fill}} a a a }
  >>

  \repeat volta 4 {
    \repeat percent 4 {
      a8_\markup{\italic{backbeat}}
      g gis a r2
    }
  }

  \repeat volta 2 {
    d8^\markup {\hspace #-5.0 \italic "x4"}
    a^\markup {\hspace #-3.0 \musicglyph #"scripts.segno"}
    d4 c8 g c4 b8 g b4 bes8 g bes4
  }
  \alternative {
    {
      a8 g gis a r2
      a8 g gis a r2
    }
    {
      a4->_\markup{\italic break}
      r2.
      d8 fis, r g r gis r a
    }
  }

  \repeat volta 2 {
    \repeat percent 2 {
      a8 %_\markup{\italic{backbeat}}
      e g a c c a g a e g a c c a
      r^\markup{\hspace #15.0 al coda}
    }
  }

  \repeat percent 4 {
    a8 a a a a a a a
  }
  \repeat volta 2 {
    \repeat percent 4 {
      a8 g gis a r2
    }
  }
  a4->_\markup{\italic break} r2.
  \repeat percent 3 {
    a8 %_\markup{\italic{backbeat}}
    g gis a r2_\markup{\hspace #3.0 D.S. con rep al coda}
  }

  a4->_\markup{\italic break}
  r2.
  r1

  \repeat percent 3 {
    a8^\markup{\italic solo} g gis a r2
  }
  a,16 g' a a, g' a a, g' g a, g' a d cis c8
  \repeat volta 2 {
    \repeat percent 2 {
      a8 e g a c c a g a e g a c c a r^\markup{\hspace #22.0 \italic{cue}}
    }
  }

  d8 a d4 c8 g c4 b8 g b4 bes8 g bes4
  a8 g gis a r2
  a8 g gis a r2
  d4. cis c4 ~ c8 b4. bes2 ~
  bes1 ~ bes1

  \repeat volta 2 {
    \repeat percent 2 {
      a8 e g a c c a g a e g a c c a r^\markup{\hspace #11.0 \italic{x8/till cue}}
    }
  }
  a4->_\markup{\italic break} r2. r1\fermata

  \bar "||"
}

\score {
  \transpose a g {
    <<
      \harm
      \mel
    >>
  }
}

\layout {
  ragged-last = ##f
}
