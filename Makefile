# Dies ist das 'Makefile' für die Satzung des ZaPF e.V.

# Es hilft bei der Erstellung der Satzung als PDF (und Mediawiki / Markdown)
# aus den LaTeX Quellen.

# Zur Erstellung einfach in einer Linux/Mac Kommandozeile den folgenden Befehl eingeben:
#     make all


# Alle Zieldateien erstellen: PDF, Mediawiki und Markdown:
all: Satzung_des_ZaPFev.pdf Satzung_des_ZaPFev.mediawiki.txt Satzung_des_ZaPFev.markdown.txt


# Die einzelnen Zieldateien werden wie folgt erstellt:
Satzung_des_ZaPFev.pdf:
	pdflatex Satzung_des_ZaPFev.tex
	pdflatex Satzung_des_ZaPFev.tex
Satzung_des_ZaPFev.mediawiki.txt:
	pandoc -f latex -t mediawiki -o Satzung_des_ZaPFev.mediawiki.txt Satzung_des_ZaPFev.tex
Satzung_des_ZaPFev.markdown.txt:
	pandoc -f latex -t markdown -o Satzung_des_ZaPFev.markdown.txt Satzung_des_ZaPFev.tex


# clean the directory from unneeded files
.PHONY : clean
clean :
	-rm -rf *~ *.mediawiki.txt *markdown.txt *.toc *.aux *.log *.dvi *.ps *.pdf
