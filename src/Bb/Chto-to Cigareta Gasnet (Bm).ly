\version "2.13.46"

%
% $File$
% $Date$
% $Revision$
% $Author$
%

\header {
  title = "Chto-to Cigareta Gasnet"
  subtitle = "Что-то сигарета гаснет"
  subsubtitle = ""

  composer = "К. Беляев"
  poet = ""
  enteredby = "Max Deineko"

  meter = ""
  piece = "heavily drunk cha cha"
  version = "$Revision$"

  copyright = "" % "Transcribed and/or arranged by MaX"
  tagline = "$Revision$ $Date$" % ""
}


harm = \chords {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  s1

  a1:m\mf d:m e:7 a2:m e:7
  a1:m d:m e:7 a:m

  \repeat unfold 2 {
    a1:m d:m e:7 a:m
  }
  a1:7 d:m g:7 c
  f d:m e:7 a:m

  a:7 d:m g:7 c:maj
  f:maj d:m6
  e:7 a:m
  e:7 a:m
}

mel = \relative c' {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()

  \clef treble
  \time 4/4
  \key a \minor
  \tempo 4 = 66

  \override NoteHead #'style = #'cross
  c'4 r c, r
  \override NoteHead #'style = #'default

  \mark \markup {\box \bold "A"}
  \repeat volta 2 {
    a'8
    ^\markup { \bold \musicglyph #"scripts.segno" }
    a a a a4 c | b d2 r4 |
    gis,8 gis gis gis gis4 b | r8 a r c b a gis b |
    a8 a a a a4 c | d4 c b a  |
    r8 gis r a b a gis r |
    a4_\markup{\italic{break}} r4
    \override NoteHead #'style = #'cross
    e
    \override NoteHead #'style = #'default
    r4 |
  }

  \break
  \mark \markup {\box \bold "B"}
  s1 * 16

  \break
  \mark \markup {\box \bold "C"}
  \repeat volta 2 {
    s1 * 6
  }
  \alternative {
    { s1 * 2 }
    {
      e4-> %_\markup{\column{\italic{break} \line{\box \bold{fine}}}}
      _\markup{ \italic{break} }
      _\markup{ \bold \italic fine }
      r2.
      s1
      _\markup{ \italic fill }
      _\markup{ \hspace #0.0 \bold { D.S. twice } }
    }
  }
  \bar "||"
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
          [: A B C :] \super \small \italic 3x
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
  ragged-last = ##f
}
