# Step 00 — Baseline

This snapshot matches `snapshots/00-baseline/` and the current root `src/`, `tests/`, and `docs/` at showcase bootstrap.

## What’s intentionally imperfect

| Area | What you’ll see | Why it’s there |
|------|-----------------|----------------|
| **Architecture** | Checkout split across many small modules with a thin orchestrator | Hard to see real behavior from one file — **improve-codebase-architecture**, **design-an-interface**, **request-refactor-plan** |
| **Checkout behavior** | `computeCheckout` is pure totals; `runCheckout` sends email via `sendCheckoutConfirmationEmail` | Side effects separated — good for **tdd** and **triage-issue** exercises |
| **Product spec** | `docs/PRODUCT_BRIEF.md` has loyalty rules; may drift from code | **write-a-prd**, **grill-me**, **prd-to-plan**, **prd-to-issues** |
| **Tests** | Partial fixtures use `@total-typescript/shoehorn` where migrated | **migrate-to-shoehorn** (or reintroduce `as` in a fork baseline if you want that as step 1) |
| **Docs in repo** | Extra markdown under `docs/checkout-refactor/` etc. | Example **artifacts** from refactor planning — optional for your curriculum |

## Skill → suggested prompt (starting points)

Use these with the matching skill from the parent skills repo (see main collection README).

| Skill | Suggested prompt |
|-------|------------------|
| **write-a-prd** | Using `docs/PRODUCT_BRIEF.md` and this codebase, draft a PRD for the loyalty program. |
| **grill-me** | Grill me on my plan to fix checkout by merging all of `src/checkout/*.ts` into one file. |
| **prd-to-plan** / **prd-to-issues** | Turn the PRD (or brief) into a phased plan or GitHub issues. |
| **tdd** | Using TDD, add support for a `minimumSpend` field on coupons (see brief). One vertical slice at a time. |
| **triage-issue** | Triage wrong totals when PERCENT coupons stack with `itemDiscount`; propose a TDD fix plan. |
| **improve-codebase-architecture** | Explore `src/checkout/` for deepening opportunities; candidates and RFC-style output only. |
| **design-an-interface** | Propose alternative public APIs for a deepened `Checkout` module. |
| **request-refactor-plan** | Interview me and produce a tiny-commit refactor plan for consolidating checkout. |
| **scaffold-exercises** | Scaffold exercises under `exercises/` for learning checkout refactors. |
| **migrate-to-shoehorn** | Replace unsafe `as` in `tests/` with `@total-typescript/shoehorn`. |

## Next

Go to [01-write-a-prd.md](01-write-a-prd.md) (snapshot: `snapshots/01-write-a-prd/`). For the workflow rules, see `plans/skill-playground-showcase-snapshot-workflow.md` in the parent skills repo.
