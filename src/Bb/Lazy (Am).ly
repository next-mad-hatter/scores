\version "2.13.46"

%
% $File$
% $Date$
% $Revision$
% $Author$
%

\header {
  title = "Lazy"
  subtitle = ""
  subsubtitle = "in G minor, A minor and, finally, B minor"

  composer = "Deep Purple MkII"
  poet = ""
  enteredby = "Max Deineko"

  meter = "180-190 bpm"
  piece = "uptempo shuffle rock blues"
  version = "$Revision$"

  copyright = "" % "Transcribed and/or arranged by MaX"
  tagline = "$Date$" % ""
}


harm = \chords {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  s1

  \mark \markup {\box \bold "Intro"}
  \bar "||"

  f1:m R1*3
  bes1 f:m

  \repeat volta 2 {
    R1 * 2
  }

  %\mark \markup {\italic "cue"}

  f1:m s s s
  f:m s s s
  bes s s s
  f:m s s s

  \bar "||"
  %\break
  \mark \markup {\box \bold "A1"}

  f1:m s s2 s1
  f1:m s s s
  c s s s

  \break
  \mark \markup {\box \bold "B1"}

  f:m s s s
  bes:m s f:m s
  as es/g f:m f2:m c:9+

  \break
  \mark \markup {\box \bold "A2"}

  f1:m s s2 s1
  f1:m s s s
  c s s s
  d s

  \break
  \mark \markup {\box \bold "B2"}

  g:m s s s
  c:m s g:m s
  bes f/a g:m g2:m d:9+

  \break
  \mark \markup {\box \bold "A3"}

  a1:m s s2 s1
  a1:m s s s
  e s s s

  \break
  \mark \markup {\box \bold "B3"}

  a:m s s s
  d:m s a:m s
  \mark \markup { \musicglyph #"scripts.coda" }
  c g/b a:m a2:m e:9+

  \break

  \mark \markup { \musicglyph #"scripts.coda" }
  \repeat volta 3 {
    c1 g/b
  }
  \alternative {
    { a1:m s }
    { a1:m s }
    { a1.:m }
  }

  \break

  e1.:7 d
  a
  a4. bes4:9 a8:9 s2.
  \bar "||"
}

mel = \relative c' {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()

  \time 4/4
  \key f \minor
  \clef treble

  f1\<\fermata ~

  \override NoteHead #'style = #'diamond

  f4->\mf \!  r2.  _\markup \italic { drums: chh @ offbeat + accents & fills } |
  R1 * 3 |
  b8-> bes-> r2. r1

  \repeat volta 2 {
    R1 * 2^\markup {\italic "till cue"}
  }

  \override NoteHead #'style = #'default

  f4 as8 f bes as f es | as f bes as f r f'4-> ~
  f1 ~ f2 r
  f4 es8 c es4 c8 b c f c b \times 2/3 { bes as f } bes f as r f4-> ~
  f2 ~ f1

  \override NoteHead #'style = #'diamond
  \repeat percent 2 {
    bes4_\markup{\italic{gtr: fills}}-> r2. r1
  }
  \repeat percent 2 {
    f4-> r2. r1
  }
  \override NoteHead #'style = #'default

  f4\f ^\markup { \musicglyph #"scripts.segno" } as8 f bes as f es as f bes as f r f'4-> ~
  \time 2/4 f2 ~ \time 4/4 f2 r
  f4 es8 c es4 c8 b  c f c b bes as f es f r f'4-> ~
  f2 ~ f1
  c,4 es8 c f es b c es c f es c4 r
  c b8 as b4 bes8 as bes b c es \times 2/3 { b bes as } bes4

  \repeat volta 2 {
    s1_\markup{\italic { backbeat } }
    s1 * 9
    s1^\markup{\italic { gtr solo till cue } }_\markup{ \italic { for keys solo: } \bold { D.S. } }
    s1 * 1
  }

  f'4_\markup{\italic { offbeat & fills } } as8 f bes as f es as f bes as f r f'4-> ~
  \time 2/4 f2 ~ \time 4/4 f2 r
  f4 es8 c es4 c8 b  c f c b bes as f es f r f'4-> ~
  f2 ~ f1
  c,4 es8 c f es b c es c f es c4 r
  c b8 as b4 bes8 as bes b c es \times 2/3 { b bes as } bes4
  d des8 bes des4 c8 bes c des d f \times 2/3 { d des bes } c4

  \key g \minor

  \repeat volta 2 {
    s1 * 8_\markup{\italic { backbeat } }
    s1 * 4^\markup{\italic { 2 x verse + solo till cue + 2 x verse } }
  }

  \key a \minor

  a'4_\markup{\italic { backbeat } } c8 a d c a g c a d c a r a'4-> ~
  \time 2/4 a2 ~ \time 4/4 a2 r
  a4 g8 e g4 e8 es e a e es d c a g a r a'4-> ~
  a2 ~ a1
  e,4 g8 e a g es e g e a g e4 r
  e4 f fis g a bes b c

  \repeat volta 2 {
    s1 * 10_\markup{\italic { backbeat } }
    s1 * 2^\markup{\italic { solo till cue into coda } }
  }

  \repeat volta 3 {
    %\tempo 4 = 190
    s1 * 2
  }
  \alternative {
    { s1 * 2 }
    {
      %\override NoteHead #'style = #'diamond
      \times 2/3 { a'4-> g-> fis-> e-> es-> d-> cis-> c-> a-> g-> e-> es-> }
      %\override NoteHead #'style = #'default
    }
    {
      \override NoteHead #'style = #'diamond
      \time 12/8
      a4->^\markup {
       \smaller \general-align #Y #DOWN \note #"8." #1
       =
       \smaller \general-align #Y #DOWN \note #"4" #1
      }_\markup{
        \italic { break + gtr fill }
      }
      r4 r1
    }
  }
  s1._\markup{ \italic { blues shuffle } } s1.  s1. |
  a4.-> bes4-> a8-> ~ a2\fermata ~ a4->

}

\score {
  \transpose c d {
    <<
      \harm
      \mel
    >>
  }
}

\markup {
  \normalsize { % \teeny \tiny \small \normalsize \large \huge
                % are all viable options here, with \normalsize
                % the default. Pick whatever looks good.
    \fill-line { % This centers the words, which looks nicer
      \hspace #1.0 % gives the fill-line something to work with
      \column {
        \hspace #1.0
        \hspace #1.0
        \hspace #1.0
        \hspace #1.0
        "You're lazy just stay in bed; you're lazy just stay in bed"
        "You don't want no money you don't want no bread"
        \hspace #1.0
        "If you're drowning you don't clutch no straw; if you're drowning you don't clutch no straw"
        "You don't want to live you don't want to cry no more"
        \hspace #1.0
        "Well my trying ain't done no good; I said my trying ain't done no good"
        "You don't make no effort no not like you should"
        \hspace #1.0
        "Lazy you just stay in bed; lazy you just stay in bed"
        "You don't want no money you don't want no bread"

      }
      \hspace #1.0 % gives the fill-line something to work with
    }
  }
}

\layout {
  ragged-last = ##t
}
