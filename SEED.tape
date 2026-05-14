#!/usr/bin/env tape
# ══════════════════════════════════════════════════════════════════════
# .tape v1.2 — grammar primer (cold-read by any LLM / agent / human)
# ══════════════════════════════════════════════════════════════════════
# Form: each entry is `@<type> <id> := "<subject>" :: <kind> [<grades>]`
#       optionally followed by body lines (2-space indent) — key=value,
#       edges (<- -> => …), or quoted prose.
#
# ENTRY TYPES (17):
#   Runtime (10): @S session  @U user  @A assistant  @T tool-call  @R result
#                 @H hook  @D decision  @K cost  @P provider  @? anomaly
#   Foundation:   @I identity-claim
#   Declarative:  @X external-citation  @F forbidden-pattern  @N note
#                 @C config  @L layout  @V spec-version
#
# EDGES (12, on body lines, 2-space indent):
#   Causal:     <- caused-by   -> triggers   == continues
#               ~> supersedes  !! aborts     |> verified-by
#   Effect:     => produces (followed by quoted natural-language)
#   Structural: <: specializes  :> generalizes  ?> soft-depends
#               !> conflicts-with  @> projects-to (e.g. @> AGENTS.md)
#
# GRADE TAGS (in [...] on entry header):
#   Delivery:   ok · err · denied · cancelled · partial · superseded
#   Governance: required · recommended · optional · draft · active · deprecated
#   Scoped:     allow:<x> · deny:<x>
#   Time/index: T<n> (turn)  N<n> (wall-sec)  d=<YYYY-MM-DD>
#
# PAYLOAD SYNTAX (body lines):
#   key = "value"           single-line string
#   key = [a, b, c]         array literal
#   key <<~EOF              heredoc (multi-line; ends with EOF on own line)
#     multi-line text
#   EOF
#   "see [@x1] §3"          inline citation by entry id
#   `cmd or path`           backtick code-span (inline only)
#
# Full spec: ~/core/tape/spec/tape.md (or github.com/dancinlab/tape)
# ══════════════════════════════════════════════════════════════════════
#
# hexa-scale — SEED.tape (runtime handoff to the next session)
# Companion: AGENTS.tape (static governance + identity) · SCALE.md (24-cell SSOT)
# Open this AFTER AGENTS.tape to see what's open, what's anomalous, what's planned.

@V := "tape" :: spec [active]
  version = "1.2"

# ─── §1 Bootstrap artifacts (produced this session) ───────────────────

@P p001 := "README.md" :: produces [d=2026-05-14 ok]
  format = "atlas/README-FORMAT.md 18-block convention"
  lines = "~180 (incl. NOTE about AGENTS.tape merger)"
  covers = "centered header · badges · keyword · paragraph · NOTE · IMPORTANT(honest-caveat) · 24-cell at-a-glance · status · scale ladder · phases · layout · license · cross-refs"

@P p002 := "SCALE.md" :: produces [d=2026-05-14 ok]
  role = "24-cell domain ledger SSOT"
  sections = [A_scales, B_phases, C_24_cell_matrix, D_cross_refs, E_log]
  state = "scaffold complete; 12 operational cells each carry 1-3 references; 12 speculative cells carry ⚠ tags + 'no manufactured artifact' disclaimers"

@P p003 := "AGENTS.tape" :: produces [d=2026-05-14 ok]
  role = "sole agent-harness + governance + identity (tape v1.2)"
  sections = "§1 @V · §2 @I id001..id004 · §3 @L l1 · §4 @D g1..g9 · §5 @F f1..f2 · §6 @X x1..x5 · §7 @N n1..n2 · §8 @H h1..h2"
  fallback = "@H h1 emits AGENTS.md via tape_to_agents_md (algorithm pending)"

@P p004 := "SEED.tape (this file)" :: produces [d=2026-05-14 ok]
  role = "runtime handoff — open decisions · anomalies · planned actions · log"

@P p005 := "docs/logo.svg" :: produces [d=2026-05-14 ok]
  signature = "6 nested flat-top hexagons (multiverse → city) with σφτ centre node; width:height = 2:√3 ≈ 1.155"

