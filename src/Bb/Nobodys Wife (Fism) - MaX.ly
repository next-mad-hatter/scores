\version "2.12.3"

%
% $File$
% $Date$
% $Revision$
% $Author$
%

\header {
  title = "Nobody's Wife"
  subtitle = ""
  subsubtitle = "in Fis minor"

  composer = "Satindra Kalpoe, Bart van Veen, Anouk Teeuwe "
  poet = ""
  enteredby = "Max Deineko"

  meter = "98 bpm"
  piece = "girls rock"
  version = "$Revision$"

  copyright = "Transcribed and/or arranged by MaX"
  tagline = "" % or leave the lilypond line
}


harm = \chords {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  \mark \markup {\box \bold "A"}
  e2:m c:9^7 a:m g4 d/fis
  e2:m c:9^7 a:m g4 d/fis
  f1 s1

  \break
  \mark \markup {\box \bold "B"}

  e2:m c a:m g4 d/fis

  \mark \markup {\box \bold "C"}

  a2:m d g4. c8 s2
  a2:m d g4. c8 s2

  \break
  \mark \markup { \musicglyph #"scripts.coda" }

  a4.:m d8 s2 g4. c8 s2

}

intoA = \markup{\italic \smaller{into A}}
intoB = \markup{\italic \smaller{into B}}

mel = \relative c {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()

  \time 4/4
  \key e \minor

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
  f1->
  \set Score.repeatCommands = #'((volta #f))
  r1_\markup{\italic{fill}}

  \override NoteHead #'font-size = #'-1

  \repeat volta 2 {
    e8_\markup{\italic{accents}} e r4
    c'8 c r4
    a16 a8-. a-. a16 a8-. g4 fis
  }

  \repeat volta 2 {
    \repeat percent 2 {
      a2 d,2 g4. c8 ~ c2^\markup{\small \italic{\bold 2.: into coda}}
    }
  }

  r8_\markup{\italic break} a-> r d-> r2 g,4.-> c8-> ~ c2

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
            \hspace #0.5
            A\teeny{\hspace #-1.0 \bold x3} B C
            \hspace #0.3
            A\teeny{\hspace #-1.0 \bold x4} B C
            \hspace #0.3
            [: B\teeny{\hspace #-1.0 solos} :]
            \hspace #0.3
            B C
            %\tiny into Coda
            \hspace #0.3
            Coda
            \hspace #0.3
            [: B :]\teeny{\hspace #-1.0 if needed}
            \hspace #0.5
          }
        }
        }
      \hspace #1.0 % gives the fill-line something to work with
    }
  %}
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
