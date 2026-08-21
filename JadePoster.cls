\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{JadePoster}[2026 Jade Poster]

% ------------------------ %
% Optionen für die Klasse
% ------------------------ %

\newif\ifbilder
\newif\ifcode

\bilderfalse
\codefalse

\DeclareOption{bilder}{\bildertrue}
\DeclareOption{code}{\codetrue}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}

\ProcessOptions\relax

% ----------------------------------------------------------------------
% Basisklasse
% ----------------------------------------------------------------------

\LoadClass[final]{beamer}

\RequirePackage[
	size=a1,
	orientation=portrait,
	scale=1.2
]{beamerposter}




% -------------------------------- %
% Makros und Setter für Metadaten
% -------------------------------- %

\newcommand{\studiengang}{}
\newcommand{\modul}{}
\newcommand{\prüfungsart}{}
\newcommand{\titel}{}
\newcommand{\untertitel}{}
\newcommand{\betreuer}{}
\newcommand{\autor}{}
\newcommand{\kontakt}{}
\newcommand{\ort}{}
\newcommand{\semester}{}
\newcommand{\semesterkurz}{}

\newcommand{\Studiengang}[1]{\renewcommand{\studiengang}{#1}}
\newcommand{\Modul}[1]{\renewcommand{\modul}{#1}}
\newcommand{\Prüfungsart}[1]{\renewcommand{\prüfungsart}{#1}}
\newcommand{\Titel}[1]{\renewcommand{\titel}{#1}}
\newcommand{\Untertitel}[1]{\renewcommand{\untertitel}{#1}}
\newcommand{\Betreuer}[1]{\renewcommand{\betreuer}{#1}}
\newcommand{\Autor}[1]{\renewcommand{\autor}{#1}}
\newcommand{\Kontakt}[1]{\renewcommand{\kontakt}{#1}}
\newcommand{\Ort}[1]{\renewcommand{\ort}{#1}}
\newcommand{\Semester}[1]{\renewcommand{\semester}{#1}}
\newcommand{\Semesterkurz}[1]{\renewcommand{\semesterkurz}{#1}}

\title{\titel}
\subtitle{\untertitel}
\author{\autor}
\institute[Jade HS]{Jade Hochschule}
\date[\semesterkurz]{\ort, \semester}

% ------------------ %
% Geladene Packages
% ------------------ %

\RequirePackage{jadecommon}
\RequirePackage{jadeposterlayout}

\ifbilder
    \RequirePackage{jadetikz}
\fi

\ifcode
    \RequirePackage{jadecode}
\fi


% ------------ %
% Beamertheme
% ------------ %

%\usetheme{Jade}