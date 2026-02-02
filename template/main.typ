#let TB_template(
  content,
  config: (
    global: (
      confidential: false,
      research_report: false,
      text_lang: "fr",
    ),
    information: (
      title: "",
      subtitle: "",
      academic_years: "",
      dpt: "",
      filiere: (
        short: "",
        long: "",
      ),
      orientation: "",
      author: (
        name: "",
        feminine_form: false,
      ),
      supervisor: (
        name: "",
        feminine_form: false,
      ),
      industry_contact: (
        name: "",
        address: "",
        industry_name: "",
      ),
      resume_publiable: none,
    ),
    sections: (
      thanks: none,
      cdc: none,
      annexes: none,
    ),
    bibliography: (
      content: none,
      style: "iso-690-author-date",
    ),
    codly: (
      enabled: true
    ),
    glossary: (
      enabled: true,
      entries: none,
    )
  ),
) = {
  set text(lang: config.global.text_lang)

  /*
  Includes
  */
  import "imports.typ": *
  import "style.typ": TB_style
  show: TB_style.with(config)

  /*
  Glossarium
  */
  if config.glossary.entries != none {
    register-glossary(config.glossary.entries)
  }

  /*
  Title and   */
  import "_title.typ": *
  _title(config)
  if not config.global.research_report {
    import "_second_title.typ": *
    _second_title(config)
    include "_preambule.typ"
    import "_authentification.typ": *
    _authentification(config)

    /*
    Remerciements
    */
    if config.sections.thanks != none {
      config.sections.thanks
    }

    /*
    Cahier des charges
    */
    if config.sections.cdc != none {
      config.sections.cdc
    }
  }

  // Set numbering for content
  set heading(numbering: "1.1")

  /*
  Table of Content
  */
  outline(title: "Table des matières", depth: 3, indent: 15pt)

  /*
  Content
  */
  content

  // Remove numbering after content
  set heading(numbering: none)

  /*
  Annexes
  */
  if config.sections.annexes != none {
    config.sections.annexes
  }

  /*
  Tables
  */
  import "_bibliography.typ": *
  if config.bibliography.content != none {
    _bibliography(config)
  }
  if not config.global.research_report {
    include "_figures.typ"
    include "_tables.typ"
  }

  /*
  Glossary
  */
  import "_glossary.typ": *
  if config.glossary.enabled and config.glossary.entries != none {
    _glossary(config)
  }
}