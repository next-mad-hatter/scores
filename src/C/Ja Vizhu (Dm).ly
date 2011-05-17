\version "2.13.46"

%
% $File$
% $Date$
% $Revision$
% $Author$
%

\header {
  title = "Ja Vizhu"
  subtitle = "Я Вижу"
  subsubtitle = ""

  composer = "M. Deineko"
  poet = ""
  enteredby = "Max Deineko"

  %meter = "104 bpm"
  piece = "russian salsa"
  version = "$Revision$"

  copyright = "" % "Transcribed and/or arranged by MaX"
  tagline = "$Date$" % ""
}

harmIn = \chords {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  \mark \markup \bold \box "Intro"

  \repeat volta 2 {
    d2:m g:9 | bes:maj a:aug |
    d2:m g:9 | bes:maj a:aug |
    d2:m g:9 | bes:maj a:aug |
    d2:m bes:6 | bes:maj a:aug |
  }

  \break
}

harmRiff = \chords {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()

  \mark \markup \bold \box "A"

  \repeat volta 2 {
      d4:m s8 g8:9 s4 a8:m6 gis:m6 |
      g2:m7 bes8.:maj a16:aug s4 |
  }

  \break

  \mark \markup \bold \box "B"

  \repeat unfold 2 { f2:maj e:m9- d4.:m g8:9 s2 }
  f2:maj es:maj
  \mark \markup { \musicglyph #"scripts.coda"\sub{2} }
  a1:7.9-

  \bar "||:"
  \break

  \mark \markup { \musicglyph #"scripts.coda"\sub{1} }

  \repeat volta 2 { d4.:m g8:9 s2 | s1 \mark \markup \italic{cue} }
  \repeat volta 7 { s1 } a1:aug

  \bar "||"
  \break

  \mark \markup { \musicglyph #"scripts.coda"\sub{2} }
  a1:aug
  \bar "|."
}

melIn = \relative c'' {
  \set Staff.instrumentName = "guitar"
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()

  \key d \minor
  \time 4/4
  \clef treble
  \tempo 4 = 104

  d,16_\markup{\italic{rather muted}} a' d f ~ f d a d,
  g b d f ~ f d a d,
  f bes d f ~ f d bes f
  a, a' cis f ~ f cis a a,_\markup{\italic{sim.}} |
}

melRiff = \relative c'' {
  \set Staff.instrumentName = "lead"
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()

  \key d \minor
  \clef treble

  \repeat volta 4 {
    e16_\markup{\italic{sim.}}
    ^\markup{\musicglyph #"scripts.segno"}
    f e d r c d8 ~ d8 r r4 |
    r2 r16 g, ges a c a c d
    ^\markup{\hspace #4.0 \large \bold \musicglyph #"scripts.coda"\sub{1} }
    |
  }
}

bassIn = \relative c {
  \set Staff.instrumentName = "bass"
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()

  \key d \minor
  \clef bass

  \repeat volta 2 {
    d8.\mp c16 r8 g ~ g2 ~ | g1 |
    d'8. c16 r8 g ~ g2 ~ | g1 |
    d'8. c16 r8 g ~ g2 ~ | g1 |
    d'8. c16 r8 bes ~ bes2 ~ | bes1^\markup{\hspace #7.0 \italic cue} |
  }
}

bassRiff = \relative c {
  \set Staff.instrumentName = "bass"
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()

  \key d \minor
  \clef bass

  \repeat volta 2 {
    d8.
    ^\markup{\musicglyph #"scripts.segno"}
    d16 r8 g, ~ g8 r a as |
    r8. bes16 ~ bes8 d r4 a
    _\markup{ \hspace #-30.0 \large \italic { A1.: \bold 8x repeats, A2.: \bold 6x, after that \bold {till cue} } }
    |
  }

  \repeat percent 2 {
    a2->\mf g2-> | d'8.-> d16-> r8 g,-> r2 |
  }
  a2-> g2-> | c16-> a-> r a-> r8 c16-> a-> r a-> r4._\markup{ \hspace #7.0 \right-column { \line { 1.,2.: \bold D.S. } \line { 3.: \bold { D.S. al coda 1 } } } } |

  \repeat volta 2 {
    d8.->  \f d16_\markup{\italic{perc. solo}}
    r8 g,-> r2 | r1
  }
  \override NoteHead #'style = #'cross
  \repeat volta 7 {
    r8\mp c_\markup{\italic{sim.}} c16 c r8 c16 r8 c16 r8 c16 c ^\markup {\hspace #1.0 \italic{7x} } |
  }
  \override NoteHead #'style = #'default
  \times 2/3 { a8\ff-> a-> a-> } a4-> r2
  _\markup \bold { \hspace #-4.0 D.S. al coda 2 }
  |

  \times 2/3 { a8\f-> a-> a-> } \times 2/3 { c8->_\markup{\italic{rit.}} a-> g-> } a2->\fermata |
}

percIn = \drummode {
  \set Staff.instrumentName = "perc"
  \override Staff.TimeSignature #'style = #'()

  r8_\markup \italic{ perc. starts, adding gtr, bass, etc. }
  cb cb16 cb r8 cb16 r8 cb16 r cb16 cb r |
  r8 cb cb16 cb r8 cb16 r8 cb16 r cb16 cb r_\markup{\italic{sim.}} |
}

percRiff = \relative c'' {
  \set Staff.instrumentName = "guitar"
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters
  \override Staff.TimeSignature #'style = #'()

  \key d \minor
  %\time 4/4
  \clef treble

  \override NoteHead #'style = #'slash

  \repeat volta 4 {
    c16\mf d8 d16 r8 g,8 ~ g8 r a as |
    bes8. bes16 r4 bes16 r8 a16 ~ a8 a |
  }
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
          [: Intro :]
          A1 B
          A2 B
          [: Solos on A :]
          [: Perc. Solo on Coda 1 :]
          [: Solos on A :]
          B
          Coda
          \hspace #0.5
        }
      }
    }
    \hspace #1.0 % gives the fill-line something to work with
  }
}

\score {
  \transpose c c {
    \new StaffGroup = "intro" <<
      \new ChordNames = "chords" \harmIn
      \new Staff = "guitar" \melIn
      \new Staff = "bass" \bassIn
      \new DrumStaff = "perc" \percIn
    >>
    \new StaffGroup = "riff" <<
      \new ChordNames = "chords" \harmRiff
      \new Staff = "lead" \melRiff
      \new Staff = "guitar" \percRiff
      \new Staff = "bass" \bassRiff
    >>
  }
}

\layout {
  ragged-last = ##t
  \context { \RemoveEmptyStaffContext }
}
