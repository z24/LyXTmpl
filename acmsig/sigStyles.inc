# We need two new commands to set conf and confinfo
Preamble
    \def\SetConf#1{\global\conf={#1,}}
    \def\SetConfInfo#1{\global\confinfo{#1.}}
	\DeclareFixedFont{\auacc}{OT1}{phv}{m}{n}{12}   % Needed for "Author Block" accents - Patch by Gerry 3/21/07
	\DeclareFixedFont{\afacc}{OT1}{phv}{m}{n}{10}   % Needed for "Author Block" accents in the affiliation/address line - Patch by Gerry 3/21/07
EndPreamble

# There are no chapters in SIG proceedings.

NoStyle Chapter
NoStyle Chapter*

SecNumDepth		3
TocDepth		3

Columns         2
Sides           1

Style Keywords
	InTitle				  0
	Margin                First_Dynamic
	NextNoIndent          1
	LatexType             Command
	LatexName             keywords
	LabelType             Static
	LabelSep              M
	LabelString           "Keywords:"
	LabelFont
	  Series              Bold
	EndFont
End

Style Terms
	InTitle				  0
	Margin                First_Dynamic
	NextNoIndent          1
	LatexType             Command
	LatexName             terms
	LabelType             Static
	LabelSep              M
	LabelString           "Terms:"
	LabelFont
	  Series              Bold
	EndFont
End

Style CopyrightYear
	InTitle				  1
	Margin                First_Dynamic
	NextNoIndent          1
	LatexType             Command
	LatexName             CopyrightYear
	LabelType             Static
	LabelSep              M
	LabelString           "Copyright Year:"
	LabelFont
	  Series              Bold
	EndFont
End

Style Conference
	InTitle				  1
	Margin                First_Dynamic
	NextNoIndent          1
	LatexType             Command
	LatexName             SetConf
	LabelType             Static
	LabelSep              M
	LabelString           "Conference:"
	LabelFont
	  Series              Bold
	EndFont
End

Style ConferenceInfo
	InTitle				  1
	Margin                First_Dynamic
	NextNoIndent          1
	LatexType             Command
	LatexName             SetConfInfo
	LabelType             Static
	LabelSep              M
	LabelString           "Conference Info:"
	LabelFont
	  Series              Bold
	EndFont
End

Style crdata
	InTitle				  1
	Margin                First_Dynamic
	NextNoIndent          1
	LatexType             Command
	LatexName             crdata
	LabelType             Static
	LabelSep              M
	LabelString           "crdata:"
	LabelFont
	  Series              Bold
	EndFont
End
