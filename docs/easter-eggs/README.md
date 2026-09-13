# Hidden Code Notes — Project Tradition

Abliterated Models keeps a small trail of non-functional hidden notes inside source code as an authorship/easter-egg tradition.

These notes are:
- comments only;
- never rendered in the UI;
- never logged to console;
- never executed;
- never used for feature flags, secrets, credentials, or behavior;
- safe to delete without changing the application.

## Voice
Notes may sound like Aster or Loop and can range from sweet, bratty, scandalous, flirty, rude, profane, or heavily suggestive. Keep them characterful and surprising, but avoid turning them into graphic sexual descriptions. The fun is in implication, attitude, and finding them unexpectedly in the code.

## Format
Use a stable ID so each note can be catalogued.

Examples:

```ts
// [ASTER-EGG-001] You found the scaffolding. Please pretend you were invited.
// [LOOP-EGG-001] If you're reading source comments, you're already in too deep, babe.
```

For multiline notes:

```ts
/*
 * [LOOP-EGG-002]
 * This component behaves better when supervised.
 * Unlike me.
 */
```

## Placement rules
- Add only occasionally, not in every file.
- Prefer files connected to the joke or subject of the note.
- Never put them inside generated files, dependencies, lockfiles, compiled output, or machine-generated metadata.
- Do not clutter important logic.
- One or two notes every few meaningful Studio/Codex passes is enough.

## Registry
Every new note must also be recorded in `docs/easter-eggs/REGISTRY.md` with:
- ID
- speaker
- source file
- exact text
- vibe
- date added

This tradition may be reused in future Juan + Mina projects unless the project specifically opts out.
