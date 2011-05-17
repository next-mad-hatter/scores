\version "2.12.3"

%
% $File$
% $Date$
% $Revision$
% $Author$
%

\header {
  title = "Tunnel Vision"
  subtitle = ""
  subsubtitle = "in D minor"

  composer = "Lenny Kravitz"
  poet = ""
  enteredby = "Max Deineko"

  %meter = "116 bpm"
  piece = "rock"
  version = "$Revision$"

  copyright = "" % "Transcribed and/or arranged by MaX"
  tagline = "$Date$" % ""
}


harm = \chords {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  d1:9+ s1*3

  \break
  \mark \markup {\box \bold "A"}
  d1:9+ s1*3 |

  \break
  \mark \markup {\box \bold "B"}
  g1:^3 f:^3 e:9+ es:9+ |
  d:9+ f:^3 e:9+ es:9+ s1 |

  %\break
  \mark \markup {\box \bold "A'"}
  d1:9+ s1*3 |

  \break
  \mark \markup {\box \bold "C"}
  g4:m s4. a:7 d1:m |
  bes4:7 s4. a:7 d1:m |
  bes4:7 s4. a:7 d1:m |
  g4:m s4. a:7 d1:9+ s1 |
  d1:9+ s1*3 |

  \mark \markup {\box \bold "A'"}
  d1:9+ s1*3 |

  %\mark \markup{ \musicglyph #"scripts.coda" }
  %\break
  \break
  \mark \markup {\box \bold "Outro"}

  d4:9+ s2 s16 es8.:9+ |
  d4:9+ s4 s16 es8.:9+ s4 |
  s1 * 2 |

  d1:9+ s1 |
}

mel = \relative c'' {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()

  \key d \minor
  \time 4/4
  \cleaf treble
  \tempo 4 = 116

  \override NoteHead #'style = #'diamond

  \repeat percent 2 {
    \repeat percent 2 {
      f8.-.-> f-.-> f8-> r f-> f16-> f r8
      %d16 r r d r r d r r d r r d d r8
    }
  }

  \repeat volta 2 {
    \repeat percent 3 {
      \override NoteHead #'style = #'default
      d,8
      ^\markup{\musicglyph #"scripts.segno"}
      _\markup{\italic sim.}
      \override NoteHead #'style = #'cross
      d16 d
      \override NoteHead #'style = #'default
      <c' f>8. <c f>16
      r8 g,16 a r f'8.
    }
    d8
    \override NoteHead #'style = #'cross
    d16 d
    \override NoteHead #'style = #'default
    <c' f>8.  d8 c16 a gis g f8.
  }

  \override NoteHead #'style = #'diamond

  g4-.
  r4. g8. g
  f4-. r4. f8. f
  e4-. r4. e8. e
  es4-. r4. es8. es
  d4-. r4. d8. d
  f4-. r4. f8. f
  e4-. r4. e8. e
  es8.-.-> es-.-> es8-> r es-> es16-> es r8
  es8.-.-> es-.-> es8-> r es-> es16-> es r8
  _\markup \bold { D.S. }

  \repeat volta 4 {
    s1
    %^\markup{\hspace #0.0 \italic{as in A}}
    s1 s1 s1
    ^\markup{\hspace #5.0 \italic ×4}
  }

  bes'4-.
  ^\markup{\italic solo}
  r4. a8. a
  d4-. r4. d8. d
  bes4-. r4. a8. a
  d4-. r4. d8. d
  bes4-. r4. a8. a
  d4-. r4. d8. d
  bes4-. r4. a8. a
  f'8.-.-> f-.-> f8-> r f-> f16-> f r8
  f8.-.-> f-.-> f8-> r f-> f16-> f r8
  \repeat volta 4 {
    s1
    %^\markup{\hspace #-3.0 \italic{as in A}}
    s1 s1 s1
    ^\markup{ \hspace #4.0 \italic { till cue } }
  }

  \repeat volta 4 {
    s1
    %^\markup{\italic{as above}}
    s1 s1 s1
    ^\markup{\hspace #5.0 \italic ×4}
  }
  \repeat volta 2 {
    \repeat percent 2 {
      f8. f f8 r f r16 fis8.
      f8. f f8 r fis r16 fis8.
      ^\markup{ \hspace #20.0 \italic { till cue } }
    }
  }
  f4-> r \fermata
  f-> r \fermata
  f1-> \fermata

  \bar "|."
}

bass = \relative c {

  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()

  \key d \minor
  \time 4/4
  \clef bass

  s1 * 4

  \repeat percent 3 {
    d4
    _\markup{\italic sim.}
    r8. d16
    d8 d8 r16 f8.
  }
  d4 r8. d8 c16 a gis g f8.

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
          Intro A B A B A' C A' Outro
          \hspace #0.5
        }
      }
    }
    \hspace #1.0 % gives the fill-line something to work with
  }
}

\score {
  \transpose g g {
    \new StaffGroup = "intro" <<
      \new ChordNames = "chords" \harm
      \new Staff = "guitar" \mel
      \new Staff = "bass" \bass
    >>
  }
}

\layout {
  ragged-last = ##f
  \context {
    \RemoveEmptyStaffContext
    \override VerticalAxisGroup #'remove-first = ##t
  }
}
