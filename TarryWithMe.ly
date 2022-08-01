
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
\partial 1. ees4 f8
g4. ees f8[ ees] f
g4. bes
c4 bes8
bes4.~bes4 g8 g[f] ees
f2. \bar "" \break

ees4 f8
g4. ees f8[ ees] f
g4. bes
ees4 c8
bes4.~bes4 ees,8 g4 f8
ees2. \bar "||" \break

bes'4 bes8
c4. ees ees8[ d] c
bes4. g
bes4 bes8
c4.~c4 ees8 d4 c8
bes2. \bar "" \break

ees,4 f8
g4. ees f8[ ees] f
g4. bes
ees4 c8
bes4.~bes4 ees,8 g4 f8
ees2. \bar "|."
}

alto = \relative c {
ees'4 ees8
ees4. ees d4 d8
ees4. g
aes4 g8
g4.~g4 ees8 ees4 ees8
d2.

ees4 ees8
ees4. ees d4 d8
ees4. ees
ees4 ees8
ees4.~ees4 ees8 ees4 d8
ees2.

g4 g8
aes4. c c8[ bes] aes
g4. ees
g4 g8
aes4.~aes4 c8 bes4 aes8
g2.

ees4 ees8
ees4. ees d4 d8
ees4. ees
ees4 ees8
ees4.~ees4 ees8 ees4 d8
ees2.
}

tenor = \relative a {
g4 aes8
bes4. g bes4 bes8
bes4. ees
ees4 ees8
ees4.~ees4 bes8 bes[ aes] g
bes2.

g4 aes8
bes4. g bes4 bes8
bes4. g
c4 aes8
g4.~g4 g8 bes4 aes8
g2.

ees'4 ees8
ees4. ees ees4 ees8
ees4. bes
ees4 ees8
ees4.~ees4 ees8 ees4 ees8
ees2.

g,4 aes8
bes4. g bes4 bes8
bes4. g
c4 aes8
g4.~g4 g8 bes4 aes8
g2.
}

bass = \relative g {
ees4 ees8
ees4. ees bes4 bes8
ees4. ees
ees4 ees8
ees4.~ees4 ees8 ees4 ees8
bes2.

ees4 ees8
ees4. ees bes4 bes8
ees4. ees
aes,4 c8
ees4.~ees4 ees8 bes4 bes8
ees2.

ees4 ees8
aes4. aes aes4 aes8
ees4. ees
ees4 ees8
aes4.~aes4 aes8 aes4 aes8
ees2.

ees4 ees8
ees4. ees bes4 bes8
ees4. ees
aes,4 c8
ees4.~ees4 ees8 bes4 bes8
ees2.
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
      \key ees \major
      \time 9/8
      \tempo 4=96
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
       \key ees \major
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
