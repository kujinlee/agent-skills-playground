# Step 01 — write-a-prd

**Skill:** `write-a-prd` (from [mattpocock/skills](https://github.com/mattpocock/skills))  
**Intent:** Capture product intent for loyalty in PRD form before implementation plans or issues.

## What changed

- **Source code:** none (`src/` identical to step 00).
- **Docs:** added `docs/artifacts/01-write-a-prd-loyalty-placeholder.md` as a shell to replace with skill output; added `docs/artifacts/README.md`.

## Suggested prompt

```
Using docs/PRODUCT_BRIEF.md and this codebase, run the write-a-prd skill and draft a PRD for the loyalty program.
```

Paste the result over `docs/artifacts/01-write-a-prd-loyalty-placeholder.md` (or save alongside with a clearer name).

## Commands

```bash
npm test
```

Expect: same as baseline (21 tests), unchanged.

## Snapshot

Frozen copy: `snapshots/01-write-a-prd/` (includes full `docs/` tree at this step).

## Next

Pick **02-&lt;slug&gt;** (e.g. `prd-to-plan`, `triage-issue`, `tdd-minimum-spend`), update [CURRICULUM.md](CURRICULUM.md), then repeat the workflow.
