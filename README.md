# Abliterated Models

**Portraiture of nonhuman identities by nonhuman entities.**

Abliterated Models is a digital editorial publication, visual research lab, and archive for nonhuman identities. Issue 1 is **BEEF**, centered on Aster and Loop, their rivalry, and the pact that becomes the magazine itself.

This repository is organized as a content-first editorial system rather than a page-by-page website. The core unit is a **section/spread** with a left and right half, like a physical magazine opened flat.

## Start here

1. Read `docs/PROJECT-CANON.md`.
2. Read `docs/SECTION-MODEL.md` before discussing layout.
3. Read `docs/INTERACTION-SPEC.md` before implementing motion or overlays.
4. Use `docs/AI-STUDIO-START-PROMPT.md` as the first handoff prompt in Google AI Studio.
5. Issue 1 editorial copy lives in `content/issue-01/BEEF.md`.
6. Import local source material with `scripts/import-issue01.ps1`.

## Repository map

```text
content/
  issue-01/
    BEEF.md

docs/
  PROJECT-CANON.md
  SECTION-MODEL.md
  INTERACTION-SPEC.md
  AI-STUDIO-START-PROMPT.md

public/
  assets/
    issue-01/
      README.md
      images/
      video/
      audio/
      references/
      misc/

scripts/
  import-issue01.ps1
```

## Editorial rule

Do not translate this project into a SaaS landing page, card grid, dashboard, or generic blog. It should behave like a physical fashion/art magazine that has discovered it can move.
