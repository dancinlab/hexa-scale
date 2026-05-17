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
# AGENTS.tape for `dancinlab/hexa-scale` — sole agent-harness + governance
# + identity file. Runtime handoff (open decisions · anomalies · planned
# actions · session log) lives in `SEED.tape`. CLAUDE.md → AGENTS.tape
# (symlink) for Claude Code auto-discovery.

# ─── §1 Spec version ──────────────────────────────────────────────────

@V := "tape" :: spec [active]
  version = "1.2"
  uses = [@X, @F, @N, @C, @L, "<:", "@>", "[required]"]

@X wilson_pool := "wilson pool — resource utilization" :: guide [active]
  tldr = "Heavy / deterministic work (build · drill · probe · compile · test-sweep · GPU fire) → do NOT serialize on localhost; route to the host pool: `wilson pool list` then `wilson pool on <host> <cmd>`, or a ToolUse `\"host\"` field. Empty roster = degrade-to-local, fine."
  detail = "~/core/atlas/POOL.tape"

# ─── §2 Identity claims ───────────────────────────────────────────────

@I id001 := "hexa-scale" :: identity-claim [d=2026-05-14 active]
  kind = "hexa-* standalone (18th in dancinlab family)"
  brief = "multi-scale architecture · 6 scales × 4 phases = 24 = J₂(6) · 18th hexa-* family"
  axis = "multi-scale architecture"
  lattice = "6 scales × 4 phases = 24 cells; coincides numerically with σ(n)·φ(n) = n·τ(n) = J₂(6) = 24 at n=6 (three formulas, same value — see [@x1])"
  parent = "dancinlab"

@I id002 := "hexa-scale.scales" :: identity-claim [d=2026-05-14 active]
  <: id001
  ladder = [multiverse, universe, galaxy, planet, country, city]
  speculative = [multiverse, universe, galaxy]
  operational = [planet, country, city]
  note = "speculative-row entries carry ⚠ tags + 'no manufactured artifact' disclaimers; operational rows cite real practitioners"

@I id003 := "hexa-scale.phases" :: identity-claim [d=2026-05-14 active]
  <: id001
  lifecycle = [design, build, operate, policy]
  matches = "τ(6) = 4"

@I id004 := "hexa-scale.honest-caveat" :: identity-claim [d=2026-05-14 active]
  <: id001
  rule = "n=6 lattice is an organising tool, NOT a substitute for real math / physics / engineering / political-economy limits"
  ext = "n=6 lattice-fit FORBIDDEN on external entities (NASA · SpaceX · IPCC · IBC · constitutional bodies use their own published invariants)"
  authority = "see [@x1] §1.2/§1.3 + [@x2]"

# ─── §3 Repo layout ───────────────────────────────────────────────────

@L l1 := "repo-layout" :: structure [active]
  README.md -> "human intro · 18-block format (atlas/README-FORMAT.md)"
  AGENTS.tape -> "this file · sole agent-harness + governance + identity (.tape v1.2)"
  CLAUDE.md -> "symlink → AGENTS.tape (Claude Code auto-discovery)"
  SCALE.md -> "24-cell domain ledger SSOT (§A scales · §B phases · §C 24-cell matrix · §D cross-refs · §E log)"
  SEED.tape -> "runtime handoff · open decisions · anomalies · planned actions · log"
  LICENSE -> "MIT"
  docs/logo.svg -> "6 nested flat-top hexagons (multiverse → city) with σφτ centre node"

# ─── §4 Governance rules ──────────────────────────────────────────────

@D g1 := "honest-caveat-first" :: governance [required]
  rule = "Every claim coupling the n=6 lattice to external phenomena ships with a one-line honest caveat: lattice is an organising tool, not a substitute for real math / physics / engineering / political-economy limits."
  applies-to <<~EOF
    Every section in README.md
    Every cell in SCALE.md
    Every entry in this file that mentions n=6 vs an external entity
  EOF
  @> AGENTS.md

