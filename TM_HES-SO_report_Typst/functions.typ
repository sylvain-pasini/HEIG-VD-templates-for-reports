
// ==============================
// UTILITY FUNCTIONS
// ==============================

// ==============================
// Renders the title page, using the settings dictionnary
#let front-page(settings) = [
  #pad(left: -1cm, right: -0.5cm,  y:-2cm)[
    #grid(  
      columns: (1fr, 1fr),
      align: (left, right),
      image("images/HES_SO_Logo_RGB.png", width: 4.5cm),
      image("images/corner_top_right.svg", width: 1cm)
    )
  ]
  #v(4cm)
  #align(center)[
  #image("images/mse_logo_full.png", width: 12cm)
  #show title: set text(size: 30pt, fill: rgb(0, 96, 156), weight: "bold")
  #show title: set align(center)
  #show title: set block(above: 3cm)
  #title[#settings.title]
  #v(3cm)
  #text(size: 24pt, fill: rgb(0, 96, 156), weight: "bold")[
    Master of Science HES SO in\
    Engineering
  ]

  #text(size: 20pt, fill: rgb(0, 96, 156), weight: "bold")[
    "Profil/Orientation" #settings.profile.long
  ]
  #if (settings.confidential) {
    image("images/confidential.png", width: 7cm)
  } else [
    #v(3cm)
  ]
  Date of publication #settings.date
  ]
  #v(2cm)
  #text(weight: "bold")[
    _Produced by_
    ]

  #h(1cm)
  #text(size: 14pt)[Author: #settings.author.name]
  #v(0.5cm)
  #h(1cm)Under the supervision of:  #settings.supervisor.name\
  #h(1cm)In collaboration with:  #settings.company
]

// ==============================
// Renders a level 1 heading, without numbering
#let unumbered-chapter(name) = [
  #pagebreak(weak:true)
  #block(inset: (left: 2em, top: 1em, bottom: 0.5em))[
    #heading(
      numbering: none,
      level: 1,
      name
    )
  ]
]
