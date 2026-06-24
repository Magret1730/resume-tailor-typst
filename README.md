That completed successfully. You now have Typst v0.15.0 available globally:

typst --version   # typst 0.15.0
which typst       # /opt/homebrew/bin/typst
I also placed a local copy in your project folder (useful since you asked to keep work in typst-cv):

typst-cv/bin/typst   # v0.15.0 (3ae52774)
How to use it
From anywhere (global install):

typst compile file.typ              # creates file.pdf
typst compile source.typ output.pdf # custom output path
typst watch file.typ                # auto-recompile on changes
typst help                          # all commands
From the typst-cv folder (local binary):

./bin/typst compile file.typ
Quick test
Once you have a .typ file in typst-cv, you can compile it with:

cd typst-cv
typst compile your-file.typ
If you want, I can help you set up a CV template or compile your first Typst document next.


Compile command used
cd typst-cv
typst compile cv.typ cv.pdf
To auto-rebuild on edits:

typst watch cv.typ
CV structure
Header — Name, title, contact links (email, portfolio, GitHub, LinkedIn)
Summary — Full-stack software engineer profile
Technical Skills — Full-stack and Cloud & AI (two-column layout)
Featured Projects — InstaloanX
Community & Leadership — TechNest coordination
Languages — English
Open typst-cv/cv.pdf in your file explorer or PDF viewer to review it. If you want changes — more sections, different styling, or real work history added — say what to update.