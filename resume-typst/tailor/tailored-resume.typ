// Tailored resume — build one version per job application.
//
// This file demonstrates how to use the template helper functions.
// Later, you can move reusable content into ../sections/ and import it here.
//
// Compile from the resume-typst folder:
//   typst compile --root . tailor/tailored-resume.typ output/Abiodun_Magret_Oyedele_Resume.pdf

#import "../template/resume.typ": *

// --- Header (placeholder contact details) ---

#resume-header(
  "Your Full Name",
  "City, Country",
  "(555) 123-4567",
  "email@example.com",
  (
    "linkedin.com/in/yourprofile",
    "github.com/yourusername",
  ),
)

// --- Summary ---

#section-title("Summary")
Results-driven professional with experience delivering reliable software and collaborating across teams. Skilled in building maintainable applications, improving workflows, and communicating clearly with technical and non-technical stakeholders. Seeking a role where strong problem-solving and continuous learning are valued.

// --- Experience ---

#section-title("Experience")

#entry(
  "Software Engineer",
  "Example Company",
  "Jan 2022 – Present",
  "Remote",
  bullet-list((
    "Designed and shipped features used by thousands of active users each month",
    "Collaborated with product and design to deliver projects on schedule",
    "Improved application performance and reduced bug reports through testing and code review",
  )),
)

#entry(
  "Junior Developer",
  "Sample Startup",
  "Jun 2020 – Dec 2021",
  "Toronto, ON",
  bullet-list((
    "Built internal tools that reduced manual work for operations teams",
    "Maintained documentation and supported onboarding for new team members",
  )),
)

// --- Skills ---

#section-title("Skills")

#skills-line("Languages", ("JavaScript", "TypeScript", "Python", "SQL"))
#skills-line("Frameworks", ("React", "Next.js", "Node.js"))
#skills-line("Tools", ("Git", "Docker", "CI/CD", "PostgreSQL"))
#skills-line("Soft Skills", ("Communication", "Team collaboration", "Problem solving"))

// --- Projects ---

#section-title("Projects")

#entry(
  "Portfolio Website",
  "Personal Project",
  "2024",
  "",
  [
    A responsive website showcasing selected work and technical writing.
    #v(0.1em)
    #bullet-list((
      "Implemented accessible layout and fast page loads",
      "Deployed with automated build and preview workflow",
    ))
  ],
)

// --- Education ---

#section-title("Education")

#entry(
  "Bachelor of Science in Computer Science",
  "Example University",
  "2016 – 2020",
  "City, Country",
  [
    Relevant coursework: Data Structures, Algorithms, Databases, Software Engineering.
  ],
)

// --- Volunteer (uncomment when relevant) ---

// #section-title("Volunteer")
//
// #entry(
//   "Mentor",
//   "Community Tech Program",
//   "2023 – Present",
//   "City, Country",
//   bullet-list((
//     "Supported learners with fundamentals of programming and career guidance",
//     "Led small group sessions and answered questions during project weeks",
//   )),
// )

// --- Certifications (uncomment when relevant) ---

// #section-title("Certifications")
//
// #bullet-list((
//   "Example Certification — Issuing Organization (2024)",
//   "Another Credential — Issuing Organization (2023)",
// ))
