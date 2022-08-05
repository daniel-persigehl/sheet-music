
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
    title = "Title"
    subtitle = ""
    subsubtitle = "TUNE METER"
    poet = \markup{ "Poet (YYYY)"}
    composer = \markup{ Composer  (YYYY)}
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
\partial 4 c4

}

alto = \relative c {
\autoBeamOff
f'4


}

tenor = \relative a {
\autoBeamOff
a4

}

bass = \relative g {
\autoBeamOff
f4

}

verseOne = \lyricmode {
  \set stanza = #"1."
  \set shortVocalName = \markup { \normalsize "1." }
  \override InstrumentName #'X-offset = #3
  \override InstrumentName #'font-series = #'bold
  Lyrics
}

verseTwo = \lyricmode {
  \set stanza = #"2."
    \set shortVocalName = \markup { \normalsize "2." }
  \override InstrumentName #'X-offset = #3
  \override InstrumentName #'font-series = #'bold

}

verseThree = \lyricmode {
  \set stanza = #"3."
  \set shortVocalName = \markup { \normalsize "3." }
  \override InstrumentName #'X-offset = #3
  \override InstrumentName #'font-series = #'bold

}

verseFour = \lyricmode {
  \set stanza = #"3."
    \set shortVocalName = \markup { \normalsize "4." }
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
    \new Lyrics \lyricsto "aligner" { \verseFive }
    \new Lyrics \lyricsto "aligner" { \verseSix }
    \new Lyrics \lyricsto "aligner" { \verseSeven }
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
