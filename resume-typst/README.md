# Resume Typst — Tailoring System

A simple Typst-based workflow for building tailored resumes from a reusable content library.

## How it works

1. **Store reusable content** in `sections/` — one file per resume section (header, experience, skills, etc.).
2. **Paste a job description** into `tailor/job-description.txt` for reference while you edit.
3. **Build one tailored resume** in `tailor/tailored-resume.typ` by importing sections and choosing what to include.
4. **Compile to PDF** into `output/`.

You maintain one content library and create a new tailored resume each time you apply — without duplicating your entire resume in every file.

## Project structure

```
resume-typst/
├── template/          # Base layout and styling
├── sections/          # Reusable content library (edit once, reuse many times)
├── tailor/            # Per-job resume (select and edit content here)
└── output/            # Generated PDFs
```

## Compile command

From the `resume-typst` folder:

```sh
typst compile --root . tailor/tailored-resume.typ output/Abiodun_Magret_Oyedele_Resume.pdf
```

## Quick start

1. Add your real content to the files in `sections/`.
2. Open `tailor/tailored-resume.typ` and uncomment the sections you want for this application.
3. Adjust wording in `tailor/tailored-resume.typ` to match the job in `job-description.txt`.
4. Run the compile command above.
5. Find your PDF in `output/`.

## Tips

- Keep `sections/` as your master library — avoid deleting content; comment it out or skip imports instead.
- Use `tailor/tailored-resume.typ` only for the version you are sending for one job.
- Re-run the compile command after every edit to preview changes.
