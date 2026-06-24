// Base resume template — traditional one-column layout.
//
// Import from tailor/tailored-resume.typ:
//   #import "../template/resume.typ": *

// --- Page and text settings ---

#set page(
  paper: "a4",
  margin: (x: 1.85cm, y: 1.65cm),
)

#set text(size: 11pt, lang: "en", fill: black)
#set par(leading: 0.72em, spacing: 0.45em, justify: false)
#set list(
  indent: 1em,
  body-indent: 0.4em,
  spacing: 0.35em,
  marker: [•],
)

// Blue underlined hyperlinks; all other text stays black.
#let link-blue = rgb("#0563C1")

#show link: it => {
  underline(text(fill: link-blue)[#it])
}

// --- Header ---

// Centered name, labeled contact row, linked portfolio row, separator line.
#let resume-header(name, address, phone, email, portfolio-url, github-url, linkedin-url) = {
  align(center)[
    #text(size: 20pt, weight: "bold")[#name]
    #v(0.22em)
    #text(size: 10.5pt)[
      Address: #address
      #sym.bullet
      Phone: #phone
      #sym.bullet
      Email: #link("mailto:" + email)[#email]
    ]
    #v(0.14em)
    #text(size: 10.5pt)[
      #link(portfolio-url)[Portfolio]
      #sym.bullet
      #link(github-url)[GitHub Repository]
      #sym.bullet
      #link(linkedin-url)[LinkedIn]
    ]
  ]
  v(0.28em)
  line(length: 100%, stroke: 0.5pt)
  v(0.38em)
}

// --- Section heading ---

// Title Case, bold, simple horizontal rule — no decorative styling.
#let section-title(title) = {
  v(0.28em)
  block(below: 0.18em)[
    #text(weight: "bold")[#title]
    #v(0.08em)
    #line(length: 100%, stroke: 0.5pt)
  ]
}

// --- Entry block (work, projects, education, volunteer) ---

// Line 1: title (bold, left)  |  date (right)
// Line 2: subtitle, location
// Body:   bullet list below
#let entry(title, subtitle, date, location, body) = {
  let second-line = if location != "" {
    subtitle + ", " + location
  } else {
    subtitle
  }

  block(below: 0.36em)[
    #box(width: 100%)[
      #grid(
        columns: (1fr, auto),
        gutter: 0.6em,
        align: (left + horizon, right + horizon),
        [#text(weight: "bold")[#title]],
        [#text[#date]],
      )
    ]
    #if subtitle != "" [
      #v(0.04em)
      #text[#second-line]
    ]
    #if body != [] [
      #v(0.1em)
      #body
    ]
  ]
}

// --- Bullet list ---

#let bullet-list(items) = {
  list(..items.map(item => [#item]))
}

// --- Skills line ---

// Bulleted row: bold category, comma-separated skills.
#let skills-line(category, items) = {
  list(
    [#text(weight: "bold")[#category:]#text[ #items.join(", ")]],
  )
}
