# Curriculum (ordered snapshots)

Snapshots **00–07** are **frozen** from `examples/skill-playground` history (see [`plans/checkout-refactor-ideal-teaching-order.md`](../../../plans/checkout-refactor-ideal-teaching-order.md)). The working tree at the showcase root may still match an older lesson; align it by copying from the latest snapshot you are teaching.

## Sequence

| # | Slug | Purpose |
|---|------|---------|
| 00 | `baseline` | Deliberately shallow checkout; 2 tests |
| 01 | `product-and-design` | PRD, plan, issue, RFC; `computeCheckout` surfaces |
| 02 | `day1-characterization` | Characterization tests + Day 1 checklist |
| 03 | `day1-day2-gates` | Both checklists + rubrics before deep refactor (hybrid snapshot) |
| 04 | `day2-deep-boundaries` | `priceOrder`, adapters, DI |
| 05 | `loyalty-and-regression` | Loyalty + hardening tests |
| 06 | `review-and-organize` | Review doc + `docs/checkout-refactor/` layout |
| 07 | `migrate-shoehorn` | Shoehorn in tests |

## Regenerating snapshots

From the **skills** repo root:

```bash
# See plans/checkout-refactor-ideal-teaching-order.md — git archive per commit;
# step 03 overlays two checklist files from c4f50a7 onto 2f3779c.
```

Do not edit frozen snapshots except to fix copy mistakes in the same change as the freeze.
