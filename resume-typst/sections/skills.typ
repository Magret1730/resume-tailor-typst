// Skills section — grouped by category.
//
// Import in tailor/tailored-resume.typ:
//   #import "../sections/skills.typ": skills-block
//   #skills-block

#import "../template/resume.typ": skills-line

#let skills-block = [
  #skills-line("Languages", ("JavaScript", "TypeScript", "Python", "SQL"))
  #skills-line("Frontend", ("HTML", "CSS", "React", "Next.js", "TailwindCSS", "Material UI", "Responsive Design"))
  #skills-line("Backend", ("Node.js", "Express.js", "Flask", "RESTful APIs", "JWT Authentication"))
  #skills-line("Databases", ("PostgreSQL", "MySQL", "MongoDB"))
  #skills-line("Cloud and Deployment", ("AWS", "Netlify", "Vercel", "GitHub Actions"))
  #skills-line("Tools and Platforms", ("Git", "GitHub", "Postman", "Jira", "PostHog Event Tracking", "GitHub Pull Requests"))
  #skills-line("AI-assisted Development", ("ChatGPT", "GitHub Copilot", "Cursor", "AI-Assisted Development"))
  #skills-line("Software Development Practices", ("Agile Scrum", "Unit Testing", "API Design", "Code Reviews", "Version Control", "Collaborative Software Development"))
]
