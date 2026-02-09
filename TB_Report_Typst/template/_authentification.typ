#let _authentification(config) = [

#set par(leading: 0.55em, spacing: 0.55em, justify: true)
= Authentification

Par la présente, j’atteste avoir réalisé ce travail et n’avoir utilisé aucune autre source que celles expressément mentionnées.
#v(20%)

#table(
  stroke: none,
  columns: (60%, 40%),
  [], [#config.information.author.name]
)

#align(left + bottom, [
    Yverdon-les-Bains, le #datetime.today().display("[day].[month].[year]")
  ])

]