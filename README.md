# Template for reports

This is a Latex template mainly aimed to help the redaction of the Bachelor thesis (TB) report for students at HEIG-VD.

## Pour compiler en Latex :

Compiler le document avec pdflatex.

Construire la bibliographie (.bbl) avec l'outil bibtex (et le fichier .bib).

Procédure complète :

- pdflatex
- bibtex
- pdflatex
- pdflatex


## Nécessite Pygmentize pour colorer les codes

### Insallation sur macOS 

Pour installer Pygmentize sur macOS, il est nécessaire de suivre les étapes suivantes

- brew install python
- pip3 install pygments
- sudo ln -s "$(which pygmentize)" /Library/TeX/texbin/pygmentize



## Historique de versions

- [SPS] v2.0 : mise à jour générale du template pour 2026
- [SPS] v1.3 : corrections mineures (filière, orientation), ajout planification, correction d'exemples, manuel pygmentize
- [ADC] v1.2 : ajout d'une mention confidentiel dans chaque entête de page si le TB est confidentiel
- [ADC] v1.1 : ajout de liens et d'entrées dans la ToC pour la liste des figures et la liste des tables
- [SPS] v1.0 : version initiale
