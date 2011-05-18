\version "2.13.46"

%
% $File$
% $Date$
% $Revision$
% $Author$
%

\header {
  title = "Nobody's Wife"
  subtitle = ""
  subsubtitle = "in F# minor"

  composer = "Satindra Kalpoe, Bart van Veen, Anouk Teeuwe "
  poet = ""
  enteredby = "Max Deineko"

  %meter = "98 bpm"
  piece = "girls rock"
  version = "$Revision$"

  copyright = "" % "Transcribed and/or arranged by MaX"
  tagline = "$Revision$ $Date$" % ""
}


harm = \chords {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  \mark \markup {\box \bold "A"}
  e2:m c:9^7 a:m g4 d/fis
  e2:m c:9^7 a:m g4 d/fis
  f1 s1

  %\break
  \mark \markup {\box \bold "B"}

  \repeat unfold 2 { e2:m c a:m g4 d/fis }

  %\break
  \mark \markup {\box \bold "C"}

  a2:m d g4. c8 s2
  a2:m d g4. c8 s2

  \break
  \mark \markup \musicglyph #"scripts.coda"

  a4.:m d8 s2 g4. c8 s2

}

%intoA = \markup{
%  \column {
%    \line \text \tiny \italic { 1: \bold 1.,2. } }
%    \line \text \tiny \italic { 2: \bold 1.,2.,3. } }
%  }
%}
intoA = \markup \text \italic \tiny \bold {rep.}
%intoA = \markup \text \italic \tiny { 1: \bold{1.},\bold{2.}; 2: \bold{1.},\bold{2.},\bold{3.}}
intoB = \markup \text \italic \tiny { 1: \bold{3.}, 2: \bold 4.}

mel = \relative c {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()

  \clef treble
  \key e \minor
  \time 4/4
  \tempo 4 = 98

  e8_\markup{\italic sim.} e'16 b'8 e b16
  c,8 e16 d'8 g, \parenthesize e16
  a,8 e'16 b'8 c b16 ~
  <g, b'>8. g16 <fis fis'> a' fis d_\markup{\italic etc}
  s1
  \set Score.repeatCommands = #(list (list 'volta intoA))
  s1
  %\set Score.repeatCommands = #'((volta #f) (volta "into B") end-repeat)
  %\set Score.repeatCommands = #'((volta #f) end-repeat)
  %\set Score.repeatCommands = #'(append (volta #f) '(list 'volta intoB) end-repeat)
  \set Score.repeatCommands = #(list '(volta #f) (list 'volta intoB) 'end-repeat)
  \override NoteHead #'style = #'diamond
  f1->_\markup \italic{ break & fill }
  \set Score.repeatCommands = #'((volta #f))
  r1%_\markup \italic{ fill }

  \override NoteHead #'font-size = #'-1

  \repeat percent 2 { 
    e8
    _\markup \italic { rock backbeat }
    ^\markup \musicglyph #"scripts.segno"
    e
    _\markup \italic \bold { fine }
    r4 c'8 c r4 |
    a16 a8-. a-. a16 a8-. g4 fis
    _\markup {
      \hspace #8.0
      \column {
        %\line{ solos: \bold { D.S. till cue & D.S. con rep. al Coda } }
        \line{ solos: \hspace #0.4 \bold { D.S. till cue } & }
        \line{ \hspace #6.5 \bold {D.S. con rep. al Coda } }
        \line{ outro: \bold { D.S. till fine on cue } }
      }
    }
    |
  }

  \repeat volta 2 {
    \repeat percent 2 {
      a2 d,2 g4. c8 ~ c2 %^\markup{\small \italic{\bold 2.: into coda}}
      ^\markup { \hspace #4.3 \musicglyph #"scripts.coda" }
      _\markup {
        \hspace #15.0
        \column {
          \line{ 1: \bold D.C. }
          \line{ 2: \bold D.S. for solos }
        }
      }
      |
    }
  }

  r8_\markup{\italic break} a-> r d-> r2 g,4.-> c8-> ~ c2
  _\markup { \hspace #1.0 \bold D.S. for outro }

  \bar "||"

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
%            \hspace #0.5
%            A \tiny{\hspace #-0.5 \bold x3} B C
%            \hspace #0.5
%            A \tiny{\hspace #-0.5 \bold x4} B C
%            \hspace #0.5
%            [: Solos on B :] B C into Coda
%            \hspace #0.5
%            [: fade on B if needed :]
%            \hspace #0.5
            \hspace #0.5
            A B C
            \hspace #1.0
            A \tiny \super { \hspace #-1.0 +1 } B C
            \hspace #1.0
            [: Solos on B :] B C Coda
            \hspace #1.0
            [: B till fine :]
            \hspace #0.5
          }
        }
        }
      \hspace #1.0 % gives the fill-line something to work with
    }
  %}
}

\score {
  \transpose c d {
    <<
      \harm
      \mel
    >>
  }
}

\layout {
  ragged-last = ##t
}
