\version "2.12.3"

%
% $File$
% $HGDate: Thu, 22 Jul 2010 12:53:46 +0200 $
% $Revision$
% $Author$
%

\header {
  title = "Eto za Oknom Rassvet"
  subtitle = "Это за окном рассвет"
  subsubtitle = "in G minor"

  composer = "as performed by Bravo"
  poet = ""
  enteredby = "Max Deineko"

  meter = "192 bpm"
  piece = "fast pop"
  version = "0.1"

  copyright = "Transcribed by MaX"
  tagline = "" % or leave the lilypond line

}


harm = \chords {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  \repeat volta 2 {
    \repeat percent 3 {
      f4.:m f4:m9 f4.:m | bes4. as8 r2 |
    }
  }
  \alternative {
    { c1:7 s1 }
    { c1:7 s1 }
  }

  \break
  \mark \markup {\box \bold "A1"}
  \repeat volta 2 {
    f1:m c:7 es bes:7 |
  }
  des:7 s as2 es/g f1:m |
  bes1 b:m7.5- c:7 s |

  \break
  \mark \markup {\box \bold "A2"}
  \repeat volta 2 {
    f1:m c:7 es bes:7 |
  }
  des:7 s as2 es/g f1:m |
  bes1 b:m7.5- c:7 s |

  \break
  \mark \markup {\box \bold "B1"}
  \repeat volta 2 {
    \repeat percent 3 { bes2:m c:7 f1:m }
  }
  \alternative{
    {
      bes2:m c:7 f1:m
    }{
      bes2:m c:7
    }
  }
  \break
  \repeat percent 2 {
    f1:m bes4. as8 r2 |
  }

  \break
  \mark \markup {\box \bold "A3"}
  \repeat volta 2 {
    f1:m c:7 es bes:7 |
  }
  des:7 s as2 es/g f1:m |
  bes1 b:m7.5- c:7 s |

  \break
  \mark \markup {\box \bold "B2"}
  \repeat volta 2 {
    \repeat percent 3 { bes2:m c:7 f1:m }
  }
  \alternative{
    {
      bes2:m c:7 f1:m
    }{
      bes2:m c:7
    }
  }

  \break
  \mark \markup {\box \bold "C"}
  \repeat volta 2 { f1:m c:7 }
  des1 des as2 es f1:m bes b:m7.5- c:7 c:7

  \break
  \mark \markup {\box \bold "B3"}
  \repeat volta 2 {
    \repeat percent 3 { bes2:m c:7 f1:m }
    bes2:m c:7
    \mark \markup { \musicglyph #"scripts.coda" }
    f1:m
  }

  \break
  \mark \markup { \musicglyph #"scripts.coda" }
  des:7 s bes2:m c:7 f1:m

  \bar ".|."
}

mel = \relative c' {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()

  \key f \minor
  \time 4/4

  %
  % Intro
  %
  \override NoteHead #'style = #'diamond
  \repeat volta 2 {
    \repeat percent 3 {
      f4-.->
      _\markup{\italic{gtr}}
      as8
      \mf
      g4-> as8 r4 |
      bes4-.-> r8 as8-> ~ as as as r |
    }
  }
  \alternative{
    {
      c4-.->
      _\markup{\italic{fill / add band}}
      \<
      r8 c-> ~ c4 r
      c4-.-> r8 c-> ~ c4 r \!
    }
    {
      c4-.-> r8 c-> ~ c4 r \!
      c4-.-> r8 c-> ~ c4 r \!
    }
  }

  %
  % A1
  %
  \repeat volta 2 {
    f,4-. r8 f ~ f4 r
    c'4-. r8 c ~ c8 c c r
    _\markup{\italic{etc}}
    s1 * 2
  }
  s1 * 8

  %
  % A2
  %
  \repeat volta 2 {
    s1 * 4
  }
  s1 * 7
  c4_\markup{\small \italic break} r2.

  %
  % B1
  %
  \repeat volta 2 {
    \repeat percent 3 {
      bes4 r c r |
      f,4 as8 as ~ as as as4-. |
    }
  }
  \alternative{{s1 * 2}{s1}}
  \repeat percent 2 {
    f4-.->
    _\markup{\italic{intro riff}}
    as8 g4-> as8 r4 |
    bes4-.-> r8 as8-> ~ as as as r |
  }

  %
  % A3
  %
  \repeat volta 2 {
    s1 * 4
  }
  s1 * 7
  c4_\markup{\small \italic fill} r2.

  %
  % B2
  %
  \repeat volta 2 {
    \repeat percent 3 {
      s1 * 2
    }
  }
  \alternative{{s1 * 2}{s1}}

  %
  % C
  %
  \repeat volta 2 {
    f,4-.
    \mp
    r8 f ~ f4 r
    c'4-.  r8 c ~ c4
    ^\markup{\italic{solo till cue}}
    r
  }
  %c2.\mf bes8 as | bes c r2. |
  %\grace c,8 c'4 ~ c ~ c4 bes | as8 f r8 f r2 |
  %r2 f8 as bes b ~ | b4 r4 r8 f as bes |
  %b( c-.) c-. b( c-.) c-. b( c-.) |
  s1 * 7 _\markup{\italic cresc.}
  c4->_\markup{\italic{fill}} r2. |

  %
  % B3
  %
  \repeat volta 2 {
    \repeat percent 3 {
      s1 * 2
      ^ \markup{\italic{solo/refs till cue into coda}}
      \f
    }
    s1 * 2
  }

  %
  % Coda
  %
  \override NoteHead #'style = #'default
  es2->
  des |
  c8->
  _\markup{\italic{break}}
  r f, as r f ~ f4-. | as2-> g-> | f4-> r4 r2 |
}

\score {
  \transpose f g {
    <<
      \harm
      \mel
    >>
  }
}

\layout {
  ragged-last = ##t
}
