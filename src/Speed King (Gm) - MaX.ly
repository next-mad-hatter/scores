\version "2.12.3"

%
% $File$
% $Date$
% $Revision$
% $Author$
%

\header {
  title = "Speed King"
  subtitle = "-8va"
  subsubtitle = "in G minor"

  composer = "Deep Purple"
  poet = ""
  enteredby = "Max Deineko"

  meter = "bpm"
  piece = "uptempo rock"
  version = "$Revision$"

  copyright = "Transcribed by MaX"
  tagline = "" % or leave the lilypond line
}


%chExceptionMusic =  {
%    <c g>1-\markup { \super "5" }
%    }
%chExceptions = #(append
%                 (sequential-music-to-chord-exceptions chExceptionMusic #t)
%                 ignatzekExceptions)

harm = \chords {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  %\set chordNameExceptions = #chExceptions

  \partial 2
  s4 f

  \mark \markup {\box \bold "A"}

  %g:m^3 s s f:^3
  %g:m^3 s s f:^3
  %g:m^3 c:^3 bes:^3 f:^3
  %g:m^3 s s f:^3
  %g:m^3 s s f:^3
  %g:m^3 c:^3 bes:^3 f:^3

  g4 s s f
  g s s f
  g c bes g8 f
  g4 s s f
  g s s s

  %\break
  \mark \markup {\box \bold "B"}

  c1 s c s
  bes f
  c1 s2.
  bes4
  c s2. s f4

  %\break
  \mark \markup {\box \bold "C"}

  g1 s2. f4
  g1 s2. f4
  g1:m s
  s s

  \mark \markup { \musicglyph #"scripts.coda" }
  s1
}

mel = \relative c' {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()

  \key g \minor
  \time 4/4

  \override NoteHead #'style = #'diamond

  \partial 2

  \override NoteHead #'style = #'cross
  d'4
  \override NoteHead #'style = #'diamond
  f,4^\markup{\italic{ 5-chords throughout }}

  \repeat volta 4 {
    g4->_\markup{\small{\italic{3. & 4.: let }Is\italic{ring}}}
    r r f->
    g-> r r f->
    g c bes g8 f
  }
  \alternative {
    {
      g4-> r r f->
    }
    {
      g4-.
      \override NoteHead #'style = #'default
      bes2.->
    }
  }

  \repeat volta 2 {
    c8 %_\markup{\italic{(-8va)}}
    bes c bes c4 bes8 c ~ c8 e,4 f fis g8
  }
  \alternative {
    { c8 bes c bes c4 bes8 c ~ c8 e,4 f fis g8 }
    {
      \override NoteHead #'style = #'diamond
      bes1 f1
    }
  }
  #(set-octavation 1)
  \override NoteHead #'style = #'default
  c'8 c'4-> c,8 bes'4-> c,8 g'8-> ~ g c,8 f4-> es
  \override NoteHead #'style = #'diamond
  #(set-octavation 0)
  bes->^\markup { \small \bold {el coda }}
  c4_\markup{\italic{drum fill}}->
  r2. r2. f,4->_\markup{\small \bold{D.C.}}

  g1 ~ g2. f4
  g1 ~ g2. f4

  \repeat volta 2 {
    s1_\markup{\italic{solo}}
    s1^\markup{\italic{till cue}}
  }

  #(set-octavation 1)
  \override NoteHead #'style = #'default
  g'2 f8 g f g ~ g1
  #(set-octavation 0)

  s1
  \bar "||"
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
