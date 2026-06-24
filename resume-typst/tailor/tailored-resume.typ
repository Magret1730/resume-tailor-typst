// =============================================================================
// TAILORED RESUME — one working resume per job application
// =============================================================================
//
// Default below: your current resume (no job-specific tailoring applied yet).
//
// Workflow:
//   1. Paste the job posting into tailor/job-description.txt
//   2. Edit the TAILORING AREAS below (or ask Cursor to help)
//   3. Review every change manually — do not send without checking
//   4. Compile:
//        typst compile --root . tailor/tailored-resume.typ output/Abiodun_Magret_Oyedele_Resume.pdf
//
// Content library lives in ../sections/ — edit those files to update reusable
// content. Edit THIS file to choose what to include for one specific job.

#import "../template/resume.typ": section-title

// =============================================================================
// TAILORING AREA 1 — SUMMARY SELECTION
// =============================================================================
//
// Pick ONE summary variable. Import only the one you need, then use it below.
//
// All summary variants are ready in sections/summaries.typ. Pick ONE:
//   summary_healthcare_ai  → healthcare / software jobs (current default)
//   summary_general        → general software development roles
//   summary_fullstack      → full-stack development roles
//   summary_frontend       → frontend-focused roles
//   summary_backend        → backend-focused roles
//   summary_geo_tech       → geology / GIS / technical software roles
//   summary_coordinator    → coordinator / mentoring / program roles
//
// To switch: change the import line below, then update the matching line in
// the "Assembled resume" section.

#import "../sections/summaries.typ": summary_healthcare_ai
// #import "../sections/summaries.typ": summary_general
// #import "../sections/summaries.typ": summary_fullstack
// #import "../sections/summaries.typ": summary_frontend
// #import "../sections/summaries.typ": summary_backend
// #import "../sections/summaries.typ": summary_geo_tech
// #import "../sections/summaries.typ": summary_coordinator

// =============================================================================
// TAILORING AREA 2 — WORK EXPERIENCE
// =============================================================================
//
// Import the roles relevant to this job. Comment out any role that does not
// fit, or reorder lines below in "Work Experience".
//
// To adjust bullets for one job:
//   - Edit the bullet text in sections/experience.typ (updates the library), OR
//   - Copy an #entry(...) block here and tweak bullets for this application only
//
// Available entries: experience-expertise-hub, experience-vifta

#import "../sections/experience.typ": experience-expertise-hub, experience-vifta

// =============================================================================
// TAILORING AREA 3 — SKILLS ORDER
// =============================================================================
//
// Default: use skills-block (all categories from sections/skills.typ).
//
// To reorder or hide categories for a job, comment out #skills-block below and
// uncomment the individual #skills-line(...) rows instead. Put the most relevant
// categories first (e.g. Frontend before Backend for a frontend role).
//
// #import "../template/resume.typ": skills-line

#import "../sections/skills.typ": skills-block

// Example — reorder categories manually (uncomment and comment out #skills-block):
// #skills-line("Frontend", ("HTML", "CSS", "React", "Next.js", "TailwindCSS", "Material UI", "Responsive Design"))
// #skills-line("Languages", ("JavaScript", "TypeScript", "Python", "SQL"))
// #skills-line("Backend", ("Node.js", "Express.js", "Flask", "RESTful APIs", "JWT Authentication"))
// #skills-line("Databases", ("PostgreSQL", "MySQL", "MongoDB"))
// #skills-line("Cloud and Deployment", ("AWS", "Netlify", "Vercel", "GitHub Actions"))
// #skills-line("Tools and Platforms", ("Git", "GitHub", "Postman", "Jira", "PostHog Event Tracking", "GitHub Pull Requests"))
// #skills-line("AI-assisted Development", ("ChatGPT", "GitHub Copilot", "Cursor", "AI-Assisted Development"))
// #skills-line("Software Development Practices", ("Agile Scrum", "Unit Testing", "API Design", "Code Reviews", "Version Control", "Collaborative Software Development"))

// =============================================================================
// TAILORING AREA 4 — PROJECT SELECTION
// =============================================================================
//
// Include only projects that support this application. Comment out imports
// and the matching lines in "Projects" below.
//
// Available entries: project-joborg, project-instaloanx

#import "../sections/projects.typ": project-joborg, project-instaloanx

// =============================================================================
// TAILORING AREA 5 — EDUCATION, VOLUNTEER, CERTIFICATIONS (OPTIONAL)
// =============================================================================
//
// Comment out entries that are not relevant. Examples:
//   - Include education-futa-geology for geology / GIS / geo-software roles
//   - Include volunteer-technest-coordinator for mentoring / teaching / community roles
//   - Certifications are often worth keeping for cloud and software roles
//
// Education entries:
//   education-keyin-diploma, education-brainstation-bootcamp,
//   education-alx-certificate, education-futa-geology

#import "../sections/education.typ": (
  education-keyin-diploma,
  education-brainstation-bootcamp,
  education-alx-certificate,
  education-futa-geology,
)
#import "../sections/volunteer.typ": volunteer-technest-coordinator
#import "../sections/certifications.typ": certifications-block

// =============================================================================
// SHARED SECTIONS (usually unchanged when tailoring)
// =============================================================================

#import "../sections/header.typ": header

// =============================================================================
// ASSEMBLED RESUME — comment out any #section-title or entry below to remove it
// =============================================================================

#header

#section-title("Summary of Qualifications")
#summary_healthcare_ai
// When you switch summary import above, change this line too, e.g.:
// #summary_general
// #summary_fullstack
// #summary_frontend
// #summary_backend
// #summary_geo_tech
// #summary_coordinator

#section-title("Work Experience")
#experience-expertise-hub
#experience-vifta
// Comment out a role if it is not relevant:
// #experience-vifta

#section-title("Skills")
#skills-block

#section-title("Projects")
#project-joborg
#project-instaloanx
// Comment out a project if it is not relevant:
// #project-instaloanx

#section-title("Education")
#education-keyin-diploma
#education-brainstation-bootcamp
#education-alx-certificate
#education-futa-geology
// For geo/GIS roles, keep geology degree; for pure software roles you may hide it:
// #education-futa-geology

#section-title("Volunteer Experience")
#volunteer-technest-coordinator
// Remove volunteer section for roles where it does not add value:
// (comment out both lines above)

#section-title("Certifications")
#certifications-block
// Remove if the posting does not care about certifications:
// (comment out both lines above)