@P p006 := "LICENSE" :: produces [d=2026-05-14 ok]
  spdx = "MIT"

@P p007 := "CLAUDE.md → AGENTS.tape" :: produces [d=2026-05-14 ok]
  kind = "symlink"
  why = "Claude Code auto-discovery picks up AGENTS.tape via CLAUDE.md scan; grammar primer at top of AGENTS.tape teaches any LLM the .tape grammar on cold read"

# ─── §2 Open decisions (next session resolves) ────────────────────────

@D d1 := "fill-cadence" :: decision [d=2026-05-14 draft]
  text = "Fill all 12 operational cells (rows 4-6 × phases 1-4) in one session, or one row at a time (planet first, then country, then city)?"
  options = "(a) all-at-once · (b) row-by-row · (c) phase-by-phase"
  default = "(b) row-by-row — planet first (most stable references), then country, then city"

@D d2 := "cell-artifact-panel" :: decision [d=2026-05-14 draft]
  text = "Per-cell artifact panel — text-only inline citations, or include images / SVG diagrams?"
  options = "(a) text-only · (b) text + per-row hero image · (c) text + per-cell SVG diagram"
  default = "(a) text-only initially; promote a cell to (c) when it has ≥5 references and a clear visual concept"

@D d3 := "reference-style" :: decision [d=2026-05-14 draft]
  text = "Reference style across the 24 cells"
  options = "(a) inline (Author Year) · (b) end-of-cell footnotes · (c) separate REFERENCES.md · (d) BibTeX in docs/references.bib"
  default = "(a) inline + (d) docs/references.bib parallel; build reads (d) and cross-checks (a)"

@D d5 := "smallest-scale" :: decision [d=2026-05-14 draft]
  text = "Is 'city' really the smallest scale, or should a 7th be added (district / building / room)?"
  constraint = "n=6 strictly limits to 6 scales — adding a 7th breaks the J₂(6) lattice mapping"
  options = "(a) keep 6 [multiverse → city] · (b) shift 6 [universe → district / drop multiverse] · (c) collapse 6 [galaxy + universe merged] to admit 'building'"
  default = "(a) keep 6 — multiverse is the speculative-row anchor and dropping it weakens the lattice symmetry"

@D d6 := "galaxy-row-fleshing" :: decision [d=2026-05-14 draft]
  text = "Galaxy-scale cells — flesh them out (Dyson sphere literature · SETI Post-Detection Task Group docs · panspermia treaty drafts) or keep sparse?"
  options = "(a) flesh · (b) keep sparse · (c) drop galaxy-row from default view, move to docs/SPECULATIVE-GALAXY.md"
  default = "(b) keep sparse — galaxy cells reach the LATTICE_POLICY 'no manufactured artifact' rule; the honest framing is to keep them tagged ⚠ and short"

# ─── §3 Open questions (anomalies) ────────────────────────────────────

@? q1 := "lean4-proof-applicability" :: anomaly [d=2026-05-14 draft]
  text = "Does hexa-scale need a Lean 4 proof (like echoes/lean4-n6/) for any claim?"
  current = "no — this repo is a DESIGN SSOT; no claim requires kernel-accepted proof; J₂(6)=24 is already proved upstream in echoes"
  unblocks = "if a future claim needs proof, lift it into echoes/lean4-* alongside Theorem B"

@? q2 := "ci-workflow" :: anomaly [d=2026-05-14 draft]
  text = "GitHub Actions for tape-canonical / domain-convention / link-check?"
  current = "none yet — wilson/.github/workflows/lint.yml is the precedent to copy"

@? q3 := "wilson-domain-list-cwd-aware" :: anomaly [d=2026-05-14 err]
  text = "wilson `domain list` reads $WILSON_ROOT/TAPE.md, not cwd — SCALE.md not picked up"
  resolution = "wilson backlog: cwd-aware `domain list` OR `--cwd` flag (not a hexa-scale fix)"

@? q4 := "speculative-row-policy-cell-emptiness" :: anomaly [d=2026-05-14 ok]
  text = "Cells (1,4) and (2,4) — multiverse · policy, universe · policy — empty by definition"
  resolution = "leave as 'None'; that IS the honest answer, not a gap to fill"

