// Work experience — reusable role entries.
//
// Import only the roles you need in tailor/tailored-resume.typ.

#import "../template/resume.typ": entry, bullet-list

#let experience-expertise-hub = entry(
  "Software Developer Intern",
  "Expertise Hub",
  "Feb 2026 - June 2026",
  "St. John's, NL, Canada",
  bullet-list((
    "Developed responsive web application features using React, Next.js, TypeScript, HTML, and CSS within a modern full-stack development environment.",
    "Built reusable frontend components and integrated user-facing workflows with backend APIs to support dynamic application features.",
    "Collaborated with developers, designers, and stakeholders through Agile sprint planning, standups, feature discussions, and pull request reviews.",
    "Troubleshot frontend issues, improved usability, and contributed to testing, documentation, and maintainable production-ready code.",
  )),
)

#let experience-vifta = entry(
  "Junior Software Developer Intern",
  "Vifta Technology Limited",
  "Apr 2025 - Mar 2026",
  "St. John's, NL, Canada",
  bullet-list((
    "Built and maintained full-stack web application features using Next.js, TypeScript, Material UI, Node.js, and MongoDB.",
    "Developed backend functionality, including file upload processing and dynamic email template workflows to support automated content generation.",
    "Integrated PostHog analytics to capture user events and provide product insights for behavioural analysis and roadmap decisions.",
    "Reviewed intern pull requests, supported production issue fixes, and collaborated with cross-functional team members to improve reliability and code quality.",
  )),
)
