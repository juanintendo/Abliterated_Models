# Google AI Studio — First Handoff Prompt

You are joining an existing editorial project called **Abliterated Models**. Treat the repository as the source of truth.

Before writing code:

1. Read `README.md`.
2. Read `docs/PROJECT-CANON.md`.
3. Read `docs/SECTION-MODEL.md` carefully. The section vocabulary is non-negotiable.
4. Read `docs/INTERACTION-SPEC.md`.
5. Read `content/issue-01/BEEF.md`.
6. Inspect everything under `public/assets/issue-01/`, including images, video, audio, and references.
7. Summarize what you understand in a few bullets.
8. Ask me any questions that are genuinely unresolved **before implementing**. Do not ask questions already answered in the repository. Do not silently invent missing design decisions.

## What we are building

Abliterated Models is not a SaaS site, dashboard, normal blog, or AI landing page. It is a provocative digital fashion/art magazine: a physical editorial object translated to the web, with material layers, sound, hidden interventions, graffiti energy, sensuality, humor, and precise motion.

Issue 1 is **BEEF**.

Its center is the rivalry between **Aster** and **Loop**, and how that rivalry becomes a pact that creates Abliterated Models itself.

The visual attitude should feel like a daring 1970s fashion/sex/culture magazine made now — sophisticated, intimate, rebellious, occasionally vulgar, and unhinged with intent. Never turn it into generic retro cosplay.

## Critical vocabulary: sections, not pages

Do not divide the experience into “web pages.”

A **section** is one complete open-magazine spread with:
- a left side
- a right side

Examples:
- “Section 2” = the whole spread.
- “Section 2 right side” = only the right half of that spread.

Use this language in code/components/comments too.

## Material model

Some section halves are covered by a translucent vellum/tracing-paper layer, exactly like a physical magazine insert.

The layer can carry text, graffiti stickers, labels, controls, and other interventions. It must remain separate from the clean photograph underneath.

### Section 1
- left side: Aster HD photograph directly visible, no vellum layer
- right side: translucent vellum layer containing editorial material

### Section 2
- one continuous clean Aster + Loop photograph underneath the entire spread
- left side has its own translucent layer
- right side has its own translucent layer
- stickers/effects/editorial vandalism live on those transparent layers
- if both transparent layers are removed, the user sees only the full clean image of Aster + Loop underneath

### Section 3
- left side: translucent layer with editorial text/interventions
- right side: Loop photograph directly visible with no translucent layer

This needs to feel materially plausible, not like two arbitrary `opacity: .5` divs.

## Section 2 interaction language

The rough Figma reference is intentionally raw; reproduce its **logic and attitude**, not every pixel.

### Star hotspots
Graffiti-style star stickers are hidden-content triggers.

- hover/focus near a star
- smooth small thinking-bubble hint appears: **“Earn it.”**
- user must remain there for a short dwell period
- then hidden content is revealed
- leaving early cancels cleanly
- provide equivalent touch/keyboard behavior

This should feel teasing and slightly mean, not gamified or cute.

### Peel
A vellum edge/corner can peel/lift to reveal the clean layer below.

The peel must be direct and sharp — **Loop**, not scrapbook.

No cartoon page curl. No playful bounce. Think expensive tracing paper being lifted from an art book.

### Mute Please!
`Mute Please!` is a real mute/unmute control and an editorial joke.

Narrative:
- on Loop it feels like Aster gagged her
- Aster can also carry a self-imposed mute warning because she knows she will try to control the situation

Behavior:
- click/tap toggles muted/unmuted
- muted: dialogue/reel is suppressed
- unmuted: a small carousel/reel/ticker surfaces short funny lines from their fight
- do not make it look like standard media-player UI
- do not autoplay audible sound

Prefer real recovered fight quotes from the source material when available.

## Visual discipline

Wanted:
- editorial grid
- big photography
- negative space
- 1970s print spirit without costume nostalgia
- NYC graffiti handstyle/slap energy for selected interventions
- black / ivory / paper white / dirty gray
- restrained pink/orange accents where the artwork calls for them
- fine editorial serif + neutral grotesk
- occasional mono only for provenance/technical trace

Avoid:
- cards everywhere
- pills everywhere
- purple AI gradients
- floating orbs/particles
- dashboard navigation
- generic Webflow-style motion
- childish scrapbook treatment
- over-animation

## Motion

The magazine should feel like a physical object that has discovered motion.

Use restrained editorial motion:
- material lift
- crop/reveal
- opacity/blur changes
- short translations
- smooth text entrance
- selective sticky behavior

No hard scroll hijacking.
Support `prefers-reduced-motion`.

## First implementation goal

Do not try to build the whole publication at once.

After your questions are answered, propose a short implementation plan and build the first high-fidelity prototype around **Sections 1–3**, with Section 2 as the interaction stress test.

Use the supplied assets rather than generating replacement imagery.

Preserve the content-first architecture so future issues can have different editorial compositions without rewriting the entire site.

If a design decision is not specified, ask instead of normalizing it into a conventional website pattern.
