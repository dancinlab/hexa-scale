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

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "hexa-scale.SEED" :: identity-claim [d=2026-05-15 active]
  kind = "runtime handoff SSOT (architecture-current) — open decisions · open anomalies · planned next actions"
  brief = "Open this AFTER AGENTS.tape to see what's open, what's anomalous, what's planned next."
  parent = "dancinlab/hexa-scale"
  sibling-log = "SEED.log.tape"

#
# hexa-scale — SEED.tape (runtime handoff to the next session)
# Companion: AGENTS.tape (static governance + identity) · SCALE.md (24-cell SSOT)
# Open this AFTER AGENTS.tape to see what's open, what's anomalous, what's planned.

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

# ─── §3 Open questions (anomalies still open — current design-state) ──

@? q1 := "lean4-proof-applicability" :: anomaly [d=2026-05-14 draft]
  text = "Does hexa-scale need a Lean 4 proof (like echoes/lean4-n6/) for any claim?"
  current = "no — this repo is a DESIGN SSOT; no claim requires kernel-accepted proof; J₂(6)=24 is already proved upstream in echoes"
  unblocks = "if a future claim needs proof, lift it into echoes/lean4-* alongside Theorem B"

@? q2 := "ci-workflow" :: anomaly [d=2026-05-14 draft]
  text = "GitHub Actions for tape-canonical / domain-convention / link-check?"
  current = "none yet — wilson/.github/workflows/lint.yml is the precedent to copy"

# ─── §4 Planned next-session actions (intent — in order) ──────────────

@T t1 plan := "fill-planet-row" :: planned [d=2026-05-14 N1]
  intent = "Deepen row 4 (Planet) — (4,1) terraforming design · (4,2) Biosphere 2 · (4,3) Gaia/carbon-cycle · (4,4) IPCC/Paris/Rockström — each gets ≥5 specific citations with URLs / DOIs"

@T t2 plan := "fill-country-row" :: planned [d=2026-05-14 N2]
  <- t1
  intent = "Deepen row 5 (Country) — (5,1) constitutional design · (5,2) infrastructure rollout · (5,3) bureaucracy/diplomacy · (5,4) statute/treaty/IP/monetary — examples from US 1787, ROK 1948+1987, EU treaties, UN/WTO/WIPO/IMF"

@T t3 plan := "fill-city-row" :: planned [d=2026-05-14 N3]
  <- t2
  intent = "Deepen row 6 (City) — (6,1) Haussmann/Howard/Le Corbusier/Niemeyer/Songdo · (6,2) IBC/NEC/NFPA · (6,3) ISO 37120/ICLEI/STAR · (6,4) zoning/building codes/property tax"

@T t4 plan := "ci-bootstrap" :: planned [d=2026-05-14 N4]
  <- q2
  intent = "Copy wilson/.github/workflows/lint.yml pattern → tape-canonical + domain-convention + link-check jobs"

@T t7 plan := "tape-to-agents-md-algorithm" :: planned [d=2026-05-14 N5]
  intent = "Implement ~/core/tape/algorithms/tape_to_agents_md.hexa — emit AGENTS.md from AGENTS.tape per @H h1 generator hook. Fallback for agents.md-ecosystem tools (Claude Code · Aider · Cursor) that don't speak .tape natively yet."
  ?> AGENTS.tape::h1
