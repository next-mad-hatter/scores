\version "2.13.46"

%
% $File$
% $Date$
% $Revision$
% $Author$
%

\header {
  title = "Bombtrack"
  subtitle = "-8va"
  subsubtitle = "in G# minor"

  composer = "Rage Against The Machine"
  poet = ""
  enteredby = "Max Deineko"

  meter = "75-80 bpm"
  piece = "heavy alternative rock"
  version = "$Revision$"

  copyright = "" % "Transcribed and/or arranged by MaX"
  tagline = "$Revision$ $Date$" % ""
}


harm = \chords {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  s1 * 2

  \break
  \mark \markup {\box \bold "A"}

  s1 * 4

  \break
  \mark \markup {\box \bold "B"}

  s1 * 3

  \break
  \mark \markup {\box \bold "A"}

  s1 * 4

  \break
  \mark \markup {\box \bold "B'"}

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

  \clef treble
  \key e \minor
  \time 4/4
  \tempo "ponderously" 4 = 77

  \repeat volta 2 {
    e16 \p e'_\markup \italic { gtr & bass } d b d b a g e e' d b d e
    \pitchedTrill g8 _\markup \italic { trill every other time } \startTrillSpan gis |
    e,16 \stopTrillSpan e' d b d b a g e16 e' d b d b g fis^\markup{\italic till cue} |
  }

  \key fis \minor

  %
  % A
  %
  \repeat volta 4 {
    e8_\ff fis _\markup \italic { heavy backbeat, gtr & bass unisono } fis' e,16 fis r e fis8 fis' e |
  }
  \alternative {
    { e,8 fis fis' e,16 fis r e cis'8-> c-> b-> | }
    { e,8 fis fis' e,16 fis r e cis'8->_\markup{\italic break} ~ cis4 ~ | }
  }
  cis1 |

  %
  % B
  %
  \bar "|:"
  fis,8 \f fis e fis16 fis r fis8 fis16 a4 |
  \set Score.repeatCommands = #'((volta "1.-3., 5.-7."))
  fis8 fis e fis16 e fis' e16 cis c b a8. |
  \set Score.repeatCommands = #'((volta #f) (volta "4., 8.") end-repeat)
  fis8 fis e fis16 fis r2_\markup{\italic fill} |
  %^\markup{\hspace #-6.0 D.S. upto B \hspace #-1.0 \tiny\bold4.}
  \set Score.repeatCommands = #'((volta #f)) |

  %
  % A
  %
  \repeat volta 4 {
    e8 \ff fis fis' e,16 fis r e fis8 fis' e |
  }
  \alternative {
    { e,8 fis fis' e,16 fis r e cis'8-> c-> b-> | }
    { e,8 fis fis' e,16 fis r e cis'8->_\markup{\italic break} ~ cis4 ~ | }
  }
  cis1 |

  %
  % B'
  %
  \repeat volta 4 {
    fis,8 \f fis e fis16 fis r fis8 fis16 a4 |
  }
  \alternative {
    { fis8 fis e fis16 e fis' e16 cis c b a8. | }
    { fis8 fis e fis16 fis r2_\markup{\italic fill} | }
  }


  %
  % A'
  %
  \repeat volta 2 {
    \repeat percent 2 {
      e8 ^\markup{\hspace #1.5 \musicglyph #"scripts.segno" } \ff
      fis fis' e,16 fis r e fis8 fis' e
      e,8 fis fis' e,16 fis r e cis'8-> c-> b->
      ^\markup{\hspace #27.0 \musicglyph #"scripts.coda"}
      |
    }
  }

  %
  % C
  %
  e,16 \mp \< e e e e e e e e e e e e e e e |
  e e e e e e e e e e e e e e e e |
  \repeat volta 2 {
    fis16 \! \f e fis e a8 fis16 e fis16 e fis8 r4 |
    fis16 e fis e a8 fis16 e fis16 e cis' a c a b a _\markup{\hspace #-33.0 \italic{solo till cue, then} \bold { D.S. con rep. al coda}} |
  }

  r8 \ff b-> bes-> a-> r2 |

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
          Intro A B A B' A' C A' Coda
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
  ragged-last = ##t
}
