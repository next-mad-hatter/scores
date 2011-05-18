\version "2.13.46"

%
% $File$
% $Date$
% $Revision$
% $Author$
%

\header {
  title = "Oj Oj Oj"
  subtitle = "...А я обычная девчёночка"
  subsubtitle = ""

  composer = "unknown composer"
  poet = ""
  enteredby = "Max Deineko"

  %meter = "168 bpm"
  piece = "polka"
  version = "$Revision$"

  copyright = "" % "Transcribed and/or arranged by MaX"
  tagline = "$Revision$ $Date$" % ""
}


harm = \chords {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  s1 * 4

  d1:m a:m e:7 a:m
  d1:m a:m
  b2:7 e:7 a1:m

  d1:m a:m e:7 \time 2/4 a2:m
  \time 4/4 a1:m

  a1:m s d:m s
  e:7 s \time 2/4 a2:m s
  \break
  \time 4/4 d1:m s a:m s
  e:7 s \time 2/4 a2:m s

  b2:7 e:7 a1:m
}

mel = \relative c'' {
  \set Score.skipBars = ##f
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()

  \key a \minor
  \time 4/4
  \tempo 4 = 168

  \override NoteHead #'style = #'cross
  c8_\markup{\italic{rims}} c16 c c8\mf c16 c c8 c16 c c8 c16 c |
  s2._\markup{\italic etc}
  s1 * 2
  \override NoteHead #'style = #'default
  a'8_\markup{\italic{sax}} bes |

  \break
  \mark \markup {\box \bold "B"}
  b4
  ^\markup { \bold \musicglyph #"scripts.segno" }
  _\markup{\italic{light stacc.}}
  a f a8 bes | b4 a e e8 f |
  e4 d b e8 f | e4 c a a8 bes |
  b4 a f a8 bes | b4 a e des8 e
  ^\markup{\hspace #4.0 \musicglyph #"scripts.coda"}
  |
  fis4 f8 fis gis4 g8 gis | a4 a-> b-> c->
  _\markup { \hspace #-14.0 last time: \bold { D.S. al coda } }
  |

  \break
  \mark \markup {\box \bold "B'"}
  \repeat volta 2 {
    d16\f( cis_\markup{\italic{stacc.}} d8) a d r d c16( <\parenthesize d> c b) |
    c( b c8) a c r c b16( <\parenthesize c> b a) |
    b( bes b8) gis b r b c b |
  }
  \alternative{
    {\time 2/4 a a b c \time 4/4}
    {a a' g f e d c b}
  }

  \break
  \mark \markup {\box \bold "A"}
  s1 * 6\mf
  \time 2/4 s2 * 2
  \time 4/4 s1 * 6
  \time 2/4 s2 * 2
  _\markup { \hspace #7.0 \bold { D.S. 4 times } }
  \time 4/4

  \break
  \mark \markup{\musicglyph #"scripts.coda"}
  b4->_\markup{\italic{break}} r e-> r | a,-> e-> a-> r |
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
          Intro B B' | [: A B B' :] \super \small \italic 3x | Solo on A | B B Coda
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
