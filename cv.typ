#set page(
  paper: "a4",
  margin: (x: 1.6cm, y: 1.4cm),
)
#set text(size: 10pt, lang: "en")
#set par(justify: true, leading: 0.65em)
#set heading(numbering: none)

#let accent = rgb("#1a5f7a")
#let muted = rgb("#555555")

#let section-title(title) = {
  v(0.4em)
  text(size: 11pt, weight: "bold", fill: accent)[#title]
  v(0.15em)
  line(length: 100%, stroke: 0.6pt + accent)
  v(0.35em)
}

#let contact-link(label, url) = link(url)[#text(fill: accent)[#label]]

#align(center)[
  #text(size: 22pt, weight: "bold")[Abiodun (Magret) Oyedele]
  #v(0.2em)
  #text(size: 12pt, fill: muted)[Software Engineer]
  #v(0.35em)
  #text(size: 9pt)[
    Canada #sym.bullet
    #contact-link("belloabiodun17@gmail.com", "mailto:belloabiodun17@gmail.com") #sym.bullet
    #contact-link("magret.ca", "https://magret.ca") #sym.bullet
    #contact-link("GitHub", "https://github.com/Magret1730") #sym.bullet
    #contact-link("LinkedIn", "https://www.linkedin.com/in/oyedele-abiodun/")
  ]
]

#v(0.6em)

#section-title("Summary")
Software Engineer based in Canada with a strong full-stack background, working across TypeScript, React, and Next.js on the frontend and Node.js on the backend. Enjoys building scalable applications, debugging complex systems, and turning ideas into real products. Recently deepening skills in cloud technologies and exploring how AI can be applied to solve real-world problems. Actively involved in supporting learning programs through TechNest Community.

#section-title("Technical Skills")

#grid(
  columns: (1fr, 1fr),
  gutter: 1.2em,
  [
    *Full-stack Development*\
    Building production web applications with JavaScript/TypeScript, React/Next.js, Node.js, and Python.

    #v(0.3em)
    #text(size: 9pt, fill: muted)[
      JavaScript #sym.bullet
      TypeScript #sym.bullet
      React #sym.bullet
      Next.js #sym.bullet
      Node.js #sym.bullet
      Python
    ]
  ],
  [
    *Cloud & AI*\
    Growing focus on cloud platforms and practical applications of AI to real-world problems.

    #v(0.3em)
    #text(size: 9pt, fill: muted)[
      Docker #sym.bullet
      CI/CD #sym.bullet
      AWS #sym.bullet
      AI-assisted development
    ]
  ],
)

#section-title("Featured Projects")

#let project(name, period, description, highlights) = {
  [*#name* #h(1fr) #text(fill: muted, size: 9pt)[#period]]
  v(0.15em)
  description
  v(0.2em)
  list(..highlights)
  v(0.35em)
}

#project(
  "InstaloanX",
  "Featured Project",
  [Full-stack lending platform built with modern web technologies. Case study available on portfolio.],
  (
    "Designed and developed scalable full-stack application architecture",
    "Implemented responsive UI with React/Next.js and TypeScript",
    "Built robust backend services with Node.js",
  ),
)

#section-title("Community & Leadership")

#project(
  "TechNest Community",
  "Coordinator",
  [Supporting mentorship and instructor programs, helping others grow in their tech journey.],
  (
    "Coordinate mentorship and instructor programs",
    "Support learners in full-stack development and AI topics",
    "Contribute to community-driven learning initiatives",
  ),
)

#section-title("Languages")
English
