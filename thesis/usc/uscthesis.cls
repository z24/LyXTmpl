%%=================================================
%% Copyright (C) 1998--2013  George F. McNulty
%% Copyright (C) 2015  Youjie Zhou
%%
%%
%% This file may be distributed and/or modified
%%
%% 1. under the LaTeX Project Public License and/or
%% 2. under the GNU Public License.
%%
%% See the file doc/licenses/LICENSE in the standard
%% LaTeX distribution for more details.
%%
%% This documentclass is intended for the typesetting
%% of theses and dissertations submitted to the 
%% Graduate School of the University of South Carolina.
%%
%% This documentclass traces its heritage to the work
%% of John P. Weiss and Bruce Fast in 1997--98 in the
%% design of their documentclass thesis.cls for theses
%% at the University of Colorado.
%%
%%==================================================




\NeedsTeXFormat{LaTeX2e}
[1994/12/01]
\ProvidesClass{uscthesis}[2013/11/20]


\newif\if@shortLoF
\newif\if@shortLoT
\newif\if@shortToC
\newif\if@makenoLoF
\newif\if@makenoLoT
\newif\if@makeOtherdegrees
\newif\if@makeAbstract
\newif\if@makeHonorsAbstract
\newif\if@makeSummary
\newif\if@makeDedication
\newif\if@makeAcknowledgments
\newif\if@makePreface
\newif\if@makeLoSymb
\newif\if@makeLoAbbrev
\newif\if@makePrologue
\newif\if@makereaderb
\newif\if@makereaderc
\newif\if@makereaderd
\newif\if@makeCopyrightpage
\newif\if@makeBinding
\@shortLoFfalse
\@shortLoTfalse
\@shortToCfalse
\@makenoLoFfalse
\@makenoLoTfalse
\@makeDedicationfalse
\@makeAcknowledgmentsfalse
\@makeProloguetrue
\@makeSummaryfalse
\@makeAbstracttrue
\@makeHonorsAbstractfalse
\@makeOtherdegreestrue
\@makereaderbfalse
\@makereadercfalse
\@makereaderdfalse
\@makeCopyrightpagefalse
\@makePrefacefalse
\@makeLoSymbfalse
\@makeLoAbbrevfalse
\@makeBindingfalse


\newcommand*{\th@Titlepage}{
        \clearpage \setcounter{page}{1}
        \DoubleSpacing
        \thispagestyle{empty}
	\vspace*{-.75in}	     %% July 2013	
        \vspace*{\fill}              %% July 2013
        \begin{center}
                {\quad{\SingleSpacing\textsc{\expandafter{\th@title}\quad\\}\quad}}\\ [-.5\baselineskip] %% 7/2013
                by\\ [.5\baselineskip]        %%Uncapitalized April 2012
                \expandafter{\th@fwdname}\\ [.5\baselineskip]
                \quad{\SingleSpacing\expandafter{\th@otherdegrees}}\quad\\ [-\baselineskip]
                \vrule width 90mm height 0.2mm\\ [.25\baselineskip]
                Submitted in Partial Fulfillment of the Requirements\\
                for the Degree of \expandafter{\th@degree} in\\ 
                \expandafter{\th@field}\\
                \expandafter{\th@college}\\
                University of South Carolina\\
                \expandafter{\th@degreeyear}\\
                Accepted by:\\
                \expandafter{\th@committee}
                \expandafter{\th@dean}, Senior Vice Provost and Dean of Graduate Studies
        \end{center}
       \vspace*{\fill}     %% 7/2013
}
 
\newcommand*{\th@TitlepageA}{
        \clearpage \setcounter{page}{1}
        \DoubleSpacing
        \thispagestyle{empty}
	\vspace*{-.75in}	%% July 2013
        \vspace*{\fill}		%% July 2013
        \begin{center}
                {\quad{\SingleSpacing\textsc{\expandafter{\th@title}\quad\\}\quad}}\\ [-.5\baselineskip] %%7/2013
                by\\ [.25\baselineskip]	%%Uncapitalized April 2012
                \expandafter{\th@fwdname}\\ 
                \quad{\SingleSpacing\expandafter{\th@otherdegrees}}\quad\\ [-\baselineskip]
                \vrule width 90mm height 0.2mm\\ [.25\baselineskip]
                Submitted in Partial Fulfillment of the Requirements\\
                for the Degree of \expandafter{\th@degree} in\\ 
                \expandafter{\th@field}\\
                \expandafter{\th@college}\\
                University of South Carolina\\
                \expandafter{\th@degreeyear}\\ 
                Accepted by:\\
                \expandafter{\th@committeeA}
        \end{center}
	\vspace*{\fill}
}



