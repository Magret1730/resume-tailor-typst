// Skills section — technical and soft skills grouped by category.
//
// Uses #skills-line(category, items) from template/resume.typ.
// When tailoring, import only the lines that match the job description.

#import "../template/resume.typ": skills-line

#let skills-block = [
  #skills-line("Languages", ("JavaScript", "TypeScript", "Python", "SQL"))
  #skills-line("Frameworks", ("React", "Next.js", "Node.js"))
  #skills-line("Tools", ("Git", "Docker", "CI/CD", "PostgreSQL"))
  #skills-line("Soft Skills", ("Communication", "Team collaboration", "Problem solving"))
]
