# Section Model

## Vocabulary

Do **not** describe this experience as separate web “pages.”

The primary editorial unit is a **section**.

A section represents an opened physical magazine spread and contains two halves:

- **left side**
- **right side**

When we say **Section 2**, we mean the entire spread.

When we say **Section 2, right side**, we mean only the right half of that spread.

This vocabulary is canonical and should be used in design discussions, code comments, component naming, and AI handoffs.

Suggested code shape:

```ts
type SectionSide = 'left' | 'right';

type EditorialSection = {
  id: string;
  left: SectionHalf;
  right: SectionHalf;
};
```

## Physical-magazine metaphor

The experience should behave as though a real magazine has translucent vellum/tracing-paper sheets inserted over selected halves or entire spreads.

A transparency is a distinct editorial layer. It may carry:
- text
- stickers
- annotations
- interactive controls
- hidden reveals
- decorative interventions

The transparency is not baked into the underlying photograph.

If it is peeled, lifted, faded, or otherwise removed, the clean source image underneath should remain coherent.

## Section 1

**Left side:** clean HD Aster image. No translucent editorial sheet over this half.

**Right side:** translucent vellum/tracing-paper layer. This side can hold editorial copy, small graffiti references, captions, or other interventions.

The visual point is asymmetry: one side exposes the photograph directly; the other mediates it through paper.

## Section 2

Both left and right sides have translucent editorial layers over them.

Under those layers is one continuous underlying image of Aster and Loop together.

If the two translucent halves were removed simultaneously, the viewer would see the complete image of Aster + Loop with no stickers, labels, text, or interventions covering them.

The transparencies are where the “BEEF” editorial vandalism lives:
- graffiti-style stars/stickers
- labels
- title interventions
- mute/unmute controls
- hidden interaction hints
- peel affordances where appropriate

This distinction matters technically: build the clean full-spread image as one visual layer, then place independent translucent half-layers above it.

## Section 3

**Left side:** translucent vellum/tracing-paper layer with editorial text and/or interventions.

**Right side:** Loop shown directly with no translucent layer covering her image.

This mirrors the physical-magazine logic from Section 1 but reverses the visual emphasis.

## General rule

Do not flatten the whole spread into a single static composition if an effect depends on the physical layering metaphor.

Think in this order:

1. clean underlying spread/image
2. left editorial layer, if present
3. right editorial layer, if present
4. stickers/interactions attached to the relevant editorial layer
5. optional foreground UI such as section number/menu/navigation

The user should feel that the magazine has actual material layers, not just semi-transparent rectangles placed over a webpage.