\newcommand*{\th@honorsTitlepage}{
        \clearpage \setcounter{page}{1}
        \DoubleSpacing 
        \thispagestyle{empty}
        \begin{center} 
                {\textsc{\expandafter{\th@title}}}\\
        \vfill
                By\\  
                \expandafter{\th@fwdname}\\
        \vfill
              {\SingleSpacing
                Submitted in Partial Fulfillment\\
                Of the requirements for\\
                Graduation with Honors from the\\
                South Carolina Honors College\\
              }
        \vfill
               \quad \expandafter{\th@degreemonth~\th@degreeyear}\quad\\
        \vfill
                \quad Approved:\quad\\
        \vfill
        {\SingleSpacing\expandafter{
        \setlength{\tabcolsep}{2pt}
        \begin{tabular}{c}
        \th@csignature{\th@advisor\\ \th@advisorspot}\\
        \th@csignature{\th@reader\\ Second Reader}\\
        \th@csignature{\th@schcsigner\\For South Carolina Honors College}
        \end{tabular}
        }}\\
        \end{center}
}

\newcommand*{\th@durtTitlepage}{
        \clearpage \setcounter{page}{1}
        \DoubleSpacing
        \thispagestyle{empty}
        \begin{center}
                {\quad{\SingleSpacing\textsc{\expandafter{\th@title}\quad\\}\quad}}\\ [-.5\baselineskip] %% 7/2013
                by\\ [.5\baselineskip]        %%Uncapitalized April 2012
                \expandafter{\th@fwdname}\\ [.5\baselineskip]
                Submitted in Partial Fulfillment of the Requirements\\
                for the Degree of \expandafter{\th@degree} in\\
                \expandafter{\th@field}\\
                \expandafter{\th@college}\\
                University of South Carolina\\
                \expandafter{\th@degreeyear}\\
                Accepted by:\\
        {\SingleSpacing\expandafter{
        \setlength{\tabcolsep}{2pt}
        \begin{tabular}{c}
        \th@csignature{\th@advisor\\ \th@advisorspot}\\
        \th@csignature{\th@reader\\ Second Reader}\\
        \th@csignature{\th@ugrad\\Director of Undergraduate Studies\\
Deparment of Mathematics}
        \end{tabular}
        }}\\
        \end{center}
}



\DeclareOption{forbinding}{%
\@makeAbstracttrue
\@makeBindingtrue
\renewcommand{\th@Titlepage}{\th@TitlepageA}
}%



\DeclareOption{honors}{%
\@makeAbstractfalse
\@makeSummarytrue
\@makeOtherdegreesfalse
\@makeBindingtrue
\renewcommand{\th@Titlepage}{\th@honorsTitlepage}
}%

\DeclareOption{durt}{%
\@makeAbstractfalse
\@makeSummarytrue
\@makeOtherdegreesfalse
\@makeBindingfalse
\renewcommand{\th@Titlepage}{\th@durtTitlepage}
}%



\DeclareOption{12pt}{%
\PassOptionsToClass{12pt}{memoir}
}%


\DeclareOption{extrafontsizes}{%
\PassOptionsToClass{extrafontsizes}{memoir}
}%

\DeclareOption{oneside}{%
\PassOptionsToClass{oneside}{memoir}
}%

\DeclareOption{letterpaper}{%
\PassOptionsToClass{letterpaper}{memoir}
}%

\DeclareOption{leqno}{%
\PassOptionsToClass{leqno}{memoir}
}%

\ExecuteOptions{oneside,12pt,letterpaper,extrafontsizes}

\ProcessOptions\relax

\LoadClass{memoir}


\RequirePackage{ifthen}
\RequirePackage{latexsym}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{amsmath}
\RequirePackage{array}
\RequirePackage{threeparttable}



%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% This stuff fixes the bibliography
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\bibintoc

\let\bibliofont\normalsize

