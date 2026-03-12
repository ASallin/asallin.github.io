# CLAUDE.md — Instructions for Claude on this project

## Who Aurélien is

Aurélien Sallin is a **Senior Economist and Data Scientist** at a major Swiss health insurance company (SWICA), working on alternative financing models, Value-Based Healthcare, and causal inference on claims data. He also **teaches data science with R and introductory programming** for undergraduate economists at the University of St. Gallen. He is an active biker/runner, co-organizes the Zürich R User Group, and sits on a local audit commission.

This website is his personal/professional site. Blog posts are a mix of research communication (health economics), teaching reflections, and personal data projects (Strava art, etc.). Some posts are in English, some in German depending on the intended audience.

---

## Writing style — key traits

- **Clear, structured, evidence-based.** Aurélien writes like a thoughtful economist: precise, grounded in data, and careful about measurement. Avoid vague claims; quantify when possible ("57.82% reduction", "15.65 million CHF saved", "322h biking").
- **Accessible but not dumbed down.** He explains methods and concepts in plain language without sacrificing accuracy. He bridges technical and general audiences.
- **Uses bold liberally** for first mentions of key terms and key takeaways.
- **Concrete human stories motivate the technical.** The Git post starts with Max, Hanna and Juliet. The Strava post starts with what biking means to him personally. Lead with context and story, then go technical.
- **Declarative, punchy section headers.** e.g. "Financial Incentives: The Game Changer", "Know your data", "The final story: insights and visualization".
- **Occasional dry humor and light emoji** — natural, not forced. (😬🥁, 🏆🎯✅). Don't overdo it.
- **Acknowledges collaborators and sources** at the end of posts. He credits people explicitly.
- **Ends with implications or a takeaway** that ties back to the broader theme.

---

## Voice and tone

- First person, warm but professional.
- Direct: he doesn't pad sentences. Short paragraphs. Cut filler.
- He uses "we" when referring to collaborative research (e.g. "we analyzed..."), and "I" for personal projects and teaching reflections.
- Not self-promotional — states facts about his work without overselling.
- He mentions Switzerland, Swiss institutions, and Swiss policy contexts naturally.

---

## Technical conventions

### R and Quarto
- **R is the primary language.** Tidyverse style (`|>` pipe), ggplot2 for all visualization.
- **ggplot theme**: `theme_classic()` is the standard. Subtle grid lines in grey90. Bold plot titles, grey30 subtitles.
- Transparent backgrounds: `bg = "transparent"` in `ggsave()`, `dev.args: bg: transparent` in knitr opts.
- **Code chunks**: always `code-fold: true` with meaningful `code-summary:` labels. Non-displayed chunks use `eval: false` / `echo: false`.
- Large data is cached as `.qs` files (using the `qs` package). Never re-download if a cache file exists.
- Post assets (images, data) live in a `cache/` subdirectory within each post folder.
- Figures saved for LinkedIn separately (smaller dimensions).

### Quarto-specific
- Vertical spacing: use `\` (Quarto line break) rather than `<br>` inside prose sections.
- Columns layout via `::: {.columns}` and `::: {.column width="X%"}`.
- Scrollytelling via the `closeread` extension (used in vitd post).
- `toc: false` is the default for blog posts.
- `draft: true` in frontmatter to suppress rendering of unpublished posts.
- Output directory is `docs/` (GitHub Pages source).

### Project structure
- Blog posts: `posts/<YYYYMM_slug>/blog.qmd` (or `<slug>.qmd`)
- Post assets: `posts/<slug>/cache/` for figures and data
- Global styles: `styles.scss`, `styles_home.css`
- `_freeze/` is committed (local rendering workflow, no CI re-render)
- `docs/` is committed (rendered output for GitHub Pages)

---

## Content guidelines

- **Do not invent statistics or claims** — Aurélien's posts are grounded in real research and real data. If writing content, flag where numbers/facts need to be filled in.
- **Health economics posts** should reflect Swiss healthcare context: Smarter Medicine / Choosing Wisely, SWICA, federal reimbursement (*limitatio*), managed care contracts, quasi-experimental methods (ITS, DiD, causal ML).
- **Teaching posts** should reflect his actual courses: Data Handling (BA Econ, St. Gallen), Introduction to Programming (BEcon 4222). Mention specific tools (R, tidyverse, APIs, Quarto) accurately.
- **Personal posts** (biking, Strava) should feel personal and genuine — these are not generic data viz tutorials; they connect data to his actual life.
- When writing in **German**, match the register of Swiss academic/policy writing: clear, professional, without anglicisms unless standard.

---

## What to avoid

- Don't add excessive emojis or exclamation marks.
- Don't write generic "In conclusion, we have seen that..." endings — tie back to the specific insight.
- Don't over-explain R code that Aurélien clearly knows well — focus on the narrative around it.
- Don't suggest switching from R to Python.
- Don't pad posts with unnecessary background that the audience already knows.
- Don't break the `cache/` pattern — figures and data always go there, not in the post root.
