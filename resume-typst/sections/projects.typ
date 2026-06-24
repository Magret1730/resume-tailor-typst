// Projects section — personal, open-source, or portfolio projects.
//
// One block per project. In tailor/tailored-resume.typ, include only projects
// that support the job you are applying for.

#import "../template/resume.typ": entry, bullet-list

#let project-example-one = entry(
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

#let project-example-two = entry(
  "Task Tracker App",
  "Personal Project",
  "2023",
  "",
  bullet-list((
    "Built a full-stack app for tracking daily tasks and deadlines",
    "Used REST API design and persistent storage",
  )),
)
