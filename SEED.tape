#!/usr/bin/env tape
# ══════════════════════════════════════════════════════════════
# hexa-scale — SEED tape (handoff to next session)
#
# Purpose: a new session opens this file first and has the full
# picture in <60 lines — what was bootstrapped, what's settled,
# what decisions are open, what to do next. Append-only `.tape`
# v1.1, runnable by `tape replay SEED.tape` to walk the state.
#
# Companion: README.md (human intro) · SCALE.md (24-cell SSOT)
# · AGENTS.md (project governance).
# ══════════════════════════════════════════════════════════════

# ─── §1 Identity ───────────────────────────────────────────────

@I id001 := "hexa-scale" :: identity-claim [d=2026-05-14 ok]
  kind   = "hexa-* standalone (18th in dancinlab family)"
  axis   = "multi-scale architecture"
  lattice = "6 scales × 4 phases = 24 = J₂(6) = σ(6)·τ(6)"
  parent = "dancinlab/echoes (discoveries catalog)"
  policy = "echoes/LATTICE_POLICY.md governs lattice-fit rules"

@I id002 := "hexa-scale.scales" :: identity-claim [d=2026-05-14 ok]
  ladder = "multiverse → universe → galaxy → planet → country → city"
  speculative = "[multiverse, universe, galaxy]   # no manufactured artifact"
  operational = "[planet, country, city]          # real artifacts exist"

@I id003 := "hexa-scale.phases" :: identity-claim [d=2026-05-14 ok]
  lifecycle = "design → build → operate → policy"
  matches   = "τ(6) = 4"

@I id004 := "hexa-scale.honest-caveat" :: identity-claim [d=2026-05-14 ok]
  rule = "n=6 lattice is an organising tool, NOT a substitute for real math/physics/engineering/political-economy limits"
  ext  = "n=6 lattice-fit FORBIDDEN on external entities (NASA · SpaceX · IPCC · IBC · constitutional bodies use their own published invariants)"
  authority = "echoes/LATTICE_POLICY.md §1.2/§1.3 + raw#10 C3"

# ─── §2 Bootstrap artifacts (already produced) ─────────────────

@P p001 := "README.md" :: produces [d=2026-05-14 ok]
  format = "atlas/README-FORMAT.md 18-block convention"
  lines  = "~170"
  covers = "centered header · badges · keyword · paragraph · NOTE · IMPORTANT(honest-caveat) · 24-cell at-a-glance · status · scale ladder · phases · layout · license · cross-refs"

@P p002 := "SCALE.md" :: produces [d=2026-05-14 ok]
  role   = "24-cell domain ledger SSOT"
  sections = "§A scales (A1..A6) · §B phases (B1..B4) · §C 24-cell matrix (C1..C6) · §D cross-refs · §E log"
  state  = "scaffold complete; 12 operational cells each carry 1-3 references; 12 speculative cells carry ⚠ tags + 'no manufactured artifact' disclaimers"

@P p003 := "AGENTS.md" :: produces [d=2026-05-14 ok]
  governs = "honest-caveat-first · speculative-vs-operational split · cite real practitioners · 18-block README format · append-only tape for trace"

@P p004 := "docs/logo.svg" :: produces [d=2026-05-14 ok]
  signature = "6 nested hexagons (multiverse → city) with σφτ centre node"

@P p005 := "LICENSE" :: produces [d=2026-05-14 ok]
  spdx = "MIT"

# ─── §3 Open decisions (next session resolves) ─────────────────

@D d1 := "fill-cadence" :: decision [d=2026-05-14 ?]
  text = "Fill all 12 operational cells (rows 4-6 × phases 1-4) in one session, or one row at a time (planet first, then country, then city)?"
  options = "(a) all-at-once   (b) row-by-row   (c) phase-by-phase"
  default = "(b) row-by-row — planet first (most stable references), then country, then city"

@D d2 := "cell-artifact-panel" :: decision [d=2026-05-14 ?]
  text = "Per-cell artifact panel — text-only inline citations, or include images / SVG diagrams?"
  options = "(a) text-only   (b) text + per-row hero image   (c) text + per-cell SVG diagram"
  default = "(a) text-only initially; promote a cell to (c) when it has ≥5 references and a clear visual concept"

@D d3 := "reference-style" :: decision [d=2026-05-14 ?]
  text = "Reference style across the 24 cells"
  options = "(a) inline (Author Year)   (b) end-of-cell footnotes   (c) separate REFERENCES.md   (d) BibTeX in docs/references.bib"
  default = "(a) inline + (d) docs/references.bib parallel; build reads (d) and cross-checks (a)"

@D d4 := "echoes-18th-family-link" :: decision [d=2026-05-14 ?]
  text = "How prominent should the hexa-scale row be in echoes/README.md?"
  options = "(a) one-line row in existing 17-family table   (b) new ## §18 hexa-scale section with overview table   (c) skip — let RETIRED.md / link from logo cluster do the discovery"
  default = "(a) one-line — match the 17-family treatment exactly"

