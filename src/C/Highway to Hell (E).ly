\version "2.13.46"

%
% $File$
% $Date$
% $Revision$
% $Author$
%

\header {
  title = "Highway to Hell"
  subtitle = "-8va"
  subsubtitle = "in E major"

  composer = "AC/DC"
  poet = ""
  enteredby = "Max Deineko"

  %meter = "117 bpm"
  piece = "rock"
  version = "$Revision$"

  copyright = "" % "Transcribed and/or arranged by MaX"
  tagline = "$Revision$ $Date$" % ""
}


harm = \chords {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  \partial 4.
  a4.

  s2 s8 d4 g8
  s2 s8 d4 g8
  s8 d4 g4 d4 a8
  s1

  \break
  \mark \markup {\box \bold "A"}

  a2 s8 d4 g8
  s2 s8 d4 g8
  s8 d4 g4 d4 a8
  s1
  e s

  \break
  \mark \markup {\box \bold "B"}

  a2 s4. d8
  s2 g4 d
  d1 s2 s8 a4.

  \break
  \mark \markup { \musicglyph #"scripts.coda" }

  d4. g d4 ~ s1
  s4. g d4 ~
  s8 g4. d4 g

  \break
  \mark \markup {\box \bold "B'"}

  a2 s4. d8
  s2 g4 d
  d2 g4 d
  d1 a
}

mel = \relative c'' {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()

  \clef treble
  \key a \major
  \time 4/4
  \tempo 4 = 117

  \partial 4. <a e' a>8 \f <a e' a> _\markup \italic {gtr} <a e' a> |

  \repeat volta 2 {
    r2_\markup \italic{ enter backbeat on rep } r8 <fis d'>8 <fis d'> <g d'> |
    r2 r8 <fis d'>8 <fis d'> <g d'> |
    r8 <fis d'>8 <fis d'> <g d'> r8 <fis d'>8 r <a e' a> |
    <a e' a> r2 <a e' a>8 <a e' a> <a e' a>_\markup{\italic etc} |
  }

  \override NoteHead #'style = #'diamond

  \repeat volta 4 {
    r2^\markup{\hspace #-3.0 \musicglyph #"scripts.segno"} r8 fis fis g |
    r2 r8 fis fis g |
    r fis fis g r fis r a |
  }
  \alternative {
    { a8 r2 a8 a a | }
    { \repeat percent 2 { e8_\markup \italic{ add bass } \mp e e e e e e e \< | } }
  }

  \repeat volta 4 {
    a2-> \! \ff ~ a4. d8 ~ |
  }
  \alternative {
    { d2 g4-> d-> }
    {
      \override TextSpanner #'(bound-details left text) = \markup { \italic "break" }
      \textSpannerDown
      d1-> \repeatTie \startTextSpan
      ^\markup{\hspace #13.2 \musicglyph #"scripts.coda" } ~
      d2 r8 a a a_\markup \bold { \hspace #-7.0 D.S. al coda } \stopTextSpan |
    }
  }

  \override TextSpanner #'(bound-details left text) = \markup { \italic "breaks" }
  fis4.-> \mf \startTextSpan g-> fis4-> ~ | fis1 |
  fis4.-> g-> fis4-> ~ | fis8 g4.-> fis4-> g-> \stopTextSpan |

  \repeat volta 3 {
    a2->
    \! ~ a4. d8 ~ |
  }
  \alternative {
    { d2 g4-> d-> | }
    { r2 _\markup{\italic break} g4-> d-> | }
    {
      d1 \repeatTie \fermata
      _\markup {
        \hspace #1.0
        \bold repeat
        \italic {
          \column{
            \line{ 4×\bold{1.} till cue (solos) }
            \line{ 3×\bold{1.}, then \bold 2. (ref) }
            \line{ 4×\bold{1.} (refs till cue) }
            \line{ 3×\bold{1.}, then \bold 3. (fine on cue) }
          }
        }
      } |
    }
  }
  a2\fermata a4-> r4 |

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
          Intro A B A B Coda [: Solos & Refs on B :]
          \hspace #0.5
        }
      }
    }
    \hspace #1.0 % gives the fill-line something to work with
  }
}

\score {
  \transpose a e {
    <<
      \harm
      \mel
    >>
  }
}

\layout {
  ragged-last = ##f
}
