#!/usr/bin/env bash
# Regenerate snapshots/00-* … 07-* from examples/skill-playground history.
# Run from anywhere; requires a git checkout of the skills repo.
set -euo pipefail

SHOWCASE_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SKILLS_ROOT="$(cd "$SHOWCASE_ROOT/../.." && pwd)"
SNAP="$SHOWCASE_ROOT/snapshots"
TMP="$(mktemp -d)"
cleanup() { rm -rf "$TMP"; }
trap cleanup EXIT

cd "$SKILLS_ROOT"

extract() {
  local commit="$1" dest_name="$2"
  rm -rf "$TMP/extract"
  mkdir -p "$TMP/extract"
  git archive "$commit" examples/skill-playground | tar -x -C "$TMP/extract"
  rm -rf "$SNAP/$dest_name"
  mv "$TMP/extract/examples/skill-playground" "$SNAP/$dest_name"
}

extract 7c7228d "00-baseline"
extract 1fdb32d "01-product-and-design"
extract 2f3779c "02-day1-characterization"

extract 2f3779c "03-day1-day2-gates"
git show c4f50a7:examples/skill-playground/docs/CHECKLIST-day-1-checkout-refactor.md \
  > "$SNAP/03-day1-day2-gates/docs/CHECKLIST-day-1-checkout-refactor.md"
git show c4f50a7:examples/skill-playground/docs/CHECKLIST-day-2-checkout-refactor.md \
  > "$SNAP/03-day1-day2-gates/docs/CHECKLIST-day-2-checkout-refactor.md"

extract e39ac3b "04-day2-deep-boundaries"
extract 854cd78 "05-loyalty-and-regression"
extract 2d124aa "06-review-and-organize"
extract 4bb070f "07-migrate-shoehorn"

echo "OK: snapshots under $SNAP"
