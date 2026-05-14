# AGENTS.md — hexa-scale

> AI agent harness file ([agents.md](https://agents.md/) standard).
> Companion: `README.md` (human-facing intro), `SCALE.md` (24-cell SSOT), `SEED.tape` (next-session handoff).

## What hexa-scale is

The 18th `hexa-*` standalone in the dancinlab family — **multi-scale architecture** lattice. Six scales (multiverse → universe → galaxy → planet → country → city) crossed with four lifecycle phases (design → build → operate → policy) yielding `6 × 4 = 24 = J₂(6)` cells. SCALE.md is the SSOT; this repo is design-first, implementations follow.

## Repo layout

| path | what |
|---|---|
| `README.md` | 18-block README per `~/core/atlas/README-FORMAT.md` — header + 24-cell at-a-glance + status + scale ladder + phases + layout + license + cross-refs |
| `SCALE.md` | 24-cell domain ledger (§A scales · §B phases · §C the 24-cell matrix · §D cross-refs · §E log) |
| `SEED.tape` | append-only `.tape` v1.1 — next-session handoff seed (identity claims · open decisions · produces) |
| `AGENTS.md` | this file |
| `LICENSE` | MIT |
| `docs/logo.svg` | 6 nested hexagons (multiverse → city) signature |

## Conventions

1. **Honest-caveat first.** Per [`echoes/LATTICE_POLICY.md`](https://github.com/dancinlab/echoes/blob/main/LATTICE_POLICY.md): the n=6 lattice is an **organising tool**, not a substitute for real math / physics / engineering / political-economy limits. n=6 lattice-fit on external entities (NASA · SpaceX · IPCC · IBC · constitutional bodies) is **forbidden** — they use their own published invariants.
2. **3 speculative rows ≠ 3 operational rows.** Rows 1–3 (multiverse · universe · galaxy) carry `⚠ speculative` tags and explicit "no manufactured artifact" disclaimers. Rows 4–6 (planet · country · city) are `operational` — real artifacts exist; lattice is one lens among many.
3. **Reference real practitioners.** Cells in rows 4–6 cite real architects · planners · treaty texts · code books (Le Corbusier · Howard · Niemeyer · IBC · ISO 37120 · IPCC · UNFCCC · Rockström). Never claim those parties adopt the lattice.
4. **18-block README format.** Per `atlas/README-FORMAT.md`. Don't drop blocks 1–7, 11, 17, 18 (centered header · tagline · badges · keyword · `---` · paragraph · note · status · layout · license).
5. **Append-only `.tape` for trace.** Per governance principle #9b — runtime / decision logs go in `SEED.tape` (or future per-session files), never inline in `SCALE.md`.

## Governance — local rules

- note: `hexa-scale` is **design SSOT first**. Implementations (code · tools · datasets) come AFTER `SCALE.md` cells are filled with real references. Don't ship `tools/` or `lean4/` directories until the 12 operational cells (planet · country · city × 4 phases) each have ≥1 mainstream-invariant citation.
- note: Cross-references to `dancinlab/echoes` are one-way — `hexa-scale` cites `echoes/LATTICE_POLICY.md` / `LIMIT_BREAKTHROUGH.md`, but `echoes` doesn't depend on `hexa-scale`. Adding to `echoes/README.md` as the 18th family is a single-line cross-link, not a structural dependency.
- ssot-lock: `LATTICE_POLICY.md` decisions live in `dancinlab/echoes`, never re-declared here. If a cell needs a new policy clause, propose it in `echoes` first.

## Cross-references

- 🪞 [`dancinlab/echoes`](https://github.com/dancinlab/echoes) — parent discoveries catalog (17 prior families + `hexa-scale` as the 18th).
- 📐 [`echoes/LATTICE_POLICY.md`](https://github.com/dancinlab/echoes/blob/main/LATTICE_POLICY.md) — n=6 lattice policy SSOT.
- 📋 [`atlas/README-FORMAT.md`](https://github.com/dancinlab/atlas/blob/main/README-FORMAT.md) — README structure governance (18-block convention).
- ⊳ [`dancinlab/tape`](https://github.com/dancinlab/tape) — `.tape` v1.1 spec (used by `SEED.tape`).
