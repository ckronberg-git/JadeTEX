\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{JadeArticle}[2026 Jade Article Class]

% ------------------------ %
% Optionen für die Klasse
% ------------------------ %

\newif\ifbilder
\newif\ifcode
\newif\ifaufgaben
\newif\iftheoreme

\bilderfalse
\codefalse
\aufgabenfalse
\theoremefalse

\DeclareOption{bilder}{\bildertrue}
\DeclareOption{code}{\codetrue}
\DeclareOption{aufgaben}{\aufgabentrue}
\DeclareOption{theoreme}{\theoremetrue}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrartcl}}

\ProcessOptions\relax

% ------------------------ %
% Basisklasse
% ------------------------ %

\LoadClass{scrartcl}

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
\author{\dozent}

% ------------------ %
% Geladene Packages
% ------------------ %

\RequirePackage{jadecommon}

\RequirePackage{jadearticlelayout}

\ifbilder
    \RequirePackage{jadetikz}
\fi

\ifcode
    \RequirePackage{jadecode}
\fi

\ifaufgaben
    \RequirePackage{jadeexercises}
\fi

\iftheoreme
    \RequirePackage{jadetheorems}
\fi

\RequirePackage[pdfborder={0 0 0}]{hyperref}