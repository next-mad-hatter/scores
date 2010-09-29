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
  subsubtitle = "in A major"

  composer = "Jimi Hendrix"
  poet = ""
  enteredby = "Max Deineko"

  meter = "up to 80 bpm"
  piece = "rock shuffle ballad"
  version = "$Revision$"

  copyright = "Transcribed and/or arranged by MaX"
  tagline = "" % or leave the lilypond line
}


harm = \chords {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  f8 fis8 s g8 s2
  f8 fis8 s g8 s2
  s1 s1

  \mark \markup {\box \bold "A"}

  d2 c g4 g:1.4.6 g2
  d2 c g4 g:1.4.6 g2
  a2 c
  f8 fis8 s g8 s2

  \mark \markup {\box \bold "B"}
  a2 c
  f8 fis8 s g8 s2
  f8 fis8 s g8 s2

  \mark \markup {\box \bold "C"}

  g2 f c2 c4:1.4.5 c
  s1 * 4
  a1 c es

  %\break
  %\mark \markup{ \musicglyph #"scripts.coda" }

}

mel = \relative c' {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()

  \key g \major
  \time 4/4

  \repeat percent 2 {
    f8 fis4 g8 ~ g4 r
    f8 fis4 g8 ~ g4 r
  }

  \repeat volta 2 {
    s1^\markup{ \musicglyph #"scripts.segno" }_\markup{\hspace #-5.0 \italic fine}
    s1
  }
  \alternative {
    { s1 s1 }
    {
      a2 c
    }
  }
  f,8 fis4 g8 ~ g4 r

  a2 c
  f,8 fis4 g8 ~ g4 r
  f8 fis4 g8 ~ g4 r_\markup{\hspace #-0.3 D.S. twice}^\markup{al coda}

  \repeat percent 3 {
    r4 b'8 a16 g a8 a16 a g a g8
    es16 e g a g4 r2
  }
  r8 g g8. e16 g g r4.
  r8 g g8. e16 g g r4.
  r8 g g8. es16 g g r4._\markup{\hspace #-7.0 D.C. al coda}

}

\score {
  \transpose g a {
    <<
      \harm
      \mel
    >>
  }
}

\markup {
  \huge{ \musicglyph #"scripts.coda" }
  \sub \large{: D.C. al fine }
}

\layout {
  ragged-last = ##f
  \context { \RemoveEmptyStaffContext }
}
