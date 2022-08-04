
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
    title = "Hard Times Come Again No More"
    subtitle = ""
    subsubtitle = ""
    poet = \markup{ "Martin Rinkart (1648)"}
    composer = \markup{ Stephen C. Foster (1647)}
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
\partial 4 d8 e
fis4 fis8 fis fis a4 fis8
e e d e fis4 b8. a16
a4 fis fis8 d e8. e16
d2. d8 e
fis4 fis8 fis fis a4 fis8
e e d e fis4 b4
a4 fis fis8 d e8. e16
d2. \bar "||" \break

fis8 g
a4 r8 a8 a4 gis8 a
b2~ a4 r
d4 a b a
fis8 fis e d e4 d8 e
fis4 fis8 fis fis a4 fis8
e e d e fis4 b
a fis fis8 d e8. e16
d2.
}

alto = \relative c {
a'8 cis
d4 d8 d d fis4 d8
cis cis d cis d4 g8. fis16
fis4 d d8 d cis8. cis16
a2. a8 cis
d4 d8 d d fis4 d8
cis cis b cis d4 g
fis d d8 b cis8. cis16
a2.

d8 e
fis4 r8 fis fis4 f8 fis
g2~ fis4 r
fis fis g fis
d8 d cis b cis4 a8 cis
d4 d8 d d fis4 d8
cis cis b cis d4 g
fis d d8 b cis8. cis16
d2.

}

tenor = \relative a {

}

bass = \relative g {
d8 d
d4 d8 d d fis4 d8
a a b a d4 g,8. a16
a4 d d8 d a8. a16
d2. d8 d
d4 d8 d d fis4 d8
a a b a d4 g,
a a a8 b a8. a16
d2.

d8 d
d4 r8 d d4 cis8 d
g,2~ a4 r
d d g, a
a8 a a b a4 d8 d
d4 d8 d d fis4 d8
a a b a d4 g,
a a a8 b a8. a16
d2.
}

verseOne = \lyricmode {
  \set stanza = #"1."
  \set shortVocalName = "1."
  \override InstrumentName #'X-offset = #3
  \override InstrumentName #'font-series = #'bold
Let us pause in life's plea -- sures and count its ma -- ny tears,
While we all sup sor -- row with the poor;
There's a song that will ling -- er for -- ev -- er in our ears;
Oh! Hard times come a -- gain no more.
\set shortVocalName = ""
'Tis the song, the sigh of the weary,
Hard Times, hard times, come a -- gain no more.
Ma -- ny days you have ling -- ered a -- round my cab -- in door;
Oh! Hard times come a -- gain no more.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
    \set shortVocalName = "2."
  \override InstrumentName #'X-offset = #3
  \override InstrumentName #'font-series = #'bold
While we seek mirth and beau -- ty and mu -- sic light and gay,
There are frail forms faint -- ing at the door;
Though their voic -- es are si -- lent, their plead -- ing looks will say
Oh! Hard times come a -- gain no more.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  \set shortVocalName = "3."
  \override InstrumentName #'X-offset = #3
  \override InstrumentName #'font-series = #'bold
There's a pale weep -- ing maid -- en who toils her life a -- way,
With a worn heart whose better days are o'er:
Though her voice would be mer -- ry, 'tis sigh -- ing all the day,
Oh! Hard times come a -- gain no more.
}

verseFour = \lyricmode {
  \set stanza = #"4."
    \set shortVocalName = "4."
  \override InstrumentName #'X-offset = #3
  \override InstrumentName #'font-series = #'bold
'Tis a sigh that is waft -- ed a -- cross the troubl -- ed wave,
'Tis a wail that is heard upon the shore
'Tis a dirge that is mur -- mured a -- round the low -- ly grave
Oh! Hard times come a -- gain no more.
}

\score {
<<
    \new Staff {
      \set Score.midiInstrument = "Grand Piano"
      \key d \major
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
      \key d \major
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
