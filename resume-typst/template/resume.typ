// Base resume template — traditional one-column layout.
//
// Import from tailor/tailored-resume.typ:
//   #import "../template/resume.typ": *

// --- Spacing variables (pt) ---

#let page-margin = (
  x: 0.65in,
  top: 0.45in,
  bottom: 0.45in,
)
#let header-name-gap = 4pt
#let header-contact-gap = 1pt       // Address/Phone/Email ↔ Portfolio/links
#let header-line-top-gap = 3pt      // links ↔ header rule
#let header-after-gap = 7pt        // header rule ↔ first section heading
#let section-top-gap = 9pt          // before each section heading
#let section-rule-gap = 2pt         // heading text ↔ rule line
#let section-content-gap = 4pt     // heading (and rule) ↔ section content
#let entry-inner-gap = 1.5pt       // title row ↔ company/subtitle row
#let entry-bottom-gap = 7pt         // after each job, project, or education entry
#let bullet-gap = 2.5pt             // subtitle row ↔ bullet list
#let skill-line-gap = 1.5pt         // between skill bullet lines

// --- Font hierarchy ---

#let name-size = 20pt
#let contact-size = 10.5pt
#let section-heading-size = 12pt
#let entry-title-size = 10.5pt
#let body-size = 10pt

// --- Page and text settings ---

#set page(
  paper: "a4",
  margin: page-margin,
)

#set text(size: body-size, lang: "en", fill: black)
#set par(leading: 0.65em, spacing: 0.32em, justify: false)
#set list(
  indent: 0.9em,
  body-indent: 0.35em,
  spacing: 0.22em,
  marker: [•],
)

// --- Hyperlink styling ---

#let link-blue = rgb("#0563C1")

#let doc-link(label, url) = {
  link(url)[#text(fill: link-blue, size: contact-size)[#underline(label)]]
}

#show link: set text(fill: link-blue)
#show link: underline

// --- Header ---

#let resume-header(name, address, phone, email, portfolio-url, github-url, linkedin-url) = {
  align(center)[
    #text(size: name-size, weight: "bold")[#name]
    #v(header-name-gap)
    #text(size: contact-size)[
      Address: #address
      #sym.bullet
      Phone: #phone
      #sym.bullet
      Email: #doc-link(email, "mailto:" + email)
    ]
    #v(header-contact-gap)
    #text(size: contact-size)[
      #doc-link("Portfolio", portfolio-url)
      #sym.bullet
      #doc-link("GitHub Repository", github-url)
      #sym.bullet
      #doc-link("LinkedIn", linkedin-url)
    ]
  ]
  v(header-line-top-gap)
  line(length: 100%, stroke: 0.5pt)
  v(header-after-gap)
}

// --- Section heading ---

// Summary has no rule line; all other sections get a rule directly under the title.
#let section-title(title) = {
  let is-summary = title == "Summary of Qualifications"

  v(section-top-gap)
  text(size: section-heading-size, weight: "bold")[#title]
  if not is-summary [
    #v(section-rule-gap)
    #line(length: 100%, stroke: 0.5pt)
  ]
  v(section-content-gap)
}

// --- Entry block (work, projects, education, volunteer) ---

#let entry(title, subtitle, date, location, body) = {
  let second-line = if location != "" {
    subtitle + ", " + location
  } else {
    subtitle
  }

  block(below: entry-bottom-gap, above: 0pt)[
    #grid(
      columns: (1fr, auto),
      gutter: 0.5em,
      align: (left + horizon, right + horizon),
      [#text(size: entry-title-size, weight: "bold")[#title]],
      [#text(size: body-size)[#date]],
    )
    #if subtitle != "" [
      #v(entry-inner-gap, weak: true)
      #text(size: body-size)[#second-line]
    ]
    #if body != [] [
      #v(bullet-gap, weak: true)
      #body
    ]
  ]
}

// --- Bullet list ---

#let bullet-list(items) = {
  list(..items.map(item => [#item]))
}

// --- Skills line ---

#let skills-line(category, items) = {
  block(below: skill-line-gap, above: 0pt)[
    #list(
      [#text(weight: "bold")[#category:]#text[ #items.join(", ")]],
    )
  ]
}
