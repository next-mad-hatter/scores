\version "2.13.46"

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

  copyright = "" % "Transcribed and/or arranged by MaX"
  tagline = "$Revision$ $Date$" % ""
}


harm = \chords {
  \set Score.skipBars = ##f
  \set Score.markFormatter = #format-mark-box-letters

  \partial 4. s4.
  \mark \markup {\box \bold "A"}
  e1 fis:m e1 fis:m | d4. e8 s2 |
  \bar "||:"

  \break
  \mark \markup {\box \bold "B"}
  fis1:m s1 * 3 |

  \break
  \mark \markup {\box \bold "B'"}
  fis1:m s1 * 3 | b1:m e fis:m |
  \bar "||:"

  \break
  \mark \markup {\box \bold "C"}
  fis2:m e d4 e fis2:m | e d4 e | e2 s16 d4 e8. |
  \bar "||"

  \break
  \mark \markup {\box \bold "D"}
  b8. a16 s8 fis8:m s4 e8 fis:m s1 * 3 |
  cis8. b16 s8 gis8:m s4 fis8 gis:m s1 |
  cis8. b16 s8 gis8:m s4 fis8 gis:m s1 |
  \bar "||"

  \break
  \mark \markup \musicglyph #"scripts.coda"
  fis1:m s1*3 |

  \break
  fis1:m b:m e fis:m |

  \break
  fis:m b:m e fis2:m s16 cis8 b cis a16 |
  \break
  s16 fis2:m s4. b16 ~ s4.. s2 e16 | s1 |
  \break
  \repeat unfold 4 { b8. a8. fis4.:m e8 fis:m | }
  \break
  a1 b a b a b2 e4 b fis1:m s |
  \break
  e8 fis4:m cis16 b4 s16 a4
  e8 fis4:m cis16 b4 s16 a4
  s8 fis2:m
}