@D d5 := "smallest-scale" :: decision [d=2026-05-14 ?]
  text = "Is 'city' really the smallest scale, or should a 7th be added (district / building / room)?"
  constraint = "n=6 strictly limits to 6 scales — adding a 7th breaks the J₂(6) lattice mapping"
  options = "(a) keep 6 [multiverse → city]   (b) shift 6 [universe → district / drop multiverse]   (c) collapse 6 [galaxy + universe merged] to admit 'building'"
  default = "(a) keep 6 — multiverse is the speculative-row anchor and dropping it weakens the lattice symmetry"

@D d6 := "galaxy-row-fleshing" :: decision [d=2026-05-14 ?]
  text = "Galaxy-scale cells — flesh them out (Dyson sphere literature · SETI Post-Detection Task Group docs · panspermia treaty drafts) or keep sparse?"
  options = "(a) flesh   (b) keep sparse   (c) drop galaxy-row from default view, move to docs/SPECULATIVE-GALAXY.md"
  default = "(b) keep sparse — galaxy cells reach the LATTICE_POLICY 'no manufactured artifact' rule; the honest framing is to keep them tagged ⚠ and short"

# ─── §4 Open questions (anomalies) ─────────────────────────────

@? q1 := "lean4-proof-applicability" :: anomaly [d=2026-05-14 ?]
  text = "Does hexa-scale need a Lean 4 proof (like echoes/lean4-n6/) for any claim?"
  current = "no — this repo is a DESIGN SSOT; no claim requires kernel-accepted proof; J₂(6)=24 is already proved upstream in echoes"
  unblocks = "if a future claim needs proof, lift it into echoes/lean4-* alongside Theorem B"

@? q2 := "ci-workflow" :: anomaly [d=2026-05-14 ?]
  text = "GitHub Actions for tape-canonical / domain-convention / link-check?"
  current = "none yet — `wilson/.github/workflows/lint.yml` is the precedent to copy"

@? q3 := "wilson-domain-list-integration" :: anomaly [d=2026-05-14 ?]
  text = "Does SCALE.md show up under `wilson domain list`?"
  expected = "yes — SCALE.md matches the UPPERCASE.md filename regex; governance principle #4 should auto-pick it up"
  verify-step = "run `wilson domain list` after first commit and confirm SCALE appears in the inventory"

@? q4 := "speculative-row-policy-cell-emptiness" :: anomaly [d=2026-05-14 ?]
  text = "Cells (1,4) and (2,4) — multiverse · policy, universe · policy — are empty by definition (no policy bodies exist at these scales)"
  current = "marked 'None' in §C1/C2 of SCALE.md"
  resolution = "leave as 'None'; that IS the honest answer, not a gap to fill"

# ─── §5 Planned next-session actions (in order) ────────────────

@T t1 plan := "fill-planet-row" :: planned [d=2026-05-14 N1]
  <- p002, d1
  intent = "Deepen the 4 cells of row 4 (Planet) — (4,1) terraforming design · (4,2) Biosphere 2 · (4,3) Gaia/carbon-cycle · (4,4) IPCC/Paris/Rockström — each gets 5+ specific citations with URLs / DOIs"

@T t2 plan := "fill-country-row" :: planned [d=2026-05-14 N2]
  <- t1
  intent = "Deepen row 5 (Country) — (5,1) constitutional design · (5,2) infrastructure rollout · (5,3) bureaucracy/diplomacy · (5,4) statute/treaty/IP/monetary — examples from US 1787, ROK 1948+1987, EU treaties, UN/WTO/WIPO/IMF"

@T t3 plan := "fill-city-row" :: planned [d=2026-05-14 N3]
  <- t2
  intent = "Deepen row 6 (City) — (6,1) Haussmann/Howard/Le Corbusier/Niemeyer/Songdo · (6,2) IBC/NEC/NFPA · (6,3) ISO 37120/ICLEI/STAR · (6,4) zoning/building codes/property tax"

@T t4 plan := "ci-bootstrap" :: planned [d=2026-05-14 N4]
  <- p001, q2
  intent = "Copy wilson/.github/workflows/lint.yml pattern → tape-canonical + domain-convention + link-check jobs"

@T t5 plan := "echoes-cross-link" :: planned [d=2026-05-14 N5]
  <- p001, d4
  intent = "Add `hexa-scale` as 18th family in echoes/README.md (one-line row per d4 default)"

@T t6 plan := "wilson-domain-verify" :: planned [d=2026-05-14 N6]
  <- p002, q3
  intent = "Run `wilson domain list` from ~/core/hexa-scale; confirm SCALE appears in inventory"

# ─── §6 Log ────────────────────────────────────────────────────

@A bootstrap_2026_05_14 :: handoff [d=2026-05-14 ok]
  <- id001, id002, id003, id004, p001, p002, p003, p004, p005
  => "Bootstrap complete. 5 artifacts on disk. 6 open decisions (d1..d6). 4 anomalies (q1..q4). 6 planned actions (t1..t6) in dependency order. New session: open this SEED.tape first, then SCALE.md, then start with t1 (fill-planet-row)."
