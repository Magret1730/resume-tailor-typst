// Header section — name and contact details.
//
// Uses #resume-header(...) from template/resume.typ.
// In tailor/tailored-resume.typ, import this file and call #header,
// or call #resume-header(...) directly with your chosen details.

#import "../template/resume.typ": resume-header

#let header = resume-header(
  "Your Full Name",
  "City, Country",
  "(555) 123-4567",
  "email@example.com",
  (
    "linkedin.com/in/yourprofile",
    "github.com/yourusername",
  ),
)
