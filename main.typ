#import "glossary.typ": *
#import "template/main.typ": *

#show: TB_template.with(
  config: (
    global: (
      confidential: true,
      research_report: false,
      text_lang: "fr"
    ),
    information: (
      title: "Titre du TB",
      subtitle: "Sous-titre",
      academic_years: "2024-25",
      dpt: "Département des Technologie de l'information et de la communication (TIC)",
      filiere: (
        short: "ISC",
        long: "Informatique et systèmes de communication",
      ),
      orientation: "Sécurité informatique",
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
        Dans ce travail... Ceci est le résumé publiable...
      ]
    ),
    sections: (
      thanks: include "chapters/thanks.typ",
      cdc: include "chapters/cdc.typ",
      annexes: include "chapters/annexes.typ"
    ),
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

#include "chapters/planification.typ"

#include "chapters/etat-de-lart.typ"
#include "chapters/architecture.typ"
#include "chapters/implementation.typ"

#include "chapters/conclusion.typ"