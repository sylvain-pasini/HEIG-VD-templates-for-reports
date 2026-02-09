#import "macros.typ": *

#let _second_title(config) = {
  set par(leading: 0.55em, spacing: 0.55em, justify: true)
  pagebreak(to: "odd")
  align(right)[
    #config.information.departement.long\
    #config.information.filiere.long\
    #config.information.orientation.long\
    #if config.information.author.feminine_form { "Étudiante" } else { "Étudiant" } : #config.information.author.name\
    #if config.information.supervisor.feminine_form { "Enseignante" } else { "Enseignant" } responsable : #config.information.supervisor.name\
  ]

  v(10%)

  align(center)[Travail de Bachelor #config.information.academic_years]
  v(1%)
  align(center)[#config.information.title]
  v(1%)
  hr()

  v(5%)
  [
    Nom de l'entreprise/institution\
    #v(1%)
    #config.information.industry_contact.industry_name
  ]

  v(3%)
  
  [
    *Résumé publiable*\
    #v(1%)
    #config.information.resume_publiable
  ]

  v(5%)
  
  table(
    stroke: none,
    columns: (40%, 30%, 30%),
    row-gutter: 1em,
    align: bottom,
    [#if config.information.author.feminine_form { "Étudiante" } else { "Étudiant" } :], [Date et lieu :], [Signature :],
    [#config.information.author.name], [#hr_dotted()], [#hr_dotted()]
  )
  v(2%)
  table(
    stroke: none,
    columns: (40%, 30%, 30%),
    row-gutter: 1em,
    align: bottom,
    [#if config.information.supervisor.feminine_form { "Enseignante" } else { "Enseignant" } responsable :], [Date et lieu :], [Signature :],
    [#config.information.supervisor.name], [#hr_dotted()], [#hr_dotted()]
  )
  v(2%)
  table(
    stroke: none,
    columns: (40%, 30%, 30%),
    row-gutter: 1em,
    align: bottom,
    [Nom de l'entreprise/institution :], [Date et lieu :], [Signature :],
    [#config.information.industry_contact.industry_name], [#hr_dotted()], [#hr_dotted()]
  )
}