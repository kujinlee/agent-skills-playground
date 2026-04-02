# Skill playground (checkout tutorial)

Hands-on **checkout refactor tutorial**: practice [Matt Pocock](https://github.com/mattpocock)’s **[mattpocock/skills](https://github.com/mattpocock/skills)** collection on a TypeScript project with **frozen snapshots** for each stage.

## Start here

**Full walkthrough (motivation, steps 00–07, skills, diffs):** **[`docs/TUTORIAL.md`](docs/TUTORIAL.md)**

| If you need… | Open |
|--------------|------|
| Step-by-step tutorial and install commands | [`docs/TUTORIAL.md`](docs/TUTORIAL.md) |
| Baseline vs step 07 (concepts + diagrams) | [`docs/TUTORIAL.md`](docs/TUTORIAL.md) — in that file, go to the heading **Architecture: baseline vs step 07** (editor outline or search). |
| What each `snapshots/NN-…` folder is | [`snapshots/README.md`](snapshots/README.md) |
| Per-snapshot copies of the root `README` | `snapshots/<step>/README.md` (historical; **prefer `docs/TUTORIAL.md`**) |

---

## Quick start

```bash
git clone https://github.com/kujinlee/agent-skills-playground.git
cd agent-skills-playground
npm install
npm test
```

Then follow **[`docs/TUTORIAL.md`](docs/TUTORIAL.md)** and install skills as you go.

---

## Layout

| Path | Meaning |
|------|---------|
| `docs/TUTORIAL.md` | **Main tutorial** — start here for the full path |
| `src/`, `tests/` | Working tree — starts as **`snapshots/00-baseline/`**; you refactor toward **07** |
| `docs/` | `TUTORIAL.md`, step-prefixed briefs/PRD/**`01-loyalty-points-checkout-plan.md`**/checklists, etc. |
| `snapshots/` | Frozen `src/` + `tests/` per step — see [`snapshots/README.md`](snapshots/README.md) |

---

## Credits

**Agent skills** for this tutorial: **[Matt Pocock](https://github.com/mattpocock)** — **[mattpocock/skills](https://github.com/mattpocock/skills)** ([README](https://github.com/mattpocock/skills/blob/main/README.md)). Skill installer: **[Skills CLI](https://github.com/vercel-labs/skills)** / [skills.sh](https://skills.sh).

This repository is a **tutorial project**; it does not bundle skill definitions (install them per **`docs/TUTORIAL.md`**).
