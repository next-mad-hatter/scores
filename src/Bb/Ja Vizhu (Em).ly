\version "2.12.3"

%
% $File$
% $HGDate: Tue, 01 Jun 2010 00:41:20 +0200 $
% $Revision$
% $Author$
%

\header {
  title = "Ja Vizhu"
  subtitle = "Я Вижу"
  subsubtitle = "in E minor"

  composer = "Max Deineko"
  poet = "a.k.a. Russian Salsa"
  enteredby = "Max Deineko"

  meter = "104 bpm"
  piece = "russian salsa"
  version = "0.1"

  copyright = "Transcribed by MaX"
  tagline = "" % or leave the lilypond line
}

harmIn = \chords {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  \mark \markup \box { I }

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

  \mark \markup \box { A }

  \repeat volta 4 {
    d4:m r8 g8:9 r4 a8:m6 gis:m6 |
    g2:m7 bes8.:maj a16:aug r4 |
  }

  \break

  \mark \markup \box { B }

  \repeat unfold 2 { f2:maj e:m9- d4.:m g8:9 r2 }
  f2:maj es:maj
  \mark \markup { \musicglyph #"scripts.coda" }
  a1:7.9-

  \bar "||:"
  \break

  \mark \markup \box { S }

  \repeat volta 2 { d4.:m g8:9 r2 | r1 \mark \markup \italic{on cue} }
  \repeat volta 7 { r1 } a1:aug

  \bar "||"
  \break

  \mark \markup { \musicglyph #"scripts.coda" }
  a1:aug
  \bar "|."
}

melIn = \relative c'' {
  \set Staff.instrumentName = "guitar"
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  \key d \minor
  \time 4/4
  \clef treble

  d,16_\markup{\italic{rather muted}} a' d f ~ f d a d,
  g b d f ~ f d a d,
  f bes d f ~ f d bes f
  a, a' cis f ~ f cis a a,_\markup{\italic{sim.}} |
}

melRiff = \relative c'' {
  \set Staff.instrumentName = "lead"
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  \key d \minor
  \clef treble

  \repeat volta 4 {
    e16_\markup{\italic{sim.}}
    f e d r c d8 ~ d8 r r4 |
    r2 r16 g, ges a c a c d |
  }
}

bassIn = \relative c {
  \set Staff.instrumentName = "bass"
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  \key d \minor
  \clef bass

  \repeat volta 2 {
    d8.\mp c16 r8 g ~ g2 ~ | g1 |
    d'8. c16 r8 g ~ g2 ~ | g1 |
    d'8. c16 r8 g ~ g2 ~ | g1 |
    d'8. c16 r8 bes ~ bes2 ~ | bes1_\markup{\italic{till cue}} |
  }
}

bassRiff = \relative c {
  \set Staff.instrumentName = "bass"
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  \key d \minor
  \clef bass

  \repeat volta 4 {
    d8. d16 r8 g, ~ g8 r a as |
    r8. bes16 ~ bes8 d r4 a|
  }

  \override NoteHead #'style = #'diamond
  \repeat percent 2 {
    a2\mf g2 | d'8. d16 r8 g, r2 |
  }
  a2 g2 | c16 a r a r8 c16 a r a r4. |

  \repeat volta 2 {
    d8.\mf d16_\markup{\italic{perc. solo}}
    r8 g, r2 | r1
  }
  \override NoteHead #'style = #'cross
  \repeat volta 7 {
    r8\mp c_\markup{\italic{sim.}} c16 c r8 c16 r8 c16 r8 c16 c \mark \markup \italic{7x} |
  }
  \override NoteHead #'style = #'diamond
  \times 2/3 { a8\f a a } a4 r2 |

  \times 2/3 { a8\f a a } \times 2/3 { c8_\markup{\italic{rit.}} a g } a2\fermata |
}

percIn = \drummode {
  \set Staff.instrumentName = "perc"
  r8_\markup{\italic{rims/bell}} cb cb16 cb r8 cb16 r8 cb16 r cb16 cb r |
  r8 cb cb16 cb r8 cb16 r8 cb16 r cb16 cb r_\markup{\italic{sim.}} |
}

percRiff = \relative c'' {
  \set Staff.instrumentName = "guitar"
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  \key d \minor
  %\time 4/4
  \clef treble

  \override NoteHead #'style = #'slash

  \repeat volta 4 {
    c16\mf d8 d16 r8 g,8 ~ g8 r a as |
    bes8. bes16 r4 bes16 r8 a16 ~ a8 a |
  }
}

\score {
  \transpose d e {
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

\markup {
  \huge{
    \smallCaps{ Form: }
    \column{
      \line{ \hspace #0.2 \bold{I} \hspace #5.0 perc -> bass -> guitar -> lead -> cue }
      \line{ \bold{A} \hspace #5.0 8T instr + 8T verse}
      \line{ \bold{B} \hspace #5.0 ref}
      \line{ \bold{A} \hspace #5.0 8T instr + 8T verse}
      \line{ \bold{B} \hspace #5.0 ref}
      \line{ \bold{A} \hspace #5.0 solo 1 till cue }
      \line{ \bold{S} \hspace #5.0 perc solo }
      \line{ \bold{A} \hspace #5.0 solo 2 till cue }
      \line{ \bold{B into Coda} }
    }
  }
}

\layout {
  ragged-last = ##t
  \context { \RemoveEmptyStaffContext }
}