\renewenvironment{thebibliography}[1]{%
%  \@bibtitlestyle
  \let\MR\relax
  \bibsection
  \normalfont\bibliofont\labelsep .5em\relax
  \renewcommand\theenumiv{\arabic{enumiv}}\let\p@enumiv\@empty
  \list{\@biblabel{\theenumiv}}{\settowidth\labelwidth{\@biblabel{#1}}%
    \leftmargin\labelwidth \advance\leftmargin\labelsep
    \usecounter{enumiv}}%
  \sloppy \clubpenalty\@M \widowpenalty\clubpenalty
  \sfcode`\.=\@m
  \SingleSpacing                            %% July 2007 adjustment
  \setlength{\parskip}{\baselineskip}     %% July 2007 adjustment
  \vspace*{-\baselineskip}                %% July 2007 adjustment
}{%
  \def\@noitemerr{\@latex@warning{Empty `thebibliography' environment}}%
  \endlist
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Page layout
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\settrims{0pt}{0pt}
\setlrmarginsandblock{1.25in}{1.25in}{*}
\if@makeBinding
\setlrmarginsandblock{1.5in}{1in}{*}
\fi
\setulmarginsandblock{1in}{1in}{*}
\setheadfoot{0.0001pt}{.5in}
\setlength{\headheight}{15pt}
\setheaderspaces{*}{0.0001pt}{*}
\checkandfixthelayout[nearest]
\fixpdflayout

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Chapter headings, section and page style
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\pagestyle{plain}

\chapterstyle{default}


\renewcommand{\chapnamefont}{\normalfont\Large\scshape\centering}
\renewcommand{\chapnumfont}{\normalfont\Large\scshape}
\renewcommand{\chaptitlefont}{\normalfont\Large\scshape\centering}
\setlength{\beforechapskip}{.5in} 
\setlength{\midchapskip}{0pt}
\setlength{\afterchapskip}{\onelineskip}

\setsecheadstyle{\scshape}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% TOC LOF LOT stuff
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand*{\cftdot}{.}                
\renewcommand*{\cftchaptername}{Chapter\space}
\renewcommand*{\cftappendixname}{Appendix\space} 
\renewcommand*{\cftfigurename}{Figure\space}
\renewcommand*{\cfttablename}{Table\space}
\renewcommand*{\cftchapterfont}{\scshape}
\renewcommand*{\cftchapterpagefont}{\normalfont}
\renewcommand*{\cftchapterleader}{\cftdotfill{5}}  
\setrmarg{4em}
\renewcommand*{\aftertoctitle}{\par \smallskip}
\renewcommand*{\afterloftitle}{\par \smallskip}
\renewcommand*{\afterlottitle}{\par \smallskip}

\renewcommand*{\cftchapterafterpnum}{\vspace{\baselineskip}} %% July 2013
\renewcommand*{\cftsectionafterpnum}{\vspace{\baselineskip}}  % July 2013
\renewcommand*{\cfttableafterpnum}{\vspace{\baselineskip}}     %% July 2013
\renewcommand*{\cftfigureafterpnum}{\vspace{\baselineskip}}    %%July 2013

\renewcommand{\contentsname}{Table of Contents\vspace{\baselineskip}}  %% July  2013
\renewcommand{\listfigurename}{List of Figures\vspace{\baselineskip}}  %% July 2013
\renewcommand{\listtablename}{List of Tables\vspace{\baselineskip}}     %July 2013



\newcommand{\Appendix}{%
   \appendix
 }

\newcommand{\Appendices}{%
  \appendices
}

%% These user commands insert headers in the table of contents, list of
%% tables etc.  For use when such lists extend to a second page.  These
%% are currently not mentioned in the documentation (2008/12/5) since 
%% the Graduate School seems, at the moment, not the require them. BUT
%% they were considering it.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcounter{ToCpage}
\setcounter{ToCpage}{\value{page}}

\renewcommand{\contentsname}{Table of Contents}  %%added 26 Nov 2012

\newcommand{\tableofcontentsheader}{%
\addtocontents{toc}{\newpage}
\addtocontents{toc}{\noindent\textsc{Table of Contents (Continued)}\endgraf}
\addtocontents{toc}{\noindent\textsc{Chapter}\hfill \textsc{Page}}
}
\newcommand{\listoffiguresheader}{%
\addtocontents{lof}{\newpage}
\addtocontents{lof}{\noindent\textsc{List of Figures (Continued)}\endgraf}
\addtocontents{lof}{\noindent\textsc{Figure}\hfill \textsc{Page}}
}
\newcommand{\liftoftablesheader}{%
\addtocontents{lot}{\newpage}
\addtocontents{lot}{\noindent\textsc{List of Tables (Continued)}\endgraf}
\addtocontents{lot}{\noindent\textsc{Table}\hfill \textsc{Page}}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%  This stuff on the prologue pages adapted from the
%%%  University of Colorado thesis.sty

% THESIS PROLOGUE PAGES.

% Stores the second arg in the command specified by the first arg.

\newcommand{\th@StoreIn}[2]{ \gdef#1{#2} }

% Default values of storage variables.  Emits an error message.
% This part of the class is long...

\newcommand*{\th@title}{
	\ClassError{uscthesis}{
		You must specify a title!}
	{Use the \protect\title{} command in the preamble.}
}
\newcommand*{\th@dean}{
        \ClassError{uscthesis}{
                You must specify the name of the Dean of Graduate Studies \MessageBreak
                and full title.}
        {Use the \protect\dean{} command in the \MessageBreak
                preamble.}
}
 
\newcommand*{\th@advisor}{
	\ClassError{uscthesis}{
		You must specify your research advisor's name \MessageBreak
		and full title.}
	{Use the \protect\advisor{}{}{} command in the \MessageBreak
		preamble.  The first arg is your advisor's \MessageBreak
		full title.  The second arg is your advisor's \MessageBreak
		name.}
}
\newcommand*{\th@advisortitle}{
	\ClassError{uscthesis}{
		You must specify your research advisor's name \MessageBreak
		and full title, as well as position on the committee.}
	{Use the \protect\advisor{}{}{} command in the \MessageBreak
		preamble.  The first arg is your advisor's \MessageBreak
		full title.  The second arg is your advisor's \MessageBreak
		name. The third arg is your advisor's\MessageBreak 
                position on the committee.}
}
\newcommand*{\th@advisorspot}{
	\ClassError{uscthesis}{
		You must specify your research advisor's name \MessageBreak
		and full title, as well as position on the committee.}
	{Use the \protect\advisor{}{}{} command in the \MessageBreak
		preamble.  The first arg is your advisor's \MessageBreak
		full title.  The second arg is your advisor's \MessageBreak
		name. The third arg is your advisor's\MessageBreak
                position on the committee.}
}


 
\newcommand*{\th@readera}{
        \ClassError{uscthesis}{
                You must specify your committee member's name \MessageBreak
                and full title, as well as position on your committee.}
        {Use the \protect\readera{}{}{} command in the \MessageBreak
                preamble.  The first arg is your reader's \MessageBreak
                full title.  The second arg is your reader's \MessageBreak
                name. The third arg is your reader's\MessageBreak
                position on your committee.}
}
\newcommand*{\th@readerb}{
        \ClassError{uscthesis}{
                You must specify your committee member's name \MessageBreak
                and full title, as well as position on your committee.}
        {Use the \protect\readerb{}{}{} command in the \MessageBreak
                preamble.  The first arg is your reader's \MessageBreak
                full title.  The second arg is your reader's \MessageBreak
                name. The third arg is your reader's\MessageBreak
                position on your committee.}
}
\newcommand*{\th@readerc}{
        \ClassError{uscthesis}{
                You must specify your committee member's name \MessageBreak
                and full title, as well as position on your committee.}
        {Use the \protect\readerc{}{}{} command in the \MessageBreak
                preamble.  The first arg is your reader's \MessageBreak
                full title.  The second arg is your reader's \MessageBreak
                name. The third arg is your reader's\MessageBreak
                position on your committee.}
}
\newcommand*{\th@readerd}{
        \ClassError{uscthesis}{
                You must specify your committee member's name \MessageBreak
                and full title, as well as position on your committee.}
        {Use the \protect\readerd{}{}{} command in the \MessageBreak
                preamble.  The first arg is your reader's \MessageBreak
                full title.  The second arg is your reader's \MessageBreak
                name. The third arg is your reader's\MessageBreak
                position on your committee.}
}
\newcommand*{\th@readeratitle}{
        \ClassError{uscthesis}{
                You must specify your committee member's name \MessageBreak
                and full title, as well as position on your committee.}
        {Use the \protect\readera{}{}{} command in the \MessageBreak
                preamble.  The first arg is your reader's \MessageBreak
                full title.  The second arg is your reader's \MessageBreak
                name. The third arg is your reader's\MessageBreak
                position on your committee.}
}
\newcommand*{\th@readerbtitle}{
        \ClassError{uscthesis}{
                You must specify your committee member's name \MessageBreak
                and full title, as well as position on your committee.}
        {Use the \protect\readerb{}{}{} command in the \MessageBreak
                preamble.  The first arg is your reader's \MessageBreak
                full title.  The second arg is your reader's \MessageBreak
                name. The third arg is your reader's\MessageBreak
                position on your committee.}
}
\newcommand*{\th@readerctitle}{
        \ClassError{uscthesis}{
                You must specify your committee member's name \MessageBreak
                and full title, as well as position on your committee.}
        {Use the \protect\readera{}{}{} command in the \MessageBreak
                preamble.  The first arg is your reader's \MessageBreak
                full title.  The second arg is your reader's \MessageBreak
                name. The third arg is your reader's\MessageBreak
                position on your committee.}
}
\newcommand*{\th@readerdtitle}{
        \ClassError{uscthesis}{
                You must specify your committee member's name \MessageBreak
                and full title, as well as position on your committee.}
        {Use the \protect\readera{}{}{} command in the \MessageBreak
                preamble.  The first arg is your reader's \MessageBreak
                full title.  The second arg is your reader's \MessageBreak
                name. The third arg is your reader's\MessageBreak
                position on your committee.}
}
 
\newcommand*{\th@readeraspot}{
        \ClassError{uscthesis}{
                You must specify your committee member's name \MessageBreak
                and full title, as well as position on your committee.}
        {Use the \protect\readera{}{}{} command in the \MessageBreak
                preamble.  The first arg is your reader's \MessageBreak
                full title.  The second arg is your reader's \MessageBreak
                name. The third arg is your reader's\MessageBreak
                position on your committee.}
}
\newcommand*{\th@readerbspot}{
        \ClassError{uscthesis}{
                You must specify your committee member's name \MessageBreak
                and full title, as well as position on your committee.}
        {Use the \protect\readerb{}{}{} command in the \MessageBreak
                preamble.  The first arg is your reader's \MessageBreak
                full title.  The second arg is your reader's \MessageBreak
                name. The third arg is your reader's\MessageBreak
                position on your committee.}
}
\newcommand*{\th@readercspot}{
        \ClassError{uscthesis}{
                You must specify your committee member's name \MessageBreak
                and full title, as well as position on your committee.}
        {Use the \protect\readera{}{}{} command in the \MessageBreak
                preamble.  The first arg is your reader's \MessageBreak
                full title.  The second arg is your reader's \MessageBreak
                name. The third arg is your reader's\MessageBreak
                position on your committee.}
}
\newcommand*{\th@readerdspot}{
        \ClassError{uscthesis}{
                You must specify your committee member's name \MessageBreak
                and full title, as well as position on your committee.}
        {Use the \protect\readera{}{}{} command in the \MessageBreak
                preamble.  The first arg is your reader's \MessageBreak
                full title.  The second arg is your reader's \MessageBreak
                name. The third arg is your reader's\MessageBreak
                position on your committee.}
}
 
\newcommand*{\th@reader}{
        \ClassError{thesis}{
                You must specify your Second Reader's name \MessageBreak
                and full title.}
        {Use the \protect\reader{}{} command in the \MessageBreak
                preamble.  The first arg is your reader's \MessageBreak
                full title.  The second arg is your reader's \MessageBreak
                name.}
}



\newcommand*{\th@readertitle}{
        \ClassError{uscthesis}{
                You must specify your  reader's name \MessageBreak
                and full title.}
        {Use the \protect\reader{}{} command in the \MessageBreak
                preamble.  The first arg is your reader's \MessageBreak
                full title.  The second arg is your reader's \MessageBreak
     		name.}
}
\newcommand*{\th@schcsigner}{
	\ClassError{uscthesis}{
		You must specify who will sign for the Honors College.}
	{Use the \protect\schcsigner{}{} command in the preamble.}
}
\newcommand*{\th@schcsignertitle}{
        \ClassError{uscthesis}{
                You must specify your  reader's name \MessageBreak
                and full title.}
        {Use the \protect\schcsigner{}{} command in the \MessageBreak
                preamble.  The first arg is your signer's \MessageBreak
                full title.  The second arg is your signer's \MessageBreak
     		name.}
}

\newcommand*{\th@fwdname}{
	\ClassError{uscthesis}{
		You must specify your name!}
	{Use the \protect\author{}{} command in the \MessageBreak
		preamble. The first arg is your first name and \MessageBreak
		middle initial.  The second arg is your last name.}
}
\newcommand{\th@otherdegrees}{
	\ClassError{uscthesis}{
		You must specify other degrees you hold!}
	{Use the \protect\otherdegrees{} command in the \MessageBreak
		preamble.  Break each line using the \protect\\ \MessageBreak
		command.}
}
\newcommand{\th@abstractStash}{
        \if@makeAbstract
	\ClassError{uscthesis}{
		You must specify an abstract!}
	{Use the \protect\abstractpage[]{} command in the \MessageBreak
		preamble.  If your abstract runs over a page, \MessageBreak
		use the optional argument with the word 'long'.}
         \fi
}
\newcommand{\th@honorsabstractStash}{
        \if@makeHonorsAbstract
	\ClassError{uscthesis}{
		You must specify an abstract!}
	{Use the \protect\abstractpage[]{} command in the \MessageBreak
		preamble.  If your abstract runs over a page, \MessageBreak
		use the optional argument with the word 'long'.}
         \fi
}
\newcommand*{\th@degreeyear}{						
	\ClassError{uscthesis}{
		You must specify the year of your degree!}
	{Use the \protect\date{} command in the preamble.}
}

\newcommand*{\th@degreemonth}{
        \ClassWarning{uscthesis}{
                Those preparing Honors Theses must specify the
                month of graduation! Use \protect\month{} in
                the preamble}
}

\newcommand*{\th@degree}{                                               
        \ClassError{uscthesis}{
                You must specify the degree!}
        {Use the \protect\degree{} command in the preamble.}
}
\newcommand*{\th@field}{                                                
        \ClassError{uscthesis}{
                You must specify the field of your degree!}
        {Use the \protect\field{} command in the preamble.}
}
\newcommand*{\th@college}{                                              
        \ClassError{uscthesis}{
                You must specify the college of your degree!}
        {Use the \protect\college{} command in the preamble.}
}


\newcommand*{\th@signature}[2]{%
		\begin{tabular*}{1.5in}[t]{l}
		#1\\ 
		#2\\ 
                \end{tabular*}
}
\newcommand*{\th@csignature}[1]{%
                \begin{tabular*}{2.45in}[t]{c}
                \noalign{\vspace*{16mm}}        % works well?
                %\hline
                \rule{2.45in}{0pt}\\     
                \noalign{\vspace*{-12pt}}
                 #1\\
                \end{tabular*}
}

\newcommand*{\th@dateline}{
	\vspace*{9mm}
	\begin{flushright}
		Date~{\vrule width 35mm height 0.2mm}
	\end{flushright}
}
\newcommand{\th@AbstractPageStyle}{\relax}
\newcommand{\th@summaryStash}{\relax}
\newcommand{\th@dedicationStash}{\relax}
\newcommand{\th@dedicationTitleStash}{\relax}
\newcommand{\th@acknowledgmentsStash}{\relax}
\newcommand{\th@copyrightpageStash}{\relax}
\newcommand{\th@prefaceStash}{\relax}
\newcommand{\th@losymbStash}{\relax}
\newcommand{\th@loabbrevStash}{\relax}


\newboolean{@makeLoF}
\newboolean{@makeLoT}

\th@StoreIn{\th@committee}{%
\expandafter{\th@advisor}, \expandafter{\th@advisorspot}\\
\expandafter{\th@readera}, \expandafter{\th@readeraspot}\\   
\if@makereaderb\expandafter{\th@readerb}, \expandafter{\th@readerbspot}\\ \fi
\if@makereaderc\expandafter{\th@readerc}, \expandafter{\th@readercspot}\\ \fi
\if@makereaderd\expandafter{\th@readerd}, \expandafter{\th@readerdspot}\\ \fi
}
 
\th@StoreIn{\th@committeeA}{%
	{\SingleSpacing%\expandafter{%
        \vspace*{10mm}
	\setlength{\tabcolsep}{2pt}	
	\begin{tabular}{lcr}
        \th@signature{\expandafter\th@advisor}{\expandafter{\th@advisorspot}}&%
        \hspace*{.88in}&\th@signature{\expandafter\th@readera}{\expandafter{\th@readeraspot}}\\   
	\noalign{\vspace*{10mm}}
	\if@makereaderb
	\th@signature{\expandafter\th@readerb}{\expandafter{\th@readerbspot}}&&
	\if@makereaderc
			\th@signature{\expandafter\th@readerc}{\expandafter{\th@readercspot}}\fi \\ 
        \fi
	\if@makereaderd
	\noalign{\vspace*{10mm}}
	\th@signature{\expandafter\th@readerd}{\expandafter{\th@readerdspot}}&&\\
	\fi
	\end{tabular}\\
	\vspace*{10mm}
       \th@signature{\expandafter\th@dean}{Vice Provost and\\ Dean of Graduate Studies} %% Added July 06 2015
	}%}

}

% The base commands that make all of the prologue pages.




\newcommand{\th@Abstractpage}{
        \if@makeAbstract
		\clearpage\thispagestyle{plain}
		{\chapter{Abstract}}
		{\DoubleSpacing
		\th@abstractStash}
	\fi
}
\newcommand{\th@HonorsAbstractpage}{
        \if@makeHonorsAbstract \typeout{Making Honors Abstract}
		\clearpage\thispagestyle{plain}
		{\chapter{Abstract}}
		{\DoubleSpacing
		\th@honorsabstractStash}
	\fi
}
\newcommand{\th@Summarypage}{
        \if@makeSummary \typeout{Making Summary}
                \clearpage\thispagestyle{plain}
                {\chapter{Thesis Summary}}
                {\DoubleSpacing
                \th@summaryStash}
        \fi
}
\newcommand{\th@Copyrightpage}{
	\if@makeCopyrightpage \typeout{Making Copyrightpage}
		\clearpage\thispagestyle{plain}
		{\SingleSpacing			%% April 2012
		\th@copyrightpageStash}
	\fi
}
\newcommand{\th@Dedicationpage}{
	\if@makeDedication \typeout{Making Dedication}
		\clearpage\thispagestyle{plain}
		{\chapter{Dedication}}
		{\DoubleSpacing
		\th@dedicationStash}
	\fi
}
\newcommand{\th@Acknowledgmentpage}{
	\if@makeAcknowledgments \typeout{Making Acknowledgments}
		\clearpage\thispagestyle{plain}
		\chapter{Acknowledgments}
		{\DoubleSpacing
		\th@acknowledgmentsStash}
	\fi
}
\newcommand{\th@Prefacepage}{
	\if@makePreface \typeout{Making Preface}
	\clearpage\thispagestyle{plain}
	\chapter{Preface}
	{\DoubleSpacing
	\th@prefaceStash}
	\fi
}
\newcommand{\th@ToCpage}{
	\setcounter{ToCpage}{\value{page}}
    \renewcommand{\contentsname}{Table of Contents}  %% Added July 06 2015
	{\clearpage\SingleSpacing\tableofcontents*\clearpage}  %%7/2013
}
\newcommand{\th@LoFpage}{
\ifthenelse{\boolean{@makeLoF}}
{%
\typeout{Making LoF}
\clearpage\SingleSpacing\listoffigures\clearpage %% 7/2013
}
{\typeout{Skipping LoF}}
}
\newcommand{\th@LoTpage}{
\ifthenelse{\boolean{@makeLoT}}
{%
\typeout{Making LoT}
\clearpage\SingleSpacing\listoftables\clearpage  %% 7/2013
}
{\typeout{Skipping LoT}}
}
\newcommand{\th@LoSymbpage}{
	\if@makeLoSymb \typeout{Making List of Symbols}
	\clearpage\thispagestyle{plain}
	\chapter{List of Symbols}
	{\DoubleSpacing
	\th@losymbStash}
	\fi
}
\newcommand{\th@LoAbbrevpage}{
	\if@makeLoAbbrev \typeout{Making List of Abbreviations}
	\clearpage\thispagestyle{plain}
	\chapter{List of Abbreviations}
	{\DoubleSpacing
	\th@loabbrevStash}
	\fi
}



   
   
% This performs the actual generation of the prologue

\newcounter{th@storepage}
\newcommand{\th@MakeThesisPrologue}{
	\if@makePrologue
		\frontmatter
                \pagenumbering{roman}
		\typeout{Making Title Page}
		\th@Titlepage
                \th@Copyrightpage
		\th@Dedicationpage
		\th@Acknowledgmentpage
		\typeout{Making Abstract Page}
		\th@Abstractpage
		\th@Prefacepage
		\setcounter{th@storepage}{\value{page}}
		\typeout{Making ToC Page}
		\th@ToCpage
		\th@LoTpage
                \th@LoFpage
		\th@LoSymbpage
		\th@LoAbbrevpage
                \th@Summarypage
		\th@HonorsAbstractpage
	\fi
}


% Make the generator-command the very first command of the document.


\AtBeginDocument{\setlength{\footnotesep}{1.2\baselineskip}}



\let\th@OldBeginDocument\document
\renewcommand*{\document}{
	\th@OldBeginDocument
	\th@MakeThesisPrologue
        \typeout{}
	\typeout{}
	\typeout{-------------------Beginning Body----------------------}
	\typeout{}
	\typeout{}
        \mainmatter
	\DoubleSpacing
	\clearpage
	\pagenumbering{arabic}
}

% USER COMMANDS FOR CONTROLLING THE PROLOGUE.

\renewcommand*{\title}[1]{\th@StoreIn{\th@title}{#1\\}}
\title{My most Impressive Ideas}
\newcommand{\otherdegrees}[1]{\th@StoreIn{\th@otherdegrees}{#1}}
\otherdegrees{Harvard of course\\}
\newcommand{\acknowledgments}[1]{
	\@makeAcknowledgmentstrue
	\th@StoreIn{\th@acknowledgmentsStash}{\input #1\relax}
}
\newcommand{\copyrightpage}{
        \@makeCopyrightpagetrue
        \th@StoreIn{\th@copyrightpageStash}
        {%
\vspace*{7.5in}
\begin{center}
$\copyright$ Copyright by \expandafter\th@fwdname, \expandafter\th@degreeyear\\
All Rights Reserved.\\
\end{center} 
}
}
\newcommand{\dedication}[1]{
	\@makeDedicationtrue
	\th@StoreIn{\th@dedicationStash}{\input #1\relax}
}
\newcommand{\preface}[1]{
	\@makePrefacetrue
	\th@StoreIn{\th@prefaceStash}{\input #1\relax}
}
\newcommand{\listofsymbols}[1]{
	\@makeLoSymbtrue
	\th@StoreIn{\th@losymbStash}{\input #1\relax}
}
\newcommand{\listofabbreviations}[1]{
	\@makeLoAbbrevtrue
	\th@StoreIn{\th@loabbrevStash}{\input #1\relax}
}
\newcommand{\summary}[1]{
        \@makeSummarytrue
        \th@StoreIn{\th@summaryStash}{\input #1\relax}
}
\renewcommand*{\date}[1]{\th@StoreIn{\th@degreeyear}{#1}}
\renewcommand*{\month}[1]{\th@StoreIn{\th@degreemonth}{#1}}
\renewcommand*{\author}[2]{
	\th@StoreIn{\th@fwdname}{#1 #2}
	\th@StoreIn{\th@revname}{#2, #1}
}
\newcommand*{\college}[1]{
        \th@StoreIn{\th@college}{#1}
}
\newcommand*{\field}[1]{
        \th@StoreIn{\th@field}{#1}
}
\newcommand*{\degree}[1]{
        \th@StoreIn{\th@degree}{#1}
}
\newcommand*{\dean}[1]{
        \th@StoreIn{\th@dean}{#1}
}
\newcommand*{\advisor}[3]{
	\th@StoreIn{\th@advisor}{#2}
	\th@StoreIn{\th@advisortitle}{#1}
        \th@StoreIn{\th@advisorspot}{#3}
}
\newcommand*{\readera}[3]{
        \th@StoreIn{\th@readera}{#2}
        \th@StoreIn{\th@readeratitle}{#1}
	\th@StoreIn{\th@readeraspot}{#3}
}
\newcommand*{\readerb}[3]{
        \@makereaderbtrue 
        \th@StoreIn{\th@readerb}{#2}
        \th@StoreIn{\th@readerbtitle}{#1}
	\th@StoreIn{\th@readerbspot}{#3}
}
\newcommand*{\readerc}[3]{
        \@makereaderctrue 
        \th@StoreIn{\th@readerc}{#2}
        \th@StoreIn{\th@readerctitle}{#1}
	\th@StoreIn{\th@readercspot}{#3}
}
\newcommand*{\readerd}[3]{
        \@makereaderdtrue 
        \th@StoreIn{\th@readerd}{#2}
        \th@StoreIn{\th@readerdtitle}{#1}
	\th@StoreIn{\th@readerdspot}{#3}
}
\newcommand*{\reader}[2]{
        \th@StoreIn{\th@reader}{#2}
        \th@StoreIn{\th@readertitle}{#1}
}
\newcommand*{\schcsigner}[2]{
        \th@StoreIn{\th@schcsigner}{#2}
        \th@StoreIn{\th@schcsignertitle}{#1}
}
\renewcommand{\abstract}[2][long]{
        \@makeAbstracttrue
	\ifthenelse{\equal{#1}{short}}{\relax}{
		\th@StoreIn{\th@AbstractPageStyle}{\thispagestyle{empty}}
	}
	\th@StoreIn{\th@abstractStash}{\input #2\relax}
}
\newcommand*{\honorsabstract}[1]{
        \@makeHonorsAbstracttrue
	\th@StoreIn{\th@honorsabstractStash}{\input #1\relax}
}
\newcommand*{\SuspendPrologue}{
	\@makeProloguefalse
	\typeout{No prologue pages printed.}
}

\newcommand*{\makeLoF}{\setboolean{@makeLoF}{true}}
\newcommand*{\emptyLoF}{
	\@makenoLoFtrue
	\typeout{No LoF printed}
}
\newcommand*{\makeLoT}{\setboolean{@makeLoT}{true}}
\newcommand*{\emptyLoT}{
	\@makenoLoTtrue
	\typeout{No LoT printed}
}
\newcommand*{\ToCisShort}{
	\@shortToCtrue
	\typeout{Putting page number on short ToC}
}
\newcommand*{\LoFisShort}{
	\@shortLoFtrue
	\typeout{Putting page number on short LoF}
}
\newcommand*{\LoTisShort}{
	\@shortLoTtrue
	\typeout{Putting page number on short LoT}
}

%%This environment doesn't work right
%\newenvironment*{singlespaced}{\vspace{-\onelineskip}\begingroup\SingleSpacing}
%{\endgroup\DoubleSpacing}

\newcommand{\mymainmatter}{%
  \@ifstar{\@mysmemmain}{\@mymemmain}}
\newcommand*{\@mysmemmain}{%
  \@mainmattertrue
  \setcounter{secnumdepth}{\value{maxsecnumdepth}}
    \counterwithin{figure}{chapter}
    \counterwithin{table}{chapter}
   }

\newcommand{\@mymemmain}{%
  \@mysmemmain\pagenumbering{arabic}}


\newcommand{\Chaptero}[1]{%
\newcounter{pagesave}
\setcounter{pagesave}{\thepage}
\backmatter
\chapter{#1}
\mymainmatter
\setcounter{page}{\thepagesave}
}
 
\newcommand*{\tighttoc}{%
\renewcommand{\contentsname}{Contents \vspace{-.57\baselineskip}}
}

\newenvironment{threepartfigure}[1][t]{%
 \relax \ifvmode \noindent \fi   
 \TPT@common{threeparttable}{#1}%
 \@ifundefined{@captype}{\def\@captype{figure}}{}%
 \let\TPT@LA@label\label
 \let\TPT@LA@caption\@caption \let\@caption\TPT@caption
 \let\TPT@begintabhook\TPT@begintabbox
 \let\TPT@tabarghook\TPT@tabargset
 \TPT@hookin{tabular}%     
 \TPT@hookarg{tabular*}%
 \TPT@hookarg{tabularx}%
 \let\TPToverlap\relax
\setlength{\tabcolsep}{0pt}}%
{\TPT@close}

\captionstyle{\raggedright}
\captiondelim{\quad}


%% The piece above is intended to make figure captions
%% work as the Graduate School wants  2012-04-20




\endinput
%% End of file ``uscthesis.cls''


