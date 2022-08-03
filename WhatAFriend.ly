% ŵ (UTF-8 test character: double-u circumflex)
% “ = 0147 (left formatted quote)
% ” = 0148 (right formatted quote)
% — = 0151 (dash)
% – = 0150 (shorter dash)
% © = 0169 (copyright symbol)
% ® = 0174 (registered copyright symbol)
% ⌜ = u231C
% ⌝ = u231D

\version "2.10.33"
#(ly:set-option 'point-and-click #t)

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
    title = "What A Friend"
    subtitle = ""
    subsubtitle = "CONVERSE    8.7.8.7 D"
     poet = \markup{ "Joseph Scriven (1855)"}
    %composer = \markup{ Benjamin F. White}
    %meter = "8.7.8.7 D"
    opus = \markup { \italic "The Sacred Harp (1844)"}
    %arranger = ""
    %instrument = ""
    %piece = \markup{\null \null \null \null \null \null \null \null \null \null \null \null \null \italic Slowly \null \null \null \null \null \note #"4" #1.0 = 70-100}
    %breakbefore
    %copyright = ""
    tagline = ""
}


global =
{
    %\override Staff.TimeSignature #'style = #'()
    %\time 6/4
    %\key f \major
    \autoBeamOff
    \override Rest #'direction = #'0
    \override MultiMeasureRest #'staff-position = #0
}

sopWords = \lyricmode
{
    \override Score . LyricText #'font-size = #-1
    \override Score . LyricHyphen #'minimum-distance = #1
    \override Score . LyricSpace #'minimum-distance = #0.8
    % \override Score . LyricText #'font-name = #"Gentium"
    % \override Score . LyricText #'self-alignment-X = #-1
    \set stanza = "1. "
    %\set vocalName = "Men/Women/Unison/SATB"
      Lord whose love in hum- ble ser - vice
Bore the weight of hu- man need 
Who up- on the cross for- sa - ken
of- fered mer- cy's per- fect deed
We your ser- vants bring the wor- ship
Not of voice a- lone - but heart
Con- sec- rat- ing to Your pur - pose
Ev- 'ry gift that You im- part
}
sopWordsTwo = \lyricmode
{
    \set stanza = "2. "
Still, your chil- dren wan- der home - less;
still the hun- gry cry for bread;
still the cap- tives long for free - dom;
still in grief we mourn our dead
As you, Lord, in deep com- pas sion
healed the sick and freed " " the soul,
Use the love your Spir- it kin - dles
to our world and make us whole.  
}
sopWordsThree = \lyricmode
{
    \set stanza = "3. "
    As we wor- ship grant us vis - ion, till your love’s re- veal- ing light,
In its height and depth and great - ness, dawns up- on our quick- ened sight.
Mak- ing known the needs and bur- dens your com- pas- sion bids " " us bear,
Stir- ring us to tire- less striv - ing your a- bun- dant life to share.
}
sopWordsFour = \lyricmode
{
    \set stanza = "4. "
    Called by wor- ship to your ser - vice, forth in your dear name we go
To the child, the youth, the a - ged, love in liv- ing deeds to show.
Hope and health, good will and com- fort, coun- sel, aid, and peace " " we give.
That your ser- vants, Lord, in free - dom may you mer- cy know, and live.
}
sopWordsFive = \lyricmode
{
    \set stanza = "5. "
}
sopWordsSix = \lyricmode
{
    \set stanza = "6. "
}
sopWordsSeven = \lyricmode
{
    \set stanza = "7. "
}
altoWords = \lyricmode
{

}
tenorWords = \lyricmode
{

}
bassWords = \lyricmode
{

}

