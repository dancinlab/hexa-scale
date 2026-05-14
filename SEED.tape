#!/usr/bin/env tape
# ══════════════════════════════════════════════════════════════
# hexa-scale — SEED tape
#
# Sole agent-harness + handoff file for this repo. AGENTS.md was
# folded in here on 2026-05-14 (per user decision — see §0 g8).
# `.tape` v1.1 grammar; runnable by `tape replay SEED.tape`.
#
# Companion files: README.md (human intro) · SCALE.md (24-cell SSOT).
# ══════════════════════════════════════════════════════════════

# ─── §0 Governance / conventions (absorbed AGENTS.md) ──────────

@D g1 := "honest-caveat-first" :: governance [d=2026-05-14 ok]
  rule = "Every claim coupling the n=6 lattice to an external phenomenon ships with a one-line honest caveat: lattice is an organising tool, not a substitute for real math / physics / engineering / political-economy limits."
  why  = "echoes/LATTICE_POLICY.md §1.2/§1.3 + raw#10 C3 — overclaim destroys credibility downstream"
  apply = "every section in README.md, every cell in SCALE.md, every entry in SEED.tape that mentions n=6 vs an external entity"

@D g2 := "speculative-vs-operational-split" :: governance [d=2026-05-14 ok]
  rule = "Rows 1–3 (multiverse · universe · galaxy) carry ⚠ speculative tags + explicit 'no manufactured artifact' disclaimers. Rows 4–6 (planet · country · city) are operational — real artifacts exist; lattice is one lens among many."
  why  = "Honesty about which rows have ground truth and which are research-hypothesis placeholders"
  apply = "SCALE.md §A / §C row tagging; README at-a-glance table; any future per-cell expansion"

@D g3 := "cite-real-practitioners" :: governance [d=2026-05-14 ok]
  rule = "Cells in rows 4–6 must cite real architects · planners · treaty texts · code books (Le Corbusier · Howard · Niemeyer · IBC · ISO 37120 · IPCC · UNFCCC · Rockström)."
  forbid = "claiming any external party adopts the n=6 lattice — they use their own published invariants"
  why = "echoes/LATTICE_POLICY raw#10 C3 — external-entity lattice-fit ban"

@D g4 := "18-block-readme-format" :: governance [d=2026-05-14 ok]
  rule = "README.md follows the canonical 18-block convention fixed in atlas/README-FORMAT.md."
  required = "blocks 1–7 + 8 (NOTE) + 12 (IMPORTANT honest-caveat) + 17 (layout) + 18 (license)"
  why = "Cross-repo consistency across dancinlab; auto-discoverable by tooling"

@D g5 := "tape-runtime-trace" :: governance [d=2026-05-14 ok]
  rule = "Runtime trace + agent identity + per-domain history use the `.tape` grammar (governance principle #9b)."
  apply = "SEED.tape is the SSOT for this repo's project-rules AND event stream; markdown reserved for human-prose docs (README · SCALE)"
  why = "Append-only event semantics fit governance / handoff use; tables fit prose use — separated by grammar fit"

@D g6 := "design-ssot-first" :: governance [d=2026-05-14 ok]
  rule = "hexa-scale is design SSOT first. Implementations (code · tools · datasets) come AFTER SCALE.md cells are filled with real references."
  threshold = "ship `tools/` or `lean4/` directories only after each of the 12 operational cells (planet · country · city × 4 phases) has ≥1 mainstream-invariant citation"

@D g7 := "cross-refs-one-way" :: governance [d=2026-05-14 ok]
  rule = "Cross-references to dancinlab/echoes are one-way — hexa-scale cites echoes/LATTICE_POLICY.md and LIMIT_BREAKTHROUGH.md, but echoes doesn't structurally depend on hexa-scale."
  apply = "echoes/README.md mentions hexa-scale as the 18th family in a one-line row — no shared modules, no shared schemas"

@D g8 := "ssot-lock-lattice-policy" :: governance [d=2026-05-14 ok]
  rule = "LATTICE_POLICY decisions live in dancinlab/echoes, never re-declared here."
  apply = "If a cell needs a new policy clause, propose it in echoes first, then cite the new clause from hexa-scale"

