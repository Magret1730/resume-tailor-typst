// Experience section — work history entries.
//
// Store each role as a reusable block. Name them clearly (e.g. role-company).
// In tailor/tailored-resume.typ, import only the roles relevant to the job
// and reorder or shorten bullet points as needed.

#import "../template/resume.typ": entry

#let experience-role-one = entry(
  "Job Title — Company Name",
  "Start Year – End Year",
)[
  - Key achievement or responsibility (use numbers when possible)
  - Another relevant bullet point
  - Third bullet you can drop when tailoring
]

#let experience-role-two = entry(
  "Job Title — Company Name",
  "Start Year – End Year",
)[
  - Key achievement or responsibility
  - Another relevant bullet point
]
