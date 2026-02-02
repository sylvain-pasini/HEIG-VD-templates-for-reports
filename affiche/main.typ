/*
 Includes
*/
#import "template/affiche.typ": affiche
#show: affiche.with(
  config: (
    global: (
      confidential: true,
      text_lang: "fr"
    ),
    information: (
      title: "Titre du TB", 
      dpt: "ISC",
      filiere: (
        short: "ISC",
        long: "Informatique et systèmes de communication",
      ),
      orientation: "ISCS",
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