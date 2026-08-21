% !TeX TXS-program:compile = txs:///xelatex
% !TeX documentclass = beamer

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{JadeBeamer}[2026 Jade Beamer Class]

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

% ----------- %
% Basisklasse
% ----------- %

\LoadClass[final]{beamer}

% -------------------------------- %
% Makros und Setter für Metadaten
% -------------------------------- %

\newcommand{\fach}{}
\newcommand{\thema}{}
\newcommand{\dozent}{}
\newcommand{\email}{}
\newcommand{\ort}{}
\newcommand{\semester}{}
\newcommand{\semesterkurz}{}

\newcommand{\Fach}[1]{\renewcommand{\fach}{#1}}
\newcommand{\Thema}[1]{\renewcommand{\thema}{#1}}
\newcommand{\Dozent}[1]{\renewcommand{\dozent}{#1}}
\newcommand{\Kontakt}[1]{\renewcommand{\email}{#1}}
\newcommand{\Ort}[1]{\renewcommand{\ort}{#1}}
\newcommand{\Semester}[1]{\renewcommand{\semester}{#1}}
\newcommand{\Semesterkurz}[1]{\renewcommand{\semesterkurz}{#1}}

\title{\fach}
\subtitle{\thema}
\author{\dozent}
\institute[Jade HS]{Jade Hochschule}
\date[\semesterkurz]{\ort, \semester}

% ------------------ %
% Geladene Packages
% ------------------ %

\RequirePackage{jadecommon}
\RequirePackage{jadedates}

\ifbilder
    \RequirePackage{jadetikz}
\fi

\ifcode
    \RequirePackage{jadecode}
\fi

% ------------ %
% Beamertheme
% ------------ %

\usetheme{Jade}

