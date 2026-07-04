## Making changes to the site

This is a [Quarto](https://quarto.org/) website. Output is rendered to `docs/`, which GitHub Pages serves directly (no CI re-render).

To preview changes locally with live reload:

```
quarto preview
```

To render the full site (updates everything in `docs/`) before committing:

```
quarto render
```

To render a single page or post (faster, while iterating):

```
quarto render posts/<slug>/blog.qmd
```

After rendering, commit both the changed source files and the updated `docs/` output (and `_freeze/` if present) so GitHub Pages reflects the change.

## Sources for website creation:

### Materials by Sam Shanny-Csik
- https://ucsb-meds.github.io/creating-quarto-websites/ great intro.
- https://ucsb-meds.github.io/customizing-quarto-websites/#/title-slide
- https://ucsb-meds.github.io/EDS-296-DS-portfolios/course-materials/week2-customizing-websites.html#pre-class-prep
- https://samanthacsik.github.io/posts/2022-10-24-quarto-blogs/


### Other blogs:
- https://meghan.rbind.io/blog/

### Website by Sereina Graber
- https://serigra.github.io/Webpage_Quarto/
