\version "2.13.46"

%
% $File$
% $Date$
% $Revision$
% $Author$
%

\header {
  title = "Girl in a Chintz Dress"
  subtitle = "Девушка в платье из ситца"
  subsubtitle = ""

  composer = "unknown composer"
  poet = ""
  enteredby = "Max Deineko"

  meter = ""
  piece = "train groove polka"
  version = "$Revision$"

  copyright = "" % "Transcribed and/or arranged by MaX"
  tagline = "$Date$" % ""
}


hands = \drummode {
  \repeat unfold 2 { cb16-> ss16 } \repeat unfold 4 { ss16 ss16-> ss16 }
}
feet  = \drummode {
  \repeat unfold 4 { bd8 hhp8 }
}

drum = \drums \with {
    fontSize = #-4
    \override StaffSymbol #'staff-space = #(magstep -4)
    \override StaffSymbol #'thickness = #(magstep -4)
    \remove "Time_signature_engraver"
  }
  {
  <<
    \new DrumVoice { \voiceOne \hands }
    \new DrumVoice { \voiceTwo \feet }
  >>
}

harm = \chords {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  R1*2
  c1:m s c:m6 s

  c1:m f:m bes:7 es:maj as:maj f:m6 g:7 c:m6
  c:m f:m bes:7 es:maj as:maj f:m6 g:7 c:m6
  c:m f:m bes:7 es:maj as:maj f:m6 g:7 c:m6
  c:m f:m bes1 es2:maj g:7 g1:7 c:m

  c:m f:m bes:7 es:maj
  as:maj f:m6 g:7 c:m6 as
  f:m6 g:7 c:m
  c:m f:m6 g:7 c:m

  \bar "|."
}

mel = \relative c'' {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  % BUG? % \override Staff.TimeSignature #'style = #'()

  \key c \minor
  \tempo 4 = 156
  \clef treble

  R1 * 2
  ^\markup \italic {\hspace #34.0 cue}
  \repeat percent 2 {
    <c es fis>8\f(~ <c es g>-.)
    r8 <c es g>-.
    r <c es g>-.
    r <c es g>-.
  }
  c'4 a g es |
  c4 a g es |

  \break
  \repeat volta 2 {
    s1 * 7
    r2 r8 c( d es |
  }

  \break
  g2) r8 c,( d es | as2) r4 c( |
  bes2) r8 \acciaccatura bes,16 bes'8( a as | g2) r8 c,( d es |
  es2 \times 2/3 {c4 d es} |
  as2) r4 as'( | g8\prall fis-. fis\prall es-. es\prall d-. d\prall c-. | c4 b bes a) |

  \break
  \repeat volta 2 { s1 * 8 }

  \break
  \repeat volta 2 {
    c16( d es f g8-.) c,16( d es f g8-.) f es |
    f16( g as bes c8-.) f,16( g as bes  c8-.) bes as |
  }
  \alternative {
    {
      r8 bes\(~bes c d c bes as |
      g4. as8 g f es d\)
    }
    {
     g8\prall( fis-. fis\prall es-. es\prall d-. d\prall c-. | c4 b bes a) |
    }
  }

  \break
  \repeat volta 2 {s1 * 4}
  \alternative{
    { s1 * 4}
    {
      es8->
      _\markup { \italic { break } }
      es-> r4 r2
    }
  }
  f8-> f-> r4 r2
  s1 * 4
  g8->
  _\markup { \italic { break } }
  g-> r
  as g f es d c4 r
  c'-> r

}

\score {
  \transpose c c {
    <<
      \harm
      \mel
      \drum
    >>
  }
}

\layout {
  ragged-last = ##f
}