\score
{
    %\transpose es' d'
    <<
	\new Staff
	<<
	    %\set Score.midiInstrument = "Orchestral Strings"
	    \set Score.midiInstrument = "Church Organ"
	    \new Voice = "sopranos"    << \relative
	    {
		\voiceOne
		\global
		%\override Score.MetronomeMark #'transparent = ##t
		\override Score.MetronomeMark #'stencil = ##f
		\tempo 4 = 85 \time 4/4 \key f \major
  c''4. c8 d c a f
  f2 d4 r
  c4. f8 a f c' a
  g2. r4

  c4. c8 d c a f
  f2 d4 r
  c4. f8 a g f e
  f2. r4

  g4. fis8 g a bes g
  a2 c4 r
  d4. d8 c a bes a
  g2. r4

    c4. c8 d c a f
  f2 d4 r
  c4. f8 a g f e
  f2. r4
		\bar "|."
	    }
        \relative {
          f'4. f8 f f f c
  d2 bes4 r
  c4. c8 c c f f
  e2. r4

  f4. f8 f f f c
  d2 bes4 r
  a4. c8 f c c c
  c2. r4

  e4. dis8 e f g e
  f2 f4 r
  f4. f8 f f g f
  e2. r4

    f4. f8 f f f c
  d2 bes4 r
  a4. c8 f c c c
  c2. r4
        } >>

	    \new Voice = "altos" \relative
	    {
		\voiceTwo

	    }

	    \new Lyrics = sopranos { s1 }
	    \new Lyrics = sopranosTwo { s1 }
	    \new Lyrics = sopranosThree { s1 }
	    \new Lyrics = sopranosFour { s1 }
	    %\new Lyrics = sopranosFive { s1 }
	    %\new Lyrics = sopranosSix { s1 }
	    %\new Lyrics = sopranosSeven { s1 }
	    %\new Lyrics = altos { s1 }
	    %\new Lyrics = tenors { s1 }
	    %\new Lyrics = basses { s1 }
	>>


	\new Staff
	<<
	    \clef bass
	    \new Voice = "tenors" << \relative
	    {
		\voiceThree \global \key f \major \stemDown
  a4. a8 bes a c a
  bes2 f4 r
  a4. a8 a a a c
  c2. r4

  a4. a8 bes a c a
  bes2 f4 r
  f4. a8 c bes a g
  a2. r4

  c4. c8 c c c c
  c2 a4 r
  bes4. bes8 c c c c
  c2. r4

  a4. a8 bes a c a
  bes2 f4 r
  f4. a8 c bes a g
  a2. r4
		\global
	    } 
        \relative {
  f4. f8 f f f f
  bes,2 bes4 r
  f'4. f8 f f f f
  c2. r4

  f4. f8 f f f f
  bes,2 bes4 r
  c4. c8 c c c c
  f2. r4

  c4. c8 c c c c
  f2 f4 r
  bes4. bes8 a f e f
  c2. r4

  f4. f8 f f f f
  bes,2 bes4 r
  c4. c8 c c c c
  f2. r4
        } >>

	    \new Voice = "basses" \relative
	    {
		\voiceFour

	    }
	>>
	\context Lyrics = sopranos \lyricsto sopranos \sopWords
	\context Lyrics = sopranosTwo \lyricsto sopranos \sopWordsTwo
	\context Lyrics = sopranosThree \lyricsto sopranos \sopWordsThree
	\context Lyrics = sopranosFour \lyricsto sopranos \sopWordsFour
	%\context Lyrics = sopranosFive \lyricsto sopranos \sopWordsFive
	%\context Lyrics = sopranosSix \lyricsto sopranos \sopWordsSix
	%\context Lyrics = sopranosSeven \lyricsto sopranos \sopWordsSeven
	%\context Lyrics = altos \lyricsto altos \altoWords
	%\context Lyrics = tenors \lyricsto tenors \tenorWords
	%\context Lyrics = basses \lyricsto basses \bassWords
    >>
	
    \midi { }
    \layout
    {	
	\context
	{
	    \Lyrics
	    \override VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
	}
    }
}

\markup
{
    \column
    {
	%\line{\italic Text: }
	%\line{\italic Music: }
	%\line{\italic Arrangement: }
	%\line{\italic {Words and Music:} }
	\line{\italic {Tune Name: Converse} }
	\line{\italic {Poetic Meter: 	8.7.8.7 D} }
	%\line{\italic Source: }
    }

}