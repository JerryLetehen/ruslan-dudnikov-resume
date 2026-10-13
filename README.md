# Ruslan Dudnikov — Résumé

My résumé, written in LaTeX and compiled to PDF. Single-page, one-column, and ATS-parsable.

**[📄 Download the résumé (PDF)](ruslan_dudnikov_resume.pdf)** &nbsp;·&nbsp; **[📁 Projects / portfolio (PDF)](ruslan_dudnikov_projects.pdf)**

![Résumé preview](resume_preview.png)

The compiled PDFs and the résumé PNG preview live in this repo and are regenerated automatically by GitHub Actions on every push to `main`, so the source and the output never drift apart.

## Edit

Two LaTeX sources:

- [`ruslan_dudnikov_resume.tex`](ruslan_dudnikov_resume.tex) — the one-page résumé.
- [`ruslan_dudnikov_projects.tex`](ruslan_dudnikov_projects.tex) — the detailed projects / portfolio document.

Edit either file, commit, and push.

## Build locally

### With a LaTeX distribution

```sh
pdflatex ruslan_dudnikov_resume.tex
pdflatex ruslan_dudnikov_projects.tex   # run twice for correct page numbers
```

### With Docker (no local LaTeX needed)

```sh
./build.sh
```

## Build on GitHub

Pushing to `main` triggers the [workflow](.github/workflows/docker-image.yml), which compiles both PDFs, renders a `resume_preview.png`, uploads the PDFs as build artifacts, and commits the regenerated files back to the repo.

## Credit

Based on the open-source [software engineer résumé template](https://github.com/sb2nov/resume) by Sourabh Bajaj, used under the MIT License.

## License

[MIT](LICENSE). The template format is MIT; all résumé content is my own.
