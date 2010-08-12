\version "2.12.3"

%
% $File$
% $HGDate: Tue, 01 Jun 2010 00:41:20 +0200 $
% $Revision$
% $Author$
%

\header {
  title = "Oj oj oj"
  subtitle = "...А я обычная девчёночка"
  subsubtitle = "in A minor"

  composer = "as performed by La Minor"
  poet = ""
  enteredby = "Max Deineko"

  meter = "168 bpm"
  piece = "polka"
  version = "0.1"

  copyright = "Transcribed by MaX"
  tagline = "" % or leave the lilypond line
}


harm = \chords {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  \mark \markup {\box \bold "I"}
  s1 * 4

  \bar "||"
  \break
  \mark \markup {\box \bold "A"}

  d1:m a:m e:7 a:m
  d1:m a:m
  \mark \markup{\musicglyph #"scripts.coda"}
  b2:7 e:7 a1:m

  \bar "||:"
  \break
  \mark \markup {\box \bold "B"}

  d1:m a:m e:7 \time 2/4 a2:m
  \time 4/4 a1:m

  \bar "||"
  \break
  \mark \markup {\box \bold "C"}

  a1:m s d:m s
  e:7 s \time 2/4 a2:m s
  \break
  \time 4/4 d1:m s a:m s
  e:7 s \time 2/4 a2:m s

  \bar "||"
  \break
  \mark \markup{\musicglyph #"scripts.coda"}

  b2:7 e:7 a1:m

  \bar ".|."
}

mel = \relative c'' {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()

  \key a \minor
  \time 4/4

  \override NoteHead #'style = #'cross
  \repeat percent 3 {
    c8_\markup{\italic{rims}} c16 c c8\mf c16 c c8 c16 c c8 c16 c |
  }
  \override NoteHead #'style = #'default
  s2._\markup{\italic{sim.}}
  a'8_\markup{\italic{sax}} bes |

  b4_\markup{\italic{light stacc.}} a f a8 bes | b4 a e e8 f |
  e4 d b e8 f | e4 c a a8 bes |
  b4 a f a8 bes | b4 a e des8 e |
  fis4 f8 fis gis4 g8 gis | a4 a->\f b-> c-> |

  \repeat volta 2 {
    d16\f( cis_\markup{\italic{stacc.}} d8) a d r d c16( <\parenthesize d> c b) |
    c( b c8) a c r c b16( <\parenthesize c> b a) |
    b( bes b8) gis b r b c b |
  }
  \alternative{
    {\time 2/4 a a b c \time 4/4}
    {a a' g f e d c b}
  }

  s1 * 6\mf
  \time 2/4 s2 * 2
  \time 4/4 s1 * 6
  \time 2/4 s2 * 2
  \time 4/4


  b4->_\markup{\italic{unisono}} r e-> r | a,-> e-> a-> r |
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
  \huge{
    \smallCaps{ Form: }
    \hspace #3.0
    \column{ \line{\bold{I A}} intro }
    \hspace #1.0
    \column{ \bold{B} instr \line{\italic{+band}}}
    \hspace #1.0
    \bracket{\line{
      \sub :
      \hspace #1.0
      \column{ \bold{C} verse }
      \hspace #1.0
      \column{ \bold{A} ref }
      \hspace #1.0
      \column{ \bold{B} instr }
      \hspace #1.0
      \sub :
    }}
    \super{×3}
    \hspace #1.0
    \column{ \bold{C} solo }
    \hspace #1.0
    \column{ \bold{A} ref }
    \hspace #1.0
    \column{ \bold{A} \line{ref + coda} }
    \hspace #3.0
  }
}

\layout {
  ragged-last = ##t
}
