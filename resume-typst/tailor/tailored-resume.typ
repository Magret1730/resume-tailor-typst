// =============================================================================
// TAILORED RESUME — PragmaClin Research Inc.
// Graduate Transition Initiative – Junior Software Developer (Support Engineer)
// =============================================================================
//
// Compile from the resume-typst folder:
//   typst compile --root . tailor/tailored-resume.typ output/Abiodun_Magret_Oyedele_Resume.pdf

#import "../template/resume.typ": section-title, entry, bullet-list, skills-line

#import "../sections/summaries.typ": summary_healthcare_support
#import "../sections/header.typ": header
#import "../sections/education.typ": (
  education-keyin-diploma,
  education-brainstation-bootcamp,
  education-alx-certificate,
  education-futa-geology,
)
#import "../sections/volunteer.typ": volunteer-technest-coordinator
#import "../sections/certifications.typ": certifications-block

// --- Work Experience (bullets reordered/emphasized for this role; facts unchanged) ---

#let experience-expertise-hub-tailored = entry(
  "Software Developer Intern",
  "Expertise Hub",
  "Feb 2026 - June 2026",
  "St. John's, NL, Canada",
  bullet-list((
    "Troubleshot frontend issues, improved usability, and contributed to testing, documentation, and maintainable production-ready code.",
    "Built reusable frontend components and integrated user-facing workflows with backend APIs to support dynamic application features.",
    "Collaborated with developers, designers, and stakeholders through Agile sprint planning, standups, feature discussions, and pull request reviews.",
    "Developed responsive web application features using React, Next.js, TypeScript, HTML, and CSS within a modern full-stack development environment.",
  )),
)

#let experience-vifta-tailored = entry(
  "Junior Software Developer Intern",
  "Vifta Technology Limited",
  "Apr 2025 - Mar 2026",
  "St. John's, NL, Canada",
  bullet-list((
    "Reviewed intern pull requests, supported production issue fixes, and collaborated with cross-functional team members to improve reliability and code quality.",
    "Integrated PostHog analytics to capture user events and provide product insights for behavioural analysis and roadmap decisions.",
    "Built and maintained full-stack web application features using Next.js, TypeScript, Material UI, Node.js, and MongoDB.",
    "Developed backend functionality, including file upload processing and dynamic email template workflows to support automated content generation.",
  )),
)

// --- Projects (Joborg first; monitoring/support emphasis via ordering of existing facts) ---

#let project-joborg-tailored = entry(
  "Joborg",
  "Job Link Tracker and Automated Monitoring Platform",
  "Jun 2026 - Present",
  "",
  bullet-list((
    "Building and deploying a full-stack SaaS-style job tracking platform with scheduled content monitoring, tracker records, automated email notification logic, URL validation, PostgreSQL database workflows, and a functional Node.js backend; frontend development is in progress using Next.js.",
  )),
)

#let project-instaloanx-tailored = entry(
  "InstaloanX",
  "Loan Management Application",
  "Mar 2025",
  "",
  bullet-list((
    "Built a full-stack loan management application using React, Express.js, and MySQL, with JWT authentication, role-based access control, RESTful API integration, responsive UI screens, and environment-based deployment on Netlify.",
  )),
)

// =============================================================================
// ASSEMBLED RESUME
// =============================================================================

#header

#section-title("Summary of Qualifications")
#summary_healthcare_support

#section-title("Work Experience")
#experience-expertise-hub-tailored
#experience-vifta-tailored

#section-title("Skills")
#skills-line("Languages", ("JavaScript", "TypeScript", "Python", "SQL"))
#skills-line("Frontend", ("React", "Next.js", "HTML", "CSS", "TailwindCSS", "Material UI", "Responsive Design"))
#skills-line("Backend", ("Node.js", "Express.js", "RESTful APIs", "JWT Authentication", "Flask"))
#skills-line("Databases", ("PostgreSQL", "MySQL", "MongoDB"))
#skills-line("Tools and Platforms", ("Git", "GitHub", "Postman", "Jira", "PostHog Event Tracking", "Technical Documentation", "Troubleshooting", "GitHub Pull Requests"))
#skills-line("Cloud and Deployment", ("AWS", "Netlify", "Vercel", "GitHub Actions"))
#skills-line("Software Development Practices", ("Agile Scrum", "Unit Testing", "API Design", "Code Reviews", "Version Control", "Collaborative Software Development"))
#skills-line("AI-assisted Development", ("ChatGPT", "GitHub Copilot", "Cursor", "AI-Assisted Development"))

#section-title("Projects")
#project-joborg-tailored
#project-instaloanx-tailored

#section-title("Education")
#education-keyin-diploma
#education-brainstation-bootcamp
#education-alx-certificate
#education-futa-geology

#section-title("Volunteer Experience")
#volunteer-technest-coordinator

#section-title("Certifications")
#certifications-block