mel = \relative c, \new Staff = "main" {
  \set Score.skipBars = ##f
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()

  \key fis \minor
  \time 4/4
  \clef bass

  \partial 4. r4.

  \repeat volta 2 {
    r8 ^\markup \musicglyph #"scripts.segno" _\markup \italic { gtr, bass & keys unisono, drums playing some rocking beat }
    e8.-.-> e8.-.-> e4-.->
    <<
      {
        \override NoteHead #'font-size = #-2
        \override NoteHead #'style = #'cross
        r8 ^\markup \small \italic { gtr } cis''16 cis
        \override NoteHead #'style = #'default
        \override NoteHead #'font-size = #0
      } \\
      { r4 }
    >> |
    r8 fis,,8.-.-> fis8.-.->
    <<
      {
        \override NoteHead #'font-size = #-2
        \override NoteHead #'style = #'cross
        r8 cis''16 cis r cis cis r ^\markup \small \italic { etc }
        \override NoteHead #'style = #'default
        \override NoteHead #'font-size = #0
      } \\
      { fis,,4-.-> r }
    >> |
    r8 e8.-> e8.-> e4-.-> r |
  }
  \alternative {
    {
      r8 fis8.-> fis8.-.-> fis16->
      \override NoteHead #'font-size = #-2
      b[_\markup \italic {keys} c cis e f fis]
      \override NoteHead #'font-size = #0
      e |
    }
    { d,4.-> e8-> ~ e2 ^\markup \bold { \hspace #5.0 into B' } | }
  }

  \repeat volta 2 {
    <<
      \new Staff \with {
        %fontSize = #-1
        %\override StaffSymbol #'staff-space = #(magstep -1)
        %\override StaffSymbol #'thickness = #(magstep -1)
        \remove "Time_signature_engraver"
        alignBelowContext = #"main"
      }
      {
        \key fis \minor
        \clef treble
        fis''8-. _\markup \small \italic { gtr: sim. }
        e-. fis16 fis e8-. r16 \repeat unfold 5 <cis' e a>
        r8 ^\markup \italic { \hspace #5.0 etc } |
      }
      \new Staff \with {
        %fontSize = #-1
        %\override StaffSymbol #'staff-space = #(magstep -1)
        %\override StaffSymbol #'thickness = #(magstep -1)
        \remove "Time_signature_engraver"
        alignBelowContext = #"main"
      }
      {
        \key fis \minor
        \clef treble
        \ottava #1
        <cis e fis>16 _\markup \small \italic { keys: sim. }
        r8 <cis e>16 r8 <b' e>16 r8 <b dis>16 r8 <a cis>8-. <b dis>-. |
        \ottava #0
      }
      {
        fis,,,4-.-> _\markup \italic { bass: sim. } r8. fis16 fis4-.-> r4 |
      }
    >>
    fis4-.-> r8. fis16 fis4-.-> r4
    fis4-.-> r8. fis16 fis4-.-> r4
    fis4-.-> r8. fis16 fis16-> fis' a-> fis gis-> fis g8->
    ^\markup { \hspace #4.0 \musicglyph #"scripts.coda" }
    _\markup { \hspace #-5.0 \bold {D.S. into B'} } |
  }

  \repeat volta 2 { s1 s1 s1 }
  \alternative { {s1} {s1} }
  s1 s1

  \override TextSpanner #'(bound-details left text) = \markup { \italic "unisono" }
  \textSpannerDown

  \repeat volta 2 { fis1-> _\markup \italic { no beat } ~ fis2 fis2-> ~ }
  \alternative { { fis1 } { fis2 \repeatTie r16 \startTextSpan d-> d-> r r e16-> e-> r \stopTextSpan } }

  \repeat percent 4 { b16 _\markup \italic { enter dr. beat } b b a r8 fis r16 fis r8 e fis }
  \repeat percent 2 { cis'16 cis cis b r8 gis r16 gis r8 fis gis }
  cis16 cis cis b r8 gis r16 gis r8 fis gis ~ _\markup \italic { break & fill }
  gis1 _\markup { \hspace #-12.0 \bold {D.S. con rep. al Coda} }

  s1_\markup{\italic{baby baby baby...}} s1 s1 s1 s1 s1 s1 s1
  s1_\markup{\italic{I'd walk a million miles...}} s1 s1

  \parenthesize r2 r16 cis8-> \startTextSpan b-> cis->
  a16-> ~ a16 fis8-> fis-> fis-> fis16-> r4 r8. b16->
  r4 r8. b16-> ~ b b8-> b16-> r8. e16->
  r8. e16-> r4 r16 e16-> e-> r r4 _\markup \italic { fill } \stopTextSpan |
  \repeat percent 4 { b16 b b a r8 fis r16 fis e r e8 fis }
  \repeat unfold 4 { r8 a }
  \repeat unfold 2 { r8 b }
  <<
    \override NoteHead #'font-size = #-2
    { dis'16 ^\markup \small \italic { gtr 8va: } e e e e dis b8 | } \\
    \override NoteHead #'font-size = #0
    { r8 b, r b }
  >>
  \repeat unfold 4 { r8 a8 }
  r8 b dis, dis
  <<
    \override NoteHead #'font-size = #-2
    { b''16 b dis, dis e e fis8 } \\
    \override NoteHead #'font-size = #0
    { e,8 e fis fis }
  >>
  \repeat unfold 4 { r8 a }
  r b r b
  <<
    \override NoteHead #'font-size = #-2
    { <b' e>16 <b e> <b e> <b e> <b dis>4-> } \\
    \override NoteHead #'font-size = #0
    { r8 b,16 b b4-.-> }
  >>
  r1 _\markup \italic { break & fill } r1
  e,8-> \startTextSpan fis r cis'16-> b r16 b8-.-> r16 a4->
  e8-> fis r cis'16-> b r16 b8-.-> r16 a4->
  r8 fis8.-> fis-> fis8-> \stopTextSpan

  \bar "|."
}

\markup {
    \fill-line { % This centers the words, which looks nicer
    \hspace #1.0 % gives the fill-line something to work with
    \rounded-box \pad-markup #0.3 {
      \column {
        \line{
          \hspace #0.5
          \smallCaps Form:
          \hspace #1
          A B
          A B'
          C D
          A B
          Coda
          \hspace #0.5
        }
      }
    }
    \hspace #1.0 % gives the fill-line something to work with
  }
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
  ragged-last = ##f
}
