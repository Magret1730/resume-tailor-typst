// Base resume template — layout and styling shared by every tailored resume.
//
// This file defines page settings, fonts, colors, and helper functions
// (e.g. section headings). Do not put job-specific content here.
//
// Import this from tailor/tailored-resume.typ:
//   #import "../template/resume.typ": *

#set page(paper: "a4", margin: (x: 1.6cm, y: 1.4cm))
#set text(size: 10pt, lang: "en")
#set par(justify: true, leading: 0.65em)
#set heading(numbering: none)

#let accent = rgb("#1a5f7a")
#let muted = rgb("#555555")

// Reusable section heading style.
#let section-title(title) = {
  v(0.4em)
  text(size: 11pt, weight: "bold", fill: accent)[#title]
  v(0.15em)
  line(length: 100%, stroke: 0.6pt + accent)
  v(0.35em)
}

// Reusable entry block for jobs, projects, etc.
// Usage: #entry("Title", "Date or subtitle")[Body content here]
#let entry(title, subtitle, body) = {
  [*#title* #h(1fr) #text(fill: muted, size: 9pt)[#subtitle]]
  v(0.15em)
  body
  v(0.35em)
}
