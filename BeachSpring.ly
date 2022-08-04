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
    title = "Lord, Whose Love in Humble Service"
    subtitle = ""
    subsubtitle = "BEACH SPRING    8.7.8.7 D"
     poet = \markup{ "Albert F. Bayly (1961)"}
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
      Lord whose love in hum -- ble ser - vice
Bore the weight of hu -- man need 
Who up -- on the cross for -- sa - ken
of -- fered mer -- cy's per -- fect deed
We your ser -- vants bring the wor -- ship
Not of voice a- lone - but heart
Con -- sec- rat -- ing to Your pur - pose
Ev -- 'ry gift that You im -- part
}
sopWordsTwo = \lyricmode
{
    \set stanza = "2. "
Still, your chil -- dren wan -- der home - less;
still the hun -- gry cry for bread;
still the cap- tives long for free - dom;
still in grief we mourn our dead
As you, Lord, in deep com -- pas sion
healed the sick and freed " " the soul,
Use the love your Spir -- it kin - dles
to our world and make us whole.  
}
sopWordsThree = \lyricmode
{
    \set stanza = "3. "
    As we wor -- ship grant us vis - ion, till your love’s re -- veal -- ing light,
In its height and depth and great - ness, dawns up -- on our quick -- ened sight.
Mak -- ing known the needs and bur -- dens your com -- pas -- sion bids " " us bear,
Stir -- ring us to tire- less striv - ing your a -- bun -- dant life to share.
}
sopWordsFour = \lyricmode
{
    \set stanza = "4. "
    Called by wor- ship to your ser - vice, forth in your dear name we go
To the child, the youth, the a - ged, love in liv -- ing deeds to show.
Hope and health, good will and com -- fort, coun -- sel, aid, and peace " " we give.
That your ser -- vants, Lord, in free - dom may you mer -- cy know, and live.
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
	    \new Voice = "sopranos"     \relative
	    {
		\voiceOne
		\global
		%\override Score.MetronomeMark #'transparent = ##t
		\override Score.MetronomeMark #'stencil = ##f
		\tempo 4 = 120 \time 3/2 \key f \major
  \partial 2  f'4 f
  g2 f2 a4 a
  g f d2 f4 f
  d2 c d4 f
  f1 \bar "" \break f4 f

  g2 f a4 a
  g f d2 f4 f
  d2 c d4 f
  f1 \bar "" \break f4 a

  c2 c d4 c
  a2 f f4 a
  c2 f, a8 g f4
  d1 \bar "" \break d'4 c
  
  a2 f a4 a
  g f d2 f4 f
  d2 c d4 f
  f1
		\bar "|."
	    }

	    \new Voice = "altos" \relative
	    {
		\voiceTwo
    c'2
  d1 c2
  d d4 c a2
  bes1 bes2
  c1 c2
  
  d1 c2
  d2 d4 c a2
  bes1 bes2
  c1 f2
  
  g1 g2
  f4 e d2 d
  e d d
  d1 e2
  
  d1 d2
  d d c
  bes a g
  a1
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
	    \new Voice = "tenors" \relative
	    {
		\voiceThree \key f \major
    a2
  bes2. a4 g2
  a1 f2
  f2. e4 f g
  a1 a2
  
  bes2. a4 g2
  a1 f2
  f2. e4 f g
  a1 a2
  
  g1 g2
  a2. g4 f2
  g f2. g4
  a2 g g
  
  f4 g a2 f
  f2. a4 g f
  f2 e d
  c1
		\global
	    }

	    \new Voice = "basses" \relative
	    {
		\voiceFour
    f2
  f1 e2
  d1 c2
  bes1 bes2
  f1 f'2
  
  f1 e2
  d1 c2
  bes1 bes2
  f1 f'2
  
  e1 e2
  d1 d2
  c d c
  bes1 c2
  
  d1 c2
  bes1 a2
  g a bes
  f1
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
	\line{\italic {Tune Name: Beach Spring} }
	\line{\italic {Poetic Meter: 	8.7.8.7 D} }
	%\line{\italic Source: }
    }

}