# CV — Iván Sevillano-García

LaTeX sources and compiled PDFs for my academic CV. One repository, one source of truth:
edit the `.tex`, run `./build.sh`, commit the source and the regenerated PDF together.

**Latest PDFs:** [`pdf/CV_Ivan_Sevillano_Garcia.pdf`](pdf/CV_Ivan_Sevillano_Garcia.pdf) (English) ·
[`pdf/CV_Ivan_Sevillano_Garcia_ES.pdf`](pdf/CV_Ivan_Sevillano_Garcia_ES.pdf) (Español)

## Layout

| Path | Variant | Language | Notes |
| --- | --- | --- | --- |
| `main/` | Postdoc | EN + ES | Canonical CV: full publications, open-source, teaching, service. |
| `variants/mbzuai/` | MBZUAI / ADIA Lab | EN + ES | Long researcher profile, research interests, collaboration section, funding. Used for the ADIA Lab application package. |
| `variants/compact/` | Compact | EN | Condensed one-column version. |
| `variants/twocol/` | Two-column | EN | Two-column layout for space-constrained forms. |
| `variants/modern/` | Modern sidebar | ES | Sage-green left sidebar (contact, metrics, skills, languages), selected publications. 2 pages. Palette: `#2F3E36` sidebar, `#A9C39E` headings, `#4E6B5A` accents. |
| `pdf/` | — | — | Build output, committed so the PDF is always downloadable from the repo. |

## Building

Requirements: a TeX distribution with `sourcesanspro`, `fontawesome5`, `titlesec`,
`enumitem` and `hyperref`.

```bash
./build.sh          # compiles every variant into pdf/
```

Or a single file:

```bash
cd main
pdflatex -interaction=nonstopmode CV_Ivan_Sevillano_Garcia_ES.tex
pdflatex -interaction=nonstopmode CV_Ivan_Sevillano_Garcia_ES.tex
```

Run `pdflatex` twice: the second pass resolves the `hyperref` links and section spacing.

If `pdflatex` fails with `Font SourceSansPro-*-tlf-t1--base not found` or `fa5brands1 not found`,
the font maps are not registered on that machine. Fix once:

```bash
updmap-user --enable Map=SourceSansPro.map
updmap-user --enable Map=fontawesome5.map
```

## Editing conventions

- Publication titles, journal names and the thesis title stay in their original language in
  every variant, including the Spanish one. Translating a published title makes it harder to
  match against the DOI.
- Only add entries backed by evidence. Claims in `main/` are traceable to the DOI, the
  repository, or an official document.
- Keep the Spanish and English versions of a variant structurally identical: same sections,
  same order, same facts.

## Licence

The CV content — text, figures, PDFs — is © Iván Sevillano-García. Do not reuse or redistribute
it as your own. The LaTeX template and `build.sh` may be reused freely.
