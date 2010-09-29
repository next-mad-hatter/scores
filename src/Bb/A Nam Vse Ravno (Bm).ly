\version "2.12.3"

%
% $File$
% $HGDate: Tue, 01 Jun 2010 00:41:20 +0200 $
% $Revision$
% $Author$
%

\header {
  title = "A Nam Vse Ravno"
  subtitle = "Песня про зайцев"
  subsubtitle = "in B minor"

  composer = ""
  poet = ""
  enteredby = "Max Deineko"

  meter = "100 bpm"
  piece = "uptempo foxtrot"
  version = "0.1"

  copyright = "Transcribed by MaX"
  tagline = "" % or leave the lilypond line
}


harm = \chords {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  s1

  \mark \markup {\box \bold "A"}
  \repeat volta 2 {
    a2:m d:m g:7 c:maj
  }
  \alternative {
    { f:maj bes b:7 e:7 }
    { d f b:7 e:7 }
  }

  %\bar "||"
  \bar "||:"
  \break
  %\partial 2 { r2 }
  \mark \markup {\box \bold "B"}

  \repeat volta 2 {
    a1:m a2:m d:m d:m e:7
  }
  \alternative{
    { e:7 a4:m e:7 | }{ e:7 a:m r2 |}
  }

  \bar "||:"
  \break
  \mark \markup { \musicglyph #"scripts.coda" }

  \repeat volta 2 {
    a1:m d:m e:7 |
  }
  \alternative{
    { a2:m e4:aug e:7 | }
    { e2:7 a:m | }
  }
}

mel = \relative c'' {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()

  \key a \minor
  \time 4/4

  %s1_\markup{\italic{(ad lib intro)}}
  s1_\markup{\italic{ad lib intro}}
  s1 * 5 %_\markup{\italic{ad lib}}
  s2 s2 \fermata

  %\partial 2 { \grace {e,} c'8 b a gis }
  %s1 * 3_\markup{\italic{smooth foxtrot}}
  %s1^\markup{\italic{into B & Coda}}
  %s1^\markup{\italic{into A}}
  \repeat volta 2 {
    a4_\markup{\italic{smooth foxtrot}}
    c a8 a e4 |
    a4 c a8 a f4 |
    d4 f e8 e b4 |
  } \alternative {
    { e8 d c d e4 r | }
    { c'8 b a gis a4 r | }
  }

  \repeat volta 2 {
    a8 c e4 a,8 c16 e ~ e e dis8 |
    d8 f a4 d,8 f16 a ~ a a gis8 |
    e8 gis b4 e,8 gis16 c ~ c c b8 |
  }
  \alternative {
    {
      \clef bass
      c,,,8_\markup{\italic{break}}
      b a f
      \times 2/3 {
        e8
        \clef treble
        \override NoteHead #'style = #'diamond
        c'''16 c8 c16 ~ c8 c16
      } c8 |
      \override NoteHead #'style = #'default
    }
    {
      \override NoteHead #'style = #'xcircle
      e,16->_\markup{\italic{break}}
      \override NoteHead #'style = #'default
      e'[ dis e] f fis g gis a r8 a,16-> ~ a4 \fermata
    }
  }

  \bar ".|."
}

\score {
  \transpose a b {
    <<
      \harm
      \mel
    >>
  }
}

\markup {
  \huge{
    \smallCaps{ Form: }
    \hspace #3.0
    \bold{A}
    \bold{B} \sub{cue}
    \bold{A}
    \bold{B} \sub{solos etc -> cue}
    \bold{Coda}
  }
}

\layout {
  ragged-last = ##t
}
