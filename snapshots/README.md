# Snapshots

Each `NN-<slug>/` directory is a **frozen copy** of the skill-playground project at that step (see [`plans/checkout-refactor-ideal-teaching-order.md`](../../../plans/checkout-refactor-ideal-teaching-order.md) in the skills repo).

| Folder | Git source |
|--------|------------|
| `00-baseline` | `7c7228d` |
| `01-product-and-design` | `1fdb32d` |
| `02-day1-characterization` | `2f3779c` |
| `03-day1-day2-gates` | Hybrid: tree `2f3779c` + checklist files from `c4f50a7` |
| `04-day2-deep-boundaries` | `e39ac3b` |
| `05-loyalty-and-regression` | `854cd78` |
| `06-review-and-organize` | `2d124aa` |
| `07-migrate-shoehorn` | `4bb070f` |

Do not commit `node_modules/` inside snapshots. The showcase root `vitest.config.ts` excludes `**/snapshots/**` so frozen tests are not run twice.

**Regenerate:** `../scripts/regenerate-snapshots.sh` from the parent `skill-playground-showcase` directory.
