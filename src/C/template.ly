\version "2.17.97"

%
% $File$
% $Date$
% $Revision$
% $Author$
%

\header {
  title = ""
  subtitle = ""
  subsubtitle = ""

  composer = ""
  poet = ""
  enteredby = "Max Deineko"

  meter = "133 bpm"
  piece = "tango"
  version = "$Revision$"

  copyright = "" % "Transcribed and/or arranged by MaX"
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
}

mel = \relative c' {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()
%  \set Staff.beatStructure = #'(4 4)

  \override TextSpanner #'staff-padding = #1.0
  \textLengthOff

  \override TextSpanner #'(bound-details left text) = \markup{ break }
  \override TextSpanner #'dash-fraction = #0.3
  \override TextSpanner #'dash-period = #2.0
  \override TextSpanner #'(bound-details right text) = \markup { \halign #-10.0 \draw-line #'(0 . 1) }
  \textSpannerDown

  \clef treble
  \key c \major
  \time 4/4
  \tempo "testing" 4 = 120
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
          [: A :] \raise #1.0 \small \italic cue Coda
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
%  indent = #0
%  ragged-last = ##t
}

\paper {
  print-page-number = ##f
%  page-count = #1
%  system-count = #5
}
