\version "2.12.3"

%
% $File$
% $HGDate: Tue, 01 Jun 2010 00:41:20 +0200 $
% $Revision$
% $Author$
%

\header {
  title = "Vasja"
  subtitle = "Вася"
  subsubtitle = "in G minor"

  composer = "Bravo"
  poet = ""
  enteredby = "Max Deineko"

  meter = "103 bpm"
  piece = "straight pop"
  version = "0.1"

  copyright = "Transcribed by MaX"
  tagline = "" % or leave the lilypond line
}


harm = \chordmode {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  \time 4/4
  r1

  \mark \markup {\box \bold "R"}

  \repeat volta 2 {
    f4:m6 as g8.:7 c16:7 r4 |
    \mark \markup { \musicglyph #"scripts.coda" }
    f4:m6 as g8.:7 c16:7 r4 |
  }

  \break
  \mark \markup {\box \bold "A"}

  \repeat volta 2 {
    f4:m6 as g:7 c:7 |
    f:m6 as g:7 c:7 |
    \time 6/4
    f:m6 as fis f bes c |
    \time 4/4
  }
  \alternative {
    { f4:m6 as g:7 c:7 | }{ \time 4/4 f1:m }
  }

  \break
  \mark \markup {\box \bold "B"}

  \repeat volta 3 {
    bes1:m6 f:m6 |
  }
  c:7 | r |

  \break
  \mark \markup {\box \bold "C"}

  \repeat volta 2 {
    f2:m c:7 |
    f2:m c:7 |
  }
  \alternative{
    { f2:m c:7 | f2:m c:7 | }
    { f2:m bes4:7 c:7 | }
  }

  \bar "||"

  \break
  \mark \markup { \musicglyph #"scripts.coda" }

  f1:m | f:m |

  \bar ".|."
}

harmInt = \chordmode {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  \time 4/4

  \partial 4 r4
  \bar "||"
  \mark \markup {\box \bold "I"}
  f4:m6 as g:7 c:7 | f4:m6 as g:7 c:7 |
  \time 6/4
  f4:m6 as fis f bes c:7 |
  \time 4/4
  f4:m6 as g:7 c:7 | f4:m6 as g:7 c:7 |
  f4:m6 as fis f | bes c:7 f2:m6 |
  \bar "||"
}

bass = \relative c, {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  \override Staff.TimeSignature #'style = #'()
  \key f \minor
  \time 4/4
  \clef bass

  \override NoteHead #'style = #'cross
  es'4 es es r |
  \override NoteHead #'style = #'default

  \repeat volta 2 {
    \repeat percent 2 {
      <<
        \override NoteHead #'style = #'diamond
        {bes'4 bes bes8. bes16 ~ bes bes r8 |} \\
        \override NoteHead #'style = #'default
        { f,4-._\markup{\italic{bass & guit}} as-. g-.  c-. | }
      >>
    }
  }

  \repeat volta 2 {
    s1_\markup{\italic{etc}} |
    s1 |
    \time 6/4
    s1 s2 |
    \time 4/4
  }
  \alternative {
    { s1 | }{ s1 }
  }

  \repeat volta 3 {
    <<
      \override NoteHead #'style = #'diamond
      { bes'2 bes | bes1 | } \\
      \override NoteHead #'style = #'default
      { bes,8_\markup{\italic{sim.}} bes as as g g f f |
      f8. as16 ~ as8 c f,8. as16 ~ as8 c | }
    >>
  }
  \mark \markup{\italic{×3}}
  \override NoteHead #'style = #'diamond
  c4->_\markup{\italic{break}} r c-> r
  \override NoteHead #'style = #'default
  <<
    \override NoteHead #'style = #'cross
    {
      %\times 2/3 { a'16 a a a a a a a a a a a } a16 a8. a8 a
      %\times 2/3 { a'16 a a }
      %\times 2/3 {a[ a a] }
      %\times 2/3 {a[ a a] }
      %\times 2/3 {a[ a a] }
      %a16 a8. a8 a
    }\\
    \override NoteHead #'style = #'default
    {c8_\markup{\italic{drums & bass fill}}
    b bes as g16 c8. as8 g |}
  >>

  \repeat percent 2 {
    f8.-._\markup{\italic{sim.}} as16 ~ as8 c e,8.-. g16 ~ g8 c |
    f,8.-. as16 ~ as8 c g8.-. bes16 ~ bes8 c |
  }
  f,8.-. as16 ~ as8 c bes4 c |

  f,4-.-> r2. | f'1-> \fermata |
}

bassInt = \relative c {
  \override Staff.TimeSignature #'style = #'()
  \clef treble
  \time 4/4
  \partial 4 \times 2/3 { r8 c''16 c8 as16 } |
  c8-. c-. c-. \times 2/3 {bes8 c16 ~ }
  c8 c,-. \times 2/3 {r8 as'16 a bes b } |
  c8-. c-. c-. \times 2/3 {es16 c8-. } r4
  \times 2/3 {r8 c16 c8 bes16 } |
  \time 6/4
  c8-. c-. es-. es-. \times 2/3 {des8-. as16 ~ as8 c16] ~ } c4
  \textSpannerDown
  \override TextSpanner #'edge-text = #'("unisono " . "")
  bes16_\startTextSpan a bes b c as r8_\stopTextSpan |
  \time 4/4
  c8-. c-. c-. \times 2/3 {bes8 c16_\startTextSpan ~ c8-. c,16-> r8 c16-> } r4_\stopTextSpan  |
  c'8-. c-. c-. \times 2/3 {es16 c8-. } r4
  \times 2/3 {r8 c16 c8 bes16 } |
  c8-. c-. es-. es-. des-. \times 2/3 { as8 c16] ~ } c4-. |
  bes16 a bes b c es8 f16->_\markup{\italic{break}} r2 |
}

\score {
  \transpose f g {
    <<
      \new ChordNames \with { voltaOnThisStaff = ##f }{ \harm }
      \new Staff \with { voltaOnThisStaff = ##t }{ \bass }
    >>
  }
}

\score {
  \transpose f g {
    <<
      \new ChordNames \with { voltaOnThisStaff = ##f }{ \harmInt }
      \new Staff \with { voltaOnThisStaff = ##t }{ \bassInt }
    >>
  }
}

\markup {
  \huge{
    \smallCaps{ Form: }
    \column{
      \line{ \bold{R} \hspace #4.8 4T riff }
      \line{ \bold{A} \hspace #5.0 verse}
      \line{ \bold{B} \hspace #5.0 bridge}
      \line{ \bold{C} \hspace #5.0 ref}
      \line{ \hspace #0.2 }
      \line{ \bold{R} \hspace #4.8 2T riff }
      \line{ \bold{A} \hspace #5.0 verse}
      \line{ \bold{B} \hspace #5.0 bridge}
      \line{ \bold{C} \hspace #5.0 ref}
      \line{ \hspace #0.2 }
      \line{ \bold{R} \hspace #4.8 solo (cue)}
      \line{ \bold{I} \hspace #5.8 interlude}
      \line{ \bold{B} \hspace #5.0 bridge}
      \line{ \bold{C} \hspace #5.0 ref}
      \line{ \hspace #0.2 }
      \line{ \bold{R} \hspace #4.8 3T  outro}
      \line{ \bold{Coda}}
    }
  }
}

\layout {
  ragged-last = ##t
}
