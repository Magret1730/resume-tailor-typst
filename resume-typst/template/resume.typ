// Base resume template — ATS-friendly layout and reusable helper functions.
//
// Import from tailor/tailored-resume.typ:
//   #import "../template/resume.typ": *
//
// Design goals:
// - One column, plain text, no icons/graphics/tables/sidebars
// - Readable spacing and default Typst font (New Computer Modern)
// - Simple functions you can call with placeholder or real content later

// --- Page and text settings ---

#set page(
  paper: "a4",
  margin: (x: 1.8cm, y: 1.6cm),
)

// Default Typst font — no custom font required.
#set text(size: 10.5pt, lang: "en")
#set par(leading: 0.7em, spacing: 0.55em, justify: false)
#set list(indent: 1em, body-indent: 0.5em)

#let muted = rgb("#333333")

// Join contact parts with a plain pipe separator (ATS-friendly plain text).
#let contact-separator = " | "

// --- Header ---

// Display name and contact details in a simple centered block.
//
// Arguments:
// - name: full name
// - location: city and country (or city, state)
// - phone: phone number (pass "" if not used)
// - email: email address (pass "" if not used)
// - links: array of plain link strings, e.g. ("linkedin.com/in/example", "github.com/example")
#let resume-header(name, location, phone, email, links) = {
  let contact-parts = ()

  if location != "" { contact-parts.push(location) }
  if phone != "" { contact-parts.push(phone) }
  if email != "" { contact-parts.push(email) }
  contact-parts += links

  align(center)[
    #text(size: 20pt, weight: "bold")[#name]
    #v(0.3em)
    #if contact-parts.len() > 0 [
      #text(size: 10pt, fill: muted)[#contact-parts.join(contact-separator)]
    ]
  ]
  v(0.7em)
}

// --- Section heading ---

// Simple uppercase section label with a light underline.
#let section-title(title) = {
  v(0.45em)
  block(below: 0.25em)[
    #text(weight: "bold", size: 11pt)[#upper(title)]
    #v(0.12em)
    #line(length: 100%, stroke: 0.5pt)
  ]
}

// --- Entry block (work, projects, education, volunteer) ---

// Reusable block for one job, project, degree, etc.
//
// Arguments:
// - title: role, project name, or degree
// - subtitle: company, stack/role, or school
// - date: date range or graduation year
// - location: city/region (pass "" if not needed)
// - body: content below the header lines (often a #bullet-list(...))
#let entry(title, subtitle, date, location, body) = {
  block(below: 0.45em)[
    #text(weight: "bold")[#title]
    #if subtitle != "" [
      #text[ — #subtitle]
    ]

    #if date != "" or location != "" [
      #v(0.1em)
      #grid(
        columns: (1fr, auto),
        gutter: 0.5em,
        [#if date != "" [#text(size: 10pt, fill: muted)[#date]]],
        [#if location != "" [#align(right)[#text(size: 10pt, fill: muted)[#location]]]],
      )
    ]

    #v(0.15em)
    #body
  ]
}

// --- Bullet list ---

// Turn an array of strings into a standard bullet list.
//
// Example:
//   #bullet-list((
//     "Built a feature used by 1,000+ users",
//     "Improved page load time by 30%",
//   ))
#let bullet-list(items) = {
  list(..items.map(item => [#item]))
}

// --- Skills line ---

// One labeled skills row: category followed by comma-separated items.
//
// Example:
//   #skills-line("Languages", ("JavaScript", "Python", "SQL"))
#let skills-line(category, items) = {
  block(below: 0.2em)[
    #text(weight: "bold")[#category:]
    #text[ #items.join(", ")]
  ]
}
