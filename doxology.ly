
%% http://lsr.di.unimi.it/LSR/Item?id=653
%% see also http://lilypond.1069038.n5.nabble.com/LSR-v-2-18-quot-Hymn-Template-for-per-voice-music-and-partcombine-quot-does-not-compile-tc159367.html

%LSR by Carl Sorensen on Jan 19, 2010.
%LSR modified by Ed Gordijn on Feb.2014 for v2.18
\paper
{
    indent = 0.0
    line-width = 185 \mm
    %between-system-space = 0.1 \mm
    %between-system-padding = #1
    %ragged-bottom = ##t
    %top-margin = 0.1 \mm
    %bottom-margin = 0.1 \mm
    %foot-separation = 0.1 \mm
    %head-separation = 0.1 \mm
    %before-title-space = 0.1 \mm
    %between-title-space = 0.1 \mm
    %after-title-space = 0.1 \mm
    %paper-height = 32 \cm
    %print-page-number = ##t
    %print-first-page-number = ##t
    %ragged-last-bottom
    %horizontal-shift
    %system-count
    %left-margin
    %paper-width
    %printallheaders
    %systemSeparatorMarkup
}
\header
{
    %dedication = ""
    title = "Tarry With Me"
    subtitle = ""
    subsubtitle = "TARRY WITH ME (SHAW)    8.7.8.7 D"
    poet = \markup{ "Caroline L. Smith (1853)"}
    composer = \markup{ Knowles Shaw}
    %meter = "8.7.8.7 D"
    %opus = \markup { \italic "The Sacred Harp (1844)"}
    %arranger = ""
    %instrument = ""
    %piece = \markup{\null \null \null \null \null \null \null \null \null \null \null \null \null \italic Slowly \null \null \null \null \null \note #"4" #1.0 = 70-100}
    %breakbefore
    %copyright = ""
    tagline = ""
}
soprano = \relative g' {

\key g \major

g2 g4 fis e d g2 a b2
b b4 b a g c2 b  a2
g a4 b a g e2 fis  g2
d' b4 g a c b2 a  g2
g1 g
}

alto = \relative c {
d'2 d4 d b b b2 d  d2
d d4 d d b e2 d d2
d d4 d d d c2 c b2
g' d4 e fis e8 fis g2 fis g2
e1 d

}

tenor = \relative a {
b2 b4 a g fis g2 fis g2
g b4 g fis g g2 g fis2
b a4 g fis g g2 a d2
b g4 b d c d2 d4~ c b2
c1 b
}

bass = \relative g {
g2 g4 d e b e2 d g,2
g' g4 g d e c2 g d'2
g fis4 g d8 c b4 c2 a g2
g' g4 e d a b4 c d2 g,2
c1 g
}

verseOne = \lyricmode {
  \set stanza = #"1."
  Tar- ry with me, O "" my Sav- ior:
  For the day is pass - ing by;
  See, the shades of e ven ing gath- er,
  And the night is draw- ing nigh.

  Tar- ry with me, bless - ed Sav- ior;
  Leave me not till morn ing light:
  For I'm lone- ly here "" with out thee:
  Tar- ry with me thro' the night 
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Ma- ny friends were ga - thered round me
  In the bright days of "" the past;
  But the grave has closed "" a- bove them,
  And I lin- ger here at last.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Deep- er, deep- er grow "" the shad- ows,
  Pal- er now the glow - ing west;
  Swift the night of death "" ad- van- ces:
  Shall it be the night of rest?
}

verseFour = \lyricmode {
  \set stanza = #"4."
Tar- ry with me, O "" my Sav- ior;
Lay my head up- on "" thy breast
Till the mor- ning; then "" a- wake me--
Mor- ning of e- ter- nal rest
}

\score {
<<
    \new Staff {
      \set Score.midiInstrument = "Church Organ"
      \key g \major
      \time 2/2
      \tempo 4=80
      \set Staff.printPartCombineTexts = ##f
      <<
        \new NullVoice = "aligner"  \soprano
        \new Voice = "upper" \partCombine \soprano \alto
      >>
    }
    \new Lyrics \lyricsto "aligner" { \verseOne }
    \new Lyrics \lyricsto "aligner" { \verseTwo }
    \new Lyrics \lyricsto "aligner" { \verseThree }
    \new Lyrics \lyricsto "aligner" { \verseFour }
    \new Staff {
       \key g \major
       \clef bass {
         \partCombine \tenor \bass
       }
     }
  >>
     \midi { }
    \layout
    {	
	\context
	{
	    \Lyrics
	    \override VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
	}}
}
