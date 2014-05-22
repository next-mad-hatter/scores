\version "2.17.97"

%
% $File$
% $Date$
% $Revision$
% $Author$
%

\header {
  title = "I Love Rock 'n' Roll"
  subtitle = "a tutti score sans vocals and backbeat"
  subsubtitle = "in D minor"

  composer = "Alan Merrill, Jake Hooker"
  poet = ""
  enteredby = "Max Deineko"

  meter = ""
  piece = "rock (power chords throughout)"
  version = "$Revision$"

  copyright = ""
  tagline = \markup {
    \tiny { "$Revision$" }
    \hspace #30
    \tiny { "$Date$" }
  }
}

harm = \chords {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \set chordChanges = ##t

  \time 4/4

  \partial 2
  s2 |

  e1 | a2 b |
  e1 | \time 3/4 a2 b4 | \time 4/4
  e1*2 |

  e1*3 | b1 | \time 6/4 a2 b e | \time 4/4
  a1*2 r b1 |

  %r1 * 4
  e1 | a2 b |
  e1 | a2 b4 e |

  e1 | a2 b |
  e1 | \time 3/4 a2 b4 | \time 1/4
  e4 |

}

mel = \relative c' {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()
%  \set Staff.beatStructure = #'(4 4)

  \override TextSpanner #'staff-padding = #1.0
  \textLengthOff

  \override TextSpanner #'(bound-details left text) = \markup{ omit last time }
  \override TextSpanner #'dash-fraction = #0.3
  \override TextSpanner #'dash-period = #2.0
  \override TextSpanner #'(bound-details right text) = \markup { \halign #-10.0 \draw-line #'(0 . 1) }
  \textSpannerDown

  \clef treble
  \key e \minor
  \time 4/4
  \tempo "with attitude" 4 = 95

  \partial 2
  \override NoteHead #'style = #'cross
  b'16 \repeat unfold 6 { b } \parenthesize b

  \mark \markup \bold \box "A"
  \bar "[|:"
  \override NoteHead #'font-size = #1
  \override NoteHead #'style = #'diamond
  e,8 e r4 e8 e r16
  \override NoteHead #'font-size = #0
  \override NoteHead #'style = #'default
  g8. |
  \override NoteHead #'font-size = #1
  \override NoteHead #'style = #'diamond
  a8 a r4 b8 b r16
  \override NoteHead #'font-size = #0
  \override NoteHead #'style = #'default
  \parenthesize g8. |
  \override NoteHead #'font-size = #1
  \override NoteHead #'style = #'diamond
  e8 e r4 e8 e r16
  \override NoteHead #'font-size = #0
  \override NoteHead #'style = #'default
  g8. |
  \override NoteHead #'font-size = #1
  \override NoteHead #'style = #'diamond
  \time 3/4 a8 a r4 b8
  \override NoteHead #'font-size = #0
  \override NoteHead #'style = #'default
  g8
  | \time 4/4
  \override NoteHead #'font-size = #1
  \override NoteHead #'style = #'diamond
  e4 r2
  \override NoteHead #'font-size = #0
  \override NoteHead #'style = #'default
  e'4 \bendAfter #-8 |
  \override NoteHead #'font-size = #1
  \override NoteHead #'style = #'diamond
  e,8 e r4
  \override NoteHead #'font-size = #0
  \override NoteHead #'style = #'default
  e'16 d b8 a16 g8. |

  \break
  \mark \markup {
    \vcenter
    \bold \box "B"
    \hspace #0.3
    \smaller \bold \musicglyph #"scripts.segno"
  }
  \override NoteHead #'font-size = #1
  \override NoteHead #'style = #'diamond
  e8_\markup \italic {3rd time: four bars solo }
  e r2. | e8 e r4
  \override NoteHead #'font-size = #0
  \override NoteHead #'style = #'default
  e'16 d b8 a16 g8. |
  \override NoteHead #'font-size = #1
  \override NoteHead #'style = #'diamond
  e8 e r2. | b'8 b r4
  \override NoteHead #'font-size = #0
  \override NoteHead #'style = #'default
  e16 d b8 a16
  %\once \override TextScript #'X-extent = #'(0.0 . 0.0)
  g8.
  %^\markup \normalsize \box \pad-around #0.1 \line {
  %  \halign #6.0
  %  \bold{D.S.} for open solos
  %  \huge \arrow-head #Y #DOWN ##t
  %}
  |
  \override NoteHead #'font-size = #1
  \override NoteHead #'style = #'diamond
  \time 6/4 a8 a r4 b8 b r4 e,8 e
  \override NoteHead #'font-size = #0
  \override NoteHead #'style = #'default
  r16 \parenthesize g8. | \time 4/4
  \override NoteHead #'font-size = #1
  \override NoteHead #'style = #'diamond
  a1 ~ \parenthesize a1 |
  \once \override TextScript #'X-extent = #'(0.0 . 0.0)
  r1
  %^\markup \normalsize \box \pad-around #0.1 \line {
  %  \halign #1.8
  %  \huge \arrow-head #Y #DOWN ##t
  %  \bold{D.S.} for open solos
  %}
  _\markup \normalsize \box \pad-around #0.1 \line {
    \halign #8.4
    \bold{D.S.} for open solos
    \super \huge \arrow-head #Y #UP ##t
  }
  | r1 |
  b8 \startTextSpan \repeat unfold 6 { b8 }
  \once \override TextScript #'X-extent = #'(0.0 . 0.0)
  b8
  ^\markup \normalsize \box \pad-around #0.1 \line {
    \halign #-0.5
    \bold{×3}
    \huge \arrow-head #Y #DOWN ##t
  }
  \stopTextSpan |
  \bar ":|]"

  \break
  \mark \markup \bold \box "A'"
  r1 r1 r1 r2
  \override NoteHead #'style = #'cross
  \repeat unfold 6 { b16 } b8

  \break
  \bar "[|:"
  \override NoteHead #'font-size = #1
  \override NoteHead #'style = #'diamond
  e,8 e r4 e8 e r16
  \override NoteHead #'font-size = #0
  \override NoteHead #'style = #'default
  g8. |
  \override NoteHead #'font-size = #1
  \override NoteHead #'style = #'diamond
  a8 a r4 b8 b r16
  \override NoteHead #'font-size = #0
  \override NoteHead #'style = #'default
  \parenthesize g8. |
  \override NoteHead #'font-size = #1
  \override NoteHead #'style = #'diamond
  e8 e r4 e8 e r16
  \override NoteHead #'font-size = #0
  \override NoteHead #'style = #'default
  g8. |
  \override NoteHead #'font-size = #1
  \override NoteHead #'style = #'diamond
  \time 3/4 a8 a r4 b8
  \override NoteHead #'font-size = #0
  \override NoteHead #'style = #'default
  \once \override TextScript #'X-extent = #'(0.0 . 0.0)
  g8
  _\markup \normalsize \box \pad-around #0.1 \line {
    \halign #3.0
    repeat until cue
    \super \huge \arrow-head #Y #UP ##t
  }
  \time 4/4 |
  \bar ":|]"
  \override NoteHead #'font-size = #1
  \override NoteHead #'style = #'diamond
  \time 1/4 e4

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
          [: A B :] \raise #1.0 \small \bold \italic {×3} A'
          \hspace #0.5
        }
      }
    }
    \hspace #1.0 % gives the fill-line something to work with
  }
}

\score {
  \transpose e d {
    <<
      \harm
      \mel
    >>
  }
}

\layout {
%  indent = #0
%  ragged-last = ##t
}

\paper {
  print-page-number = ##f
%  page-count = #1
%  system-count = #5
}
