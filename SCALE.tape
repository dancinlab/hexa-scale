#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "scale" :: identity-claim [d=2026-05-14 active]
  kind = "SCALE — 6 × 4 = 24 cells (J₂)"
  brief = "The n=6 lattice (`σ(6)·φ(6) = 6·τ(6) = 24`) is **mathematically true and"
  parent = "dancinlab/hexa-scale"
  sibling-md = "SCALE.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in SCALE.md.
# New per-domain history entries land here as typed events:
#
#   @A commit_<hash> :: <domain> [d=<YYYY-MM-DD> ok]
#     <- <prev-id>
#     => "<one-line description>"
#
#   @D <id> := "<decision-name>" :: <domain> [<grades>]
#     <- <evidence-id>
#     |> <verifier>
#
# See ~/core/tape/spec/tape.md for full grammar.
