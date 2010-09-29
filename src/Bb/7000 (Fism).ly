\version "2.12.3"

%
% $File$
% $HGDate: Tue, 01 Jun 2010 00:41:20 +0200 $
% $Revision$
% $Author$
%

\header {
  title = "7000"
  subtitle = "Семь тысяч над землёй"
  subsubtitle = "in Fis minor (or Em for Bb)"

  composer = "Сюткин и К"
  poet = ""
  enteredby = "Max Deineko"

  meter = "93 bpm"
  piece = "uptempo foxtrot"
  version = "$Revision$"

  copyright = "Transcribed by MaX"
  tagline = "" % or leave the lilypond line
}


harm = \chordmode {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  e1:dim b:7

  \mark \markup {\box \bold "A1"}

  \repeat volta 2 {
    e1:m b:7 |
  }
  \alternative{
    { b:7 e2:m c4:7 b:7 | }
    { b2:7 b:aug e1:m6 }
  }

  \bar "||:"
  \break

  \mark \markup {\box \bold "B"}

  \repeat volta 2 {
    e1:m e:m b:7 
  }
  \alternative{
    { e2:m c4:7 b:7 }
    { e1:m }
  }

  \bar "||"
  \mark \markup {\box \bold "C"}

  c1:9 e:m c:9 a2:m6 b:7

  \bar "||:"
  \break

  \mark \markup {\box \bold "A2"}

  \repeat volta 2 {
    e1:m b:7 | b:7 |
  }
  \alternative{
    { e2:m c4:7 b:7 | }
    { a1:7 b:7 }
  }

  \bar "||:"
  \break

  \mark \markup {\box \bold "A3"}

  e1:m b:7 |
  b1:7 |
  e2:m c4:7 b:7 |
  a2:7 b:7 |
  e1:dim b4:aug r8. e16:m s2 |

  \bar "|."
}

mel = \relative c'' {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  \key e \minor
  \time 2/2

  e'4(\mf cis g e |
  b8-.) b'-. b,-. b16( b'-.) r8 \appoggiatura bes,, b e g |

  bes8. b16 ~ b4 r8 \appoggiatura bes b a g |
  a8. b16 ~ b4 r8 b dis fis |
  a8. b16 ~ b4 r8 b bes b |
  a8. g16 ~ g4 r8 b, e g |
  a8. b16 ~ b4 g8 g g g |
  e2 ~ e4-. r

  s1 * 9 \mp

  s1 * 5 \mf
  b4^\markup{\small \italic{1. time only}} dis fis8-. b ~ b4 |

  s2\mp s2_\markup{\small \italic{(1. & 2.)}} s1 s1
  \set Score.repeatCommands = #'((volta "1., 3."))
  s1
  \set Score.repeatCommands = #'((volta #f) (volta "2.") end-repeat)
  s2.\< s4\f
  \set Score.repeatCommands = #'((volta #f) (volta "4.") end-repeat)
  g4( e bes g) |
  \set Score.repeatCommands = #'((volta #f))
  b8[ b] g g16 e r dis'8.[ e8->]
  \once \override NoteHead #'style = #'xcircle
  e, |

}

\score {
  \transpose e fis {
    <<
      \new ChordNames \with { voltaOnThisStaff = ##f }{ \harm }
      \new Staff \with { voltaOnThisStaff = ##t }{ \mel }
    >>
  }
}

\markup {
  \huge{
    \smallCaps{ Form: }
    \hspace #5.0
    \column{
      \line{ \bold{A1} \hspace #10.0 intro }
      \line{ \bold{BC} \hspace #9.3 verse }
      \line{ \bold{A2} \hspace #10.0 ref }
      \line{ \bold{BC} \hspace #9.3 verse }
      \line{ \bold{A2} \hspace #10.0 ref }
      \line{ \bold{A1} \hspace #10.0 instr }
      \line{ \bracket{\line{:\bracket{\line{: \bold{B} :}} \bold{C}:}} \hspace #2.5 solos}
      \line{ \bold{A3} \hspace #10.0 2 × ref + coda }
    }
  }
}

\layout {
  ragged-last = ##t
}
