\version "2.13.46"

%
% $File$
% $Date$
% $Revision$
% $Author$
%

\header {
  title = "7000"
  subtitle = "Семь тысяч над землёй"
  subsubtitle = "Altitude 7000"

  composer = "В. Сюткин"
  poet = ""
  enteredby = "Max Deineko"

  meter = ""
  piece = "uptempo foxtrot"
  version = "$Revision$"

  copyright = "" % "Transcribed and/or arranged by MaX"
  tagline = "$Date$" % ""
}


harm = \chordmode {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  %e1:dim b:7 |
  s1 s |

  e1:m b:7 s e2:m c4:7 b:7 |
  b2:7 b:aug e1:m6 |

  e1:m s b:7 e2:m c4:7 b:7 |
  e1:m |
  c1:9 e:m c:9 a2:m6 b:7 |

  e1:m b:7 s e2:m c4:7 b:7 |
  a1:7 b:7 |

  c1:9 e:m c:9 a2:m b:7 |
  e1:m b:7 s e2:m c4:7 b:7 |
  a2:7 b:7 |
  a1:7.9- b4:aug s8. e16:m s2 |
}

mel = \relative c'' {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()

  \clef treble
  \key e \minor
  \time 2/2
  \tempo 4 = 93

  <<
    { e4 \appoggiatura { es16[ d] } cis4 \appoggiatura { c16[ b] } bes4 \appoggiatura { a16[ as] } g4 | \appoggiatura bes16 b8-. }
    \\
    { bes4(\mf g e cis | \appoggiatura bes16 b8-.) }
  >>
  b''-. b,-. b,16( b'-.) r8 \appoggiatura bes, b e g |

  \mark \markup {\box \bold "A"}
  \repeat volta 2 {
    b4
    ^\markup { \bold \musicglyph #"scripts.segno" \sub 1 }
    _\markup { \italic harmonized }
    b4 r8 \appoggiatura bes b a g |
    a8. b16 ~ b4 r8 b, dis fis |
  }
  \alternative{
    {
      a8. b16 ~ b4 r8 b bes16 b8-. a16 ~ |
      a8. g16 ~ g4 r8 b, e g |
    }{
      a8. b16 ~ b4 g8 g g g |
      e2 ~ e4-.  r
      %^\markup { \hspace #6.0 \right-column { \line {\italic solos: D.S.1} \line { \italic { on cue: } \bold \musicglyph #"scripts.coda" } } }
      _\markup { \hspace #3.0 \right-column { \line \italic { break & fill } \line { solos: \bold{D.S.1}, \bold {al coda} on cue } } }
    }
  }

  \break
  \mark \markup {\box \bold "B"}
  \repeat volta 2 {
    s1 \mp
    ^\markup { \bold \musicglyph #"scripts.segno" \sub 2 }
    %\override NoteHead #'font-size = #-2
    %\override Beam #'thickness = #0.3
    %\override Beam #'length-fraction = #0.9
    r2 r16 g'
    _\markup { \italic {sample fills for verse 2} }
    fis g e g b, g' |
    r4 r16 a32( b c16) c32( b a4-.) r4 |
  }
  \alternative {
    {
      r16 g32( a b16) b32( a g4-.)
      r16 fis32( g a16) a32( g fis16) e dis fis |
    } { s1 }
  }
  %s1 * 4
  g,2 ~ g8 e d' c | b2 ~ b8 g g' fis | e2 c | a4 fis8 e dis4-. r |

  \break
  \mark \markup {\box \bold "C"}
  \repeat volta 2 {
    r8 \mf b' b'16 b, r8 b b'16 b, r4
    _\markup { \italic etc }
    %r8 b b'16 b, r8 b b'16 b, r4
    %\override NoteHead #'font-size = #0
    %\override Beam #'thickness = #0
    %\override Beam #'length-fraction = #1
    s1 * 2
  }
  \alternative{
    { s1 }
    {
      s1 b4 dis
      fis8-. b ~ b4
      %^\markup{\hspace #6.0 \right-column{\line{1: D.S.2} \line{2: D.S.1 al Coda}}}
      _\markup{\hspace #6.0 \right-column{\line \italic{1. time: break & fill} \line{1.: \bold D.S.2} \line{2.: \bold {D.S.1 al coda}}}}
      |
    }
  }
  \bar "||"

  \break
  \mark \markup { \musicglyph #"scripts.coda" }
  s1 * 4
  \bar "|:"
  s2\mp s2_\markup{\small \italic{(1. & 2.)}} s1 s1
  \set Score.repeatCommands = #'((volta "1., 3."))
  s1
  \set Score.repeatCommands = #'((volta #f) (volta "2.") end-repeat)
  s2.\< s4\f
  \set Score.repeatCommands = #'((volta #f) (volta "4.") end-repeat)
  <<
    { e,4 \appoggiatura { es16[ d] } cis4 \appoggiatura { c16[ b] } bes4 \appoggiatura { a16[ as] } g4 | b8-. }
    \\
    { bes4(_\markup \italic{break} g e cis | b8-.) }
  >>
  \set Score.repeatCommands = #'((volta #f))
  b' g g16( e) r dis'8.( e4-.)-> |

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
          A B C B C [: Solos on A :] \super \small \italic cue Coda
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
      \new ChordNames \with { voltaOnThisStaff = ##f }{ \harm }
      \new Staff \with { voltaOnThisStaff = ##t }{ \mel }
    >>
  }
}

\layout {
  ragged-last = ##t
}
