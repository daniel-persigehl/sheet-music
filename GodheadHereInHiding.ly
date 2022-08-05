
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
    title = "Godhead Here in Hiding"
    subtitle = ""
    subsubtitle = "ADORO TE METER"
    poet = \markup{ "Thomas Aquinas (YYYY)"}
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
d4 fis(a) a a b a g fis e d d2   

d4 fis(a) a a b a g fis e d d2 \bar "|" \break

a'4 b(cis) d d cis a b a g fis e2

fis4 a(g) g fis e(d) e fis d e d d2

}

alto = \relative c {
\autoBeamOff
d'4 d(e) d d d cis d d cis a a2

d4 d(e) d d d cis d d cis a a2

d4 g2 fis4 fis e d d cis d d cis2

d4 e2 d4 d cis(b) cis cis b cis a a2


}

tenor = \relative a {
\autoBeamOff
fis4 a2 a4 fis4 g e g a a fis fis2

fis4 a2 a4 fis4 g e g a a fis fis2

a4 g2 a4 a4 a fis g e g a a2

a4 a2 a4 a4 a(fis) a a fis a fis fis2

}

bass = \relative g {
\autoBeamOff
d4 d(cis) d d g, a b d a d d2
d4 d(cis) d d g, a b d a d d2
fis4 e2 d4 d4 a d g, a b d a2
d4 cis2 d4 d4 a(b) a fis b a d d2

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
      \time 4/4
      \tempo 4=70
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
