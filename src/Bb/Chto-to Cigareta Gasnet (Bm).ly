\version "2.12.3"

%
% $File$
% $HGDate: Tue, 01 Jun 2010 00:41:20 +0200 $
% $Revision$
% $Author$
%

\header {
  title = "Chto-to Cigareta Gasnet"
  subtitle = "Что-то сигарета гаснет"
  subsubtitle = "in B minor"

  composer = "as performed by La Minor"
  poet = ""
  enteredby = "Max Deineko"

  meter = "66 bpm"
  piece = "heavily drunk cha cha"
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
    a1:m\mf d:m e:7 a2:m e:7
    a1:m d:m e:7 a:m
  }

  \mark \markup {\box \bold "B"}

  \repeat unfold 2 {
    a1:m d:m e:7 a:m
  }
  a1:7 d:m g:7 c
  f d:m e:7 a:m

  \break
  \bar "||:"
  \mark \markup {\box \bold "C"}

  \repeat volta 2 {
    a:7 d:m g:7 c:maj
    f:maj d:m6
  }
  \alternative {
    { e:7 a:m }
    { e:7 a:m }
  }

  \bar ".|."
}

mel = \relative c' {
  \set Score.skipBars = ##t
  \set Score.markFormatter = #format-mark-box-letters

  \key a \minor

  \override NoteHead #'style = #'cross
  c'4 r c, r
  \override NoteHead #'style = #'default

  \repeat volta 2 {
    a'8 a a a a4 c | b d2 r4 |
    gis,8 gis gis gis gis4 b | r8 a r c b a gis b |
    a8 a a a a4 c | d4 c b a  |
    r8 gis r a b a gis r |
    a4_\markup{\italic{break}} r4
    \override NoteHead #'style = #'cross
    e
    \override NoteHead #'style = #'default
    r4 |
  }

  s1 * 16

  \repeat volta 2 {
    s1 * 6
  }
  \alternative {
    { s1 * 2 }
    {
      e4->_\markup{\column{\italic{break} \line{\box \bold{fine}}}}
      r2.
      s1_\markup{\italic{fill}}
    }
  }
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
    \hspace #5.0
    \bracket{
      \line{
      :
        \bold{A}
        \bold{B}
        \bold{C}
      :
      }
    }
    \super{×3}
  }
}

\layout {
  ragged-last = ##t
}
