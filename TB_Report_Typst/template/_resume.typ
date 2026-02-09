#let _resume(config) = [

  #set par(leading: 0.55em, spacing: 0.55em, justify: true)
  = Resumé

  #align(left)[*Travail de Bachelor #config.information.academic_years*]
  #align(left)[*Titre:*  #config.information.title]
  #align(left)[*Sous-titre:*  #config.information.subtitle]

  #v(5%)

  #config.information.resume_publiable

  #v(5%)


  #align(bottom + left, [
    #block(
      width: 100%, [
        #table(
          stroke: none,
          columns: (35%, 65%),
          [*#if config.information.author.feminine_form { "Étudiante" } else { "Étudiant" }*], [*#config.information.author.name*],
          [],[],
          [*#if config.information.supervisor.feminine_form { "Superviseur" } else { "Superviseure" }*], [#config.information.supervisor.name],
          [],[],
          [*Entreprise mandante*], [#config.information.industry_contact.name],
        )
      ]
    )
  ])
]