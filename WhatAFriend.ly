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
    \set shortVocalName = \markup { \normalsize"1."}
\override InstrumentName #'X-offset = #3
\override InstrumentName #'font-series = #'bold
    %\set vocalName = "Men/Women/Unison/SATB"
What a friend we have in Je -- sus,
All our sins and griefs to bear;
What a priv -- i -- lege to car -- ry
Ev -- 'ry -- thing to God in prayer.
Oh, what peace we of -- ten for -- feit,
Oh, what need less pain we bear
All be -- cause we do not car -- ry
Ev -- 'ry -- thing to God in prayer,
}
sopWordsTwo = \lyricmode
{
    \set stanza = "2. "
    \set shortVocalName = \markup { \normalsize"2."}
\override InstrumentName #'X-offset = #3
\override InstrumentName #'font-series = #'bold
Have we tri -- als and temp -- ta -- tions?
Is there trou -- ble a -- ny -- where?
We should nev -- er be dis -- cour -- aged,
Take it to the Lord in prayer.
Can we find a Friend so faith -- ful,
Who will all our sor -- rows share?
Je -- sus knows our ev -- 'ry weak -- ness,
Take it to the Lord in prayer,
}
sopWordsThree = \lyricmode
{
    \set stanza = "3. "
    \set shortVocalName = \markup { \normalsize"3."}
\override InstrumentName #'X-offset = #3
\override InstrumentName #'font-series = #'bold
Are we weak and hea -- vy lad -- en,
Cum -- bered with a load of care?
Pre -- cious Sav -- iour, still our re -- fuge,
Take it to the Lord in prayer.
Do thy friends des -- pise, for sake thee?
Take it to the Lord in prayer:
In his arms he'll take and shield thee,
Thou wilt find a sol -- ace there. 
}
sopWordsFour = \lyricmode
{
    \set stanza = "1. "
    \set shortVocalName = \markup { \normalsize"1."}
    \override InstrumentName #'X-offset = #3
    \override InstrumentName #'font-series = #'bold
    い つ く し み ふ か き と も な る イェ ス は
つ み と が う れ い を 取 り 去 り た も う
こ こ ろ の な げ き を つ つ ま ず 述 べ て
な ど か は 下 ろ さ ぬ 負 え る お も に を
}
sopWordsFive = \lyricmode
{
    \set stanza = "2. "
    \set shortVocalName = \markup { \normalsize"2."}
    \override InstrumentName #'X-offset = #3
    \override InstrumentName #'font-series = #'bold
    い つ く し み ふ か き と も な る イェ ス は
    わ れ ら の よ わ き を し り て あ わ れ む
    な や み か な し み に し ず め る と き も
    い の り に こ た え て な ぐ さ め た ま わん
}
sopWordsSix = \lyricmode
{
    \set stanza = "3. "
    \set shortVocalName = \markup { \normalsize"3."}
    \override InstrumentName #'X-offset = #3
    \override InstrumentName #'font-series = #'bold
    い つ く し み ふ か き と も な る イェ ス は
    か わ ら ぬ あ い も て み ち び き た も う
    よ の と も わ れ ら を 棄 て 去 る と き も
    い の り に こ た え て い た わ り た ま わん
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
	    %\set Score.midiInstrument = "Church Organ"
      %\set Score.midiInstrument = "Piano"
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
	    \new Lyrics = sopranosFive { s1 }
	    \new Lyrics = sopranosSix { s1 }
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
	\context Lyrics = sopranosFive \lyricsto sopranos \sopWordsFive
	\context Lyrics = sopranosSix \lyricsto sopranos \sopWordsSix
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