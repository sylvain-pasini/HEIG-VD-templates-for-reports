// ==============================
// GLOBAL SETTINGS
// ==============================

#let settings = (

    confidential: true,
    title: "PM/TA Title",
    date: datetime.today().display(),
    profile: (
      short: "ICS",
      long: "Information and Cyber Security",
    ),
    filiere: (
      court: "ISC",
      long: "Informatique et systèmes de communication (ISC)",
    ),
    author: (
      name: "Student Name",
      feminine_form: true,
    ),
    supervisor: (
      name: "Professor Name",
      feminine_form: true,
    ),
    company: "Company Name",
    bibliography: (
      content: read("bibliography.yaml", encoding: none),
      style: "ieee"
    ),
  )