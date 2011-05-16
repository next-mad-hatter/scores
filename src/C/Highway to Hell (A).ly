\version "2.12.3"

%
% $File$
% $Date$
% $Revision$
% $Author$
%

\header {
  title = "Highway to Hell"
  subtitle = "-8va"
  subsubtitle = "in A major"

  composer = "AC/DC"
  poet = ""
  enteredby = "Max Deineko"

  meter = "117 bpm"
  piece = "rock"
  version = "$Revision$"

  copyright = "Transcribed and/or arranged by MaX"
  tagline = "" % or leave the lilypond line
}


harm = \chords {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  \partial 4.
  a4.

  a2 s8 d4 g8
  s2 s8 d4 g8
  r8 d4 g4 d4 a8
  s1

  \mark \markup {\box \bold "A"}

  a2 s8 d4 g8
  s2 s8 d4 g8
  r8 d4 g4 d4 a8
  s1
  e s

  \mark \markup {\box \bold "B"}

  a2 s4. d8
  s2 g4 d
  d1 s2 s8 a4.

  \break
  \mark \markup { \musicglyph #"scripts.coda" }

  d4. g d4 ~ s1
  s4. g d4 ~
  s8 g4. d4 g

  a2 s4. d8
  s2 g4 d
  d2 g4 d
  d1 a

  \bar "||"
}

mel = \relative c'' {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()

  \key a \major
  \time 4/4

  \partial 4.
  <a e' a>8 <a e' a> <a e' a>

  \repeat volta 2 {
    r2_\markup{ \italic{ \bold{1.}: gtr; \bold{2.}: add drums }
    }
    r8
    <fis d'>8 <fis d'> <g d'>
    r2 r8
    <fis d'>8 <fis d'> <g d'>
    r8
    <fis d'>8 <fis d'> <g d'>
    r8
    <fis d'>8 r
    <a e' a> <a e' a>
    r2
    <a e' a>8 <a e' a> <a e' a>_\markup{\italic etc}
  }

  \override NoteHead #'style = #'diamond

  \repeat volta 4 {
    r2^\markup{\hspace #-3.0 \musicglyph #"scripts.segno"}
      _\markup{\italic{voc+gtr+drums}}
    r8 fis fis g
    r2 r8 fis fis g
    r fis fis g
    r fis r a
  }
  \alternative {
    { a8 r2 a8 a a }
    { \repeat percent 2 {
        e8_\markup{\italic{add bass}} \<
        e e e e e e e
      }
    }
  }

  \repeat volta 4 {
    a2 \! ~ a4. d8 ~ |
  }
  \alternative {
    { d2 g4 d }
    { d1 \repeatTie _\markup{\italic break}^\markup{\hspace #3.5 al coda} ~
      d2 r8 a a a_\markup{\hspace #-13.1 D.S. con rep al coda}
    }
  }

  fis4._\markup{\italic{breaks}} g fis4 ~
  fis1
  fis4. g fis4 ~
  fis8 g4. fis4 g

  \repeat volta 3 {
    a2_\markup{
      \italic{
        repeat
        \column{
          \line{ \bold 1. till cue : solos }
          \line{ \bold 1. \small x3 + \bold 2. + \bold 1. till cue : refs }
          \line{ \bold 3. : ending }
        }
      }
    }
    \! ~ a4. d8 ~ |
  }
  \alternative {
    { d2 g4 d }
    {
      r2 %_\markup{\italic break}
      g4 d
    }
    {
      d1 \repeatTie \fermata
    }
  }
  a2\fermata a4-> r4

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
