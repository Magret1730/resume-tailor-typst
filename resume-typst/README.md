# Resume Typst — Tailoring System

A Typst-based workflow for maintaining one reusable resume content library and building tailored PDFs for each job application.

## How it works

1. **Store content once** in `sections/` — header, summaries, experience, skills, projects, education, volunteer work, certifications.
2. **Paste a job posting** into `tailor/job-description.txt` for reference.
3. **Assemble one tailored resume** in `tailor/tailored-resume.typ` by importing sections, picking a summary variant, reordering skills, and adjusting bullet emphasis.
4. **Compile a PDF** into `output/`.

You do not need separate resume files per job. Edit `tailor/tailored-resume.typ` for the application you are working on now.

## Project structure

```
resume-typst/
├── template/
│   └── resume.typ           # Layout, spacing, fonts, helper functions
├── sections/
│   ├── header.typ
│   ├── summaries.typ
│   ├── experience.typ
│   ├── skills.typ
│   ├── projects.typ
│   ├── education.typ
│   ├── volunteer.typ
│   └── certifications.typ
├── tailor/
│   ├── job-description.txt  # Paste the job posting here
│   └── tailored-resume.typ  # Active tailored resume (edit per application)
└── output/                  # Compiled PDFs
```

## Compile

From the `resume-typst` folder:

```sh
typst compile --root . tailor/tailored-resume.typ output/Abiodun_Magret_Oyedele_Resume.pdf
```

The `--root .` flag is required because `tailored-resume.typ` imports files from `sections/` and `template/`.

To watch for changes while editing:

```sh
typst watch --root . tailor/tailored-resume.typ output/Abiodun_Magret_Oyedele_Resume.pdf
```

## Tailoring workflow

### 1. Paste the job description

Open `tailor/job-description.txt` and replace the placeholder with the full posting.

### 2. Edit `tailor/tailored-resume.typ`

Typical changes:

| Area | What to do |
|------|------------|
| **Summary** | Import one variant from `sections/summaries.typ` |
| **Work experience** | Import from `sections/experience.typ`, or copy `#entry(...)` blocks and reorder bullets for the role |
| **Skills** | Import `skills-block` or reorder individual `#skills-line(...)` rows |
| **Projects** | Import project entries; put the most relevant project first |
| **Education / volunteer / certifications** | Comment out entries that are not relevant |

Or ask Cursor:

> Read `tailor/job-description.txt` and tailor `tailor/tailored-resume.typ` using the section library. Do not invent experience.

### 3. Review manually

Check the PDF and `.typ` file. Confirm every fact is accurate and nothing was invented.

### 4. Compile and send

Run the compile command above. Find the PDF in `output/`.

## Summary variants

Stored in `sections/summaries.typ`. Import **one** per application:

| Variable | Use when |
|----------|----------|
| `summary_healthcare_ai` | Healthcare / software roles (general) |
| `summary_healthcare_support` | Healthcare software, support engineering, troubleshooting, documentation |
| `summary_general` | General software development roles |
| `summary_fullstack` | Full-stack development roles |
| `summary_frontend` | Frontend-focused roles |
| `summary_backend` | Backend-focused roles |
| `summary_geo_tech` | Geology / GIS / technical software roles |
| `summary_coordinator` | Coordinator / mentoring / program roles |

Example:

```typst
#import "../sections/summaries.typ": summary_fullstack

#section-title("Summary of Qualifications")
#summary_fullstack
```

## Section library

| File | Exported content |
|------|------------------|
| `header.typ` | `header` |
| `summaries.typ` | Summary variants (see table above) |
| `experience.typ` | `experience-expertise-hub`, `experience-vifta` |
| `skills.typ` | `skills-block` |
| `projects.typ` | `project-joborg`, `project-instaloanx` |
| `education.typ` | Four education entries |
| `volunteer.typ` | `volunteer-technest-coordinator` |
| `certifications.typ` | `certifications-block` |

Update `sections/` when your master resume content changes. Update `tailor/tailored-resume.typ` when tailoring for a specific job.

## Template helpers

Defined in `template/resume.typ`:

| Function | Purpose |
|----------|---------|
| `resume-header(...)` | Centered name, contact lines, links, header rule |
| `section-title(title)` | Bold section heading (Summary has no rule line) |
| `entry(...)` | Job / project / education block |
| `bullet-list(...)` | Standard bullet list |
| `skills-line(...)` | Bold category + comma-separated skills |

## Current tailored resume

`tailor/tailored-resume.typ` is currently tailored for:

**PragmaClin Research Inc. — Graduate Transition Initiative, Junior Software Developer (Support Engineer)**

To restore your default resume, switch imports back to the section library variables (e.g. `summary_healthcare_ai`, `experience-expertise-hub`, `skills-block`, `project-joborg`).

## Tips

- Keep content truthful — reorder and emphasize; do not invent experience.
- Comment out sections or entries instead of deleting them.
- Re-run the compile command after every edit.
- Do not create a `versions/` folder — one active `tailored-resume.typ` is enough.
- Keep the resume close to **2 pages**; adjust spacing in `template/resume.typ` if needed.

## Requirements

- [Typst CLI](https://github.com/typst/typst) v0.15+ (`brew install typst`)
