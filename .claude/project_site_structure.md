---
name: Website structure and blog post conventions
description: Quarto website structure — where posts live, how listings work, presentation paths
type: project
---

This is a Quarto website (`_quarto.yml`, output to `docs/`), hosted at `aureliensallin.ch`.

- Blog posts live in `posts/<folder>/blog.qmd` (or similar `.qmd` name)
- `posts/_metadata.yml` sets `freeze: auto` and `title-block-banner: true` for all posts
- `posts.qmd` auto-lists all posts in `posts/` by date descending
- Presentations are compiled self-contained HTML in `docs/presentations/` — link as `/presentations/filename.html`
- The Fribourg 2026 presentation is at `docs/presentations/fribourg2026.html` → `/presentations/fribourg2026.html`

**How to apply:** New blog posts go in `posts/<YYYYMM_slug>/blog.qmd`. Images copied to the same folder. No need to register posts anywhere — the listing picks them up automatically.
