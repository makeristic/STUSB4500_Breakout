# Repository discoverability

## Initial documentation acceptance criteria

The README identifies the board, links the actual design and fabrication files, explains legacy KiCad dependencies, and distinguishes available artifacts from unverified operation. GitHub has an accurate description and relevant topics. Existing CC BY 4.0 licensing and third-party rights remain intact. Only documentation, licence text, and editor ignore rules change.

## Checklist

- [x] Inspect source files, README, history, library references, and existing licence notices (completed: 2026-10-26).
- [x] Expand the README, preserve CC BY 4.0, add its full text, and ignore generated editor state (completed: 2026-10-26).
- [x] Set and verify GitHub description and topics (completed: 2026-10-26).
- [x] Check local Markdown links, ignore rules, whitespace, and the complete diff (completed: 2026-10-26; 11 local links resolve, design sources and exports unchanged).
- [x] Commit, push, and open [PR #1](https://github.com/makeristic/STUSB4500_Breakout/pull/1) (completed: 2026-10-26).

## Initial documentation findings and limits

The original README explicitly grants CC BY 4.0. Vendor PDFs and third-party library elements are excluded from a new licence grant. The board records KiCad 5.1.7 and references the external Makeristic library. Manufacturing-preparation commits and Gerbers exist, but no standalone BOM, configuration software, or electrical test report is included. The initial documentation phase did not modify hardware files or exports. The later source audit below supersedes its validation limits.

## Follow-up source audit

The authorised follow-up extends this PR to source-level corrections supported by repository evidence and manufacturer documentation. Preserve historical formats and licensing, and do not claim board validation from static checks.

- [x] Compare schematic components, stored netlist, PCB references/pad nets, and fabrication provenance (completed: 2026-10-27).
- [x] Run KiCad nightly PCB DRC on temporary copies; distinguish historical/default-rule findings from proven defects (completed: 2026-10-27).
- [x] Verify relevant package/pin and power-interface assumptions against primary manufacturer sources (completed: 2026-10-27).
- [x] Apply and verify minimal supported corrections; record unresolved circuit and manufacturing work in `docs/code-audit-report.md` (completed: 2026-10-27).
- [x] Update README/PR scope, review the complete diff, commit, push, and return for root review before merge (completed: 2026-10-27; same PR #1, no merge performed by this agent).

## Independent validation follow-up

- [x] Reproduce globally registered legacy-library export omitting USB shield J1.S1 in nightly 10.99.0; confirm exact 102-pin graph equality with a new empty global configuration and the committed cache (completed: 2026-10-27).
- [x] Scope README, audit and PR validation claims to their actual library-resolution modes; preserve source geometry and document the apparent nightly inconsistency (completed: 2026-10-27).
