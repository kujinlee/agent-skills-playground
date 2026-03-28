# Skill playground (checkout tutorial)

Checkout-refactor **tutorial codebase** with **snapshot folders** (`snapshots/00-baseline/` … `snapshots/07-migrate-shoehorn/`) so you can compare the project at each step. The working tree under `src/`, `tests/`, and `docs/` matches the **final** state after the refactor track.

---

## Credits

**Agent skills** used with this tutorial come from the collection by **[Matt Pocock](https://github.com/mattpocock)** in **[mattpocock/skills](https://github.com/mattpocock/skills)**. Browse every skill and its install command in the **[mattpocock/skills README](https://github.com/mattpocock/skills/blob/main/README.md)**.

This repository is a **hands-on tutorial project**; it does not bundle skill definitions (install them with the commands below).

---

## Installing agent skills

This project **does not** ship skill packages under `.claude/`, `.agents/`, or similar—those are created when **you** install skills. The installer is the open **[Skills CLI](https://github.com/vercel-labs/skills)** (Vercel Labs): `npx skills@latest …`. It targets a **generic** agent-skills layout; your editor or agent (Claude Code, Cursor, Codex, and others per [the Skills project](https://skills.sh)) decides how it consumes them. See the **[CLI docs](https://skills.sh/docs/cli)** and the **[`skills` package on npm](https://www.npmjs.com/package/skills)** for details.

```bash
npx skills@latest add mattpocock/skills/<skill-name>
```

### Skills used in this checkout tutorial

Install **as you go**, or use the loop at the end. Optional skills are marked.

| Skill | Install command |
|-------|-----------------|
| write-a-prd | `npx skills@latest add mattpocock/skills/write-a-prd` |
| prd-to-plan | `npx skills@latest add mattpocock/skills/prd-to-plan` |
| request-refactor-plan | `npx skills@latest add mattpocock/skills/request-refactor-plan` |
| improve-codebase-architecture | `npx skills@latest add mattpocock/skills/improve-codebase-architecture` |
| design-an-interface | `npx skills@latest add mattpocock/skills/design-an-interface` |
| tdd | `npx skills@latest add mattpocock/skills/tdd` |
| grill-me (optional) | `npx skills@latest add mattpocock/skills/grill-me` |
| triage-issue (optional) | `npx skills@latest add mattpocock/skills/triage-issue` |
| migrate-to-shoehorn | `npx skills@latest add mattpocock/skills/migrate-to-shoehorn` |

**Install all of the above in one go (optional):**

```bash
for s in write-a-prd prd-to-plan request-refactor-plan improve-codebase-architecture design-an-interface tdd grill-me triage-issue migrate-to-shoehorn; do
  npx skills@latest add "mattpocock/skills/$s"
done
```

---

## Quick start

```bash
git clone https://github.com/kujinlee/agent-skills-playground.git
cd agent-skills-playground
npm install
npm test
```

Then install the skills you need (see above).

---

## Layout

| Path | Meaning |
|------|---------|
| `src/`, `tests/`, `docs/` | **Working tree** — final refactored code + tests + docs |
| `snapshots/00-baseline/` … `snapshots/07-migrate-shoehorn/` | **Frozen** copies per step — see [`snapshots/README.md`](snapshots/README.md) |
| `docs/checkout-refactor/` | Refactor checklists, RFC, issue, review, summary |
| `docs/*.md` (root) | Product brief, PRD, etc. |

---

## Compare snapshots

```bash
# Example: baseline vs product-and-design
diff -ru snapshots/00-baseline/src snapshots/01-product-and-design/src
diff -ru snapshots/00-baseline/docs snapshots/01-product-and-design/docs
```
