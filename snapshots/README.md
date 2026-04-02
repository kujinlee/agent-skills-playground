# Snapshots

For the **full tutorial** (steps, skills, motivation), start at **[`../docs/TUTORIAL.md`](../docs/TUTORIAL.md)**.

Each `NN-<slug>/` directory is a **frozen copy** of **`src/`** and **`tests/`** at that step. **`docs/` is not duplicated here**—briefs, PRD, **`01-loyalty-points-checkout-plan.md`**, checklists, and the rest live only in the repo root [`docs/`](../docs/). Each snapshot [`README.md`](00-baseline/README.md) points at that canonical plan where it applies. Compare `src/` and `tests/` with `diff`, or copy them from a snapshot if you want to jump to a specific stage.

Do not store `node_modules/` inside snapshot folders (they should not be part of the tutorial tree). The repository root `vitest.config.ts` excludes `**/snapshots/**` so frozen tests are not run twice.
