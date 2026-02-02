#let _title(config) = {
  set par(leading: 0.55em, spacing: 0.55em, justify: true)
  columns(2, [
    #image("images/logo_heig-vd-2020.svg", width: 40%)
    #colbreak()
    #par(justify: false)[#align(right, [
      #config.information.dpt
      #config.information.filiere.long
      #config.information.orientation
    ])]
  ])
  
  v(20%)
  
  align(center, [#text(size: 14pt, [*Travail de Bachelor*])])
  v(4%)
  align(center, [#text(size: 20pt, [*#config.information.title*])])
  v(1%)
  align(center, [#text(size: 16pt, [#config.information.subtitle])])

  v(8%)
  if config.global.confidential{
    align(center, [#text(size: 14pt, [*Confidentiel*])])
  }else{
    v(14pt)
  }
  v(8%)

  align(left, [#block(width: 70%, [
    #table(
      stroke: none,
      columns: (50%, 50%),
      [*#if config.information.author.feminine_form { "Étudiante" } else { "Étudiant" }*], [*#config.information.author.name*],
      [*#if config.information.supervisor.feminine_form { "Enseignante" } else { "Enseignant" } responsable*], [#config.information.supervisor.name],
      [*Entreprise mandante*], [
        #config.information.industry_contact.name \
        #config.information.industry_contact.industry_name \
        #config.information.industry_contact.address
      ],
      [*Année académique*], [#config.information.academic_years]
    )
  ])])

  align(bottom + right, [
    Yverdon-les-Bains, le #datetime.today().display("[day].[month].[year]")
  ])
}