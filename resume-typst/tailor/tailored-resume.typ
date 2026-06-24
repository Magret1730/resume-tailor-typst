// Tailored resume — current version assembled from section imports.
//
// This rebuilds the current resume without job-specific tailoring.
// To tailor for a new role: read job-description.txt, swap summary variants,
// reorder sections, and comment out entries that are not relevant.
//
// Compile from the resume-typst folder:
//   typst compile --root . tailor/tailored-resume.typ output/Abiodun_Magret_Oyedele_Resume.pdf

#import "../template/resume.typ": section-title

#import "../sections/header.typ": header
#import "../sections/summaries.typ": summary_healthcare_ai
#import "../sections/experience.typ": experience-expertise-hub, experience-vifta
#import "../sections/skills.typ": skills-block
#import "../sections/projects.typ": project-joborg, project-instaloanx
#import "../sections/education.typ": (
  education-keyin-diploma,
  education-brainstation-bootcamp,
  education-alx-certificate,
  education-futa-geology,
)
#import "../sections/volunteer.typ": volunteer-technest-coordinator
#import "../sections/certifications.typ": certifications-block

// --- Assembled resume ---

#header

#section-title("Summary of Qualifications")
#summary_healthcare_ai

#section-title("Work Experience")
#experience-expertise-hub
#experience-vifta

#section-title("Skills")
#skills-block

#section-title("Projects")
#project-joborg
#project-instaloanx

#section-title("Education")
#education-keyin-diploma
#education-brainstation-bootcamp
#education-alx-certificate
#education-futa-geology

#section-title("Volunteer Experience")
#volunteer-technest-coordinator

#section-title("Certifications")
#certifications-block
