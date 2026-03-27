# Skill playground showcase

This folder is a **standalone teaching codebase** derived from `examples/skill-playground` in the [mattpocock/skills](https://github.com/mattpocock/skills) repo. It uses **snapshot folders** so you can compare the code before and after each skill-driven change.

**Authoring vs published clone**

- **Here (in the skills repo):** canonical checkout-refactor showcase. Regenerate snapshots with [`scripts/regenerate-snapshots.sh`](scripts/regenerate-snapshots.sh); pins are documented in [`plans/checkout-refactor-ideal-teaching-order.md`](../../plans/checkout-refactor-ideal-teaching-order.md).
- **Published tutorial:** GitHub [**kujinlee/claude-skill-playground**](https://github.com/kujinlee/claude-skill-playground). **Local clone** (maintainer): `~/code/claude-code-tutorial/claude-skill-playground`. Copy this directory when you cut a release—layout stays the same.

## Agent skills (Claude Code)

This project **does not** ship `.claude/`, `.agents/`, or bundled skills. Students install skills with the **`skills` CLI** when they need them (requires Node.js for `npx`).

1. **Browse the full catalog** — same install pattern for every skill:  
   [github.com/kujinlee/skills — README](https://github.com/kujinlee/skills/blob/main/README.md) · [open in vscode.dev](https://vscode.dev/github/kujinlee/skills/blob/main/README.md)  
   Upstream reference: [mattpocock/skills](https://github.com/mattpocock/skills) (use `mattpocock/skills/…` in commands if you are not using a fork).

2. **Install one skill** (from your machine, often from this repo’s root):

   ```bash
   npx skills@latest add kujinlee/skills/<skill-name>
   # or: npx skills@latest add mattpocock/skills/<skill-name>
   ```

   Repeat for each skill you need. Installs go where your Claude Code / skills tooling expects (for example under `~/.claude/skills` or project-local paths—see the `skills` package behavior on your setup).

3. **Checkout-refactor curriculum** — skills referenced by the step snapshots (install **as you reach each step**, or install all at once):

   | Skill | Install command (fork) | Install command (upstream) |
   |-------|-------------------------|----------------------------|
   | write-a-prd | `npx skills@latest add kujinlee/skills/write-a-prd` | `… mattpocock/skills/write-a-prd` |
   | prd-to-plan | `… kujinlee/skills/prd-to-plan` | `… mattpocock/skills/prd-to-plan` |
   | request-refactor-plan | `… kujinlee/skills/request-refactor-plan` | `…` |
   | improve-codebase-architecture | `… kujinlee/skills/improve-codebase-architecture` | `…` |
   | design-an-interface | `… kujinlee/skills/design-an-interface` | `…` |
   | tdd | `… kujinlee/skills/tdd` | `…` |
   | grill-me (optional) | `… kujinlee/skills/grill-me` | `…` |
   | triage-issue (optional) | `… kujinlee/skills/triage-issue` | `…` |
   | migrate-to-shoehorn | `… kujinlee/skills/migrate-to-shoehorn` | `…` |

   Your fork **`kujinlee/skills`** should track **`mattpocock/skills`** if you want identical skill content; otherwise prefer **`mattpocock/skills`** in the commands above.

4. **Install everything for this tutorial** (optional; includes optional skills):

   ```bash
   OWNER=kujinlee   # or: mattpocock
   for s in write-a-prd prd-to-plan request-refactor-plan improve-codebase-architecture design-an-interface tdd grill-me triage-issue migrate-to-shoehorn; do
     npx skills@latest add "$OWNER/skills/$s"
   done
   ```

## Layout

| Path | Meaning |
|------|--------|
| `src/`, `tests/`, `docs/` | **Working tree** — latest completed step while the showcase is built |
| `snapshots/00-baseline/` … `snapshots/07-migrate-shoehorn/` | **Frozen** copies per step (see [`snapshots/README.md`](snapshots/README.md), [`plans/checkout-refactor-ideal-teaching-order.md`](../../plans/checkout-refactor-ideal-teaching-order.md)) |
| `docs/showcase/` | Step-by-step narrative and [CURRICULUM.md](docs/showcase/CURRICULUM.md) |
| `docs/artifacts/` | Exported outputs (PRDs, triage notes, plans, issue bodies) |

## Quick start

**Published repo** ([claude-skill-playground](https://github.com/kujinlee/claude-skill-playground)):

```bash
git clone https://github.com/kujinlee/claude-skill-playground.git
cd claude-skill-playground
npm install
npm test
```

**Inside the mattpocock/skills monorepo:**

```bash
cd examples/skill-playground-showcase
npm install
npm test
```

## Compare snapshots

```bash
# Example: baseline vs product-and-design
diff -ru snapshots/00-baseline/src snapshots/01-product-and-design/src
diff -ru snapshots/00-baseline/docs snapshots/01-product-and-design/docs
```

## Regenerate frozen snapshots

From the skills repo, with `examples/skill-playground` history available:

```bash
cd examples/skill-playground-showcase
./scripts/regenerate-snapshots.sh
```

Then run `npm install && npm test` at the showcase root (working tree unchanged; snapshots are for diffing).

## Copy to `kujinlee/claude-skill-playground`

**GitHub:** [kujinlee/claude-skill-playground](https://github.com/kujinlee/claude-skill-playground). **Local clone:** `~/code/claude-code-tutorial/claude-skill-playground` (change if yours differs). From the **skills** repo root:

```bash
rsync -a --delete --exclude node_modules \
  examples/skill-playground-showcase/ \
  ~/code/claude-code-tutorial/claude-skill-playground/

cd ~/code/claude-code-tutorial/claude-skill-playground
git add -A && git commit -m "chore: sync from skill-playground-showcase" && git push origin
```
