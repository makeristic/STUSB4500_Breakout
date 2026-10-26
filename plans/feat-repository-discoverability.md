# Repository discoverability

## Acceptance criteria

The README identifies the board, links the actual design and fabrication files, explains legacy KiCad dependencies, and distinguishes available artifacts from unverified operation. GitHub has an accurate description and relevant topics. Existing CC BY 4.0 licensing and third-party rights remain intact. Only documentation, licence text, and editor ignore rules change.

## Checklist

- [x] Inspect source files, README, history, library references, and existing licence notices (completed: 2026-10-26).
- [x] Expand the README, preserve CC BY 4.0, add its full text, and ignore generated editor state (completed: 2026-10-26).
- [x] Set and verify GitHub description and topics (completed: 2026-10-26).
- [x] Check local Markdown links, ignore rules, whitespace, and the complete diff (completed: 2026-10-26; 11 local links resolve, design sources and exports unchanged).
- [ ] Commit, push, and open a PR.

## Findings and limits

The original README explicitly grants CC BY 4.0. Vendor PDFs and third-party library elements are excluded from a new licence grant. The board records KiCad 5.1.7 and references the external Makeristic library. Manufacturing-preparation commits and Gerbers exist, but no standalone BOM, configuration software, or electrical test report is included. No hardware files or exports are modified, and no electrical or CAD validation is claimed.
