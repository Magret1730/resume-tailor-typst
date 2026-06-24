# Resume Typst — Tailoring System

A simple Typst-based workflow for building tailored resumes from a reusable content library.

## How it works

1. **Reusable content** lives in `sections/` — one file per resume section.
2. **One tailored resume at a time** is built in `tailor/tailored-resume.typ`.
3. **Job context** goes in `tailor/job-description.txt` while you edit.
4. **PDF output** is compiled into `output/`.

You keep one content library and adjust `tailor/tailored-resume.typ` for each application.

## Project structure

```
resume-typst/
├── template/          # Layout and styling (shared)
├── sections/          # Reusable content library
├── tailor/            # Per-job working files
│   ├── job-description.txt
│   └── tailored-resume.typ
└── output/            # Generated PDFs
```

## Tailoring workflow

### 1. Paste the job description

Open `tailor/job-description.txt`, delete the placeholder, and paste the full job posting.

### 2. Tailor the resume

Open `tailor/tailored-resume.typ` and edit the **TAILORING AREAS** marked in comments:

- **Summary selection** — swap `summary_healthcare_ai` for another variant when ready
- **Work experience** — include, reorder, or adjust role bullets
- **Skills order** — use `skills-block` or reorder individual `skills-line` rows
- **Project selection** — include Joborg, InstaloanX, or both
- **Optional sections** — education entries, volunteer, certifications

Or ask Cursor:

> Read `tailor/job-description.txt` and tailor `tailor/tailored-resume.typ` using the section library. Do not invent experience.

### 3. Review manually

Read the PDF and the `.typ` file. Confirm every fact is accurate and nothing was invented.

### 4. Compile the PDF

From the `resume-typst` folder:

```sh
typst compile --root . tailor/tailored-resume.typ output/Abiodun_Magret_Oyedele_Resume.pdf
```

Find the PDF in `output/`.

## Summary variants

Stored in `sections/summaries.typ`:

| Variable | Use when |
|----------|----------|
| `summary_healthcare_ai` | Healthcare / software roles (current default) |
| `summary_general` | General software development roles |
| `summary_fullstack` | Full-stack development roles |
| `summary_frontend` | Frontend-focused roles |
| `summary_backend` | Backend-focused roles |
| `summary_geo_tech` | Geology / GIS / technical software roles |
| `summary_coordinator` | Coordinator / mentoring / program roles |

## Tips

- Edit `sections/` to update reusable content; edit `tailor/tailored-resume.typ` to choose what goes on one application.
- Comment out sections or entries instead of deleting them — easy to turn back on.
- Re-run the compile command after every edit to preview changes.
- Do not create separate version files — one `tailored-resume.typ` per active application is enough.
