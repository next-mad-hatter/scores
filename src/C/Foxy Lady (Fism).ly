\version "2.13.46"

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

  composer = "The Jimi Hendrix Experience"
  poet = ""
  enteredby = "Max Deineko"

  %meter = "100 bpm"
  piece = "slow rock"
  version = "$Revision$"

  copyright = "" % "Transcribed and/or arranged by MaX"
  tagline = "$Revision$ $Date$" % ""
}


harm = \chords {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  s1

  \mark \markup {\box \bold "A"}

  fis1:9+ s2 s8 b4.
  fis1:9+ s2 s8 b4.

  %\break
  \mark \markup {\box \bold "B"}

  fis1:m e
  fis1:m s
}

mel = \relative c' {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()

  \key fis \minor
  \time 4/4
  \tempo 4 = 100
  \clef treble

  fis1 \fermata \<

  \repeat volta 3 {
    fis8 \! \f  ^\markup{ \musicglyph #"scripts.segno" } fis <e' a>4 fis,8 fis <e' a>4 |
    fis,8 fis <e' a>4 a,8 b b b |
    fis8 fis <e' a>4 fis,8 fis <e' a>4 |
    fis,8 fis <e' a>4 a,8 b c cis
    ^\markup{\hspace #-33.0 \italic{ repeat till cue for solo & outro; 1., 2.: ×3 }}
    |
  }

  \repeat volta 3 {
    fis,4 fis fis fis
    e e a8 b b b^\markup{\hspace #2.0 \italic{×3}}
  }
  fis4->
  _\markup \italic{ brake }
  _\markup \italic \bold { fine on cue }
  ^\markup \italic { after solo: \hspace #1.0 \small \musicglyph #"scripts.ufermata" }
  r2. |
  cis''8 _\markup \italic { fill } a4. cis8 a4. _\markup \bold { \hspace #-3.0 D.S. 3 times } |

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
          [: A B :] [: Solos on A :] B
          [: A :] \super \small \italic cue
          B
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
  ragged-last = ##f
}
