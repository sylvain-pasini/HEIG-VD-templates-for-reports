#import "glossary.typ": *
#import "../../template/main.typ": *

#show: TB_template.with(
  config: (
    global: (
      confidential: true,
      research_report: false,
      text_lang: "fr"
    ),
    information: (
      title: "Exemple de titre",
      subtitle: "Exemple de sous-titre",
      academic_years: "2025-26",
      departement: (
        court: "TIC",
        long: "Technologies de l'information et de la communication (TIC)",
      ),
      filiere: (
        court: "ISC",
        long: "Informatique et systèmes de communication (ISC)",
      ),
      orientation: (
        court: "ISC-S",
        long: "Sécurité informatique (ISC-S)",
      ),
      author: (
        name: "firstname lastname",
        feminine_form: true,
      ),
      supervisor: (
        name: "Prof. Bli Bla",
        feminine_form: true,
      ),
      industry_contact: (
        name: "Nom",
        address: [
          Rue XY\
          1400 Yverdon-les-Bains
        ],
        industry_name: "EntrepriseZ",
      ),
      resume_publiable: [
        #lorem(100)\
        \
        #lorem(50)
      ]
    ),
    cahier-des-charges: include "chapters/cahier-des-charges.typ",
    bibliography: (
      content: read("bibliography.bib", encoding: none),
      style: "iso-690-author-date"
    ),
    codly: (
      enabled: true
    ),
    glossary: (
      enabled: true,
      entries: entry-list
    )
  )
)

#include "chapters/introduction.typ"
#include "chapters/etat-de-lart.typ"
#include "chapters/exemple-de-chapitre.typ"
#include "chapters/architecture.typ"
#include "chapters/implementation.typ"
#include "chapters/resultats.typ"
#include "chapters/conclusion.typ"