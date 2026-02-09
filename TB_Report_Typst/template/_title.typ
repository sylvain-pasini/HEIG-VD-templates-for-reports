#let _title(config) = {

  set par(leading: 0.55em, spacing: 0.55em, justify: true)

  image("images/HEIG-VD_logotype-baseline_rouge-cmjn.pdf", width: 6cm)

  v(10%)

  align(center, [#text(size: 14pt, [*Travail de Bachelor*])])
  v(4%)
  align(center, [#text(size: 24pt, [*#config.information.title*])])
    v(1%)
  align(center, [#text(size: 16pt, [#config.information.subtitle])])

  v(4%)

  if config.global.confidential{
    align(center, [#text(size: 14pt, [*Confidentiel*])])
  }else{
    v(14pt)
  }

  v(8%)

  align(left, [#block(width: 100%, [
    #table(
      stroke: none,
      columns: (35%, 65%),
      [*#if config.information.author.feminine_form { "Étudiante" } else { "Étudiant" }*], [*#config.information.author.name*],
      [],[],
      [*#if config.information.supervisor.feminine_form { "Superviseur" } else { "Superviseure" }*], [#config.information.supervisor.name],
      [],[],
      [*Département*], [#config.information.departement.long],
      [*Filière*], [#config.information.filiere.long],
      [*Orientation*], [#config.information.orientation.long],
      [],[],
      [*Entreprise mandante*], [
        #config.information.industry_contact.name \
        #config.information.industry_contact.industry_name \
        #config.information.industry_contact.address
      ],
      [],[],
      [*Année académique*], [#config.information.academic_years]
    )
  ])])

  align(bottom + right, [
    Yverdon-les-Bains, le #datetime.today().display("[day].[month].[year]")
  ])
}