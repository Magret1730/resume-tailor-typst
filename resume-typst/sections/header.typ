// Header section — name, job title, and contact details.
//
// Keep all contact variants here (email, phone, LinkedIn, GitHub, portfolio).
// In tailor/tailored-resume.typ, import and use the version that fits the role.

#let header = [
  #align(center)[
    #text(size: 22pt, weight: "bold")[Your Name]
    #v(0.2em)
    #text(size: 12pt, fill: rgb("#555555"))[Your Professional Title]
    #v(0.35em)
    #text(size: 9pt)[
      City, Country #sym.bullet
      email\@example.com #sym.bullet
      linkedin.com/in/yourprofile
    ]
  ]
  #v(0.6em)
]
