\version "2.13.46"

%
% $File$
% $Date$
% $Revision$
% $Author$
%

\header {
  title = "Eto za Oknom Rassvet"
  subtitle = "Это за окном рассвет"
  subsubtitle = ""

  composer = "Е. Хавтан"
  poet = "В. Жуков"
  enteredby = "Max Deineko"

  meter = ""
  piece = "fast pop"
  version = "$Revision$"

  copyright = "" % "Transcribed and/or arranged by MaX"
  tagline = "$Date$" % ""
}


harm = \chords {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  \repeat unfold 3 { f1:m | bes4. as8 s2 | }
  c1:7 s1 c1:7 s1 |

  f1:m c:7 es bes:7 |
  f1:m c:7 es bes:7 |
  des:7 s as2 es/g f1:m |
  bes1 b:m7.5- c:7 s |

  \repeat volta 2 {
    \repeat unfold 3 { bes2:m c:7 f1:m }
  }
  \alternative{
    { bes2:m c:7 f1:m | }
    { bes2:m c:7 | }
  }
  \repeat unfold 2 {
    f1:m bes4. as8 s2 |
  }

  f1:m c:7 |
  des1 s as2 es f1:m bes b:m7.5- c:7 s |

  \repeat unfold 3 { bes2:m c:7 f1:m }
  bes2:m c:7
  f1:m

  des:7 s bes2:m c:7 f1:m

  \bar "|."
}

intoRep = \markup{ \text \bold \italic {repeat}}
intoEnd = \markup{ \text \bold \italic {end}}

mel = \relative c' {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()

  \key f \minor
  \time 4/4
  \clef treble

  \override NoteHead #'style = #'diamond
  \repeat volta 2 {
    \repeat percent 3 {
      \tempo 4 = 192
      f4-.->
      \mf
      as8
      _\markup{\italic{gtr}}
      g4-> as8 r4 |
      bes4-.-> r8 as8-> ~ as as as r |
    }
  }
  \alternative{
    {
      c4-.->
      _\markup{\italic{fill / add band}}
      \<
      r8 c-> ~ c4 r
      c4-.-> r8 c-> ~ c4 r \!
    }
    {
      c4-.-> r8 c-> ~ c4 r \!
      c4-.-> r8 c-> ~ c4 r \!
    }
  }

  \break
  \mark \markup {\box \bold "A"}
  f,4-.->
  ^\markup { \bold \musicglyph #"scripts.segno" }
  r8 f-> ~ f4 r
  c'4-.-> r8 c-> ~ c8 c c r
  _\markup{\italic{etc}}
  s1 * 6
  s1 * 7
  c4
  _\markup {
    \hspace #-1.0
    \column {
      \line {\italic { 2.: break } \hspace #1.0 \bold {D.S.} }
      \line {\italic { 3.: fill } }
    }
  }
  r2.

  \break
  \mark \markup {\box \bold "B"}
  \repeat volta 2 {
    bes4-> r c-> r | f,4-> as8 as ~ as as as4-.
    _\markup{\italic{etc}}
    |
    s1 * 4
  }
  \alternative{
    {s1 * 2}
    {
      s1
      ^\markup { \hspace #12.2 \bold \musicglyph #"scripts.coda" }
    }
  }
  %\mark \markup { \musicglyph #"scripts.coda" }
  \repeat percent 2 {
    f4-.->
    _\markup{\italic{intro riff}}
    as8 g4-> as8 r4 |
    bes4-.-> r8 as8-> ~ as as as r
    _\markup { \hspace #24.0 \bold { D.S. al Coda } }
    |
  }

  \break
  \mark \markup { \musicglyph #"scripts.coda" }
  \repeat volta 2 {
    f4-.
    \mp
    r8 f ~ f4 r
    c4-.  r8 c ~ c4
    r
    ^\markup{\hspace #3.0 \italic cue}
  }
  \override NoteHead #'style = #'default
  c'2.
  _\markup{\italic cresc.}
  bes8 as | bes c r2. |
  \grace c,8 c'4 ~ c ~ c4 bes | as8 f r8 f r2 |
  r2 f8 as bes b ~ | b4 r4 r8 f as bes |
  b( \f c-.) c-. b( c-.) c-. b( c-.) |
  c4->_\markup{\italic{fill}} r2. |
  \override NoteHead #'style = #'diamond

  \break
  \mark \markup {\box \bold "B"}
  \bar "|:"
  s1 * 7
  _\markup{\italic{solo/refs till cue}}
  \set Score.repeatCommands = #(list (list 'volta intoRep))
  s1
  \set Score.repeatCommands = #(list '(volta #f) (list 'volta intoEnd) 'end-repeat)
  \override NoteHead #'style = #'default
  es2->
  des |
  \set Score.repeatCommands = #'((volta #f))

  c8->
  _\markup{\italic{break}}
  r f, as r f ~ f4-. | as2-> g-> | f4-> r4 r2 |
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
          Intro A A B A B Coda [: B :] \super \small \italic cue
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
