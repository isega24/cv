#!/usr/bin/env bash
# Build every CV variant in main/ and variants/ into pdf/.
set -euo pipefail
cd "$(dirname "$0")"
mkdir -p pdf

for src in main/*.tex variants/*/*.tex; do
    dir=$(dirname "$src")
    base=$(basename "$src" .tex)
    (
        cd "$dir"
        pdflatex -interaction=nonstopmode -halt-on-error "$base.tex" >/dev/null
        pdflatex -interaction=nonstopmode -halt-on-error "$base.tex" >/dev/null
    )
    cp "$dir/$base.pdf" "pdf/$base.pdf"
    rm -f "$dir/$base.aux" "$dir/$base.log" "$dir/$base.out" "$dir/$base.pdf"
    printf 'built pdf/%s.pdf\n' "$base"
done
