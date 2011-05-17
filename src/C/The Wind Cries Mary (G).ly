\version "2.12.3"

%
% $File$
% $Date$
% $Revision$
% $Author$
%

\header {
  title = "The Wind Cries Mary"
  subtitle = ""
  subsubtitle = "in G major"

  composer = "Jimi Hendrix"
  poet = ""
  enteredby = "Max Deineko"

  %meter = "up to 80 bpm"
  %piece = "rock shuffle ballad"
  version = "$Revision$"

  copyright = "" % "Transcribed and/or arranged by MaX"
  tagline = "$Date$" % ""
}


harm = \chords {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  \repeat unfold 4 { f8 fis8 s g8 s2 }

  \break
  \mark \markup {\box \bold "A"}

  d2 c g4 g:1.4.6 g2
  d2 c g4 g:1.4.6 g2
  a2 c
  f8 fis8 s g8 s2

  \mark \markup {\box \bold "B"}
  a2 c
  f8 fis8 s g8 s2
  f8 fis8 s g8 s2

  \break
  \mark \markup {\box \bold "C"}

  \bar "|:"
  \repeat unfold 2 { g2 f c2 c4:1.4.5 c }
  \bar ":|"
  g2 f c2 c4:1.4.5 c a1 c es

}

mel = \relative c'' {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()

  \key g \major
  \time 2/2
  \tempo "halbballadig" 4 = 80

  \repeat percent 2 {
    <a c f>8 <ais cis fis>4 <b d g>4. r4 
    \appoggiatura g16 <a c f>8 \appoggiatura gis16 <ais cis fis>4 \appoggiatura a16 <b d g>4. r4 
    _\markup{\hspace #40.0 \bold \italic fine}
  }

  \override NoteHead #'style = #'diamond
  \repeat volta 2 { s1^\markup{ \musicglyph #"scripts.segno" } s1 }
  \alternative { { s1 s1 } { a2 c } }
  f,8 fis4 g8 ~ g4 r |

  a2 c | f,8 fis4 g8 ~ g4 r |
  f8 fis4 g8 ~ g4 r _\markup{ \hspace #-5.0 \column { \line { 1: \bold { D.S. twice } } \line { 4: \bold { D.C. al fine } } } } |
  \override NoteHead #'style = #'default

  \repeat percent 3 {
    r4 b'8 a16 g a8 a16 a g a g8 |
    es16 e g a g4 r2 ^\markup { \hspace #40.0 \italic { repeat for solos } } |
  }
  r8 g g8. e16 g g r4. |
  r8 g g8. e16 g g r4. |
  r8 g g8. es16 g g r4.  _\markup{\hspace #1.0 \bold { D.C. } } |

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
          Intro [: A B :] \super \tiny \bold ×3 C Intro A B Intro
          \hspace #0.5
        }
      }
    }
    \hspace #1.0 % gives the fill-line something to work with
  }
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
  \context { \RemoveEmptyStaffContext }
}
