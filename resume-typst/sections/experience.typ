// Experience section — work history entries.
//
// Store each role as a reusable block. Name them clearly (e.g. role-company).
// In tailor/tailored-resume.typ, import only the roles relevant to the job.

#import "../template/resume.typ": entry, bullet-list

#let experience-role-one = entry(
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

#let experience-role-two = entry(
  "Junior Developer",
  "Sample Startup",
  "Jun 2020 – Dec 2021",
  "Toronto, ON",
  bullet-list((
    "Built internal tools that reduced manual work for operations teams",
    "Maintained documentation and supported onboarding for new team members",
  )),
)
