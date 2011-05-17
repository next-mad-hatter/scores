\version "2.13.46"

%
% $File$
% $Date$
% $Revision$
% $Author$
%

\header {
  title = "A Nam Vse Ravno"
  subtitle = "Песня про зайцев"
  subsubtitle = ""

  composer = "А. Зацепин"
  poet = "Л. Дербенев"
  enteredby = "Max Deineko"

  meter = ""
  piece = "uptempo foxtrot"
  version = "$Revision$"

  copyright = "" % "Transcribed and/or arranged by MaX"
  tagline = "$Date$" % ""
}


harm = \chords {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  a2:m d:m g:7 c:maj |
  f:maj bes b:7 e:7 |
  d f b:7 e:7 |

  a1:m a2:m d:m d:m e:7 |
  e:7 a4:m e:7 |
  e2:7 a:m |

  a1:m d:m e:7 |
  a2:m e4:aug s8 e:7 |
  e2:7 a:m |
}

mel = \relative c'' {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()

  \key a \minor
  \time 4/4
  \clef treble

  \mark \markup {\box \bold "A"}
  \repeat volta 2 {
    s1_\markup{\italic{ad lib}} s1
  }
  \alternative { { s1 * 2 } { s1 * 2 } }

  \break
  \mark \markup {\box \bold "B"}
  \repeat volta 2 {
    \tempo 4 = 100
    a4
    ^\markup { \bold \musicglyph #"scripts.segno" }
    _\markup{\italic sim.}
    c a8 a e4 |
    a4 c a8 a f4  |
    d4 f e8 e b4 |
  } \alternative {
    { e8 d c d e4 r | }
    { c'8
    b a gis a4 r
    _\markup {
      \hspace #7.0
      \right-column {
        \line {\bold D.S., then \bold D.C.,}
        \line {then \bold D.S. till cue \bold { al coda } }
      }
    }
    | }
  }
  \bar "||"

  \break
  \mark \markup { \musicglyph #"scripts.coda" }
  \repeat volta 2 {
    a8 c e4 a,8 c16 e ~ e e dis8 |
    d8 f a4 d,8 f16 a ~ a a gis8 |
    e8 gis b4 e,8 gis16 c ~ c c b8 |
  }
  \alternative {
    {
      \clef bass
      c,,,8_\markup{\italic{break}}
      b a f
      \times 2/3 {
        e8
        \clef treble
        \override NoteHead #'style = #'diamond
        c'''16 c8 c16 ~ c8 c16
      } c8 |
      \override NoteHead #'style = #'default
    }
    {
      \override NoteHead #'style = #'xcircle
      e,16->_\markup{\italic{break}}
      \override NoteHead #'style = #'default
      e'[ dis e] f fis g gis a r8 a,16-> ~ a4 \fermata
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
          [: A B B :] [: Solos on B :] \super \small \italic cue Coda
          \hspace #0.5
        }
      }
    }
    \hspace #1.0 % gives the fill-line something to work with
  }
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