@D g9 := "agents-md-folded-into-seed" :: governance [d=2026-05-14 ok]
  rule = "AGENTS.md / CLAUDE.md were removed 2026-05-14; this SEED.tape is the sole agent-harness + governance file."
  cost = "agents.md ecosystem tooling (Claude Code · Aider · Cursor) loses auto-discovery of project context from THIS repo"
  benefit = "single SSOT in tape-native grammar; aligns with governance #9b"
  fallback = "if a future tool needs markdown agent-harness reading, re-emit AGENTS.md from this SEED.tape's §0 entries via a generator"

# ─── §1 Identity ───────────────────────────────────────────────

@I id001 := "hexa-scale" :: identity-claim [d=2026-05-14 ok]
  kind   = "hexa-* standalone (18th in dancinlab family)"
  axis   = "multi-scale architecture"
  lattice = "6 scales × 4 phases = 24 cells; coincides numerically with σ(n)·φ(n) = n·τ(n) = J₂(6) = 24 at n=6 (three formulas, same value)"
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

@P p003 := "SEED.tape (this file)" :: produces [d=2026-05-14 ok]
  role = "sole agent-harness + governance + handoff (AGENTS.md folded in)"
  sections = "§0 Governance (g1..g9) · §1 Identity (id001..id004) · §2 Produces (p001..p005) · §3 Open decisions (d1..d6) · §4 Anomalies (q1..q4) · §5 Planned (t1..t6) · §6 Log"

@P p004 := "docs/logo.svg" :: produces [d=2026-05-14 ok]
  signature = "6 nested flat-top hexagons (multiverse → city) with σφτ centre node; width:height = 2:√3 ≈ 1.155"

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
  current = "none yet — wilson/.github/workflows/lint.yml is the precedent to copy"

@? q3 := "wilson-domain-list-cwd-aware" :: anomaly [d=2026-05-14 !]
  text = "Does SCALE.md show up under `wilson domain list`?"
  result = "NO — wilson's `domain list` reads $WILSON_ROOT (~/core/wilson/TAPE.md), not cwd"
  resolution = "This is a wilson limitation, not a hexa-scale issue. File as wilson backlog: cwd-aware `domain list` OR `--cwd` flag"

@? q4 := "speculative-row-policy-cell-emptiness" :: anomaly [d=2026-05-14 ok]
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

# ─── §6 Log ────────────────────────────────────────────────────

@A bootstrap_2026_05_14 := "bootstrap" :: handoff [d=2026-05-14 ok]
  <- id001, id002, id003, id004, p001, p002, p003, p004, p005
  => "Bootstrap complete. 5 artifacts on disk. 9 governance entries (g1..g9), 5 open decisions (d1..d6 minus d4), 4 anomalies (q1..q4), 4 planned actions (t1..t4). Next session: open this SEED.tape first, then SCALE.md, start with t1 (fill-planet-row)."

@A t5_done_2026_05_14 := "echoes-cross-link done" :: log [d=2026-05-14 ok]
  <- bootstrap_2026_05_14
  => "echoes/README.md commit 89a0f08ab added hexa-scale as the 18th primary family between Aerospace and HEXA-UFO. d4 closed."

@A t6_done_2026_05_14 := "wilson-domain-verify done" :: log [d=2026-05-14 !]
  <- bootstrap_2026_05_14, q3
  => "Ran `wilson domain list` from ~/core/hexa-scale; only TAPE.md (from $WILSON_ROOT) listed. SCALE.md not picked up. Resolution: wilson cwd-aware limitation, not a hexa-scale fix — escalated to q3."

@A agents_md_merged_2026_05_14 := "AGENTS.md folded into SEED.tape" :: log [d=2026-05-14 ok]
  <- g9
  ~> p003   # supersedes old p003 'AGENTS.md' produces entry
  => "AGENTS.md + CLAUDE.md (symlink) removed. SEED.tape §0 now carries g1..g9 governance entries that previously lived as AGENTS.md prose. README.md repo layout table updated to drop the AGENTS.md row."
