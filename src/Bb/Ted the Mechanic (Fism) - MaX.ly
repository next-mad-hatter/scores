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
  subsubtitle = "in Fis minor"

  composer = "Gillan/Morse/Glover/Lord/Paice"
  poet = ""
  enteredby = "Max Deineko"

  meter = "108 bpm shuffle groove rock"
  %piece = "shuffle groove rock"
  version = "$Revision$"

  copyright = "Transcribed and/or arranged by MaX"
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
            Intro
            \huge \bold |
            A BC A BC A
            \huge \bold |
            D + \small{solos on} A
            \huge \bold |
            [AB]{\tiny{\dynamic{mp}}}C A
            %A{\tiny{\dynamic{mp}}} B{\tiny \dynamic mp}C A
            BC A
            \huge \bold |
            A\italic{\small{(cue?)}} D Coda
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

  % \mark \markup {\box \bold "Intro"}

  e1:m
  s1 s s

  %\mark \markup{ \musicglyph #"scripts.segno" }
  \break
  \mark \markup {\box \bold "A"}

  e2:m r8 a r16 g r e:m
  r2   r8 a r16 g r r

  %\break
  \mark \markup {\box \bold "B"}

  e2:m r8 a r16 g r e:m
  r2   r8 a r16 g r r

  e2:m r8 a r16 g r e:m
  r2 r16 a8 bes b r16

  \break
  \mark \markup {\box \bold "C"}

  b2 s16 a8 e16 r4
  b2 s16 d8 a16 r4
  b2 s16 a8 e16 r4
  b1

  \break
  \mark \markup {\box \bold "D"}

  d2. s8. c16
  s4 f2 c8. d16
  s2. s8. c16
  s2 f4 c8. d16
  s2. s8. c16
  s2 g2
  a1
  b1:7.9+

  \break
  \mark \markup {\musicglyph #"scripts.coda"}
  b2.:7.9+ s8. e16.:m s1

}

mel = \relative c' {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()

  \key e \minor
  \time 4/4

  \override NoteHead #'font-size = #-2
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
  %\times 2/3 { e,8 e' } %_\markup{\italic{fill}}
  e,16 e'
  r8
  cis c b bes a g16 e ~
  \repeat volta 2 {
    e8 g e g e a r16 g r e ~
    e8 g e g e a r16 g r e ~
  }

  \repeat volta 2 {
    e8 g e g e a r16 g r e ~
    e8 g e g e a r16 g r e ~
    e8 g e g e a r16 g r e ~
    e8 g e g r16 a8 bes b
    \parenthesize e,16
  }

  a8-> b dis b16 a r <\parenthesize b e a>8-> <b e gis>16-> ~ <b e gis>4
  a8-> b dis b16 fis' r <a, d>8-> <a cis>16-> ~ <a cis>4
  a8-> b dis b16 a r <\parenthesize b e a>8-> <b e gis>16-> ~ <b e gis>4
  a8-> b dis b16 fis' r d8 a g e16

  r8 fis' a b c b a fis16 g ~
  g4
  <c, f> <c f> <c e>8. <a d>16 ~
  <a d>8
  fis' a b c b a fis16 g ~
  g8 e ~ e4
  <c f> <c e>8. <a d>16 ~
  <a d>8
  fis' a b c b a fis16 g ~
  g2 <b, g'>2
  %g4 ~ g8. g2 d16 ~
  %d8. d4 d4 d4 d16 ~
  <a e' a>1
  r16 g'8.-> r16 [g8.->] r16 [g8.->] r16 [g8.->]

  r16
  g8.-> r16 [g8->] g d a g e16-> ~ e4 r2.

  \bar "||"
}

\score {
  \transpose e fis {
    <<
      \harm
      \mel
    >>
  }
}

\layout {
  ragged-last = ##t
}
