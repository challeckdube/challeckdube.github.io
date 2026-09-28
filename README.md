# Connor Halleck-Dube — academic website

## Preview

Unzip this folder, then double-click `index.html`. Navigation and styling work directly from your filesystem. Alternatively, run `python3 -m http.server 8000` inside the folder and visit http://localhost:8000.

## Before publishing

The name and broad research interests are drafted from supplied context. Review the wording. Everything in square brackets is a placeholder: replace it or remove the corresponding section. The sample paper, talk, course, and CV entries are examples, not factual claims.

1. Add your position, institution, and biography to `index.html`.
2. Replace `[Current institution]` in the sidebar of all five main pages.
3. Add your email and address in the Contact section of `index.html`. To make email clickable: `<a href="mailto:YOUR-EMAIL">YOUR-EMAIL</a>`.
4. Add your real papers to `research.html`. Copy an `<article class="entry">...</article>` block for each paper. Comments show where PDF and arXiv links go. Remove placeholder notices after adding real entries.
5. Complete `teaching.html`, `talks.html`, and `cv.html`; delete unused sections.
6. Put your CV in `files/cv.pdf`. In `cv.html`, uncomment the supplied download link and remove the “not yet added” notice.
7. Optionally save your portrait as `assets/portrait.jpg`. Each main HTML page includes the exact image tag in a comment after the initials monogram; replace the monogram with that tag. Initials are intentional and work if you prefer no portrait.
8. Optional: add verified ORCID, arXiv author, or institutional links using the sidebar comment.

## Publish on GitHub Pages

1. Create a public repository named `YOUR-USERNAME.github.io`, initialized with a README.
2. Upload the CONTENTS of this folder to the repository root, so `index.html` sits at the top level, not inside an `academic-website` subfolder. Preserve the `assets` and `files` folders.
3. Include the empty `.nojekyll` file. If your upload interface omits hidden files, use Add file → Create new file, name it `.nojekyll`, and save it.
4. In Settings → Pages, choose Deploy from a branch, `main`, and `/(root)`; click Save.
5. Open `https://YOUR-USERNAME.github.io/` after deployment completes (allow up to ten minutes).
6. Later, edit HTML or upload replacement PDFs and commit the changes. GitHub automatically republishes.

For a project repository, the normal pages use relative URLs and work under a subdirectory. Change the homepage link in `404.html` from `/` to `/REPOSITORY-NAME/`. The included 404 page otherwise targets a user site. Custom domain setup is optional; no domain or canonical URL has been assumed.

## Editing guide

- `index.html`: biography, research overview, contact.
- `research.html`: research, publications, abstracts, thesis, notes.
- `teaching.html`: courses and resources.
- `talks.html`: talks and seminars.
- `cv.html`: CV sections and optional PDF link.
- `404.html`: missing-page response on GitHub Pages.
- `assets/style.css`: all layout, typography, colors, mobile, and print rules.
- `assets/favicon.svg`: simple initial favicon.
- `files/`: public PDFs.

Headers, sidebars, and footers are repeated in the HTML so every page remains usable without JavaScript or a generator. Update them in all five pages when changing affiliation, name, or navigation. Each page marks its own active navigation link with `aria-current="page"`.

Colors are CSS variables at the start of the stylesheet. Body text uses system fonts; headings use Georgia. Native `<details>` elements provide expandable abstracts. The site includes a skip link, keyboard focus indicators, wrapping mobile navigation, and print styles.

To add a page, copy an existing HTML file, edit the title, description, and `<main>`, and update the navigation in every page. Use `.html` links for compatibility with both local preview and GitHub Pages.

For mathematical notation, you can add MathJax later; it is intentionally not loaded by default. Unicode symbols or simple HTML work without a dependency.

## Design references

- https://davidaretz.github.io/
- https://academicpages.github.io/
- https://github.com/academicpages/academicpages.github.io

No source code or personal photograph from either reference is included. You may freely modify and use these generated files.
