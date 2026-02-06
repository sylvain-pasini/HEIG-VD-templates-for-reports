#let _authentification(config) = [
#set par(leading: 0.55em, spacing: 0.55em, justify: true)
= Authentification

#if config.information.author.feminine_form { "La soussignée" } else { "Le soussigné" }, #config.information.author.name, atteste par la présente avoir réalisé ce travail et n'avoir utilisé aucune autre source que celles expressément mentionnées
#v(10%)

Yverdon-les-Bains, le #datetime.today().display("[day].[month].[year]")

#v(15%)

#table(
  stroke: none,
  columns: (50%, 50%),
  [], [#config.information.author.name]
)


]