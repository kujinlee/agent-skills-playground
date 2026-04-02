# Skill playground

A **deliberately imperfect** mini codebase for practicing the skills in the parent repo. Nothing here is “production quality”—that’s the point.

## Quick start

```bash
# From the agent-skills-playground repo root (not inside snapshots/)
npm install
npm test
```

## Phased plan (repo root)

Loyalty work is phased from step **01** onward in **`docs/01-loyalty-points-checkout-plan.md`** at the tutorial repository root. This **00-baseline** snapshot is **code and tests** only.


## What’s wrong on purpose

| Area | What you’ll see |
|------|-----------------|
| **Architecture** | Checkout is split across many tiny modules with a thin “orchestrator.” Easy to read one file, hard to see the real behavior. |
| **Bug** | Totals with discounts are wrong in an edge case (run tests—one fails). |
| **Product ambiguity** | `docs/00-PRODUCT_BRIEF.md` is vague on rules for a “loyalty” feature—good fuel for PRD / grill-me. |
| **Types** | Tests use `as` casts—usable with **migrate-to-shoehorn** if you add that skill. |

## Try a skill (copy-paste prompts)

**write-a-prd** — “Using `docs/00-PRODUCT_BRIEF.md` and this codebase, run the write-a-prd skill and draft a PRD for the loyalty program.”

**grill-me** — “Grill me on my plan to fix checkout by merging all of `src/checkout/*.ts` into one file.”

**prd-to-plan** / **prd-to-issues** — After you have a PRD (or the brief), “Turn this into a phased plan” or “Break into tasks in your tracker (for example with **prd-to-issues**).”

**tdd** — “Using TDD, add support for a `minimumSpend` field on coupons (see brief). One vertical slice at a time.”

**triage-issue** — “We’re seeing wrong totals when PERCENT coupons stack with items that have an `itemDiscount`. Triage and propose a fix plan.” (Hint: run `npm test`.)

**improve-codebase-architecture** — “Explore `src/checkout/` for deepening opportunities; don’t implement yet—candidates and RFC-style output only.”

**design-an-interface** — “Propose alternative public APIs for a deepened `Checkout` module that hides today’s file split.”

**request-refactor-plan** — “Interview me and produce a tiny-commit refactor plan for consolidating checkout, then produce a tracker-ready write-up.”

**scaffold-exercises** — Less natural here; use when you want a new exercise tree: “Scaffold exercises under a new `exercises/` tree in this repository for learning checkout refactors.”

**migrate-to-shoehorn** — “Replace unsafe `as` in `tests/` with @total-typescript/shoehorn.” (Add the dependency first if needed.)

## Layout

```
src/checkout/     # shallow slices + orchestrator
tests/            # Vitest; one failing test documents the bug
docs/             # vague product brief
```
# skills