@D g2 := "speculative-vs-operational-split" :: governance [required]
  rule = "Rows 1–3 (multiverse · universe · galaxy) carry ⚠ speculative tags + explicit 'no manufactured artifact' disclaimers. Rows 4–6 (planet · country · city) are operational — real artifacts exist; lattice is one lens among many."
  why = "Honesty about which rows have ground truth and which are research-hypothesis placeholders"
  apply = "SCALE.md §A / §C row tagging; README at-a-glance table; any future per-cell expansion"
  <: g1
  @> AGENTS.md

@D g3 := "cite-real-practitioners" :: governance [required]
  rule = "Cells in rows 4–6 must cite real architects · planners · treaty texts · code books."
  acceptable = [LeCorbusier, Howard, Niemeyer, IBC, "ISO 37120", IPCC, UNFCCC, "Rockström 2009", "Songdo IBD"]
  forbidden = "claiming any external party adopts the n=6 lattice — they use their own published invariants"
  why = "echoes [@x2] — external-entity lattice-fit ban"
  <: g1
  @> AGENTS.md

@D g4 := "18-block-readme-format" :: governance [required]
  rule = "README.md follows the canonical 18-block convention fixed in atlas/README-FORMAT.md."
  required-blocks = [1, 2, 3, 4, 5, 6, 7, 8, 12, 17, 18]
  why = "Cross-repo consistency across dancinlab; auto-discoverable by tooling"
  proof = "see [@x3]"
  @> AGENTS.md

@D g5 := "tape-runtime-trace" :: governance [required]
  rule = "Runtime trace + agent identity + per-domain history use the `.tape` grammar (governance principle #9b)."
  apply = "AGENTS.tape (static governance + identity) + SEED.tape (runtime handoff) are the SSOTs; markdown reserved for human-prose docs (README · SCALE)"
  why = "Append-only event semantics fit governance / handoff use; tables fit prose use — separated by grammar fit"
  @> AGENTS.md

@D g6 := "design-ssot-first" :: governance [required]
  rule = "hexa-scale is design SSOT first. Implementations (code · tools · datasets) come AFTER SCALE.md cells are filled with real references."
  threshold = "ship `tools/` or `lean4/` directories only after each of the 12 operational cells (planet · country · city × 4 phases) has ≥1 mainstream-invariant citation"
  @> AGENTS.md

@D g7 := "cross-refs-one-way" :: governance [required]
  rule = "Cross-references to dancinlab/echoes are one-way — hexa-scale cites echoes/LATTICE_POLICY.md and LIMIT_BREAKTHROUGH.md, but echoes doesn't structurally depend on hexa-scale."
  apply = "echoes/README.md mentions hexa-scale as the 18th family in a one-line row — no shared modules, no shared schemas"
  @> AGENTS.md

@D g8 := "ssot-lock-lattice-policy" :: governance [required deny:write]
  rule = "LATTICE_POLICY decisions live in dancinlab/echoes, never re-declared here."
  apply = "If a cell needs a new policy clause, propose it in echoes first, then cite the new clause from hexa-scale via [@x1]"
  @> AGENTS.md

@D g9 := "agents-tape-not-md" :: governance [required]
  rule = "AGENTS.tape is the SSOT; AGENTS.md is removed. CLAUDE.md is a symlink → AGENTS.tape for Claude Code auto-discovery."
  cost = "agents.md ecosystem tooling (Claude Code · Aider · Cursor) loses native auto-discovery of project context unless CLAUDE.md symlink is followed"
  benefit = "single SSOT in tape-native grammar; aligns with governance principle #9b ([@x4])"
  fallback = "generator hook h1 (@> AGENTS.md) emits a markdown rendition if a tool needs it"
  @> AGENTS.md

