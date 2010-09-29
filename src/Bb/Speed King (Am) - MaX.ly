\version "2.12.3"

%
% $File$
% $Date$
% $Revision$
% $Author$
%

\header {
  title = "Speed King"
  subtitle = "5-chords throughout, -8va"
  subsubtitle = "hence in A minor"

  composer = "Deep Purple MkII"
  poet = ""
  enteredby = "Max Deineko"

  meter = "190 bpm"
  piece = "lively rock"
  version = "$Revision$"

  copyright = "Transcribed and/or arranged by MaX"
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

  \mark \markup {\box \bold "A"}

  \partial 2
  s4 f

  \mark \markup{ \musicglyph #"scripts.segno" }

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

  \break
  \mark \markup {\box \bold "B"}
  %\mark \markup{ \musicglyph #"scripts.coda" \hspace #-1.5 \small \bold 1 }

  c1
  s1 * 5
  bes1 f
  c1 s2.
  bes4
  c s2. s f4

  \break
  \mark \markup {\box \bold "C"}

  g1 s2. f4
  g1 s2. f4
  g1 s

  d:7
  s1 * 15

  \break
  \mark \markup { \musicglyph #"scripts.coda" }
  c1
  s1 * 5
  bes1 f
  g1 s
  g4 r2 f4
  g4 r2 f4
  g4 r2 f4
  g1

  \bar "||"
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
  f,4\f %^\markup{\italic{ 5-chords throughout }}

  \repeat volta 4 {
    g4->_\markup{\small{\italic{3. & 4.: let }Is\italic{ring, rock bass 8ths ostinato}}}
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

  \repeat percent 3 {
    c8 bes c bes c4 bes8 c ~ c8 e,4 f fis g8
  }
  \override NoteHead #'style = #'diamond
  bes1 f1
  #(set-octavation 1)
  \override NoteHead #'style = #'default
  c'8 c'4-> c,8 bes'4-> c,8 g'8-> ~ g c,8 f4-> es
  \override NoteHead #'style = #'diamond
  #(set-octavation 0)
  bes->^\markup { \small \bold {al coda }}
  c4_\markup{\italic{drum fill}}->
  r2. r2. f,4->_\markup{\hspace #2.0 D.S.}

  g1\mf\> ~ g2. f4
  g1 ~ g2. f4\!

  \repeat volta 2 {
    s1 * 2 ^\markup{\hspace #-2.5 \italic{solo solo solo till cue}} \<
    %s1^\markup{\italic{till cue}}
  }

  \repeat percent 2 { d'1\mf\! ~ d }
  \repeat percent 2 { d4. c8 ~ c4 d ~ d1 }
  \repeat percent 2 { d4. c8 ~ c4 d ~ d8 c8 ~ c4 d c }
  \repeat volta 2 { d,4.\< e8 ~ e4 f ~ f8 fis8 ~ fis4 g gis
                    a4. bes8 ~ bes4 b ~ b8 c8 ~ c4\ff\! cis_\markup{D.S. al coda } d
                  }

  \override NoteHead #'style = #'default
  \repeat volta 2 {
    \repeat percent 3 {
      c8 bes c bes c4 bes8 c ~ c8 e,4 f fis g8
    }
    \override NoteHead #'style = #'diamond
    bes1 f1
  }
  \alternative {
    {
      g4_\markup{\italic{break}}-> r2. r1
    }
    {
      g4-> r r f-> g-> r r f-> g-> r r f-> g1->\fermata
    }
  }

}

\score {
  \transpose g a {
    <<
      \harm
      \mel
    >>
  }
}

\layout {
  ragged-last = ##f
}
