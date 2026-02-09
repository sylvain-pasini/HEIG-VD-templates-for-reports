#import "macros.typ": *
#import "imports.typ": *

#let TB_style(config, body) = {
  set heading(numbering: none)

  // Move all 1 level headings to new odd page
  show heading.where(
    level: 1
  ): it => [
    #pagebreak(weak: true, to: none)
    #v(2.5em)
    #it
    \
  ]

  show outline.entry.where(
    level: 1
  ): it => {
    if it.element.func() != heading {
      // Keep default style if not a heading.
      return it
    }
    
    v(20pt, weak: true)
    strong(it)
  }

  let confidential_text = [
    #if config.global.confidential{
      [Confidentiel]
    }
  ]

  // Set global page layout
  set page(
    paper: "a4",
    numbering: "1",
    header: context{
      if not is-first-page(page){
        columns(2, [
          #align(left)[#smallcaps([#currentH()])]
          #colbreak()
          #align(right)[#config.information.author.name]
        ])
        hr()
      }
    },
    footer: context{
      if not is-first-page(page){
        hr()
        columns(2, [
          #align(left)[#smallcaps(confidential_text)]
          #colbreak()
          #align(right)[#counter(page).display()]
        ])
      }
    },
    margin: (
      top: 150pt,
      bottom: 150pt,
      x: 1in
    )
  )

  // LaTeX look and feel :)
  set text(font: "New Computer Modern")
  show heading: set block(above: 1.4em, below: 1em)
  
  show heading.where(level:1): set text(size: 25pt)

  set table.cell(breakable: false)
  show figure: set block(breakable: true)
  
  show link: underline

  show raw.where(block: true): block.with(
    fill: luma(240),
    inset: 10pt,
    radius: 4pt,
  )
  
  // Glossarium
  if config.glossary.enabled {
    show: make-glossary
  }

  // Codly
  if config.codly.enabled {
    show: codly-init.with()
    codly(languages: codly-languages)
  }

  body
}