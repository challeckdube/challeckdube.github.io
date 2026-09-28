# Academic website

A GitHub Pages / Jekyll site with a shared layout. No browser JavaScript is required.

## Edit personal information or navigation in one place

Edit **`_data/site.yml`** for the full name, short display name, research description,
affiliation, portrait, email, postal address, biography, PDF CV path, and header links.
The full name appears in the masthead and browser titles; the short name appears in
the sidebar, homepage heading, portrait alternative text, and copyright line.
`biography_html` accepts HTML links. The other fields are plain text and are escaped.

The `navigation` list controls every page’s header. For example:

```yaml
  - label: New page
    url: /new-page.html
```

Keep local paths rooted with `/`. Jekyll’s `relative_url` filter adds the configured
`baseurl`. The CV navigation link intentionally opens the PDF, as on the original
homepage; change its URL to `/cv.html` if you prefer the HTML introduction.
The shared layout automatically marks the current HTML page with `aria-current`.

## Page content and talks

- `index.html`: research overview and contact section; biography and contact values come from the shared data.
- `research.html`: research, papers, and notes. Existing paper and thesis placeholders still need your content.
- `teaching.html`: teaching content. Existing course placeholders still need your content.
- `talks.html`: generates the talk list from **`_data/talks.yml`**.
- `404.html`: missing-page response, also using the shared layout.
- `_layouts/default.html`: HTML head, header, sidebar, main container, and footer.
- `assets/style.css`: shared styles.
- `files/cv.pdf`: downloadable CV, unchanged by the template refactor.

The 14 talks were transcribed from the September 2026 PDF CV, preserving titles,
venues, dates, invited-talk labels, and named collaborators. The 2016 and 2017
entries intentionally have year-only dates. Add new talks to `_data/talks.yml` in
reverse chronological order; year headings are generated automatically. Updating
the PDF does not automatically update this data file.

To add a page, create an HTML file with this front matter and page content, then
add its link to `_data/site.yml`:

```html
---
title: New page
---
<h1>New page</h1>
<p>Page content.</p>
```

The default layout is selected in `_config.yml`; do not copy the header or sidebar.

## Preview locally

Install Ruby and Bundler, then run:

```sh
bundle install
bundle exec jekyll serve
```

Open http://localhost:4000. Jekyll builds the complete HTML into `_site/`.
Opening the source HTML directly will not render the templates. Generated pages
work without JavaScript. Do not commit `_site/`.

## GitHub Pages

In Settings → Pages, use **Deploy from a branch**, **main**, **/(root)**.
GitHub Pages builds Jekyll on each commit. Do **not** add `.nojekyll`, which would
bypass the shared templates. The site URL is https://challeckdube.github.io/.
For a project site, set `baseurl` in `_config.yml` to `/repository-name`.

## Design references

- https://academicpages.github.io/
- https://github.com/academicpages/academicpages.github.io

No source code or personal photograph from these references is included.
