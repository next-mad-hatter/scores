\version "2.12.3"

%
% $File$
% $Date$
% $Revision$
% $Author$
%

\header {
  title = "Ted the Mechanic"
  subtitle = ""
  subsubtitle = "in E minor"

  composer = "Gillan/Morse/Glover/Lord/Paice"
  poet = ""
  enteredby = "Max Deineko"

  meter = "108 bpm"
  %piece = "rock"
  version = "$Revision$"

  copyright = "Transcribed by MaX"
  tagline = "" % or leave the lilypond line
}

\markup {
  %\normalsize { % \teeny \tiny \small \normalsize \large \huge
    \fill-line { % This centers the words, which looks nicer
      \hspace #1.0 % gives the fill-line something to work with
        \rounded-box {
        \column {
          \pad-to-box #'(0 . 0) #'(0 . 0.07) \null
          \line{
            \hspace #0.5
            \smallCaps Form:
            Intro R
            \huge \bold |
            ABR
            \huge \bold |
            ABR
            \huge \bold |
            C + \small{solos on} R + R{\tiny{\dynamic{mp}}}
            \huge \bold |
            A{\tiny \dynamic mp}BR
            \huge \bold |
            ABR
            \huge \bold |
            R\italic{\small{(cue?)}} C\italic{\small{(fine)}}
            \hspace #0.5
          }
        }
        }
      \hspace #1.0 % gives the fill-line something to work with
    }
  %}
}

harm = \chords {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  \mark \markup {\box \bold "Intro"}

  e1:m
  s1 s s

  %\mark \markup{ \musicglyph #"scripts.segno" }
  \break
  \mark \markup {\box \bold "R"}

  e2:m r8 a r16 g r e:m
  r2   r8 a r16 g r r

  \break
  \mark \markup {\box \bold "A"}

  e2:m r8 a r16 g r e:m
  r2   r8 a r16 g r r

  e2:m r8 a r16 g r e:m
  r2 r16 a8 bes b r16

  \break
  \mark \markup {\box \bold "B"}

  b2 s16 a8 e16 r4
  b2 s16 d8 a16 r4
  b2 s16 a8 e16 r4
  b1

  \break
  \mark \markup {\box \bold "C"}

  d1 c4 f2 c4
  d1 c2 f4 c
  d1 c4 r8. g2
  a1
  b2:75+ s4 s8 e16:m

}

mel = \relative c' {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()

  \key e \minor
  \time 4/4

  \override NoteHead #'font-size = #-1
  \times 2/3 {
    e8 %_\markup{\italic{gtr: sim.}}
    \override NoteHead #'style = #'cross
    e16
    \override NoteHead #'style = #'default
    e'
    \override NoteHead #'style = #'cross
    e e
    \override NoteHead #'style = #'default
    e
    \override NoteHead #'style = #'cross
    e e
    \override NoteHead #'style = #'default
    e8 d16 ~ d8. e8.
    \override NoteHead #'style = #'cross
    e16 e e e e e
  }
  \times 2/3 {
    \override NoteHead #'style = #'default
    e,8
    \override NoteHead #'style = #'cross
    e16
    \override NoteHead #'style = #'default
    e'
    \override NoteHead #'style = #'cross
    e e
    \override NoteHead #'style = #'default
    e
    \override NoteHead #'style = #'cross
    e e
    \override NoteHead #'style = #'default
    e8 d16 ~ d8.
    \override NoteHead #'style = #'cross
    b16 b b a a a b b b
  }
  \times 2/3 {
    \override NoteHead #'style = #'default
    e,8
    \override NoteHead #'style = #'cross
    e16
    \override NoteHead #'style = #'default
    e'
    \override NoteHead #'style = #'cross
    e e
    \override NoteHead #'style = #'default
    e
    \override NoteHead #'style = #'cross
    e e
    \override NoteHead #'style = #'default
    e8 d16 ~ d8. e8.
    \override NoteHead #'style = #'cross
    e16 e e e e e
  }
  \override NoteHead #'style = #'default
  \override NoteHead #'font-size = #0
  e,8 %_\markup{\italic{fill}}
  e' d cis b bes a g16 e ~
  \repeat volta 2 {
    e8 g e g e a r16 g r e ~
    e8 g e g e a r16 g r e ~
  }

  \repeat volta 2 {
    e8 g e g e a r16 g r e ~
    e8 g e g e a r16 g r e ~
    e8 g e g e a r16 g r e ~
    e8 g e g r16 a8 bes b e,16
  }

  a8-> b dis b16 a r <cis e a>-> r <b e gis>-> ~ <b e gis>4
  a8-> b dis b16 fis' r <a, d fis>-> r <a cis e>-> ~ <a cis e>4
  a8-> b dis b16 a r <cis e a>-> r <b e gis>-> ~ <b e gis>4
  a8-> b dis b16 fis' r b, r a r g r e

  r8 fis' a b c b a fis16 g ~
  g4 r2 r4
  r8 fis a b c b a fis16 g ~
  g8 e ~ e4 r r
  r8 fis a b c b a fis16 g ~
  g4 ~ g8. g2 d16 ~
  d8. d4 d4 d4 d16 ~
  d8. d4 d8 b a g e16_\markup{\italic{fine}} ~
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
