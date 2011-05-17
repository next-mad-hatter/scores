\version "2.13.46"

%
% $File$
% $Date$
% $Revision$
% $Author$
%

\header {
  title = "Free You Mind"
  subtitle = "-8va"
  subsubtitle = "in G minor"

  composer = "D. Foster, T. McElroy"
  poet = ""
  enteredby = "Max Deineko"

%  meter = "102 bpm"
  piece = "rock"
  version = "$Revision$"

  copyright = "" % "Transcribed and/or arranged by MaX"
  tagline = "$Date$" % ""
}


harm = \chords {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  a1:m s1 * 3 |

  \break
  \mark \markup {\box \bold "A"}
  a1:m s1 * 3 |

  \break
  \mark \markup {\box \bold "B"}
  d2:m c g/b bes a1:m s1 a1:m s1 |

  \break
  \mark \markup {\box \bold "C"}
  a1:m s1 s1 s1 |

  \break
  \mark \markup {\box \bold "A'"}
  a1:m s1 * 11 |

  \break
  \mark \markup { \musicglyph #"scripts.coda" \sub \bold 1 }
  a1:m s1 |

  \mark \markup {\box \bold "D"}
  %a1:m s1*7 |
  s1*8 |

  \break
  \mark \markup { \musicglyph #"scripts.coda" \sub \bold 2 }
  d4.:m a c g bes2 s1 s1 |

  \break
  \mark \markup {\box \bold "C" ×2}
  a1:m s1 s1 s1 a:m s1 |
}

mel = \relative c'' {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()

  \key c \major
  \time 4/4
  \tempo 4 = 102
  \clef treble

  \repeat volta 2 {
    \repeat percent 2 {
      a8 \mf a _\markup{\italic{keys}} a a a a a a ^\markup{\hspace #10.0 \italic{till cue}} |
    }
  }

  a8_\markup{\italic{free your miiiind}}
  a a a a a a a a8 a a a
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
      a8 \f g _\markup{\italic{backbeat, gtr & bass unisono}} gis a r2^\markup {\hspace #74.0 \italic "×4"} |
    }
  }

  \override TextSpanner #'(bound-details left text) = \markup { \italic "break" }
  \textSpannerDown
  \repeat volta 2 {
    <<
      {
        \override NoteHead #'style = #'diamond
        d,2 ^\markup { \bold \musicglyph #"scripts.segno" } c b bes
        \override NoteHead #'style = #'default
      }
      \\
      {
        \clef bass
        d,4. d8 c4. c8 b4. b8 bes4. bes8
      }
    >>
    \clef treble
  }
  \alternative {
    { a''8 g gis a r2 a8 g gis a r2 ^\markup { \hspace #5.0 \musicglyph #"scripts.coda" \sub \bold 2} | }
    { a4->\startTextSpan r2. d8 fis, r g r gis r a \stopTextSpan | }
  }

  \repeat volta 2 {
    \repeat percent 2 { a8 e g a c c a g a e g a c c a r ^\markup { \hspace #38.0 \musicglyph #"scripts.coda" \sub \bold 1} | }
  }

  \repeat percent 4 { a8 _\markup \italic{ no bass } a a a a a a a | }
  \repeat volta 2 {
    \repeat percent 4 { a8 _\markup \italic{ add bass } g gis a r2 | }
  }
  a4->_\markup{\italic break} r2. |
  \repeat percent 3 { a8 g gis a r2 _\markup \bold{\hspace #11.0 D.S. con rep. al Coda 1} | }

  a4->_\markup{\italic break} r2. r1 |

  \repeat percent 3 { a8_\markup{\italic solo} g gis a r2 | }
  \override TextSpanner #'(bound-details left text) = \markup { \italic "unisono" }
  a16 \startTextSpan g' a a, g' a a, g' g a, g' a d cis c8 \stopTextSpan
  \repeat volta 2 {
    \repeat percent 2 {
      a,8 e g a c c a g a e g a c c a r ^\markup{\hspace #33.0 \italic{till cue}}
      _\markup \bold { \hspace #28.0 D.S. al Coda 2 }
      |
    }
  }

  d4. \startTextSpan cis c4 ~ c8 b4. bes2 ~ | bes1 ~ bes1 \stopTextSpan |
  \repeat volta 2 {
    \repeat percent 2 {
      a8 e g a c c a g a e g a c c a r^\markup{\hspace #24.0 \italic{×4}}
    }
  }
  a4->_\markup{\italic break} r2. r1\fermata

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
          A B C
          A' B C
          D B' C C
          \hspace #0.5
        }
      }
    }
    \hspace #1.0 % gives the fill-line something to work with
  }
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
