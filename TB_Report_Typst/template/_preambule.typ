#let _preambule(config) = {

  set par(leading: 0.55em, spacing: 0.55em, justify: true)

  [= Préambule

    Ce travail de Bachelor (ci-après TB) est réalisé en fin de cursus d'études, en vue de l'obtention du titre de Bachelor of Science HES-SO en Ingénierie.

    #v(4%)

    En tant que travail académique, son contenu, sans préjuger de sa valeur, n'engage ni la responsabilité de l'auteur, ni celles du jury du travail de Bachelor et de l'Ecole.

    #v(4%)

    Toute utilisation, même partielle, de ce TB doit être faite dans le respect du droit d'auteur.

    #v(10%)

    #table(
      stroke: none,
      columns: (60%, 40%),
      [], [HEIG-VD],
      [], [Le Chef de département #config.information.departement.court]
    )

    #align(bottom + left, [
      Yverdon-les-Bains, le #datetime.today().display("[day].[month].[year]")
    ])
  ]
}