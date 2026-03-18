#import "functions.typ": *
#import "settings.typ": settings

// ==============================
// OVERALL STYLE
// ==============================

#set text(font: "Arial", size: 11pt)
#set par(justify: true)
#set page(
  paper: "a4",
  margin: (left: 2cm, right: 1.5cm, top: 3cm, bottom: 3cm),
  header: context {

    // Do not create header on cover (first) page
    if counter(page).get().first() > 1 [
      #pad(left: -1.0cm, right: -0.5cm)[
        #grid(  
          columns: (1fr, 1fr),
          align: (left, right),
          image("images/HES_SO_Master_Logo.png", width: 3cm),
          image("images/corner_top_right.svg", width: 1cm)
          )
      ]
    ]
  },
  footer-descent: 10%,
  footer: context {
    if counter(page).get().first() > 1 [
      #v(1em)
      #text(size: 10pt, weight: "bold", fill: rgb(212, 19, 103))[ENGINEERING AND ARCHITECTURE]
      #v(-8pt)
      #line(length: 100%, stroke: (thickness: 0.5pt))
      #v(-0.7cm)
      #pad(left: -1cm)[
        #table(
          stroke: 0pt,
          columns: (1fr, 9fr),
          align: (left+bottom, right+bottom),
          image("images/corner_bottom_left.svg", width: 1cm),

          table(
            columns: (40%, 40%, 20%),
            rows:(10pt, 10pt),
            align: (left+horizon, left+horizon, right+horizon),
            stroke: 0.5pt + gray,
            text(size: 6pt, fill: gray)[Master of Science in Engineering (MSE)],
            text(size: 6pt, fill: gray)[#settings.author.name],
            text(size: 6pt, fill: gray)[#settings.date],
            text(size: 6pt, fill: gray)[Master Thesis],
            text(size: 6pt, fill: gray)[#if settings.confidential {text(fill: rgb(212, 19, 103))[Confidential]}],
            text(size: 6pt, fill: gray)[#counter(page).display("- 1 -")]
          )
        )
      ]
    ]
  }
)

// HEADING STYLES
// Common
#set heading(numbering: "1.1.")
// Level 1
#show heading.where(level: 1): set text(20pt, weight: "bold", fill: rgb(0, 96, 156))
#show heading.where(level: 1): it => {
  colbreak(weak: true)
  block(inset: (top: 1em, bottom: 0.5em))[
    #it
  ]
}
// Level 2
#show heading.where(level: 2): set text(16pt, weight: "bold", fill: rgb(0, 96, 156))
#show heading.where(level: 2): it => {
  block(inset: (top: 1em, bottom: 0.5em))[
    #it
  ]
}

// ==============================
// REPORT'S OVERALL STRUCTURE
// ==============================

// FRONT PAGE
#front-page(settings)
#pagebreak()

// TABLE OF CONTENTS
#outline(title: "Table of contents", depth: 2, indent: 15pt)

// DECLARATION OF AUTHENTICITY
#unumbered-chapter("Declaration of authenticity")
I hereby affirm that this assignment is my own written work and that I have used no other sources or aids other than those indicated. All passages that have been quoted from publications or paraphrased from these sources are indicated as such. Additionally, any assistance from artificial intelligence tools has been appropriately acknowledged and documented.
#v(1em)
#grid(  
  columns: (1fr, 1fr),
  align: (left, left),
  "",
  "Date : " + settings.date + "\n\n" + "Name : " + settings.author.name
)

// ACKNOWLEDGEMENTS
#unumbered-chapter("Acknowledgments")
#lorem(50)

// SUMMARIES
#unumbered-chapter("Summary (English)")
#lorem(800)

#unumbered-chapter("Résumé (Français)")
#lorem(50)

// ------------------------------------
// INSERT YOUR CHAPTERS HERE
// ------------------------------------
#include "chapters/introduction.typ"
#include "chapters/sample-chapter.typ"
#include "chapters/conclusion.typ"
// ------------------------------------

// BILBIOGRAPHY
#if settings.bibliography.content != none {
  bibliography(settings.bibliography.content, style: settings.bibliography.style)
}

// TABLE OF FIGURES
#context {
  let figures = query(figure.where(kind: image))
  if figures.len() != 0 {
    outline(title: "Table of figures", target: figure.where(kind: image))
  }
}

// APPRENDICES
#unumbered-chapter("Appendices")
#counter(heading).update(0)
#set heading(numbering: "I.i.")

// ------------------------------------
// INSERT YOUR APPENDICES HERE
// ------------------------------------
#include "chapters/sample-appendix.typ"
// ------------------------------------