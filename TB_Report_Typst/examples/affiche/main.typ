/*
 Includes
*/
#import "../../template/main.typ": TB_affiche
#show: TB_affiche.with(
  config: (
    global: (
      confidential: true,
      text_lang: "fr"
    ),
    information: (
      title: "Titre du TB", 
      departement: (
        court: "TIC",
        long: "Technologies de l'information et de la communication",
      ),
      filiere: (
        court: "ISC",
        long: "Informatique et systèmes de communication",
      ),
      orientation: (
        court: "ISCS",
        long: "Sécurité informatique",
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
        feminine_form: true,
        industry_name: "EntrepriseZ"
      )
    )
  )
)

= Contexte
#lorem(100)

= Objectifs
#lorem(150)

= Résultats
#lorem(50)

#lorem(50)

= Conclusion
#lorem(100)