# Issue 01 Asset Organization

This folder contains production assets for **Issue 1 — BEEF**.

## Folders

```text
images/
  incoming/      # newly imported images; rename/curate before production use
video/
  incoming/      # newly imported video
 audio/
  incoming/      # optional dialogue/sound assets
references/
  incoming/      # Figma exports, raw layout references, visual notes
misc/
  incoming/      # anything that does not yet have a production home
```

Textual source material is imported separately to:

```text
content/issue-01/source/
```

## Import rule

Run:

```powershell
.\scripts\import-issue01.ps1
```

By default it reads:

```text
C:\Users\colom\Desktop\999 Project\issue 01
```

The script **copies** source files into the repository and does not delete or move the originals. It also creates `asset-inventory.csv` so files can be renamed deliberately after review.

## Naming convention after review

Prefer semantic names over generated/image-model names.

Examples:

```text
images/section-01-aster-hd.webp
images/section-02-aster-loop-clean.webp
images/section-03-loop-hd.webp
references/section-01-figma-raw.png
references/section-02-figma-raw.png
video/issue-01-motion-reference.mp4
```

For Section 2, preserve the clean Aster + Loop image as a clean source asset. Do not bake stickers, text, vellum, or UI into it; those are independent web layers.