# ─── §4 Planned next-session actions (in order) ──────────────────────

@T t1 plan := "fill-planet-row" :: planned [d=2026-05-14 N1]
  <- p002, d1
  intent = "Deepen row 4 (Planet) — (4,1) terraforming design · (4,2) Biosphere 2 · (4,3) Gaia/carbon-cycle · (4,4) IPCC/Paris/Rockström — each gets ≥5 specific citations with URLs / DOIs"

@T t2 plan := "fill-country-row" :: planned [d=2026-05-14 N2]
  <- t1
  intent = "Deepen row 5 (Country) — (5,1) constitutional design · (5,2) infrastructure rollout · (5,3) bureaucracy/diplomacy · (5,4) statute/treaty/IP/monetary — examples from US 1787, ROK 1948+1987, EU treaties, UN/WTO/WIPO/IMF"

@T t3 plan := "fill-city-row" :: planned [d=2026-05-14 N3]
  <- t2
  intent = "Deepen row 6 (City) — (6,1) Haussmann/Howard/Le Corbusier/Niemeyer/Songdo · (6,2) IBC/NEC/NFPA · (6,3) ISO 37120/ICLEI/STAR · (6,4) zoning/building codes/property tax"

@T t4 plan := "ci-bootstrap" :: planned [d=2026-05-14 N4]
  <- p001, q2
  intent = "Copy wilson/.github/workflows/lint.yml pattern → tape-canonical + domain-convention + link-check jobs"

@T t7 plan := "tape-to-agents-md-algorithm" :: planned [d=2026-05-14 N5]
  intent = "Implement ~/core/tape/algorithms/tape_to_agents_md.hexa — emit AGENTS.md from AGENTS.tape per @H h1 generator hook. Fallback for agents.md-ecosystem tools (Claude Code · Aider · Cursor) that don't speak .tape natively yet."
  ?> AGENTS.tape::h1

# ─── §5 Log ───────────────────────────────────────────────────────────

@A bootstrap_2026_05_14 := "bootstrap" :: handoff [d=2026-05-14 ok]
  <- p001, p002, p003, p004, p005, p006, p007
  => "Bootstrap complete. 7 artifacts on disk (AGENTS.tape + SEED.tape + README + SCALE + LICENSE + logo + CLAUDE.md symlink). 9 governance entries (g1..g9) + 2 forbidden patterns (f1..f2) + 5 external citations (x1..x5) + 2 notes (n1..n2) + 2 generator hooks (h1..h2) all live in AGENTS.tape. Next session: open AGENTS.tape (grammar primer + governance), then this SEED.tape (open work), then SCALE.md (24-cell SSOT). Start with t1 (fill-planet-row)."

@A t5_done_2026_05_14 := "echoes-cross-link landed" :: log [d=2026-05-14 ok]
  <- bootstrap_2026_05_14
  => "echoes/README.md commit 89a0f08ab + e0606c4a7 added hexa-scale as the 18th primary family between Aerospace and HEXA-UFO. d4 closed."

@A t6_done_2026_05_14 := "wilson-domain-verify revealed cwd-limitation" :: log [d=2026-05-14 err]
  <- bootstrap_2026_05_14, q3
  => "Ran `wilson domain list` from ~/core/hexa-scale; only TAPE.md (from $WILSON_ROOT) listed. SCALE.md not picked up. Resolution: wilson backlog, not a hexa-scale fix."

@A tape_v12_landed_2026_05_14 := "tape v1.2 grammar + AGENTS.tape migration" :: log [d=2026-05-14 ok]
  <- bootstrap_2026_05_14
  => "Bumped ~/core/tape/spec/tape.md to v1.2 (6 new entry types · 5 new edges · governance grade tags · payload syntax extensions · grammar primer convention · AGENTS.tape pattern). Added ~/core/tape/examples/08_agents_tape.tape. Migrated hexa-scale's monolithic SEED.tape → split AGENTS.tape (static governance) + slim SEED.tape (runtime handoff, this file). CLAUDE.md symlinked to AGENTS.tape."
