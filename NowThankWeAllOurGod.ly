
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
    title = "Now Thank We All Our God"
    subtitle = ""
    subsubtitle = "NUN DANKET    6.7.6.7.6.6.6.6"
    poet = \markup{ "Martin Rinkart (1648)"}
    composer = \markup{ Johann Crüger (1647)}
    %meter = "8.7.8.7 D"
    opus = \markup { \italic ""}
    %arranger = ""
    %instrument = ""
    %piece = \markup{\null \null \null \null \null \null \null \null \null \null \null \null \null \italic Slowly \null \null \null \null \null \note #"4" #1.0 = 70-100}
    %breakbefore
    %copyright = ""
    tagline = ""
}
soprano = \relative g' {
\partial 4 c4
c c d d
c2 r4 \bar "||" a4
bes a g a
g2 f4 \bar "||" \break

c'4
c c d d
c2 r4 \bar "||" a
bes a g a
g2 f4 \bar "||" \break

g4
g g a a
g2 r4 \bar "||" g
a c c b
c2 r4 \bar "||" \break

c4
d c bes a
bes2 r4 \bar "||" a
g a g g
f2 r4 \bar "||"
}

alto = \relative c {
f'4

e f f f
f2 r4 f4
f f e f
f~ e f 

g4
e f f f
f2 r4  f4
f f e f
f~ e c

e4
d g g f
e2 r4  g4
g f g f
e2 r4 

f4
f f d fis
g2 r4  f4
d8 e f4 f e
c2 r4 
}

tenor = \relative a {
a4
g c c bes
a2 r4 c
bes c c c
bes2 a4

g4
a c bes bes
c2 r4 c
bes c bes c8 d bes2 a4

c4
bes c c c
c2 r4 c4
c c e d
c2 r4

c4
bes a bes d
d2 r4 d
d c c bes
a2 r4
}

bass = \relative g {
f4
c a bes d
f2 r4 f4
d c bes a8 bes
c2 d4

e4
f a bes g
a2 r4 f
g f d c8[ bes]
c2 f4

c4
g'8 f e4 f f
c2 r4 e
f a g g
c,2 r4

a4
bes f' g d
g,2 r4 d'
bes a8 bes c4 c f,2 r4
}

verseOne = \lyricmode {
  \set stanza = #"1."
  \set shortVocalName = "1."
  \override InstrumentName #'X-offset = #3
  \override InstrumentName #'font-series = #'bold
  Now thank we all our God
with heart and hands and voic -- es,
who won -- drous things has done,
in whom his world re -- joic -- es;
who from our mo -- thers' arms
has blessed us on our way
with count -- less gifts of love,
and still is ours to -- day.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
    \set shortVocalName = "2."
  \override InstrumentName #'X-offset = #3
  \override InstrumentName #'font-series = #'bold
O may this boun -- teous God
through all our life be near us,
with ev -- er joy -- ful hearts
and bless -- ed peace to cheer us,
to keep us in his grace,
and guide us when per -- plexed,
and free us from all ills
of this world in the next.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  \set shortVocalName = "3."
  \override InstrumentName #'X-offset = #3
  \override InstrumentName #'font-series = #'bold
All praise and thanks to God
the Fa -- ther now be giv -- en,
the Son and Spir -- it blest,
who reign in high -- est heav -- en
the one e -- ter -- nal God,
whom heaven and earth a -- dore;
for thus it was, is now,
and shall be ev -- er -- more.
}

verseFour = \lyricmode {
  \set stanza = #"4."
    \set shortVocalName = "4."
  \override InstrumentName #'X-offset = #3
  \override InstrumentName #'font-series = #'bold

}

\score {
<<
    \new Staff {
      \set Score.midiInstrument = "Church Organ"
      \key f \major
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
      \key f \major
      \set Staff.printPartCombineTexts = ##f
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
