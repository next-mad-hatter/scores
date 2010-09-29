\version "2.12.3"

%
% $File$
% $Date$
% $Revision$
% $Author$
%

\header {
  title = "Baby Love"
  subtitle = ""
  subsubtitle = "in G# minor"

  composer = "Mother's Finest"
  poet = ""
  enteredby = "Max Deineko"

  meter = "95-105 bpm"
  piece = "rock"
  version = "$Revision$"

  copyright = "Transcribed and/or arranged by MaX"
  tagline = "" % or leave the lilypond line
}


harm = \chords {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  fis1:m s

  \mark \markup {\box \bold "A"}

  e1 fis:m
  e1 fis:m
  d4. e8 s2

  %\break
  \mark \markup {\box \bold "B1"}

  fis1:m
  s1 * 3

  \break
  \mark \markup {\box \bold "A"}

  e1 fis:m
  e1 fis:m
  d4. e8 s2

  \break
  \mark \markup {\box \bold "B2"}

  fis1:m
  s1 * 3
  b1:m e fis:m

  \break
  \mark \markup {\box \bold "C"}

  fis2:m e d4 e
  fis2:m e d4 e
  %fis2:m e d4 e
  %fis2:m e d4 e4
  e2 d4 e

  \break
  \mark \markup {\box \bold "D"}

  b8. a16 r8 fis8:m r4 e8 fis:m
  s1 * 3
  \break
  cis8. b16 r8 gis8:m r4 fis8 gis:m
  s1
  cis8. b16 r8 gis8:m r4 fis8 gis:m
  s1

  \break
  \mark \markup {\box \bold "A"}

  e1 fis:m
  e1 fis:m
  d4. e8 s2

  %\break
  \mark \markup {\box \bold "B3"}

  fis1:m
  s1 * 3
  \break
  fis1:m s1*3
  fis1:m b:m e fis:m

  \break
  \mark \markup {\box \bold "E"}

  fis:m b:m e fis2:m
  s16 cis8 b cis a8 fis2:m s4. b16 ~
  s4.. s2 e16 |
  s1
  \repeat percent 4 {
    b8. a8. fis4.:m e8 fis:m
  }
  a1 b a b a b2 e4 b
  fis1:m s
  e8 fis4:m cis16 b4 s16 a4
  e8 fis4:m cis16 b4 s16 a4
  fis1:m

}

mel = \relative c' {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()

  \key fis \minor
  \time 4/4

  %\override NoteHead #'style = #'diamond

  fis1\fermata ~ fis

  \repeat volta 2 {
    r8 e8.-.-> e8.-.-> e4-.-> r
    r8 fis8.-.-> fis8.-.-> fis4-.-> r
    r8 e8.-.-> e8.-.-> e4-.-> r
  }
  \alternative {
    { r8 fis8.-.-> fis8.-.-> fis16->
      \override NoteHead #'font-size = #-2
      b,[ c cis e f fis e]
      \override NoteHead #'font-size = #0
    }
    { d4.-> e8-> ~ e2 }
  }

  \repeat volta 2 {
    s1 s1 s1 s1
  }

  \repeat volta 2 {
    s1_\markup{\italic{as above}} s1 s1
  }
  \alternative {
    { s1 }
    { s1 }
  }

  \repeat volta 2 {
    s1 s1 s1
  }
  \alternative {
    {s1} {s1}
  }
  s1 s1

  %fis2 e d4 e fis2 e d4 e
  %fis2 e d4 e fis2 e r16 d-> d-> r8 e16-> e-> r
  \repeat volta 2 {
    fis2->( e d4 e fis2
  }
  \alternative {
    { e d4 e) }
    { e2 r16 d-> d-> r8 e16-> e-> r }
  }

  \repeat percent 4 {
    b'16_\markup{\italic{keys solo}}
    b b a r8 fis r16 fis8 r16 e8 fis8
  }
  \repeat percent 2 {
    cis'16 cis cis b r8 gis r16 gis8 r16 fis8 gis8
  }
  cis16 cis cis b r8 gis r16 gis8 r16 fis8 gis8 ~
  gis1

  \repeat volta 2 {
    s1 s1 s1
  }
  \alternative {
    { s1 }
    { s1 }
  }

  \repeat volta 2 {
    s1 s1 s1 s1
  }
  s1_\markup{\italic{baby baby baby...}}
  s1 s1 s1 s1 s1 s1 s1
  s1_\markup{\italic{I'd walk a million miles...}}
  s1 s1

  \parenthesize r2 r16 cis8-> b-> cis->
  a16-> ~ a16 fis8-> fis-> fis-> fis-> r4. b16-> ~
  b4 r8. b8-> b8-> a4-> e16->~
  e16-> r8 e8-> r4 e16-> e8-> e4 |
  \break
  \repeat percent 4 {
    b'16 b b a r8 fis r16 fis8 r16 e8 fis8
  }
  a8 a8-> a8 a8-> a8 a8-> a8 a8->
  b8 b8-> b8 b8-> dis16 e e e e dis b8
  a8 a8-> a8 a8-> a8 a8-> a8 a8->
  b8 b8-> b8 b8-> b16 b dis, dis e e fis8
  a8 a8-> a8 a8-> a8 a8-> a8 a8->
  b8 b8-> b8 b8-> <b e>16-> <b e>-> <b e>-> <b e>-> <b dis>4->
  r1 r1
  e,8-> fis r cis'16-> b r16 b8-.-> r16 a4->
  e8-> fis r cis'16-> b r16 b8-.-> r16 a4->
  r8 fis-> r16 fis8-> r16 fis4-> r

  \bar "||"
}

\score {
  \transpose fis gis {
    <<
      \harm
      \mel
    >>
  }
}

\layout {
  ragged-last = ##f
}