@D g_arch_vs_log_split := "v1.2 architecture-vs-history split" :: governance [required d=2026-05-14 active]
  rule = "UPPERCASE.tape files are EDITABLE architecture (latest-wins per id). Append-only event history lives in UPPERCASE.log.tape siblings."
  why = "declarative entries (governance · config · layout · identity) evolve naturally; locking them as append-only via ~> supersedes creates noisy histories. The split lets architecture stay current and history stay immutable."
  applies-to = "AGENTS.tape · all UPPERCASE.tape root files"
  authority = "[@x_tape_spec] §Domain-tape sibling §Architecture-vs-history split"
  @> AGENTS.md


# ─── §5 Forbidden patterns ────────────────────────────────────────────

@F f1 := "external-lattice-fit" :: governance [required deny:write]
  pattern = "n=6 / σφτ identity applied as derivation rule to NASA · SpaceX · IPCC · IBC · constitutional bodies · CERN · DeepMind"
  exception = "values may coincidentally match (e.g. 6 = 6 in some external standard) — observation OK, derivation NOT OK"

@F f2 := "implementation-before-ssot" :: governance [required deny:write]
  pattern = "shipping tools/ · lean4/ · code directories before SCALE.md operational cells are filled"
  why = "hexa-scale is design SSOT first per [@g6]"
  exception = "none until 12 operational cells each carry ≥1 mainstream invariant citation"

# ─── §6 External citations ────────────────────────────────────────────

@X x1 := "echoes/LATTICE_POLICY.md" :: policy [d=2026-05-13 active]
  url = "https://github.com/dancinlab/echoes/blob/main/LATTICE_POLICY.md"

  url = "https://github.com/dancinlab/echoes"
  scope = "honest-caveat policy origin · forbidden lattice-fit on external entities"

@X x3 := "atlas/README-FORMAT.md" :: convention [d=2026-05-14 active]
  url = "https://github.com/dancinlab/atlas/blob/main/README-FORMAT.md"
  scope = "dancinlab cross-project README structure governance · 18-block convention"

@X x4 := "wilson governance principle #9b" :: principle [d=2026-05-14 active]
  url = "https://github.com/dancinlab/wilson/blob/main/plugins/governance/SPEC.md"
  scope = "tape-runtime-trace principle — runtime + identity + per-domain history use .tape grammar"

@X x5 := "tape v1.2 spec" :: spec [d=2026-05-14 active]
  url = "https://github.com/dancinlab/tape/blob/main/spec/tape.md"
  scope = "this file's grammar reference · 17 entry types · 12 edges · governance grade tags"

# ─── §7 Notes (LLM-only hints) ────────────────────────────────────────

@N n1 := "next-session-handoff" :: note [active]
  text = "SEED.tape carries the runtime handoff (open decisions · anomalies · planned actions). Open it AFTER this file to see what to do next."

@N n2 := "wilson-domain-list-limitation" :: note [active]
  text <<~EOF
    `wilson domain list` is NOT cwd-aware as of 2026-05-14 — it reads $WILSON_ROOT/TAPE.md.
    SCALE.md won't appear in its inventory until wilson gains cwd-aware scanning OR a --cwd flag.
    Escalated to wilson backlog (see SEED.tape q3).
  EOF

# ─── §8 Generator hooks ───────────────────────────────────────────────

@H h1 := "agents-md-emit" :: generator [active]
  @> AGENTS.md
  consumer = "agents.md ecosystem tooling that doesn't speak .tape yet (Claude Code · Aider · Cursor pre-AGENTS.tape support)"
  algorithm = "tape_to_agents_md (~/core/tape/algorithms/tape_to_agents_md.hexa — to be implemented)"
  fallback-only = true

@H h2 := "claude-md-symlink" :: generator [active]
  rule = "ship `CLAUDE.md -> AGENTS.tape` symlink so Claude Code auto-discovery picks up the grammar primer first"
  command = `ln -sf AGENTS.tape CLAUDE.md`
  status = "in place — see L l1"
