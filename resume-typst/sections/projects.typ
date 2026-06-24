// Projects section — reusable project entries.
//
// Import only the projects you need in tailor/tailored-resume.typ.

#import "../template/resume.typ": entry, bullet-list

#let project-joborg = entry(
  "Joborg",
  "Job Link Tracker and Automated Monitoring Platform",
  "Jun 2026 - Present",
  "",
  bullet-list((
    "Building and deploying a full-stack SaaS-style job tracking platform with a functional Node.js backend, PostgreSQL database workflows, URL validation, scheduled content monitoring, tracker records, and automated email notification logic; frontend development is in progress using Next.js.",
  )),
)

#let project-instaloanx = entry(
  "InstaloanX",
  "Loan Management Application",
  "Mar 2025",
  "",
  bullet-list((
    "Built a full-stack loan management application using React, Express.js, and MySQL, with JWT authentication, role-based access control, RESTful API integration, responsive UI screens, and environment-based deployment on Netlify.",
  )),
)
