
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
    subsubtitle = "ADORO TE 6.5.6.5 D"
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
d4 fis(a) a a b a2 g4 fis e d d1   

d4 fis(a) a a b a2 g4 fis e d d1 \bar "|" \break

a'4 b(cis) d d cis a2 b4 a g fis e1

fis4 a(g) fis e(d) e2 fis4 d e d d1

}

alto = \relative c {
\autoBeamOff
d'4 d(e) d d d cis2 d4 d cis a a1

d4 d(e) d d d cis2 d4 d cis a a1

d4 g2 fis4 fis e d2 d4 cis d d cis1

d4 e2 d4 cis(b) cis2 cis4 b cis a a1


}

tenor = \relative a {
\autoBeamOff
fis4 a2 a4 fis4 g e2 g4 a a fis fis1

fis4 a2 a4 fis4 g e2 g4 a a fis fis1

a4 g2 a4 a4 a fis2 g4 e g a a1

a4 a2 a4 a(fis) a2 a4 fis a fis fis1

}

bass = \relative g {
\autoBeamOff
d4 d(cis) d d g, a2 b4 d a d d41
d4 d(cis) d d g, a2 b4 d a d d1
fis4 e2 d4 d4 a d2 g,4 a b d a1
d4 cis2 d4 a(b) a2 fis4 b a d d1

}

verseOne = \lyricmode {
  \set stanza = #"1."
  \set shortVocalName = \markup { \normalsize "1." }
  \override InstrumentName #'X-offset = #3
  \override InstrumentName #'font-series = #'bold
  God -- "head here" in hid - ing whom I do a -- dore
Masked "by these" bare shad - ows, shape and no -- thing more.
See, "Lord, at" thy ser - vice low lies here a heart
Lost, "all lost" in won -- der at the God thou art.
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
      \tempo 4=90
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
