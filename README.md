# Jade LaTeX Template

LaTeX-Klassen und Pakete für die Erstellung von Dokumenten und Präsentationen im Jade-Hochschule-Layout.

## Aufbau

Der Ordner ist als lokaler **TEXMF-Baum** für MiKTeX eingerichtet.

JadeTEXMF/
├── README.md
├── CHANGELOG.md
└── tex/
    └── latex/
        └── jade/
            ├── JadeArticle.cls
            ├── JadeBeamer.cls
            ├── beamerthemeJade.sty
            ├── jadearticlelayout.sty
            ├── jadecode.sty
            ├── jadecommon.sty
            ├── jadedates.sty
            ├── jadedesign.sty
            ├── jadeexcercises.sty
            ├── jademath.sty
            ├── jadesymbols.sty
            ├── jadetables.sty
            ├── jadetext.sty
            ├── jadetheorems.sty
            ├── jadetikz.sty
            ├── jadelogo.jpg


Die Klassen und Pakete können dadurch projektunabhängig von MiKTeX gefunden werden.

## Verwendung

### Beamer-Präsentation

\documentclass[
	aspectratio=32,
	10pt,          
	hyphens
]{JadeBeamer}

\input{metadaten}

\begin{document}

\input{inhalt}

\end{document}

empfohlene Standardoptionen für das Layout der Jade-HS-Folien sind 
- aspectratio=32: Folienformat
	möglich:  169, 1610, 149, 54, 32 und 43
	Standard: 4:3
- 10pt: Schriftgröße
	Standard: 11pt
- hyphens: URLs an Bindestrichen trennen
	verhindert Option Clash von url und hyperref

Zusätzliche Funktionen können bei Bedarf über Klassenoptionen aktiviert werden, beispielsweise:

\documentclass[bilder, code]{JadeBeamer}

- bilder: lädt jadetikz.sty und Optionen für Grafiken mit TikZ
- code:	  lädt jadecode.sty und Optionen für das Setzen von Code	

### Artikel

\documentclass[
	paper=a4,      
	fontsize=11pt,  
	DIV=calc,       
]{JadeArticle}

\input{metadaten}

\begin{document}

\input{inhalt}

\end{document}

08:45 10.08.2026
empfohlene Standardoptionen für das Layout der Jade-HS-Dokumente sind 
- paper=a4: 	 Papierformat
- fontsize=11pt: Schriftgröße
- DIV=calc: 	 Einstellungen für den Satzspiegel

Zusätzliche Funktionen können bei Bedarf über Klassenoptionen aktiviert werden, beispielsweise:

\documentclass[bilder, code]{JadeArticle}

- bilder:   lädt jadetikz.sty und Optionen für Grafiken mit TikZ
- code:	    lädt jadecode.sty und Optionen für das Setzen von Code	
- aufgaben: lädt jadeexercises.sty Für Aufgaben mit exsheets
- theoreme: lädt jadetheorems.sty und Theoremumgebungen 

## Metadaten

Pro Projekt werden die projektspezifischen Angaben in einer eigenen Datei `metadaten.tex`, gesetzt:

\Fach{Mathematik I}
\Thema{Analysis und Lineare Algebra}
\Dozent{Max Mustermann}
\Kontakt{max.mustermann@jade-hs.de}
\Ort{Oldenburg}
\Semester{Wintersemester 2026/27}
\Semesterkurz{WS 2026/27}

Dadurch bleiben die Hauptdateien schlank und die Klassen bleiben unabhängig von einzelnen Veranstaltungen.

## Schriften

Das Jade-Template verwendet die **NDS Frutiger**-Schriften. Diese müssen auf dem Windows-System installiert sein, damit XeLaTeX sie über `fontspec` bzw. `jadefonts.sty` finden kann.

Benötigt werden insbesondere:

- NDSFrutiger 45 Light: normaler Text 
- Exo 2 Regular: Überschriften
- Nothing You Could Do: Handschrift

Die Schriftdateien werden **nicht** im TEXMF-Baum abgelegt. Stattdessen müssen sie unter Windows als TrueType-Schriften (`.ttf`) installiert sein.

Die .ttf-Dateien finden sich im Ordner `fonts`. Die Dateinamen der installierten Schriften passen dabei zu den in `jadefonts.sty` verwendeten Font-Namen, z. B.:

ndsfrutiger45light.ttf
ndsfrutiger45lightitalic.ttf
ndsfrutiger45lightbold.ttf

Die Fallback-Option für das Verwenden der ttf-Dateien, falls keine Installation unter Windows möglich ist, muss entsprechend zum System angepasst werden.

## Installation unter MiKTeX

Der Ordner `JadeTEXMF` wird in MiKTeX als **zusätzlicher TEXMF-Root** eingetragen.

Wichtig ist, dass MiKTeX auf den Ordner zeigt, der die Unterstruktur

tex/latex/jade/

enthält.

Nach Änderungen an der Installation kann es notwendig sein, die MiKTeX-Dateinamensdatenbank zu aktualisieren.

## Compiler

Die Vorlagen sind für **XeLaTeX** ausgelegt. Insbesondere die verwendeten OpenType-/TrueType-Schriften werden über `fontspec` geladen.

In TeXstudio sollte daher XeLaTeX als Compiler eingestellt sein.

## Projektstruktur

Eine typische Veranstaltung kann beispielsweise so aufgebaut sein:

mathe-i-folien/
├── mathe-i-folien.tex
├── metadaten.tex
├── inhalt.tex
├── images/
│   └── ...
├── kapitel/
│   └── ...
└── ...


Die Jade-Klassen und -Pakete müssen dabei **nicht** im Projektordner liegen, da sie über den TEXMF-Baum global zur Verfügung stehen.

## Hinweise

Änderungen an den Jade-Klassen und -Paketen wirken sich auf alle Projekte aus, die diese Installation verwenden.

Bei größeren Änderungen sollte deshalb die Versionshistorie in `CHANGELOG.md` gepflegt werden.
