#!/usr/bin/env bash
set -eu

ROOT=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
cd "$ROOT"

mkdir -p files/research files/expository files/reu

download() {
  url="$1"
  destination="$2"
  printf 'Downloading %s\n' "$destination"
  curl --fail --location --silent --show-error "$url" --output "$destination"
}

download 'https://math.berkeley.edu/~chd/RS.pdf' files/research/research-statement.pdf
download 'https://math.berkeley.edu/~chd/expo/WFL.pdf' files/research/weighted-fundamental-lemma-draft.pdf
download 'https://math.berkeley.edu/~chd/expo/Gal_Coh.pdf' files/expository/galois-cohomology.pdf
download 'https://math.berkeley.edu/~chd/expo/2021_RTG_Workshop_Ellenberg_Zureick_Brown.pdf' files/expository/2021-rtg-workshop-notes.pdf
download 'https://math.berkeley.edu/~chd/expo/GAGA.pdf' files/expository/gaga.pdf
download 'https://math.berkeley.edu/~chd/expo/Modular_Forms_Sums_of_Squares.pdf' files/expository/modular-forms-and-sums-of-squares.pdf
download 'https://math.berkeley.edu/~chd/expo/Comparison_Theorem.pdf' files/expository/artin-comparison-theorem.pdf
download 'https://math.berkeley.edu/~chd/expo/kontsevich_formula.pdf' files/expository/kontsevich-formula.pdf
download 'https://math.berkeley.edu/~chd/expo/kontsevich_slides.pdf' files/expository/kontsevich-formula-slides.pdf

for number in 1 2 3 4 5 6 7 8 9; do
  download "https://math.berkeley.edu/~chd/REU/REU_Pset${number}.pdf" "files/reu/problem-set-${number}.pdf"
done
download 'https://math.berkeley.edu/~chd/REU/REU_OI_Problems.pdf' files/reu/orbital-integrals-problems.pdf

python3 - <<'PY'
from pathlib import Path
p = Path('_data/materials.yml')
s = p.read_text()
if 'use_local: false' not in s:
    raise SystemExit('Expected use_local: false in _data/materials.yml')
p.write_text(s.replace('use_local: false', 'use_local: true', 1))
PY

printf 'Downloaded all materials and switched the site to local PDF links.\n'
