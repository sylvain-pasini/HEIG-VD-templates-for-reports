# Template pour rapports

Ce template a été conçu pour faciliter la rédaction de rapports, comme par exemple le rapport de Travail de Bachelor (TB) pour les étudiants de la HEIG-VD.

L’objectif est de fournir un cadre simple et **prêt à l’emploi**, afin d’aider et d’encourager les étudiants à produire des documents scientifiques de qualité.

Le template, initialement produit en *LaTeX*,  inclut de nombreux exemples pratiques : formules mathématiques, insertion d’images, création de diagrammes Gantt, intégration automatique de code source, etc. Il permet ainsi de tirer parti des avantages de LaTeX, tels que la typographie professionnelle, la gestion automatique des références et des bibliographies, ainsi qu’une mise en page cohérente et structurée. 

Il est également possible de comparer ces avantages avec ceux de **Typst**, qui propose une approche plus moderne et simplifiée pour la rédaction scientifique.

## Template LaTex 

Le template a été créé en 2020, par le Prof. Sylvain Pasini, et a depuis évolué pour s’adapter aux besoins des étudiants et aux directives de la HEIG-VD.

### Produire le document à partir du LaTeX

Pour générer un PDF à partir du fichier .tex, utiliser pdflatex. Pour la bibliographie, compiler le fichier .bib avec bibtex.

Compiler le document (.tex) avec pdflatex afin de produire un pdf. Construire la bibliographie (.bbl) avec l'outil bibtex (et le fichier .bib).

La procédure complète nécessite plusieurs itérations afin de produire la table des matière, la bibliographie et de stabiliser leurs insertions :

1.	pdflatex nom_du_fichier.tex
2.	bibtex nom_du_fichier
3.	pdflatex nom_du_fichier.tex
4.	pdflatex nom_du_fichier.tex


### Coloration syntaxique du code avec Pygmentize

Pygmentize permet la coloration syntaxique de code source afin de le rendre plus lisible et agréable dans les  documents.

Pour installer Pygmentize sur macOS, suivre les étapes suivantes :

1. brew install python
- pip3 install pygments
- sudo ln -s "$(which pygmentize)" /Library/TeX/texbin/pygmentize



### Historique de versions

- [Sylvain Pasini] LaTeX v2.0 : mise à jour générale du template pour 2026
- [Sylvain Pasini] LaTeX v1.3 : corrections mineures (filière, orientation), ajout planification, correction d'exemples, manuel pygmentize
- [Alexandre Duc] LaTeX v1.2 : ajout d'une mention confidentiel dans chaque entête de page si le TB est confidentiel
- [Alexandre Duc] LaTeX v1.1 : ajout de liens et d'entrées dans la ToC pour la liste des figures et la liste des tables
- [Sylvain Pasini] LaTeX v1.0 : version initiale


## Template Typst

En 2025, Christophe Roulin, alors étudiant Bachelor à la HEIG-VD, a créé une version **Typst** du template pour les rapports. Ce template s’inspire directement de la mise en forme et du contenu du template LaTeX original, conçu par le Prof. Sylvain Pasini, et offre une alternative moderne et simplifiée pour la rédaction scientifique.

### Historique de versions

- [Sergio Alves Domingues] Typst v2.0 : mise à jour générale du template pour 2026
- [Christophe Roulin] Typst v1.3 : version initiale de 2025, en lien avec la version LaTeX 1.3.