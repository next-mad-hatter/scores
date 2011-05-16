\version "2.12.3"

%
% $File$
% $Date$
% $Revision$
% $Author$
%

\header {
  title = "Bombtrack"
  subtitle = "-8va"
  subsubtitle = "in F# minor"

  composer = "Rage Against The Machine"
  poet = ""
  enteredby = "Max Deineko"

  meter = "75-80 bpm, ponderously"
  piece = "heavy alternative rock"
  version = "$Revision$"

  copyright = "Transcribed and/or arranged by MaX"
  tagline = "" % or leave the lilypond line
}


harm = \chords {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  s1 * 2

  \break
  \mark \markup {\box \bold "A"}

  s1 * 4

  \break
  \mark \markup {\box \bold "B1"}

  s1 * 3

  \break
  \mark \markup {\box \bold "A"}

  s1 * 4

  \break
  \mark \markup {\box \bold "B2"}

  s1 * 3

  \break
  \mark \markup {\box \bold "A'"}

  s1 * 4

  \break
  \mark \markup {\box \bold "C"}

  s1 * 4

  \break
  \mark \markup { \musicglyph #"scripts.coda" }
  s2

}

mel = \relative c' {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()

  \key e \minor
  \time 4/4

  \repeat volta 2 {
    e16 e' \p d_\markup{\italic cresc.} b d b a g
    e e' d b d e g8
    e,16 e' d b d b a g
    e16 e' d b d b g fis^\markup{\italic cue}
  }

  \key fis \minor

  %
  % A
  %
  \repeat volta 4 {
    e8_\f
    %^\markup{ \musicglyph #"scripts.segno" }_\f
    fis fis' e,16 fis r e fis8 fis' e
  }
  \alternative {
    { e,8 fis fis' e,16 fis r e cis'8 c b }
    { e,8 fis fis' e,16 fis r e cis'8->_\markup{\italic break} ~ cis4 ~ }
  }
  cis1

  %
  % B1
  %
  \bar "|:"
  fis,8 fis e fis16 fis r fis8 fis16 a4 |
  \set Score.repeatCommands = #'((volta "1.-3., 5.-7."))
  fis8 fis e fis16 e fis' e16 cis c b a8.
  \set Score.repeatCommands = #'((volta #f) (volta "4., 8.") end-repeat)
  fis8 fis e fis16 fis r2_\markup{\italic fill}
  %^\markup{\hspace #-6.0 D.S. upto B \hspace #-1.0 \tiny\bold4.}
  \set Score.repeatCommands = #'((volta #f))

  %
  % A
  %
  \repeat volta 4 {
    e8 fis fis' e,16 fis r e fis8 fis' e
  }
  \alternative {
    { e,8 fis fis' e,16 fis r e cis'8 c b }
    { e,8 fis fis' e,16 fis r e cis'8->_\markup{\italic break} ~ cis4 ~ }
  }
  cis1

  %
  % B2
  %
  \repeat volta 4 {
    fis,8 fis e fis16 fis r fis8 fis16 a4 |
  }
  \alternative {
    {
      fis8 fis e fis16 e fis' e16 cis c b a8.
    }
    {
      fis8 fis e fis16 fis r2_\markup{\italic fill}
    }
  }


  %
  % A'
  %
  \repeat volta 2 {
    \repeat percent 2 {
      e8
      ^\markup{\hspace #1.5 \musicglyph #"scripts.segno" }
      fis fis' e,16 fis r e fis8 fis' e
      e,8 fis fis' e,16 fis r e cis'8 c b
      ^\markup{\hspace #20.0 al coda}
    }
  }

  %
  % C
  %
  e,16_\markup{\italic cresc.} e e e e e e e e e e e e e e e
  e e e e e e e e e e e e e e e e
  \repeat volta 2 {
    fis16 e fis e a8 fis16 e fis16 e fis8 r4
    fis16 e fis e a8 fis16 e fis16 e cis' a c a b a^\markup{\hspace #-24.0 \italic{solo till cue, then} D.S. \italic{al coda}}
  }

  r8 b bes a

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
