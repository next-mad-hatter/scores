\version "2.12.3"

%
% $File$
% $Date$
% $Revision$
% $Author$
%

\header {
  title = "Lazy"
  subtitle = ""
  subsubtitle = "in F minor, G minor and A minor"

  composer = "Deep Purple MkII"
  poet = ""
  enteredby = "Max Deineko"

  meter = "180-190 bpm"
  piece = "uptempo shuffle jazz blues"
  version = "$Revision$"

  copyright = "Transcribed by MaX"
  tagline = "" % or leave the lilypond line
}


harm = \chords {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  s1

  \mark \markup {\box \bold "Intro"}
  \bar "||"

  f1:m R1*3
  bes1 s1

  %f1:m R1*3
  %f1:m s
  \repeat volta 2 {
    R1 * 4
  }

  %\mark \markup {\italic "cue"}

  f1:m s s s
  f:m s s s
  bes s s s
  f:m s s s

  \bar "||"
  \mark \markup {\box \bold "A1"}

  f1:m s s2 s1
  f1:m s s s
  c s s s

  \mark \markup {\box \bold "B1"}

  f:m s s s
  bes:m s f:m s
  as es f:m f2:m c:9+

  \mark \markup {\box \bold "A2"}

  f1:m s s2 s1
  f1:m s s s
  c s s s
  s s

  \mark \markup {\box \bold "B2"}

  g:m s s s
  c:m s g:m s
  bes f g:m g2:m d:9+

  \mark \markup {\box \bold "A3"}

  a1:m s s2 s1
  a1:m s s s
  e s s s

  \mark \markup {\box \bold "B3"}

  a:m s s s
  d:m s a:m s
  \mark \markup { \musicglyph #"scripts.coda" }
  c g a:m a2:m e:9+

  \break

  \mark \markup { \musicglyph #"scripts.coda" }
  \repeat volta 3 {
    c1 g
  }
  \alternative {
    { a1:m s }
    { a1:m s }
    { a1.:m }
  }

  e1.:7 d
  a
  a4. bes4:9 a8:9 r2.
  \bar "||"
}

mel = \relative c' {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()

  \time 4/4
  \key f \minor

  f1\<\fermata ~

  \override NoteHead #'style = #'diamond

  f4->\!_\markup{\italic { drums: chh @ offbeats + accents & fills } }
  r2. | R1 * 3 |
  b8-> bes-> r2. r1

  \repeat volta 2 {
    R1 * 4^\markup {\italic "until cue"}
  }

  \override NoteHead #'style = #'default

  f4 as8 f bes as f es | as f bes as f r f'4-> ~
  f1 ~ f2 r
  f4 es8 c es4 c8 b  c f c b bes as f es as r f4-> ~
  f2 ~ f1

  \override NoteHead #'style = #'diamond
  \repeat percent 2 {
    bes4_\markup{\italic{gtr: fills}} r2. r1
  }
  \repeat percent 2 {
    f4 r2. r1
  }
  \override NoteHead #'style = #'default

  f4 as8 f bes as f es as f bes as f r f'4-> ~
  \time 2/4 f2 ~ \time 4/4 f2 r
  f4 es8 c es4 c8 b  c f c b bes as f es f r f'4-> ~
  f2 ~ f1
  c,4 es8 c f es b c es c f es c4 r
  c b8 bes b4 bes8 b c es bes as bes as f es

  \repeat volta 2 {
    s1_\markup{\italic { shuffle } }
    s1 * 6
    s1_\markup{\italic { gtr solo till cue } }
    s1 * 2
    s1_\markup{ For keys solo: \bold Del \bold A1 }
    s1 * 1
  }

  f'4 as8 f bes as f es as f bes as f r f'4-> ~
  \time 2/4 f2 ~ \time 4/4 f2 r
  f4 es8 c es4 c8 b  c f c b bes as f es f r f'4-> ~
  f2 ~ f1
  c,4 es8 c f es b c es c f es c4 r
  c b8 bes b4 bes8 b c es bes as bes as f es
  c'4 b8 bes b4 bes8 b c es bes as bes as f es

  \key g \minor

  \repeat volta 2 {
    s1 * 12_\markup{\italic { 2xverse + solo + 2xverse } }
  }

  \key a \minor

  a'4 as8 f bes as f es as f bes as f r f'4-> ~
  \time 2/4 f2 ~ \time 4/4 f2 r
  f4 es8 c es4 c8 b  c f c b bes as f es f r f'4-> ~
  f2 ~ f1
  c,4 es8 c f es b c es c f es c4 r
  c b8 bes b4 bes8 b c es bes as bes as f es

  \repeat volta 2 {
    r1_\markup{\italic { solo till cue el coda } }
    r1 * 11
  }

  \repeat volta 3 {
    %\tempo 4 = 190
    s1 * 2
  }
  \alternative {
    { s1 * 2 }
    {
      \override NoteHead #'style = #'diamond
      \times 2/3 { a4 b c d e f a b c d e f }
      %\override NoteHead #'style = #'default
    }
    {
      \time 12/8
      a4->^\markup {
       \smaller \general-align #Y #DOWN \note #"8." #1
       =
       \smaller \general-align #Y #DOWN \note #"4" #1
      }_\markup{
        \italic { break + fill }
      }
      r4 r1
    }
  }
  s1._\markup{ \italic { blues shuffle } }
  s1.
  s1.
  a4.->_\markup{ \italic { blues ending } }
  bes4-> a8-> ~ a2\fermata ~ a4->

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
  ragged-last = ##t
}
