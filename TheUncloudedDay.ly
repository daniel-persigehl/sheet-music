
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
    title = "The Unclouded Day"
    subtitle = ""
    subsubtitle = "THE UNCLOUDED DAY 12.10.12.10 with refrain"
    poet = \markup{ "J. K. A."}
    composer = \markup{ J. K. Alwood (1885)}
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
\autoBeamOff
\partial 4 d8. d16
g8. g16 g8. g16 g4 b8. a16
g4 e d d8. d16
g8.~ g16 g8. g16 g8.~ g16 b8. b16
d2. d,8. d16
g8.~ g16 g8.~ g16 g4 b8. a16
g8~ g e4 d \fermata d'8. \fermata e16
d8. b16 g8. a16 b4 a8.~ a16
g2 \bar "||" \break

d'4. e8
d4 b g b
g2 d'4. e8
d4 b8. a16 g4 b8. b16
a2. d,8. d16
g8.~ g16 g8.~ g16 g4 b8. a16
g8~ g e4 d \fermata d'8. \fermata e16
d8. b16 g8. a16 b4 a8.~ a16
g2

}

alto = \relative c {
b'8. b16
d8. d16 d8. d16 d4 d8. d16
e4 c b b8. b16
d8.~ d16 d8. d16 d8.~ d16 g8. g16
fis2. d8. d16
d8.~ d16 d8.~ d16 d4 d8. d16
e8~ e c4 b \fermata g'8. \fermata g16
g8. g16 g8. g16 g4 fis8.~ fis16
g2

g4. g8
g4 g g d
g2 g4. g8
g4 g8. g16 d4 g8. g16
fis2.

d8. d16
d8.~ d16 d8.~ d16 d4 d8. d16
e8~ e c4 b \fermata g'8. \fermata g16
g8. g16 g8. g16 g4 fis8.~ fis16
g2

}

tenor = \relative a {
\autoBeamOff
g8. g16
b8. b16 b8. b16 b4 g8. g16
g4 g g g8. g16
b8.~ b16 b8. b16 b8.~ b16 b8. g16
fis2. c'8. c16
b8.~ b16 b8.~ b16 b4 g8. g16
g8~ g g4 g \fermata b8. \fermata c16
b8. g16 b8. c16 b4 c8.~ c16
b2

b4. c8
b4 d b g
b2 b4. c8
b4 d8. c16 b4 d8. d16
d2.

c8. c16
b8.~ b16 b8.~ b16 b4 g8. g16
g8~ g g4 g b8. c16
b8. g16 b8. c16 b4 c8.~ c16
b2
}

bass = \relative g {
g8. g16 
g8. g16 g8. g16 g4 g8. g16
c,4 e g g8. g16
g8.~ g16 e8. g16 g8.~ g16 e8. e16
d2. d8. d16
g8.~ g16 g8.~ g16 g4 g8. g16
c,8~ c e4 g \fermata g8. \fermata g16
g8. g16 g8. g16 d4 d8.~ d16
g2

g4. g8
g4 g g g
g2 g4. g8
g4 g8. g16 g4 g8. g16
d2.

d8. d16
g8.~ g16 g8.~ g16 g4 g8. g16
c,8~ c e4 g \fermata g8. \fermata g16
g8. g16 g8. g16 d4 d8.~ d16
g2
}

verseOne = \lyricmode {
  \set stanza = #"1."
  \set shortVocalName = "1."
  \override InstrumentName #'X-offset = #3
  \override InstrumentName #'font-series = #'bold
  O they tell me of a home far be -- yond the skies,
O they "tell me" of a home far a -- way;
O they "tell me" "of a" home where no storm clouds rise;
O they tell me of an un -- cloud-ed day.

 \set shortVocalName = ""
O the land of cloud -- less day,
O the land of an un -- cloud -- ed day.
O they "tell me" "of a" home where no storm -- clouds rise,
O they tell me of an un -- cloud-ed day.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
    \set shortVocalName = "2."
  \override InstrumentName #'X-offset = #3
  \override InstrumentName #'font-series = #'bold
O they tell me of a home where my friends have gone,
O they "tell me" of that land far a -- way,
Where the tree of life in e -- ter -- nal bloom
Sheds its frag -- rance thro' the un -- cloud-ed day. 
}

verseThree = \lyricmode {
  \set stanza = #"3."
  \set shortVocalName = "3."
  \override InstrumentName #'X-offset = #3
  \override InstrumentName #'font-series = #'bold
O they tell me of a King in His beau -- ty there,
And they "tell me" that mine eyes shall be -- hold
Where He sits "on the" throne that is whit-er than snow,
In the cit -- y that is made of gold. 
}

verseFour = \lyricmode {
  \set stanza = #"4."
    \set shortVocalName = "4."
  \override InstrumentName #'X-offset = #3
  \override InstrumentName #'font-series = #'bold
O they tell me that He smiles on His child -- ren there,
And His smile drives their sorrows all a -- way;
And they "tell me" "that no" tears ev -- er come a -- gain,
In that love -- ly land of un -- cloud-ed day. 
}

verseFive = \lyricmode {
  \set stanza = #"2."
    \set shortVocalName = "2."
  \override InstrumentName #'X-offset = #3
  \override InstrumentName #'font-series = #'bold

}

verseSix = \lyricmode {
  \set stanza = #"3."
    \set shortVocalName = "3."
  \override InstrumentName #'X-offset = #3
  \override InstrumentName #'font-series = #'bold

}

verseSeven = \lyricmode {
  \set stanza = #"3."
    \set shortVocalName = "3."
  \override InstrumentName #'X-offset = #3
  \override InstrumentName #'font-series = #'bold

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
    \new Lyrics \lyricsto "aligner" { \verseFive }
    \new Lyrics \lyricsto "aligner" { \verseSix }
    \new Lyrics \lyricsto "aligner" { \verseSeven }
    \new Staff \with { \consists "Mark_engraver" } {
      \key g \major
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
