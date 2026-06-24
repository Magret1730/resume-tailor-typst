// Header section — name and contact details.
//
// Import in tailor/tailored-resume.typ:
//   #import "../sections/header.typ": header
//   #header

#import "../template/resume.typ": resume-header

#let header = resume-header(
  "Abiodun Magret Oyedele",
  "Mount Pearl",
  "(709) 219-7797",
  "belloabiodun17@gmail.com",
  (
    "magret.ca",
    "github.com/Magret1730",
    "linkedin.com/in/oyedele-abiodun",
  ),
)
