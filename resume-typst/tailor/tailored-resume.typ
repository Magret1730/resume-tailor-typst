// Tailored resume — build one version per job application.
//
// Steps:
// 1. Read tailor/job-description.txt
// 2. Import sections you need from ../sections/
// 3. Choose variants (summary, roles, projects)
// 4. Edit wording below if this job needs a small tweak
// 5. Compile:
//    typst compile --root . tailor/tailored-resume.typ output/Abiodun_Magret_Oyedele_Resume.pdf

#import "../template/resume.typ": section-title, entry

#import "../sections/header.typ": header
#import "../sections/summaries.typ": summary-general
#import "../sections/experience.typ": experience-role-one, experience-role-two
#import "../sections/skills.typ": skills-technical, skills-soft
#import "../sections/projects.typ": project-example-one
#import "../sections/education.typ": education-degree-one
#import "../sections/volunteer.typ": volunteer-example
#import "../sections/certifications.typ": certification-example

// --- Assembled resume (reorder or comment out sections as needed) ---

#header

#section-title("Summary")
#summary-general

#section-title("Experience")
#experience-role-one
#experience-role-two

#section-title("Skills")
#skills-technical
#v(0.3em)
#skills-soft

#section-title("Projects")
#project-example-one

#section-title("Education")
#education-degree-one

// Uncomment when relevant to the job:
// #section-title("Volunteer")
// #volunteer-example

// #section-title("Certifications")
// #certification-example
